% tex/conc/mp/tangmap2.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap2.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
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
penA := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);

% The circles.
pickup pencircle scaled penA;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% The arrows.
S_arrowspace(w4,w5,q,1,black);
S_arrowspace(w2,w3,q,1,black);
S_arrowspace(w0,w1,q,1,black);
S_arrowspace(w2,w0,q,1,black);
S_arrowspace(w4,w2,q,1,black);

% Labels on the arrows.
label.top(btex $\psi^{(2)}$ etex, 0.5[w4,w5]);
label.top(btex $\psi^{(1)}$ etex, 0.5[w2,w3]);
label.top(btex $\psi$ etex, 0.5[w0,w1]);
label.lft(btex \strut$\pi$ etex, 0.5[w2,w0]);
label.lft(btex \strut$\pi^{(1)}$ etex, 0.5[w4,w2]);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

% Labels for the circles.
label.lft(btex $M$ etex, w0-(q,0));
label.rt(btex $\reals^n$ etex, w1+(q,0));
label.lft(btex $T(M)$ etex, w2-(q,0));
label.rt(btex $\reals^{2n}$ etex, w3+(q,0));
label.lft(btex $T(T(M))$ etex, w4-(q,0));
label.rt(btex $\reals^{4n}$ etex, w5+(q,0));

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
