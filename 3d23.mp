% tex/conc/mp/3d23.mp   2009-1-5   Alan U. Kennington.
% $Id: tex/conc/mp/3d23.mp 892fc608c5 2009-01-04 13:50:37Z Alan U. Kennington $
% 3d graphic: A bucket.

input 3dmax.mp
% input mapmax.mp
verbatimtex
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);

numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair v[], w[];          % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.
path pat[];
color col[];

Z_set(p0)(0, -35, 22); % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 640;
unit := 10;
pickup pencircle scaled 0.5;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points in 3-d.
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(unit, 0cm, 0cm); % X axis.
Z_set(p12)(0cm, unit, 0cm); % Y axis.
Z_set(p13)(0cm, 0cm, 0.9unit); % Z axis.

% Points in 2-d.
A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

% showvariable w;
% drawarrow w10--w11;
% drawarrow w10--w12;
% drawarrow w10--w13;

% label.rt(btex $x_1$ etex, w11);
% label.rt(btex $x_2$ etex, w12);
% label.lft(btex $x_3$ etex, w13+(-2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The bucket.
hh := 0.4unit;
rr := 0.2unit;
rrr := 1.14rr;
dd := rrr - rr;     % Thickness at bottom of bucket.
np := 22;

Z_set(p20)(0unit, 0unit, 0unit);  % Origin.
Z_add_set(p21)(p20)(0, 0, hh);

for ii = 0 upto np - 1:
    w0 := (0, rr) rotated ((ii / np) * 360);
    w1 := (0, rrr) rotated ((ii / np) * 360);
    Z_add_set(p[30+ii])(p20)(xpart(w0), ypart(w0), 0);
    Z_add_set(p[30+ii+np])(p20)(xpart(w1), ypart(w1), -dd);
    Z_add_set(p[30+ii+2np])(p21)(xpart(w0), ypart(w0), 0);
    Z_add_set(p[30+ii+3np])(p21)(xpart(w1), ypart(w1), 0);
    endfor

% Points in 2-d.
A_calc_w(A)(w20)(p20)(s);
A_calc_w(A)(w21)(p21)(s);

for ii = 0 upto np - 1:
    A_calc_w(A)(w[30+ii])(p[30+ii])(s);
    A_calc_w(A)(w[30+ii+np])(p[30+ii+np])(s);
%    draw w[30+ii+np];
%    label.lft(decimal ii, w[30+ii+np]);
    A_calc_w(A)(w[30+ii+2np])(p[30+ii+2np])(s);
    A_calc_w(A)(w[30+ii+3np])(p[30+ii+3np])(s);
    endfor
pat1 :=
for ii = 0 upto np - 1:
    w[30+ii]..
    endfor
    cycle;
pat2 :=
for ii = 0 upto np - 1:
    w[30+ii+np]..
    endfor
    cycle;
pat3 :=
for ii = 0 upto np - 1:
    w[30+ii+2np]..
    endfor
    cycle;
pat4 :=
for ii = 0 upto np - 1:
    w[30+ii+3np]..
    endfor
    cycle;

v1 := 0.5[point (np/4) of pat1, point (np/4) of pat2];
v2 := 0.5[point (np/4) of pat3, point (np/4) of pat4];
v3 := 0.5[v1, v2];
v4 := v3 + (-40pt, 20pt);

v5 := 1.5[point (3np/4) of pat1, point (3np/4) of pat2];
v6 := 1.5[point (3np/4) of pat3, point (3np/4) of pat4];
v7 := 0.5[v5, v6];
v8 := v7 + (40pt, 20pt);

% drawarrow w20--w21;

rat := 0.36;
draw pat1 dashed evenly scaled rat;
draw subpath (np/4, 3np/4) of pat2;
draw subpath (3np/4, 5np/4) of pat2 dashed evenly scaled rat;
draw pat3;
draw pat4;

v11 := point (np/4) of pat1;
v12 := point (np/4) of pat2;
v13 := point (np/4) of pat3;
v14 := point (np/4) of pat4;

v21 := point (3np/4) of pat1;
v22 := point (3np/4) of pat2;
v23 := point (3np/4) of pat3;
v24 := point (3np/4) of pat4;

draw v11--v13 dashed evenly scaled rat;
draw v12--v14;
draw v21--v23 dashed evenly scaled rat;
draw v22--v24;

% Labels.
drawarrow v4--v3;
label.top(btex boundary etex, v4);
label(btex inside etex, w21);

drawarrow v8--v7;
label.top(btex outside etex, v8);

endfig;
end
