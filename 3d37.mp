% tex/conc/mp/3d37.mp   2018-1-10   Alan U. Kennington.
% $Id$
% Interpretation of exterior derivative.

input 3dmax
input mapmax
% verbatimtex
% \input akmath
% etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);

numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.
path pat[];
color col[];

penAXIS := 0.5bp;
penLN := 0.5bp;
penTHICK := 1.2bp;
penPT := 3.0bp;
penBIGPT := 3.5bp;
penARROW := 0.5bp;

if 0=1:
col0 := red;
col1 := green;
col2 := blue;
col3 := black;
else:
col0 := black;
col1 := black;
col2 := 0.6white;
col3 := 0.6white;
fi
col8 := 0.5white;
col9 := 0.9white;

Z_set(p0)(55, -90, 50); % Position of viewer.
% Z_set(q0)(0, 0, 0);     % Centre of picture.
Z_set(q0)(6, 6, 6);     % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 2000;
unit := 10;

%==============================================================================
% Coordinates for the axes.
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(0.9unit, 0cm, 0cm); % X axis.
Z_set(p12)(0cm, 0.9unit, 0cm); % Y axis.
Z_set(p13)(0cm, 0cm, 0.9unit); % Z axis.

A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow w10--w11;
drawarrow w10--w12;
drawarrow w10--w13;

pickup pencircle scaled penPT;
draw w10;

