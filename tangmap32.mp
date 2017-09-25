% tex/conc/mp/tangmap32.mp   2015-10-31   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap32.mp becb01fedb 2015-10-30 14:05:15Z Alan U. Kennington $
% Charts for tangent space of a tangent space.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
path pat[];

d := 0.9cm;
r := d/2;
q := r*1.28;
a := 2.5cm;
b := 1.8cm;
ratA := 0.45;
penA := 0.5bp;

% Centres of circles.
w0 := (0,0);        % T^*(M).
w1 := w0+(a,0);
w2 := w0+(0,b);     % M.
w3 := w0+(a,b);
w4 := w0+(0,2b);    % T(M).
w5 := w0+(a,2b);
w6 := w0+(-a,0);
w7 := w4+(-a,0);

% The circles.
pickup pencircle scaled penA;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;
draw fullcircle scaled d shifted w6;
draw fullcircle scaled d shifted w7;

% The arrows.
S_arrowspace(w4,w5,q,1,black);
S_arrowspace(w2,w3,q,1,black);
S_arrowspace(w0,w1,q,1,black);

S_arrowspace(w4,w2,q,1,black);
S_arrowspace(w2,w0,q,2,black);

S_arrowspace(w4,w7,q,1,black);
S_arrowspace(w0,w6,q,1,black);

% Labels on the arrows.
label.top(btex $\Phi(\psi)$ etex, 0.5[w4,w5]);
label.top(btex $\psi$ etex, 0.5[w2,w3]);
label.top(btex $\Phi^*(\psi)$ etex, 0.5[w0,w1]);

label.lft(btex \strut$\pi$ etex, ratA[w4,w2]);
label.lft(btex \strut$\pi^*$ etex, ratA[w0,w2]);

label.top(btex $\Psi(\psi)$ etex, 0.5[w4,w7]);
label.top(btex $\Psi^*(\psi)$ etex, 0.5[w0,w6]);

% Labels for the circles.
label.bot(btex \strut$T^*(M)$ etex, w0+(0,-q));
label.rt(btex \strut$\reals^n$ etex, w1+(q,0));

label.lft(btex \strut$M$ etex, w2-(q,0));
label.rt(btex \strut$\reals^n$ etex, w3+(q,0));

label.top(btex \strut$T(M)$ etex, w4+(0,q));
label.rt(btex \strut$\reals^n$ etex, w5+(q,0));

label.lft(btex \strut$\reals^{2n}$ etex, w6+(-q,0));
label.lft(btex \strut$\reals^{2n}$ etex, w7+(-q,0));

endfig;
end
