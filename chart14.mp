% tex/conc/mp/chart14.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/chart14.mp bb10f2ed2a 2015-04-30 18:09:37Z Alan U. Kennington $
% Maps for curve in differentiable manifold.
% Based on chart13.mp.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
path pat[];
color colCurve;

d := 1.6cm;
r := d/2;
rr := 1.2r;
rrr := 1.0cm;
rrrr := 1.5cm;
a := 2.5cm;
b := 1.0cm;
unit := 0.20cm;
np := 2;
penREAL := 0.5bp;
penRN := 0.5bp;
penCIRC := 0.5bp;
penCURVE := 0.5bp;
penARROW := 0.5bp;
penPT := 2.5bp;
colCurve := 0.5white;

% Centres of circles.
w0 := (0,0);
w3 := w0+(3a/2,b);
w4 := w0+(0,2b);
w5 := w0+(-3a/2,b);

pickup pencircle scaled penRN;
% S_rn(w4, unit, np, np, 0.45, 0.7white);

% The circles.
pickup pencircle scaled penCIRC;
draw fullcircle scaled d shifted w4;

% Points inside circle.
w13 := w4 + (-1.5unit,-0.5unit);
w14 := w4 + (-2unit,1unit);
w15 := w4 + (0unit,2unit);
w16 := w4 + (2unit,0.5unit);

pickup pencircle scaled penCURVE;
pat1 := w13..w14..w15..{dir-10}w16;
w20 = direction 1 of pat1;
drawarrow pat1 withcolor colCurve;
% drawarrow w14--(w14+w20 scaled 1.5);
pickup pencircle scaled penPT;
draw w14;
label.lft(btex $p$ etex, w14);

% Label for the circle.
label.urt(btex $M$ etex, w4+(r,0)rotated35);

% The arrows.
pickup pencircle scaled penARROW;
S_arrowspaces(w4,w3,rr,rrr,1,black);
S_arrowspaces(w5,w4,rrr,rr,1,black);
S_arrowspaces(w5,w3,rrrr,rrrr,1,black);

% Labels on the arrows.
label.top(btex $\psi$ etex, 0.5[w4,w3]);
label.top(btex $\gamma$ etex, 0.5[w4,w5]);
label.bot(btex $\psi\circ\gamma$ etex, 0.5[w5,w3]);

% Two copies of the set of reals.
% S_reals(w3, a/2, a/20, pencircle scaled penREAL);
S_reals(w5, a/2, a/20, pencircle scaled penREAL);

% Coordinate space.
pickup pencircle scaled penRN;
S_rn(w3, unit, np, np, 0.45, 0.7white);

% Points in coordinate space.
w33 := w3 + (-1.5unit,-1.8unit);
w34 := w3 + (-2unit,-0.5unit);
w35 := w3 + (0unit,2unit);
w36 := w3 + (2unit,0.5unit);

pickup pencircle scaled penCURVE;
pat1 := w33..w34..w35..{dir-10}w36;
w40 = direction 1 of pat1;
drawarrow pat1 withcolor colCurve;
% drawarrow w34--(w34+w40 scaled 1.5);
pickup pencircle scaled penPT;
draw w34;
label.lft(btex $\psi(p)$ etex, w34);

label.urt(btex $\reals^n$ etex, w3+(0.5,3.0unit));

endfig;
end
