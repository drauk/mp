% tex/conc/mp/fibmap44.mp   2017-6-24   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap44.mp dcc15a4c5d 2017-06-24 09:02:41Z Alan U. Kennington $
% Maps and spaces for associated topological vector and vector-tuple bundles.

input mapmax
input centmax
verbatimtex
\input akmath
etex

beginfig(1);
pair w[], midpt;
path pat[];

d := 0.8cm;
r := d/2;
q := r + 1pt;
qq := r + 3.0bp;
a := 3.1cm;
b := 1.78cm;
dcirc := 4.5pt;     % Circles on arrows.
gap := 3pt;         % Separation of chart arrows.

penARROW := 0.5bp;
penLN := 0.5bp;
penPT := 2.5bp;

dA := 11pt;
theta := 0;
pat1 := fullcircle scaled dA;
pat2 := subpath (4+theta, -theta) of pat1;
pat3 := fullcircle scaled dcirc;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w1 := w0+(a/2,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
w6 := w0+(a/2,3b);
midpt := 0.5[w2,w3];

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;
draw fullcircle scaled d shifted w6;

% Labels for the circles.
label.rt(btex\strut $M$ etex, w1+(q,0));
label.lft(btex\strut $T(M)$ etex, w2-(q,0));
label.rt(btex\strut $T^r(M)$ etex, w3+(q,0));
label.lft(btex\strut $F=\reals^n$ etex, w4-(q,0));
label.rt(btex\strut $F^r\equiv(\reals^n)^r$ etex, w5+(q,0));
label.rt(btex\strut $G=\gp{GL}(n)$ etex, w6+(q,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Explanatory labels.
w40 := (xpart(w2), ypart(w1));
w41 := (xpart(w3), ypart(w1));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w30 := w6 + (0,q);
w31 := point 2 of pat1 shifted w30;
w32 := w31 + (0, dcirc/2);
pickup pencircle scaled penARROW;
drawarrow pat2 shifted w30;
draw pat3 shifted w31;
label.top(btex $\sigma$ etex, w32);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
pickup pencircle scaled penLN;
w12 := 0.5[w2,w4];
w13 := 0.5[w3,w5];
sepL := qq + 8pt;
sepR := qq + 20pt;
S_arrowspaces(w12,w13,sepL,sepR,1,black);
S_labelspaces(w14)(w12,w13,sepL,sepR,0.5);
label.top(btex\strut $h$ etex, w14);

% Vertical arrows.
S_arrowspace(w2, w1, qq, 1, black);
label.llft(btex\strut $\pi$ etex, 0.6[w1,w2]);

S_arrowspace(w3, w1, qq, 1, black);
label.lrt(btex\strut $\pi^r$ etex, 0.6[w1,w3]);

S_arrowspace(w4+(-gap,0), w2+(-gap,0), qq, 2, black);
S_arrowspace(w4+(gap,0), w2+(gap,0), qq, 2, black);
label.lft(btex \strut$\phi_1$ etex, 0.5[w4,w2]+(-gap,0));
label.rt(btex \strut$\phi_2$ etex, 0.5[w4,w2]+(gap,0));

S_arrowspace(w5+(-gap,0), w3+(-gap,0), qq, 2, black);
S_arrowspace(w5+(gap,0), w3+(gap,0), qq, 2, black);
label.lft(btex\strut $h(\phi_1)$ etex, 0.5[w5,w3]+(-gap,0));
label.rt(btex\strut $h(\phi_2)$ etex, 0.5[w5,w3]+(gap,0));

S_arrowspace(w6, w4, qq, 1, black);
w10 := 0.47[w6,w4];
draw fullcircle scaled dcirc shifted w10;
label.ulft(btex\strut $\mu$ etex, w10+(-dcirc/2,0));

S_arrowspace(w6, w5, qq, 1, black);
w10 := 0.47[w6,w5];
draw fullcircle scaled dcirc shifted w10;
label.urt(btex \strut$\mu^r$ etex, w10+(dcirc/2,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some points.
pickup pencircle scaled penPT;
if 0=1:
w20 := w5 + (r/4,0);
draw w20;
label.lft(btex\strut $y$ etex, w20);
fi

w21 := w1 + (r/4,0);
draw w21;
label.lft(btex\strut $p$ etex, w21);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some labels to define phi_k and h(phi_k).
label.lft(btex $\phi_k=\Phi(\psi_k),\; k=1,2$ etex, w40);
label.rt(btex $h(\phi_k)=\Phi^r(\psi_k),\; k=1,2$ etex, w41);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
