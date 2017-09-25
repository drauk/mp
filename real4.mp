% tex/conc/mp/real4.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/real4.mp c1042c4ff2 2012-05-07 09:22:41Z Alan U. Kennington $
% Contrast between curve map and 1-manifold maps.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[], zz[];
color col[];
path pat[];

% Spacing between diagram components.
ww := 6cm;
hh := 2.35cm;

% The parameter intervals.
aa := 1.8cm;
bb := 1mm;
unitt := 0.6aa;

w0 := (0,0);
w1 := w0 + (0,-hh);
w2 := w0 + (ww,-hh);
w3 := w0 + (0,0);
w4 := w0 + (ww,0);

% The point space.
unit := 1.6cm;
a := 1.2unit;
b := 0.23unit;
bd := 3mm;
spp := 0.5mm;
sp := 2spp;
col1 := 0.6white;
col2 := 0.6white;
htt := 2.2mm;
htb := 2.2mm;
ddy := 14pt;
ddyy := 15pt;

penARROW := 0.5bp;
penAXIS := 0.5bp;
penCURVE := 0.5bp;
penREAL := 0.6bp;       % Real number sets.
penX := 1.2bp;          % Displacement arrows in real number sets.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The parameter intervals.
pickup pencircle scaled penREAL;
S_realscol(w1, aa, bb, pencircle scaled penREAL, col2, col2);
S_realscol(w2, aa, bb, pencircle scaled penREAL, col2, col2);

pickup pencircle scaled penX;
drawarrow w1+(-0.8aa,0)--w1+(0.6aa,0);
draw w2+(-0.85aa,0)--w2+(-0.2aa,0);
draw w2+(0.3aa,0)--w2+(0.7aa,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The curve and manifold.
pat1 := (-a,0)..(-a/2,b)..(0,0)..(a/2,-b)..(a,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penCURVE;
drawarrow pat1 shifted w3;

pickup pencircle scaled penARROW;
w11 := w1+(0,htb+bb);
w13 := w3+(0,-htt-bd);
drawarrow w11--w13;
label.rt(btex $\gamma:I\to M$ etex, 0.5[w11,w13]);

% label.urt(btex $S=\gamma(I)\subseteq M$ etex, point 1 of (pat1 shifted w3));
label.top(btex $S=\gamma(I)\subseteq M$ etex, w3 + (0,b));
label.top(btex curve etex, w3 + (0,b+ddyy));

label.bot(btex $I=\Domain(\gamma)\subseteq\reals$ etex, w1 + (0,-bb-ddy));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penCURVE;
draw pat1 shifted w4;

pickup pencircle scaled penARROW;
dd := 6mm;
ddd := 2.5mm;
w12 := w2+(-dd,htb+bb);         % Left arrow.
w14 := w4+(-ddd,-htt-bd);
w15 := w2+(dd,htb+bb);          % Right arrow.
w16 := w4+(ddd,-htt-bd);
drawarrow w14--w12;
drawarrow w16--w15;
label.lft(btex $\psi_1:S\arrowcirc\reals$ etex, 0.5[w12,w14]);
label.rt(btex $\psi_2:S\arrowcirc\reals$ etex, 0.5[w15,w16]);

label.top(btex $\Domain(\psi_1),\Domain(\psi_2)\subseteq S\subseteq M$ etex,
 w4 + (0,b));
label.top(btex one-manifold etex, w4 + (0,b+ddyy));

label.bot(btex $\psi_1(S),\psi_2(S)\subseteq\reals$ etex, w2 + (0,-bb-ddy));

endfig;
end
