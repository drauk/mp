% tex/conc/mp/tangmap14.mp   2016-6-11   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap14.mp 8e9f28d0e8 2016-06-11 11:08:36Z Alan U. Kennington $
% Maps for differential of real-valued function for second-order operators.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[];

d := 1.2cm;
r := d/2;
rr := r*1.2;
rrr := rr*2.2;
a := 2.5cm;
b := 1.9cm;
penLN := 0.5bp;
penPT := 2.5bp;
penREALS := 0.5bp;

% Centres of circles.
w0 := (0,0);
w2 := w0+(0,b);
w3 := w0+(3a/2,b);
w4 := w0+(0,2b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w4;

% Points inside circles.
w10 := w0 + (r/4,0);
w12 := w2 + (r/4,0);
w14 := w4 + (r/4,0);
label.lft(btex $p$ etex, w10);
label.lft(btex $f$ etex, w12);
label.lft(btex $L$ etex, w14);
pickup pencircle scaled penPT;
draw w10;
draw w12;
draw w14;

% Labels for the circles.
label.lft(btex $M$ etex, w0-(rr,0));
label.lft(btex $C^2(M)$ etex, w2-(rr,0));
label.lft(btex $\overcirc T^{[2]}_p(M)$ etex, w4-(rr,0));

% Coordinates for ends of arrows.
x1 := w4+(rr*(w3-w4)/abs(w3-w4));
y1 := w3+(rrr*(w4-w3)/abs(w4-w3));
v1 := 0.5[x1,y1];

x2 := w2+rr*(w3-w2)/abs(w3-w2);
y2 := w3+rrr*(w2-w3)/abs(w2-w3);
v2 := 0.5[x2,y2];

x3 := w0+(rr*(w3-w0)/abs(w3-w0));
y3 := w3+(rrr*(w0-w3)/abs(w0-w3));
v3 := 0.5[x3,y3];

% The arrows.
pickup pencircle scaled penLN;
drawarrow x1--y1;
drawarrow x2--y2;
drawarrow x3--y3;

% Labels on the arrows.
label.top(btex $(d^{[2]}f)_p$ etex, v1+(b/10,a/10));
label.top(btex $L$ etex, v2);
label.lrt(btex $f$ etex, v3);

% The set of reals at w3.
S_reals(w3+(a/6,0), a/2, a/20, pencircle scaled penREALS);

endfig;
end
