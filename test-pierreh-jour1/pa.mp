beginfig(2)
% pickup pencircle scaled 1;
z1=(0,3);
z2=(2,4);
z3=(4,3);
z4=(4,1);
z5=(5,0);
z6=(2,2);
z7=(0,1);
z8=(2,0);
draw z1..z2..z3..z4..z5;
draw z3..z6..z7..z8..{up}z4;
endfig;
end