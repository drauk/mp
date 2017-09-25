% tex/conc/mp/tangmap23.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap23.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Maps for tangent bundle of a tangent bundle.

input mapmax.mp

beginfig(1);
pair w[];

d := 0.9cm;
r := d/2;
q := r*1.18;
a := 2.5cm;
b := 2.2cm;
qq := 1.4 r;

% Centres of circles.
w0 := (0,0);
w1 := w0+(0,-b);
w2 := w0+(a,0);
w3 := w0+(2a,0);
w4 := w0+(a,-b);
w5 := w0+(2a,-b);
penLN := 0.5bp;

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Labels for the circles.
label.top(btex $\strut A_M$ etex, w0+(0,q));
label.top(btex $\strut A_{T(M)}$ etex, w2+(0,q));
label.top(btex $\strut A_{T(T(M))}$ etex, w3+(0,q));

label.bot(btex $M$ etex, w1+(0,-q));
label.bot(btex $T(M)$ etex, w4+(0,-q));
label.bot(btex $T(T(M))$ etex, w5+(0,-q));

% The arrows.
S_arrowspacesstyle(w0,w1,qq,qq,0)(dashed evenly);
S_arrowspace(w1,w4,qq,1,black);
S_arrowspace(w0,w4,qq,1,black);

S_arrowspacesstyle(w2,w4,qq,qq,0)(dashed evenly);
S_arrowspace(w4,w5,qq,1,black);
S_arrowspace(w2,w5,qq,1,black);

S_arrowspacesstyle(w3,w5,qq,qq,0)(dashed evenly);

endfig;
end
