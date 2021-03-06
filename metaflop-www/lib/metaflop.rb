# encoding: UTF-8

#
# metaflop - web interface
# © 2012 by alexis reigel
# www.metaflop.com
#
# licensed under gpl v3
#

require './lib/rack_logger'
require './lib/rack_settings'
require './lib/font_parameters'
require './lib/font_settings'
require './lib/web_font'
require 'mustache'

class Metaflop

  include RackLogger
  include RackSettings

  # args: see FontParameter
  def initialize(args = {})
    @font_settings = FontSettings.new(args)
    @font_parameters = FontParameters.new(args, @font_settings)
  end

  def font_parameters(file = nil)
    if (!@font_parameters_initialized)
      @font_parameters.from_file file
      @font_parameters_initialized = true
    end

    @font_parameters
  end

  def font_settings
    @font_settings
  end

  # returns an gif image for a single character preview
  def preview_single
    generate(
      latex: settings[:preview_single]['latex'],
      text: @font_settings.char,
      width: settings[:preview_width]
    )
  end

  def preview_chart
    generate(
      latex: settings[:preview_chart]['latex'],
      width: settings[:preview_width]
    )
  end

  def preview_typewriter
    generate(
      latex: settings[:preview_typewriter]['latex'],
      text: @font_settings.text,
      width: settings[:preview_width] * 2
    )
  end

  def font_otf
    @font_settings.cleanup_tmp_dir
    # regenerate from the latest parameters with the sidebearings turned off
    @font_parameters.sidebearing.value = '0'
    font_parameters "#{@font_settings.out_dir}/font.mf"
    generate_mf

    command = Mustache.render(settings[:font_otf], @font_settings)

    `cd #{@font_settings.out_dir} && #{command}`

    @font_parameters.sidebearing.value = nil

    { :name => "#{@font_settings.font_name}.otf",
      :data => File.read("#{@font_settings.out_dir}/font.otf") }
  end

  def font_web
    font_otf
    `cd #{@font_settings.out_dir} && #{settings[:font_web]}`

    font = WebFont.new(@font_settings)
    { :name => "#{font.font_name}_webfont.zip",
      :data => font.zip }
  end

  # generates the image for the specified tool chain
  #
  # @param options [Hash] optional parameters
  # @option options [String] :latex the latex command that generates the dvi output
  # @option options [String] :text the text that is generated by latex
  # @option options [Integer] :width the width of the preview image
  def generate(options = {})
    latex = options[:latex].strip.gsub(/\n/, "\\\n") # add a backslash for bash multiline

    @font_settings.cleanup_tmp_dir

    # don't bother if metafont failed
    if generate_mf
      # hide all output but the last one, which returns the image
      command = Mustache.render(%Q{
        {{=<% %>=}} <%! change delimiter, we have too many curly braces in tex %>
        cd #{@font_settings.out_dir} &&
        latex -output-format=dvi -jobname=font "\\#{latex}" > /dev/null &&
        dvisvgm -TS0.75 -M16 -n --cache=none font.dvi > /dev/null &&
        convert -density 200 -resize <% width %> font.svg gif:-
        <%={{ }}=%>
        },
        { :text => options[:text], :width => options[:width] }
      )

      logger.info command

      `#{command}`
    else
      logger.error "mf generation failed."
      nil
    end
  end

  # returns true if the mf was successfully generated
  def generate_mf
    @font_parameters.to_file
    system(
      %Q{cd #{@font_settings.out_dir} &&
         mf -halt-on-error -jobname=font font.mf > /dev/null}
    )
  end

end
