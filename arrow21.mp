% tex/conc/mp/arrow21.mp   2011-12-21   Alan U. Kennington.
% $Id: tex/conc/mp/arrow21.mp afecea57af 2011-12-21 03:47:00Z Alan U. Kennington $
% Norm on a module over a ring.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

a := 2.0cm;
b := 2.0cm;
q := 0.5cm;
qq := 0.38cm;
cr := 5pt;
theta := 1;
d := 15pt;

w0 := (0,0);
w1 := (0,b);
w2 := (a,b);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex $M$ etex, w0);
label(btex $\llap{$\lambda\in{}$}R$ etex, w1);
label(btex $S$ etex, w2);

% The arrows.
pickup pencircle scaled 0.5bp;
S_arrowspaces(w0,w1,qq,qq,2,black);
S_arrowspaces(w0,w2,q,q,1,black);
S_arrowspaces(w1,w2,qq,q,1,black);

draw fullcircle scaled cr shifted 0.56[w0,w1];

% The arrow labels.
label.lft(btex $L_\lambda$ etex, 0.56[w0,w1]+(-4pt,0));
label.lrt(btex $\psi$ etex, 0.56[w0,w2]+(0,0));
label.top(btex $\phi$ etex, 0.45[w1,w2]);

pat1 := subpath (theta, 8-theta) of fullcircle scaled d;

drawarrow pat1 rotated 90 shifted (w0+(0,-d));
label.lft(btex $L_\lambda$ etex, w0+(-0.5d,-d));

drawarrow pat1 rotated 180 shifted (w2+(d,0));
label.rt(btex $L_{\phi(\lambda)}$ etex, w2+(1.5d,0));

% label.bot(btex $\psi\circ L_\lambda=L_{\phi(\lambda)}\circ\psi$ etex,
%  w0+(0,-2d));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat2 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex $\psi\circ L_\lambda=L_{\phi(\lambda)}\circ\psi$ etex,
 0.5[w0,w2]+(20pt,-20pt));

setbounds currentpicture to pat2;

endfig;
end
