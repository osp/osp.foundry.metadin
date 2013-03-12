beginfig(0)
z1 = (0, 40);
z2 = (0, 100);

z3 = (45, 140);
z4 = (90, 100);

z5 = (90, 40);
z6 = (45, 0);

pickup pencircle scaled 5pt;
%pickup pensquare xscaled 20pt yscaled 5pt rotated 45;
draw z1--z2..z3..z4--z5..z6..z1;

endfig;


beginfig(4)
z1 = (50, 140);
z2 = (0, 50);
z3 = (90, 50);

z4 = (70, 90);
z5 = (70, 0);

pickup pencircle scaled 5pt;
draw z1--z2--z3;
draw z4--z5;

endfig;
end
