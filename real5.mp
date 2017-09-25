% tex/conc/mp/real5.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/real5.mp c1042c4ff2 2012-05-07 09:22:41Z Alan U. Kennington $
% Inverse manifold atlas for a curve.

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
aa := 1.0cm;
bb := 1mm;
unitt := 0.6aa;
cc := 3cm;

w0 := (0,0);
w1 := w0 + (0,-hh);     % Centre interval.
w2 := w0 + (ww,-hh);
w3 := w0 + (0,0);
w4 := w0 + (ww,0);
w5 := w0 + (-cc,-hh);   % Left interval.
w6 := w0 + (cc,-hh);    % Right interval.

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
dd := 14mm;
ddd := 7mm;

penARROW := 0.5bp;
penCURVE := 0.5bp;
penREAL := 0.6bp;       % Real number sets.
penX := 1.2bp;          % Displacement arrows in real number sets.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The parameter intervals.
pickup pencircle scaled penREAL;
S_realscol(w1, aa, bb, pencircle scaled penREAL, col2, col2);
S_realscol(w5, aa, bb, pencircle scaled penREAL, col2, col2);
S_realscol(w6, aa, bb, pencircle scaled penREAL, col2, col2);

pickup pencircle scaled penX;
draw w1+(-0.8aa,0)--w1+(0.6aa,0);
draw w5+(-0.6aa,0)--w5+(0.7aa,0);
draw w6+(-0.9aa,0)--w6+(0.5aa,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The curve and manifold.
pat1 := (-a,0)..(-a/2,b)..(0,0)..(a/3,-b)..(2a/3,0)..(a,b/2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penCURVE;
draw pat1 shifted w3;

pickup pencircle scaled penARROW;
ff := 0.25;
fff := 0.82;
w11 := ff[w3,w1];               % Middle arrow.
w12 := fff[w3,w1];
w13 := ff[w3,w5];               % Middle arrow.
w14 := fff[w3,w5];
w15 := ff[w3,w6];               % Middle arrow.
w16 := fff[w3,w6];

drawarrow w12--w11;
drawarrow w14--w13;
drawarrow w16--w15;
label.lft(btex $\gamma_2$ etex, 0.5[w11,w12]);
label.ulft(btex $\gamma_1$ etex, 0.5[w13,w14]);
label.urt(btex $\gamma_3$ etex, 0.5[w15,w16]);

label.top(btex
 $S=\bigcup\limits_{\gamma\in A}\Image(\gamma)\subseteq M$ etex, w3 + (0,b));

label.bot(btex $\Domain(\gamma_1)\subseteq\reals$ etex, w5 + (0,-bb-ddy));
label.bot(btex $\Domain(\gamma_2)\subseteq\reals$ etex, w1 + (0,-bb-ddy));
label.bot(btex $\Domain(\gamma_3)\subseteq\reals$ etex, w6 + (0,-bb-ddy));

endfig;
end
