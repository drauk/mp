% tex/conc/mp/fibmap1.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap1.mp ff78261815 2015-05-09 08:15:17Z Alan U. Kennington $
% Maps between 6 spaces for tangent frame bundle of manifold.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[];

d=0.9cm;
r=d/2;
q=r*1.2;
a=2.6cm;
b=2.3cm;
penLN := 0.5bp;

% Centres of circles.
w0=(0,0);
w1=w0+(a,0);
w2=w0+(0,b);
w3=w0+(a,b);
w4=w0+(0,2b);
w5=w0+(a,2b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
% draw fullcircle scaled d shifted w2;
% draw fullcircle scaled d shifted w3;
% draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Subsets.
S_subset(w2,d,2.5,0.05,0.9,0);
S_subset(w3,d,2.5,0.05,0.9,180);
S_subset(w4,d,2.5,0.05,0.9,0);

% Labels for the circles.
label.lft(btex $\reals^n$ etex, w0-(q,0));
label.rt(btex $\reals^n\times{\rm GL}(n)$ etex, w1+(q,0));
label.lft(btex $U\subseteq M$ etex, w2-(q,0));
label.rt(btex $U\times{\rm GL}(n)$ etex, w3+(q,0));
label.lft(btex $q^{-1}(U)$ etex, w4-(q,0));
label.rt(btex ${\rm GL}(n)$ etex, w5+(q,0));

% Coordinates for ends of arrows.
x0=w4+(q,0);
y0=w5+(-q,0);
v0=0.5[x0,y0];

x1=w4+q*(w3-w4)/abs(w3-w4);
y1=w3+q*(w4-w3)/abs(w4-w3);
v1=0.5[x1,y1];

x2=w4+q*(w1-w4)/abs(w1-w4);
y2=w1+q*(w4-w1)/abs(w4-w1);
% v2=0.82[x2,y2];
v2=0.64[x2,y2];

x3=w2+(0,-q);
y3=w0+(0,q);
v3=0.5[x3,y3];

x4=w4+(0,-q);
y4=w2+(0,q);
v4=0.5[x4,y4];

% The arrows.
drawarrow x0..y0;
drawarrow x1..y1;
drawarrow x2..y2;
drawarrow x3..y3;
drawarrow x4..y4;

% Labels on the arrows.
label.top(btex $\hat\psi$ etex, v0);
% label.urt(btex $q\times\phi_\psi$ etex, v1);
% label.urt(btex $(\psi\circ q)\times\phi_\psi$ etex, v2);
label.lft(btex $\psi$ etex, v3);
label.lft(btex $q$ etex, v4);

S_tiltlabel(btex $q\times\hat\psi$ etex, v1, angle(w3-w4));
S_tiltlabel(btex $\tilde\psi=(\psi\circ q)\times\hat\psi$ etex,
 v2, angle(w1-w4));

endfig;
end
