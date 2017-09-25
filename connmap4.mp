% tex/conc/mp/connmap4.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/connmap4.mp 1bcf704d45 2015-05-09 09:51:47Z Alan U. Kennington $
% Subtraction of connection from an abstract second derivative.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

d := 1.3cm;
r := d/2;
q := r*1.2;
b := 2.4cm;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w2 := w0+(0,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w2;

% Labels for the circles.
label.lft(btex $M$ etex, w0-(q,0));
label.lft(btex $T(M)$ etex, w2-(q,0));

% Vertical arrows.
pickup pencircle scaled penLN;
S_arrowspace(w0, w2, q, 2, black);
label.lft(btex \strut$\pi$ etex, 0.5[w2,w0]);

% Points inside circles.
pickup pencircle scaled penPT;
w10 := w0 + (9pt,0);
draw w10;
label.lft(btex $\gamma(t)$ etex, w10);

w11 := w2 + (11pt,0);
draw w11;
label.lft(btex $X(t)$ etex, w11);

% Vectors.
c := b*0.9;
d := -c*0.45;
e := c*0.16;
w20 := w11 + (c,d);
w21 := w11 + (c,e);
w22 := w10 + (e-d,0);

pickup pencircle scaled penLN;
drawarrow w11--w20;
drawarrow w11--w21;
% drawarrow (w10--w22) withcolor0.4white;

pickup pencircle scaled penLN;
S_arrowspace(w20,w21,2pt,1,0.4white);
S_arrowspace(w10,w22,2pt,1,0.4white);

% Labels on arrows.
% label.top(btex $X'(t)$ etex, 0.5[w11,w21]);
draw (thelabel.lrt(btex
 \strut$\konv_{\gamma'(t)}(X(t))\in T_{X(t)}(T(M))$ etex, (0,0)))
 rotated (angle(w20-w11)) shifted (0.16[w11,w20]);
draw (thelabel.top(btex \strut$X'(t)\in T_{X(t)}(T(M))$ etex, (0,0)))
 rotated (angle(w21-w11)) shifted (0.9[w11,w21]);

label.rt(btex
 \strut$X'(t)-\konv_{\gamma'(t)}(X(t))\rlap{${}\in\ker((d\pi)_{X(t)})$}$
 etex, 0.5[w20,w21]);
label.lrt(btex
 \strut$DX(t)=\dropf_{X(t)}\bigl(X'(t)-\konv_{\gamma'(t)}(X(t))\bigr)$ etex,
 0.35[w10,w22]+(0,-3pt));
label.lrt(btex \strut$\phantom{DX(t)}\in T_{\gamma(t)}(M)$ etex,
 0.35[w10,w22]+(0,-16.5pt));

endfig;
end
