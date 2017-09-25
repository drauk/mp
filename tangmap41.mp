% tex/conc/mp/tangmap41.mp   2016-12-10   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap41.mp 784fb75aca 2016-12-09 14:42:59Z Alan U. Kennington $
% Maps between 4 spaces for a tangent vector-tuple bundle.
% The old metapost code in this file is very poor!

input mapmax
input centmax
verbatimtex
\input akmath
% \input dgmpmax
etex

beginfig(1);
pair v[], w[], x[], y[], midpt;
path pat[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.8cm;
b := 2.5cm;
sepA := 7pt;
sepB := 10pt;
sepC := 4pt;
sepD := 4pt;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
% w1 := w0+(a,0);
w2 := w0+(0,b);                 % M.
w3 := w0+(a,b);                 % Coordinates for M.
w4 := w0+(0,2b);                % F^r(M).
w5 := w0+(a,2b);                % Coordinates for F^r(M).
midpt := 0.5[w2,w5];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w5;

% Subsets.
S_subset(w2,d,2.5,0.05,0.9,0);
S_subset(w4,d,2.5,0.05,0.9,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Coordinates for ends of arrows.
x0 := w4+(q,0);
y0 := w5+(-q,0);
v0 := 0.5[x0,y0];

x1 := w4+q*(w3-w4)/abs(w3-w4);
y1 := w3+q*(w4-w3)/abs(w4-w3);
v1 := 0.5[x1,y1];

x4 := w4+(0,-q);
y4 := w2+(0,q);
v4 := 0.5[x4,y4];

x5 := w2+(q,0);
y5 := w3+(-q,0);
v5 := 0.5[x5,y5];

% The arrows.
drawarrow x0..y0;
drawarrow x4..y4;
drawarrow x5..y5;

% Labels on the arrows.
label.top(btex $\Phi^r(\psi)$ etex, v0);
label.lft(btex $\pi^r$ etex, v4);
label.bot(btex $\psi$ etex, v5);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the circles.
label.lft(btex $\Domain(\psi)\subseteq M$ etex, w2-(q,0));
label.rt(btex $\reals^n$ etex, w3+(q,0));
label.lft(btex $(\pi^r)^{-1}(\Domain(\psi))\subseteq T^r(M)$ etex,
 w4-(q,0));
label.rt(btex $(\reals^n)^r$ etex, w5+(q,0));

label.bot(btex \strut$\Phi^r(\psi)\in A_{T^r(M)}^{(\reals^n)^r}$ etex,
 0.5[w4,w5]+(sepC,-q+sepD));
label.top(btex \strut$\psi\in\atlas(M)$ etex, 0.5[w2,w3]+(0,q-sepA));

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
