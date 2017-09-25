% tex/conc/mp/tangmap12.mp   2012-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap12.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Differential of map between manifolds.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

d := 1.4cm;
r := d/2;
q := r*1.2;
a := 3.6cm;
b := 2.4cm;
penPT := 2.5bp;
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
label.lft(btex $M_1$ etex, w0-(q,0));
label.rt(btex $M_2$ etex, w1+(q,0));
label.lft(btex $\reals^{n_1}$ etex, w2-(q,0));
label.rt(btex $\reals^{n_2}$ etex, w3+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;
draw w0+(r/4,0);
label.lft(btex $p$ etex, w0+(r/4,0));

draw w1+(3r/5,0);
label.lft(btex $\phi(p)$ etex, w1+(3r/5,0));

draw w2+(r/2,0);
label.lft(btex $\psi_1(p)$ etex, w2+(r/2,0));

draw w3;
label.top(btex $\psi_2(\phi(p))$ etex, w3+(0,q));

pickup pencircle scaled penLN;
drawarrow (w3+(0,q))..(w3+(-r/4,3r/4))..{(0.5,-1)}(w3+(-r/8,r/4));

% Horizontal arrows.
S_arrowspace(w2,w3,q,1,black);
label.top(btex \strut$\psi_2\circ\phi\circ\psi_1^{-1}$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.bot(btex \strut$\phi$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w0, w2, q, 1, black);
label.lft(btex $\psi_1$ etex, 0.5[w2,w0]);

S_arrowspace(w1, w3, q, 1, black);
label.rt(btex $\psi_2$ etex, 0.5[w3,w1]);

endfig;
end
