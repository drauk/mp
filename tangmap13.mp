% tex/conc/mp/tangmap13.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap13.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Differential of a map from one manifold to another.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
color col[];

d := 1.4cm;
r := d/2;
q := r*1.2;
qx := r*1.42;
a := 3.9cm;
b := 2.5cm;

unit := 0.25cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;
bx := unit * 1.2;
penRN := 0.5bp;
penCIRC := 0.5bp;
penPT := 2.5bp;
penLN := 0.5bp;

% Centres of circles.
w0=(0,0);
w1=w0+(a,0);
w2=w0+(0,b);
w3=w0+(a,b);

% The circles.
pickup pencircle scaled penCIRC;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

% Labels for the circles.
label.lft(btex $M_1$ etex, w0-(q,0));
label.rt(btex $M_2$ etex, w1+(q,0));
label.lft(btex $\reals^{n_1}$ etex, w2+(-q,0)+(unit,0));
label.rt(btex $\reals^{n_2}$ etex, w3+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;
draw w0+(r/5,0);
label.lft(btex $p$ etex, w0+(r/5,0));

draw w1+(2r/5,0);
label.lft(btex $\phi(p)$ etex, w1+(2r/5,0));

% Horizontal arrows.
w4 := w2 + (0,bx);
w5 := w3 + (0,bx);
pickup pencircle scaled penLN;
S_arrowspace(w4, w5, qx, 1, black);
label.top(btex \strut$\psi_2\circ\phi\circ\psi_1^{-1}$ etex, 0.5[w4,w5]);

S_arrowspace(w0, w1, q, 1, black);
label.bot(btex \strut$\phi$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w0, w2, q, 1, black);
label.lft(btex $\psi_1$ etex, 0.5[w2,w0]);

S_arrowspace(w1, w3, q, 1, black);
label.rt(btex $\psi_2$ etex, 0.5[w3,w1]);

% The Rn sets.
pickup pencircle scaled penRN;
S_rn(w2, unit, np, nq, xt, col0);
S_rn(w3, unit, np, nq, xt, col0);

endfig;
end
