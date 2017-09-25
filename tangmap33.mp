% tex/conc/mp/tangmap33.mp   2015-10-31   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap33.mp 9638a2e725 2015-10-30 17:48:09Z Alan U. Kennington $
% Curves and real-valued functions on a differentiable manifold.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
path pat[];

d := 0.8cm;
r := d/2;
q := r + 3pt;
qq := r;
a := 2.2cm;
b := 1.7cm;
ratA := 0.45;
penA := 0.5bp;

% Centres of circles.
w0 := (0,0);                % Domain(gamma).
w2 := w0+(0,b);             % M.
w3 := w0+(a,b);             % R^n.
w4 := w0+(0,2b);            % Range(f).

% The circles.
pickup pencircle scaled penA;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;

% The arrows.
S_arrowspace(w4,w3,q,2,black);
S_arrowspace(w2,w3,q,1,black);
S_arrowspace(w0,w3,q,1,black);

S_arrowspace(w2,w0,q,2,black);
S_arrowspace(w2,w4,q,1,black);

% Labels on the arrows.
label.bot(btex $\psi$ etex, 0.5[w2,w3]+(-5pt,0));

label.lft(btex\strut $f$ etex, ratA[w2,w4]);
label.lft(btex\strut $\gamma$ etex, ratA[w0,w2]);

% Labels for the circles.
label.lft(btex\strut $\reals$ etex, w0-(qq,0));
label.lft(btex\strut $M$ etex, w2-(qq,0));
label.rt(btex\strut $\reals^n$ etex, w3+(qq,0));
label.lft(btex\strut $\reals$ etex, w4-(qq,0));

S_tiltlabel_top(btex $f\circ\psi\rlap{${}^{-1}$}$ etex,
 0.5[w4,w3], angle(w3-w4));
S_tiltlabel_bot(btex $\psi\circ\gamma$ etex, 0.5[w0,w3], angle(w3-w0));

endfig;
end