label.bot(btex $x_0$ etex, w11+(0,-2pt));
label.lrt(btex $x_1$ etex, w12+(0,0pt));
label.lft(btex $x_2$ etex, w13+(-2pt,0pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Nominal top-left origins for m = 0 and m = 1. Origin of m=2 diagram is (0,0).
w100 := w10 + (-4cm,5cm);
w120 := w10 + (-4cm,0cm);

%==============================================================================
% Coordinates for the hyper-rectangle.
va := 0.10unit;             % Origin of local variation.
vb := 0.20unit;
vc := 0.20unit;

% Dimensions of the hyper-rectangle in cubits. (One cubit = 0.523 metres.)
waC := 20;
wbC := 18;
wcC := 12;
sC := 20;                   % Scale factor.

wa := (waC/sC)*unit;        % Dimensions in scaled space.
wb := (wbC/sC)*unit;
wc := (wcC/sC)*unit;

Z_set(p20)(va, vb, vc);     % Origin of local variation.

Z_set(p21)(va+wa, vb, vc);  % X axis.
Z_set(p22)(va, vb+wb, vc);  % Y axis.
Z_set(p23)(va, vb, vc+wc);  % Z axis.

Z_set(p24)(va+wa, vb+wb, vc);  % X-Y.
Z_set(p25)(va, vb+wb, vc+wc);  % Y-Z.
Z_set(p26)(va+wa, vb, vc+wc);  % X-Z.

Z_set(p27)(va+wa, vb+wb, vc+wc); % X-Y-Z.

A_calc_w(A)(w20)(p20)(s);

A_calc_w(A)(w21)(p21)(s);
A_calc_w(A)(w22)(p22)(s);
A_calc_w(A)(w23)(p23)(s);

A_calc_w(A)(w24)(p24)(s);
A_calc_w(A)(w25)(p25)(s);
A_calc_w(A)(w26)(p26)(s);

A_calc_w(A)(w27)(p27)(s);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Faces of hyper-rectangle.
pat1 := w20--w22--w25--w23--cycle;  % O Y YZ Z
pat2 := w20--w23--w26--w21--cycle;  % O Z XZ X
pat3 := w20--w21--w24--w22--cycle;  % O X XY Y

pat5 := w22--w25--w27--w24--cycle;  % Y YZ XYZ XY

% Fill in the faces of the hyper-rectangle.
if 0=1:
pickup pencircle scaled penLN;
fill pat1 withcolor col9;
fill pat3 withcolor col9;
fill pat5 withcolor col9;
fill pat1 withcolor col0;
fill pat3 withcolor col1;
fill pat5 withcolor col2;
fi

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the edges of the hyper-rectangle.
pickup pencircle scaled penLN;
% draw w20--w21;
% draw w20--w22;
% draw w20--w23;

draw w21--w24;
draw w21--w26;

draw w22--w24;
draw w22--w25;
draw w23--w25;
draw w23--w26;

draw w24--w27;
draw w25--w27;
draw w26--w27;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the main vectors.
pickup pencircle scaled penTHICK;
drawarrow w20--w21;
drawarrow w20--w22;
drawarrow w20--w23;

pickup pencircle scaled penBIGPT;
draw w20;

label.llft(btex $x$ etex, w20);
label.bot(btex\strut $V_0$ etex, w21);
label.urt(btex\strut $V_1$ etex, w22);
label.ulft(btex $V_2$ etex, w23);

%==============================================================================
% Draw the orientations of all 6 faces of the hyper-rectangle.

dZ := 0.05unit; % Semi-width of orientation loops.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The YZ plane for term 0.
Z_set(p30)(va,    vb+wb/2, vc+wc/2);  % YZ.
Z_set(p31)(va,    vb+wb/2-dZ, vc+wc/2-dZ);
Z_set(p32)(va,    vb+wb/2+dZ, vc+wc/2-dZ);
Z_set(p33)(va,    vb+wb/2+dZ, vc+wc/2+dZ);
Z_set(p34)(va,    vb+wb/2-dZ, vc+wc/2+dZ);

Z_set(p40)(va+wa,    vb+wb/2, vc+wc/2);  % X + YZ.
Z_set(p41)(va+wa,    vb+wb/2-dZ, vc+wc/2-dZ);
Z_set(p42)(va+wa,    vb+wb/2+dZ, vc+wc/2-dZ);
Z_set(p43)(va+wa,    vb+wb/2+dZ, vc+wc/2+dZ);
Z_set(p44)(va+wa,    vb+wb/2-dZ, vc+wc/2+dZ);

A_calc_w(A)(w30)(p30)(s);
A_calc_w(A)(w31)(p31)(s);
A_calc_w(A)(w32)(p32)(s);
A_calc_w(A)(w33)(p33)(s);
A_calc_w(A)(w34)(p34)(s);

A_calc_w(A)(w40)(p40)(s);
A_calc_w(A)(w41)(p41)(s);
A_calc_w(A)(w42)(p42)(s);
A_calc_w(A)(w43)(p43)(s);
A_calc_w(A)(w44)(p44)(s);

pickup pencircle scaled penLN;
drawarrow reverse (w34--w31) withcolor col0;
drawarrow reverse (w33--w34) withcolor col1;
drawarrow reverse (w32--w33) withcolor col2;
drawarrow reverse (w31--w32) withcolor col3;

drawarrow w41--w42 withcolor col0;
drawarrow w42--w43 withcolor col1;
drawarrow w43--w44 withcolor col2;
drawarrow w44--w41 withcolor col3;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The XZ plane for term 1.
Z_set(p50)(va+wa/2,    vb, vc+wc/2);  % XZ.
Z_set(p51)(va+wa/2-dZ, vb, vc+wc/2-dZ);
Z_set(p52)(va+wa/2-dZ, vb, vc+wc/2+dZ);
Z_set(p53)(va+wa/2+dZ, vb, vc+wc/2+dZ);
Z_set(p54)(va+wa/2+dZ, vb, vc+wc/2-dZ);

Z_set(p60)(va+wa/2,    vb+wb, vc+wc/2);  % Y + XZ.
Z_set(p61)(va+wa/2-dZ, vb+wb, vc+wc/2-dZ);
Z_set(p62)(va+wa/2-dZ, vb+wb, vc+wc/2+dZ);
Z_set(p63)(va+wa/2+dZ, vb+wb, vc+wc/2+dZ);
Z_set(p64)(va+wa/2+dZ, vb+wb, vc+wc/2-dZ);

A_calc_w(A)(w50)(p50)(s);
A_calc_w(A)(w51)(p51)(s);
A_calc_w(A)(w52)(p52)(s);
A_calc_w(A)(w53)(p53)(s);
A_calc_w(A)(w54)(p54)(s);

A_calc_w(A)(w60)(p60)(s);
A_calc_w(A)(w61)(p61)(s);
A_calc_w(A)(w62)(p62)(s);
A_calc_w(A)(w63)(p63)(s);
A_calc_w(A)(w64)(p64)(s);

pickup pencircle scaled penLN;
drawarrow reverse (w54--w51) withcolor col0;
drawarrow reverse (w53--w54) withcolor col1;
drawarrow reverse (w52--w53) withcolor col2;
drawarrow reverse (w51--w52) withcolor col3;

drawarrow w61--w62 withcolor col0;
drawarrow w62--w63 withcolor col1;
drawarrow w63--w64 withcolor col2;
drawarrow w64--w61 withcolor col3;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The XY plane for term 2.
Z_set(p70)(va+wa/2,    vb+wb/2, vc);  % XY.
Z_set(p71)(va+wa/2-dZ, vb+wb/2-dZ, vc);
Z_set(p72)(va+wa/2+dZ, vb+wb/2-dZ, vc);
Z_set(p73)(va+wa/2+dZ, vb+wb/2+dZ, vc);
Z_set(p74)(va+wa/2-dZ, vb+wb/2+dZ, vc);

Z_set(p80)(va+wa/2,    vb+wb/2, vc+wc); % Z + XY.
Z_set(p81)(va+wa/2-dZ, vb+wb/2-dZ, vc+wc);
Z_set(p82)(va+wa/2+dZ, vb+wb/2-dZ, vc+wc);
Z_set(p83)(va+wa/2+dZ, vb+wb/2+dZ, vc+wc);
Z_set(p84)(va+wa/2-dZ, vb+wb/2+dZ, vc+wc);

A_calc_w(A)(w70)(p70)(s);
A_calc_w(A)(w71)(p71)(s);
A_calc_w(A)(w72)(p72)(s);
A_calc_w(A)(w73)(p73)(s);
A_calc_w(A)(w74)(p74)(s);

A_calc_w(A)(w80)(p80)(s);
A_calc_w(A)(w81)(p81)(s);
A_calc_w(A)(w82)(p82)(s);
A_calc_w(A)(w83)(p83)(s);
A_calc_w(A)(w84)(p84)(s);

pickup pencircle scaled penLN;
drawarrow reverse (w74--w71) withcolor col0;
drawarrow reverse (w73--w74) withcolor col1;
drawarrow reverse (w72--w73) withcolor col2;
drawarrow reverse (w71--w72) withcolor col3;

drawarrow w81--w82 withcolor col0;
drawarrow w82--w83 withcolor col1;
drawarrow w83--w84 withcolor col2;
drawarrow w84--w81 withcolor col3;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some labels.
w90 := w40 + (0pt,-18pt);
w91 := w40 + (0pt,-96pt);
w92 := w60 + (3pt,13pt);
w93 := w60 + (20pt,55pt);
w94 := w80 + (-15pt,4pt);
w95 := w80 + (-90pt,30pt);
w96 := w80 + (-90pt,30pt);

pickup pencircle scaled penARROW;
drawarrow w91--w90 dashed evenly;
label.bot(btex $\partial_{V_0}\omega(x)(V_1,V_2)$ etex, w91);

drawarrow w93--w92 dashed evenly;
label.top(btex $\partial_{V_1}\omega(x)(V_2,V_0)$ etex, w93);

drawarrow w95--w94 dashed evenly;
label.lft(btex $\partial_{V_2}\omega(x)(V_0,V_1)$ etex, w95);

label.top(btex $m=2$ etex, w25+(-20pt,0pt));

%==============================================================================
% The case m = 0.
dQ := 2cm;
dL := 14pt;
w101 := w100 + (0,0);
w102 := w100 + (dQ,0);
w103 := 0.5[w101,w102]+(0,dL);
w104 := 0.5[w101,w102]+(0,-dL);

pickup pencircle scaled penLN;
draw w101--w102 dashed evenly withcolor col8;

pickup pencircle scaled penPT;
draw w101;
draw w102;

label.top(btex\strut $-$ etex, w101);
label.top(btex\strut $+$ etex, w102);
label.bot(btex\strut $x$ etex, w101);
label.bot(btex\strut $V_0$ etex, w102);

label.top(btex $m=0$ etex, w103);
label.bot(btex $\partial_{V_0}\omega(x)()$ etex, w104);

%==============================================================================
% The case m = 1.
w121 := w120 + (0,0);
w122 := w120 + (dQ,0);
w123 := w120 + (dQ,dQ);
w124 := w120 + (0,dQ);

w130 := 0.5[w124,w123] + (0,dL);
w131 := 0.5[w121,w122] + (0,-dL);
w132 := 0.5[w121,w122] + (0,-2dL);

pickup pencircle scaled penARROW;
drawarrow w121--w122 withcolor col0;
drawarrow w122--w123 withcolor col1;
drawarrow w123--w124 withcolor col2;
drawarrow w124--w121 withcolor col3;

pickup pencircle scaled penPT;
draw w121;

label.llft(btex\strut $x$ etex, w121);
label.lrt(btex\strut $V_0$ etex, w122);
label.ulft(btex\strut $V_1$ etex, w124);

label.lft(btex $-$ etex, 0.5[w121,w124]);
label.rt(btex $+$ etex, 0.5[w122,w123]);
label.bot(btex $+$ etex, 0.5[w121,w122]);
label.top(btex $-$ etex, 0.5[w124,w123]);

label.top(btex $m=1$ etex, w130);
label.bot(btex $\partial_{V_0}\omega(x)(V_1)$ etex, w131);
label.bot(btex $\llap{${}-{}$}\partial_{V_1}\omega(x)(V_0)$ etex, w132);

endfig;
end
