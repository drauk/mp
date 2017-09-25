% tex/conc/mp/tangmap7.mp   2016-6-11   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap7.mp 8e9f28d0e8 2016-06-11 11:08:36Z Alan U. Kennington $
% Differential of a map from one manifold to another.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[];

d := 1.2cm;
r := d/2;
q := r*1.2;
a := 2.7cm;
b := 2.0cm;
penRN := 0.5bp;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

% Labels for the circles.
label.lft(btex $M_1$ etex, w0-(q,0));
label.rt(btex $M_2$ etex, w1+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;
draw w0+(r/4,0);
label.lft(btex $p$ etex, w0+(r/4,0));

draw w1+(r/2,0);
label.lft(btex $\phi(p)$ etex, w1+(r/2,0));

% Horizontal arrows.
x0 := w0+(q,0);
y0 := w1+(-q,0);
v0 := 0.5[x0,y0];
pickup pencircle scaled penLN;
drawarrow x0--y0;
label.top(btex $\phi$ etex, v0);

% The real numbers.
w4 := w0+(a/2,-b);
S_reals(w4,a/2,a/20,pencircle scaled penRN);

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

endfig;
end
