% tex/conc/mp/tangmap17.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap17.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Differential of a map, showing vectors and operators.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

d := 1.0cm;
r := d/2;
q := r*1.2;
a := 3.6cm;
b := 2.1cm;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $T(M_1)$ etex, w0+(-q,0));
label.rt(btex $T(M_2)$ etex, w1+(q,0));
label.lft(btex $\opT(M_1)$ etex, w2+(-q,0));
label.rt(btex $\opT(M_2)$ etex, w3+(q,0));

% Horizontal arrows.
S_arrowspace(w2,w3,q,1,black);
label.top(btex \strut$(d^{[2]}\phi)_p$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.bot(btex \strut$(d^{[2]}\phi)_p$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w0, w2, q, 1, black);
label.lft(btex $D$ etex, 0.5[w2,w0]);

S_arrowspace(w1, w3, q, 1, black);
label.rt(btex $D$ etex, 0.5[w3,w1]);

endfig;
end
