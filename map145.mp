% tex/conc/mp/map145.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/map145.mp 394b0ab550 2012-05-08 01:23:36Z Alan U. Kennington $
% Relation between real geometry, Euclidean geometry and Cartesian geometry.

input mapmax.mp
verbatimtex
% \input akmath
etex

beginfig(1);
pair p[];
color col[];
path pat[];
picture pic;

q := 0.8;
r := 1.10cm;
rr := q * r;
d := 2r;

dx := d + 1.5cm;
penLN := 0.5bp;
spA := 11pt;
spB := 4pt;

p1 := (0,0);
p2 := p1 + (dx,0);
p3 := p2 + (dx,0);

% Grid parameters.
da := 4pt;
np := 7;
nq := np;
xt := 2pt;
ang := 20;
col1 := 0.4white;

sepA := 18pt;
sepB := 5pt;
sepC := sepA - 8pt;
sepD := 2pt;

p10 := p1 + (sepA,sepB) rotated ang;
p11 := p1 + (sepA,-sepB) rotated ang;
p12 := p1 + (-sepA,sepB) rotated ang;
p13 := p1 + (-sepA,-sepB) rotated ang;

p20 := p2 + (sepA,sepB) rotated ang;
p21 := p2 + (sepA,-sepB) rotated ang;
p22 := p2 + (-sepA,sepB) rotated ang;
p23 := p2 + (-sepA,-sepB) rotated ang;
p24 := p2 + (-sepC,sepB) rotated ang;
p25 := p2 + (-sepC,-sepB) rotated ang;
p26 := 0.5[p20,p21];
p27 := 0.5[p24,p25];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pat1 := (fullcircle scaled d) yscaled q shifted p1;
pat2 := (fullcircle scaled d) yscaled q shifted p2;
pat3 := (fullcircle scaled d) yscaled q shifted p3;

currentpicture := currentpicture rotated -ang;
S_rnset(p3 rotated -ang, da, np, nq, xt, pencircle scaled penLN, col1,
    pat3 rotated -ang, pencircle scaled penLN, black);
currentpicture := currentpicture rotated ang;

pickup pencircle scaled penLN;
draw pat1;
draw pat2;
% draw pat3;

p41 := point 0 of pat1;
p42 := point 4 of pat2;
p43 := point 0 of pat2;
p44 := point 4 of pat3;

p51 := point 6 of pat1;
p52 := point 6 of pat2;
p53 := point 6 of pat3;

label.bot(btex \strut real etex, p51);
label.bot(btex \strut geometry etex, p51+(0,-spA));

label.bot(btex \strut Euclidean etex, p52);
label.bot(btex \strut geometry etex, p52+(0,-spA));

label.bot(btex \strut Cartesian etex, p53);
label.bot(btex \strut geometry etex, p53+(0,-spA));

pickup pencircle scaled penLN;
S_arrowspace(p41, p42, spB, 1, black);
S_arrowspace(p43, p44, spB, 1, black);

label.top(btex \strut$\psi$ etex, 0.5[p43,p44]);

drawdblarrow p12--p10--p11--p13;
label.lft(btex ? etex, p12);
label.lft(btex ? etex, p13+(1pt,0));

drawdblarrow p22--p20--p21--p23;
draw p24--p25;
draw (p26+(-sepD,0))--(p26+(sepD,0));
draw (p27+(-sepD,0))--(p27+(sepD,0));

endfig;
end
