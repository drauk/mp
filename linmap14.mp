% tex/conc/mp/linmap14.mp   2015-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/linmap14.mp 9829ac3bbe 2015-07-18 18:36:52Z Alan U. Kennington $
% Maps and spaces for a linear space quotient of the kernel of a linear map.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[], p, q, v;
color colU, colV, colA, colB;
path pat[];

d := 2.5cm;
r := d/2;
dA := 1.6cm;
dB := 1.6cm;
spA := r + 2.5bp;   % Distance for arrows.
spL := r + 2.0bp;   % Distance for labels.
spYa := 3pt;
spY := 14pt;

a := 4.0cm;
penLN := 0.5bp;
penPT := 2.5bp;
penDASH := 0.6bp;
colU := 0.90 white;
colV := 0.95 white;
colA := 0.5 white;
colB := 0.5 white;

% Centres of circles.
w2 := (0,0);
w3 := w2 + (a,0);

% The circles.
pickup pencircle scaled penLN;
fill fullcircle scaled d shifted w2 withcolor colV;

% Labels for the circles.
label.lft(btex $V$ etex, w2+(-spL,0));
label.rt(btex $W$ etex, w3+(spL,0));

% Arrows.
S_arrowspace(w2, w3, spA, 1, black);
label.top(btex $\phi$ etex, 0.5[w2,w3]+(-12pt,-2pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Structure inside the spaces.
% Kernel of phi.
pickup pencircle scaled penLN;
pat1 := fullcircle scaled dA shifted w2;
fill pat1 withcolor colU;
label(btex $\ker(\phi)$ etex, w2+(0,0));

% Range of phi.
pickup pencircle scaled penLN;
pat2 := fullcircle scaled dB shifted w3;
fill pat2 withcolor colV;
label.bot(btex $\phi(V)$ etex, w3+(0,-6bp));

label.top(btex $0\rlap{${}_W$}$ etex, w3+(0,-1.5bp));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels below.
label.bot(btex $V/\ker(\phi)\approx\phi(V)$ etex,
 0.5[w2,w3]+(0,-r-spYa));
label.bot(btex $\dim(V)-\dim(\ker(\phi))=\dim(\phi(V))$ etex,
 0.5[w2,w3]+(0,-r-spYa-spY));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Lines marking the map phi.
dR := r - dB/2;
ang := angle(sqrt(a*a-dR*dR),dR);
w10 := w2 + ((0,r) rotated -ang);
w11 := w3 + ((0,dB/2) rotated -ang);
w12 := w2 + ((0,-r) rotated ang);
w13 := w3 + ((0,-dB/2) rotated ang);

dR := dA/2;
ang := angle(sqrt(a*a-dR*dR),dR);
w20 := w2 + ((0,dA/2) rotated -ang);
w21 := w3;
w22 := w2 + ((0,-dA/2) rotated ang);
w23 := w3;

pickup pencircle scaled penDASH;
draw w10--w11 dashed (evenly scaled 0.6) withcolor colA;
draw w12--w13 dashed (evenly scaled 0.6) withcolor colA;
draw w20--w21 dashed (evenly scaled 0.6) withcolor colB;
draw w22--w23 dashed (evenly scaled 0.6) withcolor colB;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the circle outlines.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw pat1;
draw pat2;

pickup pencircle scaled penPT;
draw w3;

endfig;
end
