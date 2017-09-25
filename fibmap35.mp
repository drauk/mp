% tex/conc/mp/fibmap35.mp   2017-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap35.mp ed282b9812 2017-01-15 12:19:49Z Alan U. Kennington $
% Maps for definition of differentiable groupless fibre bundle with fibre F.

input mapmax
input centmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[], midpt;
color col[];

d := 0.9cm;
r := d/2;
q := r + 0.9mm;
qq := r + 2mm;
a := 2.2cm;
b := a;
bb := 2.4cm;
dd := 0.1cm;
bls := 13bp;            % Baselineskip.

unit := 0.2cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;

penLN := 0.5bp;
penPT := 2.5bp;
penRN := 0.4bp;

% Centres of circles.
w0 := (0,0);            % Set E.
w1 := w0+(0,-b);        % Set M.
w2 := w0+(a,0);         % Set F.
w4 := w0+(a,-b);        % Set M x F.
w5 := w0+(-bb,0);       % Chart space for E.
w6 := w1+(-bb,0);       % Chart space for M.
w7 := w2+(bb,0);        % Chart space for F.
midpt := 0.5[w0,w4];        % For centring diagram inside bounding box.

pickup pencircle scaled penLN;
S_subset(w0,d,1.7,-0.3,0.9,-45);
S_subset(w1,d,1.7,-0.3,0.9,45);
S_subset(w4,d,1.7,-0.3,0.9,135);

% The circles.
draw fullcircle scaled d shifted w2;

% Labels for the circles.
label.top(btex $\pi^{-1}(U)\subseteq E$ etex, w0+(0,q));
label.bot(btex $U\subseteq M$ etex, w1+(0,-q));
label.top(btex $F$ etex, w2+(0,q));
label.bot(btex $U\times F\subseteq M\times F$ etex, w4+(0,-q));

pickup pencircle scaled penRN;
S_rn(w5, unit, np, nq, xt, col0);
S_rn(w6, unit, np, nq, xt, col0);
S_rn(w7, unit, np, nq, xt, col0);

% Coordinates for ends of arrows.
x0 := w0+(0,-q);
y0 := w1+(0,q);
v0 := 0.5[x0,y0];

x1 := w0+(q,0);
y1 := w2+(-q,0);
v1 := 0.5[x1,y1];

x3 := w0+q*((w4-w0)/length(w4-w0));
y3 := w4-q*((w4-w0)/length(w4-w0));

% The arrows.
pickup pencircle scaled penLN;
drawarrow x0--y0;
drawarrow x1--y1;
drawarrow x3--y3;

% Labels on the arrows.
label.lft(btex $\pi$ etex, v0);
label.top(btex $\phi$ etex, v1);
S_tiltlabel_top_up(btex $\pi\times\phi$ etex, 0.5[w0,w4], angle(w4-w0), 0pt);

label.lft(btex $\reals^m$ etex, w5+(-(np+xt)*unit,0));
label.lft(btex $m=n+q$ etex, w5+(-(np+xt)*unit,-bls));
label.lft(btex $\reals^n$ etex, w6+(-(np+xt)*unit,0));
label.rt(btex $\reals^q$ etex, w7+((np+3xt)*unit,0));

S_arrowspaces(w0, w5, r+dd, (np+xt)*unit+3dd, 1, black);
S_arrowspaces(w1, w6, r+dd, (np+xt)*unit+3dd, 1, black);
S_arrowspaces(w2, w7, r+dd, (np+xt)*unit+dd, 1, black);

label.top(btex $\psi_E$ etex, 0.5[w0,w5]+(dd,0));
label.top(btex $\psi_M$ etex, 0.5[w1,w6]+(dd,0));
label.top(btex $\psi_F$ etex, 0.5[w2,w7]);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
