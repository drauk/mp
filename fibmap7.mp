% tex/conc/mp/fibmap7.mp   2014-4-3   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap7.mp ff78261815 2015-05-09 08:15:17Z Alan U. Kennington $
% Maps for the definition of a fibre bundle.

input mapmax

beginfig(1);
pair v[], w[], x[], y[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.5cm;
b := 2.5cm;
e := 5bp;          % Circle on arrow.
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);            % Set E.
w1 := w0+(0,-b);        % Set B.
w2 := w0+(a,0);         % Set F.
w3 := w0+(2a,0);        % Set G.
w4 := w0+(a,-b);        % Set B x F.

pickup pencircle scaled penLN;
S_subset(w0,d,1.7,-0.3,0.9,-45);
S_subset(w1,d,1.7,-0.3,0.9,45);
S_subset(w4,d,1.7,-0.3,0.9,135);

% The circles.
% draw fullcircle scaled d shifted w0;
% draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $\pi^{-1}(U)\subseteq E$ etex, w0-(q,0));
label.lft(btex $U\subseteq B$ etex, w1-(q,0));
label.bot(btex $F$ etex, w2-(0,q));
label.bot(btex $G$ etex, w3-(0,q));
label.rt(btex $U\times F\subseteq B\times F$ etex, w4+(q,0));

% Subset of E.
% w4 := w0+((r,0) rotated 30);
% w5 := w0+((0.3r,0) rotated 135);
% w6 := w0+((r,0) rotated -120);

% Subset of B.
% w7 := w1+((r,0) rotated 120);
% w8 := w1+((0.3r,0) rotated -135);
% w9 := w1+((r,0) rotated -30);

% Subsets.
% draw w4..w5..w6;
% draw w7..w8..w9;

% Labels for subsets.
% label.lrt(btex $\pi^{-1}(U)$ etex, w0+((r,0) rotated -45));
% label.urt(btex $U$ etex, w1+((r,0) rotated 45));

% Coordinates for ends of arrows.
x0 := w0+(0,-q);
y0 := w1+(0,q);
v0 := 0.5[x0,y0];

x1 := w0+(q,0);
y1 := w2+(-q,0);
v1 := 0.5[x1,y1];

x2 := w3+(-q,0);
y2 := w2+(q,0);
v2 := 0.5[x2,y2];

x3 := w0+q*((w4-w0)/length(w4-w0));
y3 := w4-q*((w4-w0)/length(w4-w0));
v3 := 0.65[x3,y3];

% The arrows.
drawarrow x0--y0;
drawarrow x1--y1;
drawarrow x2--y2;
drawarrow x3--y3;

% Put a circle on the G->F arrow.
draw fullcircle scaled e shifted v2;

% Labels on the arrows.
label.lft(btex $\pi$ etex, v0);
label.top(btex $\phi$ etex, v1);
label.top(btex $\bar\mu$ etex, v2+(0,e/2));
label.top(btex $\pi\times\phi$ etex rotated-45, v3);

endfig;
end
