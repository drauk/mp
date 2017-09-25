% tex/conc/mp/chart13.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/chart13.mp bb10f2ed2a 2015-04-30 18:09:37Z Alan U. Kennington $
% Maps for tangent vector and covector.
% Formerly map125.mp.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
path pat[];

d := 1.6cm;
r := d/2;
rr := 1.2r;
rrr := 1.0cm;
a := 2.5cm;
b := 1.0cm;
unit := 0.20cm;
np := 2;
penPT := 2.5bp;
penLN := 0.5bp;
penRN := 0.4bp;
penCURVE := 0.5bp;
penREALS := 0.5bp;

% Centres of circles.
w0 := (0,0);
w3 := w0+(3a/2,b);
w4 := w0+(0,2b);
w5 := w0+(-3a/2,b);

pickup pencircle scaled penRN;
S_rn(w4, unit, np, np, 0.45, 0.7white);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w4;

% Points inside circle.
w13 := w4 + (-1.5unit,-0.5unit);
w14 := w4 + (-2unit,1unit);
w15 := w4 + (0unit,2unit);
w16 := w4 + (2unit,0.5unit);
pickup pencircle scaled penCURVE;
pat1 := w13..w14..w15..{dir-10}w16;
w20 = direction 1 of pat1;
drawarrow pat1 withcolor 0.5white;
drawarrow w14--(w14+w20 scaled 1.5);
pickup pencircle scaled penPT;
draw w14;
label.lft(btex $p$ etex, w14);

% Labels for the circles.
label.bot(btex $\reals^n$ etex, w4+(0,-r-4pt));

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w4,w3,rr,rrr,1,black);
S_arrowspaces(w4,w5,rr,rrr,2,black);

% Labels on the arrows.
label.top(btex $f$ etex, 0.5[w4,w3]);
label.top(btex $\gamma$ etex, 0.5[w4,w5]);

% Two copies of the set of reals.
S_reals(w3, a/2, a/20, pencircle scaled penREALS);
S_reals(w5, a/2, a/20, pencircle scaled penREALS);

endfig;
end
