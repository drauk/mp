% tex/conc/mp/logmap1.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/logmap1.mp eacf44d69b 2015-05-09 12:59:30Z Alan U. Kennington $
% Contradictory logic.

input mapmax.mp
verbatimtex
\input dgmpmax
etex

beginfig(1);
pair p[];
color col[];
path pat[];

d := 3cm;               % Diameter of set.
r := d/2;
ys := 0.9;              % Flattening factor.
dx := 0.7d;
ang := 0.5;
penPT := 2.5bp;
penLN := 0.5bp;

p1 := (0, 0);
p2 := p1 + (dx, 0);
p3 := 0.5[p1,p2];

col1 := white;
col2 := 0.92 white;

pickup pencircle scaled penLN;
pat1 := fullcircle scaled d yscaled ys shifted p1;
pat2 := fullcircle scaled d yscaled ys shifted p2;
S_venn_AB(pat1, pat2, col1, col2);
draw pat1;
draw pat2;

p11 := point (4 - ang) of pat1;
p12 := point ang of pat2;
p13 := point (4 + ang) of pat1;
p14 := point (-ang) of pat2;

label.ulft(btex \strut$\tval(P(z))=\valT$ etex, p11);
label.urt(btex \strut$\tval(P(z))=\valF$ etex, p12);
label.llft(btex \strut$Z_P$ etex, p13);
label.lrt(btex \strut$Z\setminus Z_P$ etex, p14);

pickup pencircle scaled penPT;
draw p3;
label.urt(btex $z$ etex, p3);

endfig;
end
