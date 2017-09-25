% tex/conc/mp/3d36.mp   2015-10-10   Alan U. Kennington.
% $Id: tex/conc/mp/3d36.mp 4251e97666 2015-10-10 12:45:06Z Alan U. Kennington $
% Torsion of parallel transport in flat three-dimensional space.

input 3dmax.mp
input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);

numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
pair v[];               % 2-d vectors in 3-d.
numeric s;              % The screen scale factor.
path pat[];
color col[];

penARROW := 0.5bp;
penAXIS := 0.5bp;
penLINE := 0.5bp;
penPT := 3.0bp;

Z_set(p0)(55, -100, 22); % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 3000;
unit := 10;
col1 := 0.5 white;

axisX := 0.9unit;
axisY := 1.1unit;
axisZ := 0.4unit;

pX := 0.5axisX;
pY := 0.5axisY;
pZ := 0.5axisZ;
xX := 0.8axisX;
xtX := 0.2axisX;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(axisX, 0cm, 0cm); % x_1 axis.
Z_set(p12)(0cm, axisY, 0cm); % x_2 axis.
Z_set(p13)(0cm, 0cm, axisZ); % x_3 axis.

A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

% Labels for axes.
label.lrt(btex $x_1$ etex, w11+(0,-0.5pt));
label.urt(btex $x_2$ etex, w12+(0pt,0pt));
label.lft(btex $x_3$ etex, w13+(-2pt,1pt));

% Points.
Z_set(p20)(pX, 0cm, 0cm);           % p_1.
A_calc_w(A)(w20)(p20)(s);

Z_set(p21)(xX, 0cm, 0cm);           % t.
A_calc_w(A)(w21)(p21)(s);

Z_set(p22)(0cm, pY, pZ);            % (0,p_2,p_3)
A_calc_w(A)(w22)(p22)(s);

Z_set(p23)(-xtX, pY, pZ);           % (-xt,p_2,p_3)
A_calc_w(A)(w23)(p23)(s);

Z_set(p24)(axisX, pY, pZ);          % (xmax,p_2,p_3)
A_calc_w(A)(w24)(p24)(s);

Z_set(p25)(pX, pY, pZ);             % (p_1,p_2,p_3)
A_calc_w(A)(w25)(p25)(s);

Z_set(p26)(xX, pY, pZ);             % (t,p_2,p_3)
A_calc_w(A)(w26)(p26)(s);

Z_set(p27)(0, pY, 0);               % (0,p_2,0)
A_calc_w(A)(w27)(p27)(s);

Z_set(p28)(0, 0, pZ);               % (0,0,p_3)
A_calc_w(A)(w28)(p28)(s);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axes.
pickup pencircle scaled penAXIS;
% showvariable w;
drawarrow w10--w11;
drawarrow w10--w12;
drawarrow w10--w13;

% Dotted lines.
pickup pencircle scaled penLINE;
draw w22--w27 dashed (evenly scaled 0.7) withcolor col1;
draw w22--w28 dashed (evenly scaled 0.7) withcolor col1;

% Arrow.
pickup pencircle scaled penARROW;
drawdblarrow w23--w24 withcolor col1;
% drawarrow w20--w25 withcolor col1;
S_arrowspaces(w20, w25, 1bp, 2bp, 1, col1);
% drawarrow w21--w26 withcolor col1;
S_arrowspaces(w21, w26, 1bp, 2bp, 1, col1);

% Points.
pickup pencircle scaled penPT;
draw w20;
draw w21;
draw w22;
draw w25;
draw w26;
draw w27;
draw w28;

label.llft(btex\strut $p_1$ etex, w20);
label.llft(btex\strut $t$ etex, w21);
label.top(btex\strut $(0,p_2,p_3)$ etex, w22);
label.top(btex\strut $p$ etex, w25);
label.top(btex\strut $(t,p_2,p_3)$ etex, w26);
label.bot(btex\strut $p_2$ etex, w27);
label.lft(btex\strut $p_3$ etex, w28+(-1pt,0));

S_tiltlabel_top_up(btex $\opLift^1_p:\reals\to\reals^3$ etex,
 0.45[w21,w26], angle(w26-w21), -1pt);

endfig;
end
