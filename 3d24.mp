% tex/conc/mp/3d24.mp   2007-2-8   Alan Kennington.
% $Id: tex/conc/mp/3d24.mp ef01587d03 2011-05-05 11:43:30Z Alan U. Kennington $
% Dimensions of King Khufu's burial chamber.

input 3dmax.mp
input mapmax.mp
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

Z_set(p0)(90, -100, 20); % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 2000;
unit := 10;
pickup pencircle scaled 0.5;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(0.9unit, 0cm, 0cm); % X axis.
Z_set(p12)(0cm, 0.9unit, 0cm); % Y axis.
Z_set(p13)(0cm, 0cm, 0.9unit); % Z axis.

A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

% showvariable w;
drawarrow w10--w11;
drawarrow w10--w12;
drawarrow w10--w13;

label.rt(btex $E$ etex, w11+(0,-0.5pt));
label.rt(btex $N$ etex, w12+(0,1.5pt));
label.lft(btex $z$ etex, w13+(-2pt,1pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
va := 0.17unit;             % Origin of local variation.
vb := 0.20unit;
vc := 0.29unit;

% Dimensions of the tomb in cubits. (One cubit = 0.523 metres.)
waC := 20;
wbC := 10;
wcC := sqrt(15*15-10*10);
sC := 22;                   % Scale factor.

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

% The integration planes.
pat1 := w20--w22--w25--w23--cycle;
pat2 := w21--w24--w27--w26--cycle;
col1 := 0.9white;

fill pat1 withcolor col1;
fill pat2 withcolor col1;

pickup pencircle scaled 1.25;

draw w20--w21;
draw w20--w27;
draw w21--w27;

pickup pencircle scaled 0.5;
draw w20--w22;
draw w20--w23;

draw w21--w24;
draw w21--w26;

draw w22--w24;
draw w22--w25;
draw w23--w25;
draw w23--w26;

draw w24--w27;
draw w25--w27;
draw w26--w27;

% Label the dimensions.
S_tiltlabel_top(btex 20\thinspace cubits etex, 0.5[w25,w27], angle(w27-w25));
S_tiltlabel_top(btex 10\thinspace cubits etex, 0.5[w23,w25], angle(w25-w23));
S_tiltlabel_top(btex 25\thinspace cubits etex, 0.5[w20,w27], angle(w27-w20));
S_tiltlabel_top(btex 15\thinspace cubits etex, 0.5[w21,w27], angle(w27-w21));
S_tiltlabel_bot(btex 20\thinspace cubits etex, 0.5[w20,w21], angle(w21-w20));
S_tiltlabel_top(btex 11.18\thinspace cubits etex, 0.5[w20,w23], angle(w23-w20));

endfig;
end
