prologues := 3;     % sortie EPS

beginfig(1)
    input ../metadin/template;
    pickup pencircle scaled 50pt;

    z99=(2.5u, 5.5u);
    z98=(2.2u, 6.2u);
    z97=(1.5u, 6.5u);
    z96=(0.8u, 6.2u);
    z95=(0.5u, 5.5u);
    z94=(0.5u, 1.5u);
    z93=(0.8u, 0.8u);
    z92=(1.5u, 0.5u);
    z91=(2.2u, 0.8u);
    z90=(2.5u, 1.5u);
    
    
    draw z99..z98..z97;
    draw z97..z96..z95;
    draw z95..z94;
    draw z94..z93..z92;
    draw z92..z91..z90;
    
   input ../metadin/grid;
    
    dotlabels.top(70, 71, 72, 73, 74, 75, 76);
    dotlabels.top(60, 61, 62, 63, 64, 65, 66);
    dotlabels.top(50, 51, 52, 53, 54, 55, 56);
    dotlabels.top(40, 41, 42, 43, 44, 45, 46);
    dotlabels.top(30, 31, 32, 33, 34, 35, 36);
    dotlabels.top(20, 21, 22, 23, 24, 25, 26);
    dotlabels.top(10, 11, 12, 13, 14, 15, 16);
    dotlabels.top(00, 01, 02, 03, 04, 05, 06);
    dotlabels.top('10, '11, '12, '13, '14, '15, '16);
    dotlabels.top('20, '21, '22, '23, '24, '25, '26);
    endfig;
end