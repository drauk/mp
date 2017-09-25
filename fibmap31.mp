% tex/conc/mp/fibmap31.mp   2015-10-26   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap31.mp d20b973ae3 2015-10-26 10:06:59Z Alan U. Kennington $
% Relation between connection on fibration and vector field on fibre space.

input mapmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
% pair v[], w[], x[], y[];
pair w[];
path pat[];

d := 1.25cm;
r := d/2;
q := r*1.2;
a := 4.5cm;
b := 1.6cm;

penPT := 2.5bp;
penLN := 0.5bp;

nA := 5;
thetA := -60;
lenA := r/2;
thetB := -80;
lenB := 0.65r;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $E$ etex, w0-(q,0));
label.rt(btex $F$ etex, w1+(q,0));

% label.top(btex $\konv_V\in\XX(T(E)\vertXX E_p)$ etex, w2+(0,q));
label.top(btex $\konv_V$ etex, w2+(0,q));
% label.lft(btex $\XX(T(E)\vertXX E_p)$ etex, w2+(-q,0));

% label.top(btex $\phi_*\circ\konv_V\in\XX(T(F))$ etex, w3+(0,q));
label.top(btex $\phi_*\circ\konv_V$ etex, w3+(0,q));
% label.rt(btex $\XX(T(F))$ etex, w3+(q,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside circles.
pickup pencircle scaled penPT;
w10 := w0+(r/8,0);
draw w10;
label.lft(btex $\scriptstyle z$ etex, w10);

pickup pencircle scaled penPT;
w10 := w1+(r/2,0);
draw w10;
label.lft(btex $\scriptstyle \phi(z)$ etex, w10);

for i=0 upto nA - 1:
    ang := (i/nA)*360;
    w10 := w2 + ((0.4r,0) rotated ang);
    w11 := w10 + ((lenA,0) rotated (ang+thetA));
    pickup pencircle scaled penLN;
    drawarrow w10--w11;
    pickup pencircle scaled penPT;
    draw w10;
    endfor

for i=0 upto nA - 1:
    ang := ((i+0.5)/nA) * 360;
    w10 := w3 + ((0.45r,0) rotated ang);
    w11 := w10 + ((lenB,0) rotated (ang+thetB));
    pickup pencircle scaled penLN;
    drawarrow w10--w11;
    pickup pencircle scaled penPT;
    draw w10;
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
pickup pencircle scaled penLN;
S_arrowspace(w2,w3,q,1,black);
label.top(btex\strut $\phi_*$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.bot(btex\strut $\phi$ etex, 0.5[w0,w1]);

%==============================================================================
% Save the current picture bounding box to save centring of the diagram.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.lft(btex $\XX(T(E)\vertXX E_p)$ etex, w2+(-q,0));
label.rt(btex $\XX(T(F))$ etex, w3+(q,0));

setbounds currentpicture to pat1;

endfig;
end
