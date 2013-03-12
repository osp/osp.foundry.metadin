% common variables, we can define all we need
w = 1000pt;			
h = 1000pt;			
xheight = 1/1.5;
u = 10pt;

% preparing a common grid for all glyphs
z00 = (0,0);    z01 = (0, 1u);   z02 = (0, 2u);   z03 = (0, 3u);   z04 = (0, 4u);   z05 = (0, 5u);   z06 = (0, 6u);   z07 = (0, 7u);
z10 = (1u,0);    z11 = (1u, 1u);   z12 = (1u, 2u);   z13 = (1u, 3u);   z14 = (1u, 4u);   z15 = (1u, 5u);   z16 = (1u, 6u);   z17 = (1u, 7u);
z20 = (2u,0);    z21 = (2u, 1u);   z22 = (2u, 2u);   z23 = (2u, 3u);   z24 = (2u, 4u);   z25 = (2u, 5u);   z26 = (2u, 6u);   z27 = (2u, 7u);
z30 = (3u,0);    z31 = (3u, 1u);   z32 = (3u, 2u);   z33 = (3u, 3u);   z34 = (3u, 4u);   z35 = (3u, 5u);   z36 = (3u, 6u);   z37 = (3u, 7u);
z40 = (4u,0);    z41 = (4u, 1u);   z42 = (4u, 2u);   z43 = (4u, 3u);   z44 = (4u, 4u);   z45 = (4u, 5u);   z46 = (4u, 6u);   z47 = (4u, 7u);
z50 = (5u,0);    z51 = (5u, 1u);   z52 = (5u, 2u);   z53 = (5u, 3u);   z54 = (5u, 4u);   z55 = (5u, 5u);   z56 = (5u, 6u);   z57 = (5u, 7u);
z60 = (6u,0);    z61 = (6u, 1u);   z62 = (6u, 2u);   z63 = (6u, 3u);   z64 = (6u, 4u);   z65 = (6u, 5u);   z66 = (6u, 6u);   z67 = (6u, 7u);
z70 = (7u,0);    z71 = (7u, 1u);   z72 = (7u, 2u);   z73 = (7u, 3u);   z74 = (7u, 4u);   z75 = (7u, 5u);   z76 = (7u, 6u);   z77 = (7u, 7u);
z'10 = (-1u,0);    z'11 = (-1u, 1u);   z'12 = (-1u, 2u);   z'13 = (-1u, 3u);   z'14 = (-1u, 4u);   z'15 = (-1u, 5u);   z'16 = (-1u, 6u);   z'17 = (-1u, 7u);
z'20 = (-2u,0);    z'21 = (-2u, 1u);   z'22 = (-2u, 2u);   z'23 = (-2u, 3u);   z'24 = (-2u, 4u);   z'25 = (-2u, 5u);   z'26 = (-2u, 6u);   z'27 = (-2u, 7u);

% 1 is the ID of your glyph, it will output a file called 1.ps
beginfig(1)
endfig;

