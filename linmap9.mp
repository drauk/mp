% tex/conc/mp/linmap9.mp   2013-9-1   Alan U. Kennington.
% $Id: tex/conc/mp/linmap9.mp 09b78d3d62 2015-05-09 12:19:21Z Alan U. Kennington $
% Maps and spaces for a linear space quotient.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[], p, q, v;
color colU;
path pat;

d := 1.3cm;
r := d/2;
rr := r*1.15;      % Distance for arrows.
ll := r*1.1;       % Distance for labels.
a := 2.5cm;
b := a;
penLN := 0.5bp;
penPT := 2.5bp;
colU := 0.92white;

% Centres of circles.
w0 := (0,0);
w2 := w0+(0,b);
w3 := w0+(a,b);

% The circles.
pickup pencircle scaled penLN;
fill fullcircle scaled d shifted w0 withcolor colU;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $U$ etex, w0+(-ll,0));
label.lft(btex $V$ etex, w2+(-ll,0));
label.rt(btex $V/U$ etex, w3+(ll,0));

% Arrows.
S_arrowspace(w2, w3, rr, 1, black);
label.top(btex $\theta$ etex, 0.5[w2,w3]);

S_arrowspace(w0, w2, rr, 1, black);
label.lft(btex $\id_U$ etex, 0.5[w0,w2]);

S_arrowspace(w0, w3, rr, 1, black);
label.lrt(btex $\theta\circ\id_U$ etex, 0.5[w0,w3]);

% Points inside sets.
p := w3 + (-r/4,0);
pickup pencircle scaled penPT;
draw p;
label.rt(btex $U$ etex, p);

% Subspace of V.
pickup pencircle scaled penLN;
p := w2;
pat := fullcircle scaled (r*1.0) shifted p;
fill pat withcolor colU;
draw pat;
label(btex $U$ etex, p+(0.5bp,0));

endfig;
end
