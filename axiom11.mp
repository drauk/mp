% tex/conc/mp/axiom11.mp   2017-9-23   Alan U. Kennington.
% $Id: tex/conc/mp/axiom11.mp 631e2d0fd4 2017-09-23 03:47:28Z Alan U. Kennington $
% ZF regularity axiom versus Russell's paradox.

input mapmax
input centmax
% verbatimtex
% \input akmath
% \input dgmpmax
% etex

beginfig(1);
pair p[], midpt;
path pat[];

q := 0.8;
r := 1.25cm;
rr := q * r;
d := 2r;
ang := 0.3;
angT := 2;
gapA := 0bp;

dx := d + 1.8cm;
penPT := 3pt;
penLN := 0.5pt;
penARROW := 0.5pt;

p1 := (0,0);
midpt := p1;
pat1 := (fullcircle scaled d) yscaled q shifted p1;

p11 := p1 + (-r/2, 0);
p12 := p1 + (r/3, 0);
p13 := p1 + (r/3, -0.6q*r);
p14 := p13 + (0.8r, -0.2r);
p15 := p1 + (r/2, q*r/2);

p40 := point 2.5 of pat1;
p41 := point 2 of pat1;
p42 := point 6 of pat1;

pickup pencircle scaled penLN;
draw p41--p42 dashed evenly;

pickup pencircle scaled penLN;
draw pat1;
label.top(btex $x$ etex, p40);

pickup pencircle scaled penPT;
draw p11;
draw p12;
draw p15;
label.llft(btex $x$ etex, p11);
label.lrt(btex $z_2$ etex, p12);
label.lrt(btex $z_1$ etex, p15);

pickup pencircle scaled penARROW;
S_arrowspace(p14, p13, gapA, 1, black);
label.rt(btex $x\setminus\{x\}$ etex, p14);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
