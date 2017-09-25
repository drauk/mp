% tex/conc/mp/fibmap8.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/fibmap8.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Maps for the definition of a differentiable principal fibre bundle.

input mapmax

beginfig(1);
pair v[], w[], x[], y[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.5cm;
b := 2.5cm;
e := 5pt;              % Circle on arrow.
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);           % Set P.
w1 := w0+(0,-b);       % Set B.
w2 := w0+(a,0);        % Set G as fibre space.
w3 := w0+(2a,0);       % Set G as structure group.
w4 := w0+(a,-b);       % Set B x G.

pickup pencircle scaled penLN;
S_subset(w0,d,2.5,0.1,0.9,-45);
S_subset(w1,d,2.5,0.1,0.9,45);
S_subset(w4,d,2.5,0.1,0.9,135);

% The circles.
% draw fullcircle scaled d shifted w0;
% draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $q^{-1}(U)\subseteq P$ etex, w0-(q,0));
label.lft(btex $U\subseteq B$ etex, w1-(q,0));
label.top(btex $G$ etex, w2+(0,q));
label.top(btex $G$ etex, w3+(0,q));
label.rt(btex $U\times G\subseteq B\times G$ etex, w4+(q,0));

% Subset of P.
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
% label.lrt(btex $q^{-1}(U)$ etex, w0+((r,0) rotated -45));
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

x4 := w0+(q,0)rotated45;
y4 := w2+(-q,0)rotated-45;
v4 := 0.5[x4,y4]+(0,q);

% The arrows.
drawarrow x0..y0;
drawarrow y1..x1;
drawarrow x2..y2;
drawarrow x3..y3;
drawarrow x4..v4..y4;

% Put a circle on the G->G arrow.
draw fullcircle scaled e shifted v1;
draw fullcircle scaled e shifted v2;

% Labels on the arrows.
label.lft(btex $q$ etex, v0);
label.top(btex $R_g$ etex, v1+(0,e/2));
label.top(btex $L_g$ etex, v2+(0,e/2));
label.top(btex $q\times\phi$ etex rotated-45, v3);
label.top(btex $\phi$ etex, v4);

endfig;
end
