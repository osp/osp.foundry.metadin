% Schriftform G
% sekeletonHeight = 6
% skeletonWidth = 2
% radius = 1 (sekeletonWidth * .5)
% overshoot = .1
% arriveAngle = 0 / 90

% pair curvecut;

width = 6; % Width of the c-skeleton
height = 6; % Height of the c-skeleton

radius = width * (1/2); % Curveradius is half of the width of our char
% At 2 the overshoot is 0.1
% At 4.5 the overshoot is 0.15
% So increase = .02
% To make it match with DIN regulations we use an offset of .06
overshoot = width * 0.02 + 0.06; % Fixed, defined in standard

if radius > 1:
	cutangle = radius - 1 * 16.536; % 
else:
	cutangle = 0;
fi

% curvecut = dir radius;

curvecutx = cosd (cutangle) * radius - 1;
curvecuty = sind (cutangle) * radius;
% curvecut = [cutradius[0] * radius, cutradius[1] * radius];

linewidth = 10 * 1/14;

beginfig (1)

pickup pencircle scaled (linewidth)

draw 
(2 * radius - curvecutx, radius - overshoot + curvecuty) ..
(radius, -overshoot) ..
(0, radius - overshoot) ---
(0, height - radius + overshoot) ..
(radius, height + overshoot) ..
(2 * radius - curvecutx, height - radius + overshoot - curvecuty)
;

endfig
end

% Schriftform G
% sekeletonHeight = 6
% skeletonWidth = 4.5
% radius = 2.25 (sekeletonWidth * .5)
% overshoot = .15
% arriveAngle = ? (distance = .85)
