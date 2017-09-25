% tex/conc/mp/3d28.mp   2015-8-22   Alan U. Kennington.
% $Id: tex/conc/mp/3d28.mp 7d2c963541 2015-08-22 03:44:56Z Alan U. Kennington $
% 3d graphic: Sphere S^2 in perspective.

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
numeric s;              % The screen scale factor.
pair w[];               % Coordinate pairs on the drawing canvas.
color col[];
path pat[];

%==============================================================================
% Multiplier and orientation angles for viewer.
dv := 10;               % Distance of camera from centre of sphere.
ph_v := -45;            % Angle phi of viewer.
th_v := 35;             % Angle theta of viewer.

s := 500;               % Some sort of magnification/zoom factor.
R := 1;                 % Radius of the sphere.

axlength := 1.55;
azlength := 1.5;
ytX := 0.2;
ytY := 0.3;

np := 5;
nq := 5;
xt := 0.5;  % Extension of lines.

% Constant-latitude circles.
nR := 12;       % 12 points around the equator.
nlat := 9;      % Number for dividing the latitude of 90 degrees.
% nlat := 3;      % Number for dividing the latitude of 90 degrees.

% Constant-longitude circles.
mR := 20;       % 40 points along the longitude line.
% nlong := 12;    % Number for dividing the longitude of 180 degrees.
nlong := 6;     % Number for dividing the longitude of 180 degrees.

penGRID := 0.5bp;
penBDY := 0.3bp;
penLONG := 0.5bp;
penLONGZ := 0.5bp;
penLAT := 0.5bp;
penLATZ := 0.5bp;
col1 := 0.5white;               % Grid colour 1.
% col1 := (0,0.4,0);              % Grid colour.
% col2 := (185,210,255)/255;      % Earth colour.
% col2 := (162,187,248)/255;      % Earth colour.
% col2 := (135,168,255)/255;      % Earth colour.
% col2 := (200,220,255)/255;      % Earth colour 2.
col2 := 0.92white;              % Earth colour 2.
col3 := 0.92white;              % Earth colour 1.
col4 := 0.5white;               % Grid colour 2.

spA := 25pt;                    % Space for subtitle.
spB := 14pt;                    % Interline space.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set_rpt(p0)(dv, ph_v, th_v);  % Position of viewer.
Z_set(q0)(0, 0, 0);             % Centre of picture.
A_set_pq(A)(p0)(q0);            % Set the perspective matrix.

% Axes and grid lines.
Z_set(p1)(axlength + ytX, 0, 0); % X axis.
Z_set(p2)(0, axlength + ytY, 0); % Y axis.
Z_set(p3)(0, 0, azlength);      % Z axis.
Z_set(p4)(0, 0, 0);             % Origin.
Z_set(p7)(0, 0, 1);             % North pole.
Z_set(p8)(0, 0, -1);            % South pole.
Z_set(p11)(0,0,0);              % Centre of the sphere.

A_calc_w(A)(w1)(p1)(s);
A_calc_w(A)(w2)(p2)(s);
A_calc_w(A)(w3)(p3)(s);
A_calc_w(A)(w4)(p4)(s);
A_calc_w(A)(w7)(p7)(s);
A_calc_w(A)(w8)(p8)(s);

A_sphere_outline(A)(pat1)(q0)(s, R);

%==============================================================================
% Draw the axes.
pickup pencircle scaled penGRID;
drawarrow w4--w1 withcolor col1;
drawarrow w4--w2 withcolor col1;
drawarrow w4--w3 withcolor col1;

