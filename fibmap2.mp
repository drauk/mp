% tex/conc/mp/fibmap2.mp   2012-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap2.mp ff78261815 2015-05-09 08:15:17Z Alan U. Kennington $
% Maps for the definition of a fibre bundle.

input mapmax.mp

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
w0 := (0,0);           % Set E.
w1 := w0+(0,-b);       % Set B.
w2 := w0+(a,0);        % Set F.
w3 := w0+(2a,0);       % Set G.

pickup pencircle scaled penLN;
S_subset(w0,d,1.7,-0.3,0.9,-45);
S_subset(w1,d,1.7,-0.3,0.9,45);

draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $E$ etex, w0-(q,0));
label.lft(btex $B$ etex, w1-(q,0));
label.bot(btex $F$ etex, w2-(0,q));
label.bot(btex $G$ etex, w3-(0,q));

% Labels for subsets.
label.lrt(btex $\pi^{-1}(U)$ etex, w0+((r,0) rotated -45));
label.urt(btex $U$ etex, w1+((r,0) rotated 45));

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

% The arrows.
drawarrow x0..y0;
drawarrow x1..y1;
drawarrow x2..y2;

% Put a circle on the G->F arrow.
draw fullcircle scaled e shifted v2;

% Labels on the arrows.
label.lft(btex $\pi$ etex, v0);
label.top(btex $\phi$ etex, v1);
label.top(btex $f$ etex, v2+(0,e/2));

endfig;
end
