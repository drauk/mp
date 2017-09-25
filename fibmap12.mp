% tex/conc/mp/fibmap12.mp   2014-4-3   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap12.mp ff78261815 2015-05-09 08:15:17Z Alan U. Kennington $
% Maps for the definition of a groupless fibre bundle.

input mapmax

beginfig(1);
pair v[], w[], x[], y[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.5cm;
b := 2.5cm;
e := 0.25cm;           % Circle on arrow.
% picture pic;

penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);           % Set E.
w1 := w0+(0,-b);       % Set B.
w2 := w0+(a,0);        % Set F.
w4 := w0+(a,-b);        % Set B x F.

pickup pencircle scaled penLN;
S_subset(w0,d,1.7,-0.3,0.9,-45);
S_subset(w1,d,1.7,-0.3,0.9,45);
S_subset(w4,d,1.7,-0.3,0.9,135);

% The circles.
draw fullcircle scaled d shifted w2;

% Labels for the circles.
label.lft(btex $\pi^{-1}(U)\subseteq E$ etex, w0-(q,0));
label.lft(btex $U\subseteq B$ etex, w1-(q,0));
label.rt(btex $\pi^{-1}(\{b\})$ etex, w2+(q,0));
label.rt(btex $U\times \pi^{-1}(\{b\})\subseteq B\times \pi^{-1}(\{b\})$ etex,
 w4+(q,0));

% Coordinates for ends of arrows.
x0 := w0+(0,-q);
y0 := w1+(0,q);
v0 := 0.5[x0,y0];

x1 := w0+(q,0);
y1 := w2+(-q,0);
v1 := 0.5[x1,y1];

x3 := w0+q*((w4-w0)/length(w4-w0));
y3 := w4-q*((w4-w0)/length(w4-w0));
v3 := 0.65[x3,y3];

% The arrows.
drawarrow x0--y0;
drawarrow x1--y1;
drawarrow x3--y3;

% Labels on the arrows.
label.lft(btex $\pi$ etex, v0);
label.top(btex $\phi$ etex, v1);
label.top(btex $\pi\times\phi$ etex rotated-45, v3);

endfig;
end
