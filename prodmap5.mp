% tex/conc/mp/prodmap5.mp   2015-9-24   Alan U. Kennington.
% $Id: tex/conc/mp/prodmap5.mp 259c107b1f 2015-09-24 10:22:38Z Alan U. Kennington $
% Set of maps for homeomorphism for subset for product topology.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[], p, q, v;
color col[];
path pat;

d := 1.3cm;
r := d/2;
rr := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
a := 3.5cm;
aa := 3.0cm;
b := 3.5cm;
spD := 1.5pt;

unit := 0.2cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;
spRN := 4.5pt;
spRNy := 2.5pt;

penLN := 0.5bp;
penPT := 2.5bp;
penRN := 0.4bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(-aa,0);
w5 := w3+(aa,0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.llft(btex $X_1$ etex, w0+(-ll+2pt,0)rotated45);
label.rt(btex $X_1\times X_2$ etex, w1+(ll,0));
label.lft(btex $Y$ etex, w2+(-ll,0));
label.rt(btex $X_2$ etex, w3+(ll,0)rotated-45);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Straight arrows.
pickup pencircle scaled penLN;
v := 0.5[w2,w1];
S_arrowspace(w2, w1, rr, 1, black);
S_tiltlabel_top_up(btex $\phi_1\times\phi_2\rlap{${}:$}$ etex,
 v, angle(w1-w2), spD);
S_tiltlabel_bot_up(btex $Y\approx X_1\times X_2$ etex,
 v, angle(w1-w2), -spD);

S_arrowspace(w2, w3, rr, 1, black);
label.top(btex $\phi_2$ etex, 0.5[w2,w3]);

S_arrowspace(w2, w0, rr, 1, black);
label.lft(btex $\phi_1$ etex, 0.5[w2,w0]);

S_arrowspace(w1, w0, rr, 1, black);
label.top(btex $\Pi_1$ etex, 0.5[w1,w0]);

S_arrowspace(w1, w3, rr, 1, black);
label.rt(btex $\Pi_2$ etex, 0.5[w1,w3]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside sets.
p := w3 + (-r/4,0);
pickup pencircle scaled penPT;
draw p;
label.rt(btex $x_2$ etex, p);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Subset of AxB.
offs := 0.41;
pickup pencircle scaled penLN;
% p := w1 + (r/4,-r/4);
p := w1;
pat := fullcircle scaled (r*0.8) shifted p;
fill pat withcolor 0.9white;
draw pat;

p := w1 + (-1.5r,-r);
q := w1 + (-r*offs,-r*offs);
pickup pencircle scaled penLN;
drawarrow p{dir0}..{dir45}q withcolor0.5white;
label.lft(btex $X_1\times\{x_2\}$ etex, p);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Subset of X.
pickup pencircle scaled penLN;
% p := w2 + (-r/4,r/4);
p := w2;
pat := fullcircle scaled (r*0.8) shifted p;
fill pat withcolor 0.9white;
draw pat;

p := w2 + (-1.5r,-r);
q := w2 + (-r*offs,-r*offs);
pickup pencircle scaled penLN;
drawarrow p{dir0}..{dir45}q withcolor0.5white;
label.lft(btex $\phi_2^{-1}(\{x_2\})$ etex, p);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Coordinate patches.
pickup pencircle scaled penRN;
S_rn(w4, unit, np, nq, xt, col0);
S_rn(w5, unit, np, nq, xt, col0);
label.bot(btex $\reals^{n_1}$ etex, w4+(0,-(np+xt)*unit-spRNy));
label.bot(btex $\reals^{n_2}$ etex, w5+(0,-(np+xt)*unit-spRNy));

S_arrowspaces(w0, w4, rr, (np+1+xt)*unit+spRN, 1, black);
label.top(btex $\psi_1$ etex, 0.5[w0,w4]);

S_arrowspaces(w3, w5, rr, (np+xt)*unit+spRN, 1, black);
label.top(btex $\psi_2$ etex, 0.5[w3,w5]);

endfig;
end
