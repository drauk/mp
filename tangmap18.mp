% tex/conc/mp/tangmap18.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap18.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Differential of a map from one manifold to another.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

d := 1.2cm;
r := d/2;
q := r*1.2;
a := 3.3cm;
b := 2.1cm;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Labels for the circles.
label.lft(btex $M_1$ etex, w0-(q,0));
label.rt(btex $M_2$ etex, w1+(q,0));
label.lft(btex $T(M_1)$ etex, w2-(q,0));
label.rt(btex $T(M_2)$ etex, w3+(q,0));
label.lft(btex $T(T(M_1))$ etex, w4-(q,0));
label.rt(btex $T(T(M_2))$ etex, w5+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;
draw w0+(r/8,0);
label.lft(btex $\scriptstyle p$ etex, w0+(r/8,0));

draw w1+(r/2,0);
label.lft(btex $\scriptstyle \phi(p)$ etex, w1+(r/2,0));

draw w2+(r/8,0);
label.lft(btex $\scriptstyle L$ etex, w2+(r/8,0));

draw w3+(0.7r,0);
label.lft(btex $\scriptstyle \phi_*(L)$ etex, w3+(0.7r,0));

draw w4+(r/8,0);
label.lft(btex $\scriptstyle z$ etex, w4+(r/8,0));

draw w5+(3r/4,0);
label.lft(btex $\scriptstyle \phi_{**}(z)$ etex, w5+(3r/4,0));

% Horizontal arrows.
pickup pencircle scaled penLN;
S_arrowspace(w4,w5,q,1,black);
label.top(btex \strut$\phi_{**}$ etex, 0.5[w4,w5]);

S_arrowspace(w2,w3,q,1,black);
label.top(btex \strut$\phi_*$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.top(btex \strut$\phi$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w2, w0, q, 1, black);
label.lft(btex \strut$\pi_1$ etex, 0.5[w0,w2]);

S_arrowspace(w3, w1, q, 1, black);
label.rt(btex \strut$\pi_2$ etex, 0.5[w1,w3]);

S_arrowspace(w4, w2, q, 1, black);
label.lft(btex \strut$\tilde\pi_1$ etex, 0.5[w4,w2]);

S_arrowspace(w5, w3, q, 1, black);
label.rt(btex \strut$\tilde\pi_2$ etex, 0.5[w5,w3]);

endfig;
end
