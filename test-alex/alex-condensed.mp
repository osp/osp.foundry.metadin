beginfig(2)
z1 = (00, 30);
z2 = (10, 40);
z3 = (20, 30);
z4 = (20, 10);
z5 = (25, 00);
z6 = (10, 20);
z7 = (00, 10);
z8 = (10, 00);

pickup pencircle scaled 5pt;
draw z1{up}..z2..{down}z3..{down}z4..z5;
draw z3{down}..z6{left}..z7{down}..z8{right}..{up}z4;
endfig;
end