for i=-np upto np:
    Z_set(p5)(i/np, -1 - xt, 0);
    Z_set(p6)(i/np, 1 + xt, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col1;
    endfor
for j=-nq upto nq:
    Z_set(p5)(-1 - xt, j/nq, 0);
    Z_set(p6)(1 + xt, j/nq, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col1;
    endfor

pickup pencircle scaled penBDY;
fill pat1 withcolor col3;
draw pat1;

pickup pencircle scaled penGRID;
drawarrow w7--w3 withcolor col1;
for i=np upto np:
    Z_set(p5)(i/np, -1 - xt, 0);
    Z_set(p6)(i/np, 1 + xt, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col1;
    endfor
% Kludge!
for i=-2 upto np-1:
    Z_set(p5)(i/np, -1 - xt, 0);
    Z_set(p6)(i/np, -sqrt(1-(i/np)*(i/np)), 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col1;
    endfor

for j=-nq upto -nq:
    Z_set(p5)(-1 - xt, j/nq, 0);
    Z_set(p6)(1 + xt, j/nq, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col1;
    endfor
% Kludge!
for j=-nq+1 upto 2:
    Z_set(p5)(sqrt(1-(j/nq)*(j/nq)), j/nq, 0);
    Z_set(p6)(1 + xt, j/nq, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col1;
    endfor

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the sphere.
% A_draw_lat_hide(A)(s)(p11)(R, nlat, nR, penLAT, penLATZ)(p0);
% A_draw_long_hide(A)(s)(p11)(R, nlong, mR, penLONG, penLONGZ)(p0);

label.bot(btex \strut topological space without charts etex,
 w8+(0,-spA));
label.bot(btex \strut$S^2=\{x\in\reals^3;\,\vert x\vert=1\}$ etex,
 w8+(0,-spA-spB));

%==============================================================================
% Second copy. This is required to shift the viewpoint in paper-space.
w20 := (7.0cm,0cm);

% Shift of first image to left of second image.
currentpicture := currentpicture shifted -w20;

%==============================================================================
% The second image.
%==============================================================================
% Draw the axes.
pickup pencircle scaled penGRID;
drawarrow w4--w1 withcolor col4;
drawarrow w4--w2 withcolor col4;
drawarrow w4--w3 withcolor col4;

for i=-np upto np:
    Z_set(p5)(i/np, -1 - xt, 0);
    Z_set(p6)(i/np, 1 + xt, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col4;
    endfor
for j=-nq upto nq:
    Z_set(p5)(-1 - xt, j/nq, 0);
    Z_set(p6)(1 + xt, j/nq, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col4;
    endfor

fill pat1 withcolor col2;

drawarrow w7--w3 withcolor col4;
for i=np upto np:
    Z_set(p5)(i/np, -1 - xt, 0);
    Z_set(p6)(i/np, 1 + xt, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col4;
    endfor
% Kludge!
for i=-2 upto np-1:
    Z_set(p5)(i/np, -1 - xt, 0);
    Z_set(p6)(i/np, -sqrt(1-(i/np)*(i/np)), 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col4;
    endfor

for j=-nq upto -nq:
    Z_set(p5)(-1 - xt, j/nq, 0);
    Z_set(p6)(1 + xt, j/nq, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col4;
    endfor
% Kludge!
for j=-nq+1 upto 2:
    Z_set(p5)(sqrt(1-(j/nq)*(j/nq)), j/nq, 0);
    Z_set(p6)(1 + xt, j/nq, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6 withcolor col4;
    endfor

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the sphere.
A_draw_lat_hide(A)(s)(p11)(R, nlat, nR, penLAT, penLATZ)(p0);
A_draw_long_hide(A)(s)(p11)(R, nlong, mR, penLONG, penLONGZ)(p0);

label.bot(btex \strut topological space with chart etex,
 w8+(0,-spA));
label.bot(btex
 \strut$\psi:x\mapsto(\arctan(x_1,x_2),\arcsin(x_3))$ etex,
 w8+(0,-spA-spB));
label.bot(btex \strut for $x\in S^2$ with $x_1>0$ or $x_2\neq0$ etex,
 w8+(0,-spA-2spB));

%==============================================================================
% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat0 := bbox currentpicture;
% bboxmargin := bbx;

% setbounds currentpicture to pat0;

endfig;
end
