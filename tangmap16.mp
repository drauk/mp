% tex/conc/mp/tangmap16.mp   2012-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap16.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Differential of a map for second-order operators, showing charts.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair v[], w[], x[], y[];
color col[];

d := 1.2cm;
r := d/2;
q := r*1.2;
qx := r*1.42;
a := 2.7cm;
b := 2.1cm;
bb := 1.9cm;

np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;
unit := 0.25cm;
penLN := 0.5bp;
penPT := 2.5bp;
penRN := 0.5bp;
penREALS := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w5 := w0+(-a,0);
w6 := w0+(2a,0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.llft(btex $M_1$ etex, w0-(r,0)rotated55);
label.lrt(btex $M_2$ etex, w1+(r,0)rotated-55);
label.lft(btex $\opT^{[2]}_p(M_1)$ etex, w2-(q,0));
label.rt(btex $\opT^{[2]}_{\phi(p)}(M_2)$ etex, w3+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;
draw w0+(r/4,0);
label.lft(btex $p$ etex, w0+(r/4,0));

draw w1+(r/2,0);
label.lft(btex $\phi(p)$ etex, w1+(r/2,0));

draw w2+(r/4,0);
label.lft(btex $L$ etex, w2+(r/4,0));

draw w3;
label.top(btex $(d^{[2]}\phi)_p(L)$ etex, w3+(0,q));
pickup pencircle scaled penLN;
drawarrow (w3+(0,q))..(w3+(-r/4,3r/4))..{(0.5,-1)}(w3+(-r/8,r/4));

% Horizontal arrows.
x0 := w2+(q,0);
y0 := w3+(-q,0);
v0 := 0.5[x0,y0];
pickup pencircle scaled penLN;
drawarrow x0--y0;
label.top(btex \strut$(d^{[2]}\phi)_p$ etex, v0);

x0 := w0+(q,0);
y0 := w1+(-q,0);
v0 := 0.5[x0,y0];
drawarrow x0--y0;
label.top(btex \strut$\phi$ etex, v0);

% Vertical arrows.
S_arrowspace(w2, w0, q, 1, black);
label.lft(btex $\pi_1$ etex, 0.5[w0,w2]);

S_arrowspace(w3, w1, q, 1, black);
label.rt(btex $\pi_2$ etex, 0.5[w1,w3]);

% The real numbers.
w4 := w0+(a/2,-bb);
S_reals(w4,a/2,a/20,pencircle scaled penREALS);

% Diagonal arrows.
pickup pencircle scaled penLN;
x0 := w0+(w4-w0)/length(w4-w0)*q;
y0 := w4-(w4-w0)/length(w4-w0)*q/2;
v0 := 0.5[x0,y0];
drawarrow x0--y0;
label.llft(btex $f\circ\phi$ etex, v0);

x0 := w1+(w4-w1)/length(w4-w1)*q;
y0 := w4-(w4-w1)/length(w4-w1)*q/2;
v0 := 0.5[x0,y0];
drawarrow x0--y0;
label.lrt(btex $f$ etex, v0);

% The Rn sets.
pickup pencircle scaled penRN;
w7 := w5+(-unit,0);
S_rn(w7, unit, np, nq, xt, col0);
S_rn(w6, unit, np, nq, xt, col0);
label.bot(btex $\reals^{m}$ etex, w7+(0,-q));
label.bot(btex $\reals^{n}$ etex, w6+(0,-q));

% Charts.
pickup pencircle scaled penLN;
S_arrowspace(w0, w5, qx, 1, black);
label.top(btex $\psi_1$ etex, 0.5[w5,w0]);

S_arrowspace(w1, w6, qx, 1, black);
label.top(btex $\psi_2$ etex, 0.5[w6,w1]);

endfig;
end
