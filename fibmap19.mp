% tex/conc/mp/fibmap19.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap19.mp ff78261815 2015-05-09 08:15:17Z Alan U. Kennington $
% Maps for fibre bundle homomorphism.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

d := 0.9cm;
r := d/2;
q := r + 5pt;
qq := r + 3.0pt;
a := 3.3cm;
b := 1.78cm;
dcirc := 4pt;       % Circles on arrows.
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
w6 := w0+(0,3b);
w7 := w0+(a,3b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;
draw fullcircle scaled d shifted w6;
draw fullcircle scaled d shifted w7;

% Labels for the circles.
label.lft(btex $B_1$ etex, w0-(q,0));
label.rt(btex $B_2$ etex, w1+(q,0));
label.lft(btex $E_1$ etex, w2-(q,0));
label.rt(btex $E_2$ etex, w3+(q,0));
label.lft(btex $F_1$ etex, w4-(q,0));
label.rt(btex $F_2$ etex, w5+(q,0));
label.lft(btex $G_1$ etex, w6-(q,0));
label.rt(btex $G_2$ etex, w7+(q,0));

% Horizontal arrows.
pickup pencircle scaled penLN;
S_arrowspace(w6,w7,qq,1,black);
label.top(btex \strut$\hat f$ etex, 0.5[w6,w7]);

S_arrowspace(w4,w5,qq,1,black);
label.top(btex \strut$\check f$ etex, 0.5[w4,w5]);

S_arrowspace(w2,w3,qq,1,black);
label.top(btex \strut$f$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,qq,1,black);
label.top(btex \strut$\tilde f$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w2, w0, qq, 1, black);
label.lft(btex \strut$\pi_1$ etex, 0.5[w0,w2]);

S_arrowspace(w3, w1, qq, 1, black);
label.rt(btex \strut$\pi_2$ etex, 0.5[w1,w3]);

S_arrowspace(w4, w2, qq, 2, black);
label.lft(btex \strut$\phi_1$ etex, 0.5[w4,w2]);

S_arrowspace(w5, w3, qq, 2, black);
label.rt(btex \strut$\phi_2$ etex, 0.5[w5,w3]);

S_arrowspace(w6, w4, qq, 1, black);
w10 := 0.45[w6,w4];
draw fullcircle scaled dcirc shifted w10;
label.lft(btex \strut$\mu_1$ etex, w10+(-dcirc/2,0));

S_arrowspace(w7, w5, qq, 1, black);
w10 := 0.45[w7,w5];
draw fullcircle scaled dcirc shifted w10;
label.rt(btex \strut$\mu_2$ etex, w10+(dcirc/2,0));

endfig;
end
