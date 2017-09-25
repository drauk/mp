% tex/conc/mp/3d20.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/3d20.mp defbd13703 2012-05-07 12:05:29Z Alan U. Kennington $
% 3d graphic: Stokes theorem for a cube.

input 3dmax.mp
verbatimtex
\input akmath
etex

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

penLN := 0.5bp;
penTHICK := 1.2bp;

Z_set(p0)(90, -100, 35); % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 2000;
unit := 10;
pickup pencircle scaled penLN;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(unit, 0cm, 0cm); % X axis.
Z_set(p12)(0cm, unit, 0cm); % Y axis.
Z_set(p13)(0cm, 0cm, 0.9unit); % Z axis.

A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

% showvariable w;
drawarrow w10--w11;
drawarrow w10--w12;
drawarrow w10--w13;

label.rt(btex $x_1$ etex, w11);
label.rt(btex $x_2$ etex, w12);
label.lft(btex $x_3$ etex, w13+(-2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
va := 0.29unit;             % Origin of local variation.
vb := 0.29unit;
vc := 0.37unit;

wa := 0.3unit;              % Axes for local variation.
wb := 0.3unit;
wc := 0.3unit;

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

% The integration planes.
pat1 := w20--w22--w25--w23--cycle;
pat2 := w21--w24--w27--w26--cycle;
col1 := 0.9white;

fill pat1 withcolor col1;
fill pat2 withcolor col1;

% The integration cube.
pickup pencircle scaled penLN;
drawarrow w20--w21;

pickup pencircle scaled penTHICK;
drawarrow w20--w22;
drawarrow w20--w23;

drawarrow w21--w24;
drawarrow w21--w26;

pickup pencircle scaled penLN;
draw w22--w24;
draw w22--w25;
draw w23--w25;
draw w23--w26;

draw w24--w27;
draw w25--w27;
draw w26--w27;

label.llft(btex $e_1$ etex, w21);
label.lrt(btex $e_2$ etex, w24);
label.top(btex $e_3$ etex, w26);
label.ulft(btex $e_2$ etex, w22);
label.lft(btex $e_3$ etex, w23);

% Integral labels.
pickup pencircle scaled penLN;

w30 := 0.5[w21,w27];
w31 := w30 + (1.0cm,0.3cm);
label.top(btex $S_B$ etex, w30+(0,3pt));
label.rt(btex $\displaystyle\int_{S_B}\!\!\lambda(x)(e_2,e_3)\,dx^2dx^3$ etex,
 w31);
drawarrow w31--w30;

w32 := 0.5[w20,w25];
w33 := w32 + (-0.86cm,-0.25cm);
label.top(btex $S_A$ etex, w32);
label.lft(btex $\displaystyle\int_{S_A}\!\!\lambda(x)(e_2,e_3)\,dx^2dx^3$ etex,
 w33);
drawarrow w33--w32;

endfig;
end
