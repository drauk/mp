% tex/conc/mp/tangmap10.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap10.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Maps between 4 spaces for a tangent bundle.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[];
path pat[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.5cm;
b := 2.5cm;
sepA := 5pt;
sepB := 10pt;
sepC := 4pt;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);

% The circles.
pickup pencircle scaled penLN;
% draw fullcircle scaled d shifted w0;
% draw fullcircle scaled d shifted w1;
% draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
% draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Subsets.
S_subset(w2,d,2.5,0.05,0.9,0);
% S_subset(w3,d,2.5,0.05,0.9,180);
S_subset(w4,d,2.5,0.05,0.9,0);

% Coordinates for ends of arrows.
x0 := w4+(q,0);
y0 := w5+(-q,0);
v0 := 0.5[x0,y0];

x1 := w4+q*(w3-w4)/abs(w3-w4);
y1 := w3+q*(w4-w3)/abs(w4-w3);
v1 := 0.5[x1,y1];

x2 := w4+q*(w1-w4)/abs(w1-w4);
y2 := w1+q*(w4-w1)/abs(w4-w1);
% v2 := 0.82[x2,y2];
v2 := 0.64[x2,y2];

x3 := w2+(0,-q);
y3 := w0+(0,q);
v3 := 0.5[x3,y3];

x4 := w4+(0,-q);
y4 := w2+(0,q);
v4 := 0.5[x4,y4];

x5 := w2+(q,0);
y5 := w3+(-q,0);
v5 := 0.5[x5,y5];

% The arrows.
drawarrow x0..y0;
% drawarrow x1..y1;
% drawarrow x2..y2;
% drawarrow x3..y3;
drawarrow x4..y4;
drawarrow x5..y5;

% Labels on the arrows.
label.top(btex $\Phi(\psi)$ etex, v0);
% label.urt(btex $\pi\times\phi_\psi$ etex, v1);
% label.urt(btex $(\psi\circ\pi)\times\phi_\psi$ etex, v2);
% label.lft(btex $\psi$ etex, v3);
label.lft(btex $\pi$ etex, v4);
label.bot(btex $\psi$ etex, v5);

% S_tiltlabel(btex $\pi\times\hat\psi$ etex, v1, angle(w3-w4));
% S_tiltlabel(btex $\tilde\psi=(\psi\circ\pi)\times\hat\psi$ etex,
%  v2, angle(w1-w4));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Labels for the circles.
% label.lft(btex $\reals^n$ etex, w0-(q,0));
% label.rt(btex $\reals^n\times\reals^n\equiv\reals^{2n}$ etex, w1+(q,0));
label.lft(btex $\Domain(\psi)\subseteq M$ etex, w2-(q,0));
label.rt(btex $\reals^n$ etex, w3+(q,0));
label.lft(btex $\pi^{-1}(\Domain(\psi))\subseteq T(M)$ etex, w4-(q,0));
label.rt(btex $\reals^n$ etex, w5+(q,0));

label.bot(btex \strut$\Phi(\psi)\in A_{T(M)}^{\reals^n}$ etex,
 0.5[w4,w5]+(sepC,-q+sepA));
label.top(btex \strut$\psi\in A_M$ etex, 0.5[w2,w3]+(0,q-sepB));

setbounds currentpicture to pat1;

endfig;
end
