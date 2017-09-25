% tex/conc/mp/3d29.mp   2013-7-24   Alan U. Kennington.
% $Id: tex/conc/mp/3d29.mp 6088f7cfdf 2013-07-24 14:46:43Z Alan U. Kennington $
% Torsion of parallel transport in flat three-dimensional space.

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
pair v[];               % 2-d vectors in 3-d.
numeric s;              % The screen scale factor.
path pat[];
color col[];

Z_set(p0)(55, -100, 22); % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 3000;
unit := 10;
nA := 54;
nnA := 36;
rA := 0.2unit;
thA := 20;
pi := 3.14159265358979;
vA := (thA/360) * 1.2;
col1 := 0.5 white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(0.9unit, 0cm, 0cm); % x_1 axis.
Z_set(p12)(0cm, 1.1unit, 0cm); % x_2 axis.
Z_set(p13)(0cm, 0cm, 0.4unit); % x_3 axis.

A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

% Labels for axes.
label.lrt(btex $x_1$ etex, w11+(0,-0.5pt));
label.urt(btex $x_2$ etex, w12+(0pt,0pt));
label.lft(btex $x_3$ etex, w13+(-2pt,1pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axes.
pickup pencircle scaled 0.5bp;
% showvariable w;
drawarrow w10--w11;
drawarrow w10--w12;
drawarrow w10--w13;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Parallel translation along the x_1 axis.
for i=-nnA upto nA:
    Z_set(p[20])(rA * i * vA, rA * cosd(i * thA), rA * sind(i * thA));
    A_calc_w(A)(w[20+i])(p[20])(s);
    Z_set(p[20])(rA * i * vA, 0, 0);
    A_calc_w(A)(v[20+i])(p[20])(s);
    endfor
draw
for i=-nnA upto (nA-1):
    w[20+i]..
    endfor
    w[20+nA] withcolor col1;
for i=-nnA upto nA:
    drawarrow v[20+i]--w[20+i];
    endfor

endfig;
end
