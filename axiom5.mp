% tex/conc/mp/axiom5.mp   2015-12-30   Alan U. Kennington.
% $Id: tex/conc/mp/axiom5.mp 342d65a37c 2015-12-30 09:38:56Z Alan U. Kennington $
% ZF axiom of replacement.

input mapmax.mp
% verbatimtex
% \input akmath
% \input dgmpmax
% etex

beginfig(1);
pair p[];
path pat[];

q := 0.8;
r := 1.35cm;
rr := q * r;
d := 2r;
ang := 0.3;
angT := 2;

dx := d + 1.8cm;
penPT := 3pt;
penLN := 0.5pt;

p1 := (0,0);
p2 := p1 + (dx,0);

pickup pencircle scaled penLN;
pat1 := (fullcircle scaled d) yscaled q shifted p1;
pat2 := ((fullcircle rotated 180) scaled d) yscaled q shifted p2;
draw pat1;
draw (reverse pat2) dashed evenly;

p11 := p1;
p21 := p2;
p31 := 0.5[p11,p21];
p41 := point (4-ang) of pat1;
p42 := point (4+ang) of pat2;
p43 := point (4+angT) of pat1;
p44 := point (4-angT) of pat2;

pickup pencircle scaled penPT;
draw p11;
draw p21;

label.llft(btex $x$ etex, p11);
label.lrt(btex $y$ etex, p21);

pickup pencircle scaled penLN;
S_arrowspaces(p11, p21, 4pt, 4pt, 1, black);
label.top(btex $f$ etex, p31);
label.ulft(btex $A$ etex, p41);
label.urt(btex $B$ etex, p42);
label.bot(btex\strut old etex, p43);
label.bot(btex\strut new etex, p44);

endfig;
end
