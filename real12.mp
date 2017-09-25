% tex/conc/mp/real12.mp   2012-8-2   Alan U. Kennington.
% $Id: tex/conc/mp/real12.mp 10e83d119d 2012-08-02 11:18:36Z Alan U. Kennington $
% Concatenation of curves.

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
hhB := hh + 50pt;

% The parameter intervals.
aa := 1.0cm;
aaA := 2aa;
bb := 1mm;
unitt := 0.6aa;
cc := 3cm;

w0 := (0,0);
w1 := w0 + (0,-hhB);    % Centre interval.
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
eeA := 12pt;
eeB := 16pt;
eeC := 14pt;

penARROW := 0.5bp;
penCURVE := 0.5bp;
penREAL := 0.6bp;       % Real number sets.
penX := 1.2bp;          % Displacement arrows in real number sets.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The parameter intervals.
pickup pencircle scaled penREAL;
S_realscol(w1, aaA, bb, pencircle scaled penREAL, col2, col2);
S_realscol(w5, aa, bb, pencircle scaled penREAL, col2, col2);
S_realscol(w6, aa, bb, pencircle scaled penREAL, col2, col2);

pickup pencircle scaled penX;
w23 := w5+(-0.4aa,0);       % Left.
w24 := w5+(0.7aa,0);
w25 := w6+(-0.9aa,0);       % Right.
w26 := w6+(0.6aa,0);
w39 := w1 + (-0.4aa,0);
w31 := w39+(w23-w24);       % Centre.
w32 := w39;
w33 := w39;
w34 := w39+(w26-w25);
drawarrow w23--w24;
drawarrow w25--w26;
drawarrow w31--w32;
drawarrow w33--w34;
% label.top(btex $c_1$ etex, w24);
% label.top(btex $c_2$ etex, w25);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The curve and manifold.
pat0 := (-a,0)..(-a/2,b)..(0,0)..(a/3,-b)..(2a/3,0)..(a,b/2);
lenA := length(pat0);
frA := 0.35;
pat1 := subpath(0, frA * lenA) of pat0;
pat2 := subpath(frA * lenA, lenA) of pat0;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penCURVE;
drawarrow pat1 shifted w3;
drawarrow pat2 shifted w3;

pickup pencircle scaled penARROW;
ff := 0.25;
fff := 0.82;
w11 := ff[w3,w1];               % Middle arrow.
w12 := fff[w3,w1];
w13 := ff[w3,w5]+(-eeA,0);      % Left arrow.
w14 := fff[w3,w5]+(-eeA,0);
w15 := ff[w3,w6]+(eeA,0);       % Right arrow.
w16 := fff[w3,w6]+(eeA,0);
w41 := ff[w1,w5];
w42 := fff[w1,w5];
w43 := ff[w1,w6];
w44 := fff[w1,w6];

drawarrow w12--w11;
drawarrow w14--w13;
drawarrow w16--w15;
drawarrow w42--w41;
drawarrow w44--w43;
label.lft(btex $\gamma_0$ etex, 0.5[w11,w12]);
label.ulft(btex $\gamma_1$ etex, 0.5[w13,w14]);
label.urt(btex $\gamma_2$ etex, 0.5[w15,w16]);
label.urt(btex $\beta_1$ etex, 0.5[w41,w42]);
label.ulft(btex $\beta_2$ etex, 0.5[w43,w44]);

label.top(btex
 $\Range(\gamma_0)=\Range(\gamma_1)\bcup\Range(\gamma_2)$ etex, w3 + (0,b));

label.bot(btex $\Domain(\gamma_1)=I_1$ etex, w5 + (-eeB,-bb-ddy));
label.bot(btex $\Domain(\gamma_2)=I_2$ etex, w6 + (eeB,-bb-ddy));
label.bot(btex $\Domain(\gamma_0)=\beta_1(I_1)\bcup\beta_2(I_2)$ etex,
 w1 + (0,-bb-ddy));
label.bot(btex
 $\gamma_0=(\gamma_1\circ\beta_1^{-1})\bcup(\gamma_2\circ\beta_2^{-1})$ etex,
 w1 + (0,-bb-ddy-eeC));

endfig;
end
