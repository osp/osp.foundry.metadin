prologues := 3;     % sortie EPS

beginfig(1)
    input ../metadin/template;
    pickup pencircle scaled 45pt;
    z99=(1.5u, 5u);
    z98=(2.5u, 6.5u);
    z97=(4.5u, 5u);
    z96=(4.5u, 2u);
    z95=(3u, 0.5u);
    z94=(1.5u, 2u);
    
    draw z99..z98..z97;
    draw z97..z96;
    draw z96..z95..z94;
    draw z94..z99;

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
