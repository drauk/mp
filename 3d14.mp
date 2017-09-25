% tex/conc/mp/3d14.mp   2007-4-7   Alan Kennington.
% $Id: tex/conc/mp/3d14.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% 3d graphic: standard injection for tensor product of sets.

input 3dmax.mp
verbatimtex \input akmath etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);

numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.

thx := 0.5pt;

% Scale factor to make viewer further away and increase zoom proportionately.
ss := 0.4;
Z_set(p0)(23.5 * ss, -40 * ss, 8 * ss);  % Position of viewer.
Z_set(q0)(0, 0, 0);         % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 800 * ss;

axlength := 5;
yt := 0.5;
Z_set(p1)(axlength, 0, 0);      % X axis.
Z_set(p2)(0, axlength + yt, 0); % Y axis.
Z_set(p3)(0, 0, 0.54axlength);  % Z axis.
Z_set(p4)(0, 0, 0);             % Origin.

A_calc_w(A)(w1)(p1)(s);
A_calc_w(A)(w2)(p2)(s);
A_calc_w(A)(w3)(p3)(s);
A_calc_w(A)(w4)(p4)(s);

% showvariable w;
drawarrow w4--w1;
drawarrow w4--w2;
drawarrow w4--w3;

np := 4;
nq := 4;
xt := 0.5;  % Extension of lines.
for i=-np step 1 until np:
    Z_set(p5)(i, -nq - xt, 0);
    Z_set(p6)(i, nq + xt, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6;
    endfor

for j=-nq step 1 until nq:
    Z_set(p5)(-np - xt, j, 0);
    Z_set(p6)(np + xt, j, 0);
    A_calc_w(A)(w5)(p5)(s);
    A_calc_w(A)(w6)(p6)(s);
    draw w5--w6;
    endfor

pickup pencircle;
for i=-np step 1 until np:
    for j=-nq step 1 until nq:
        Z_set(p5)(i, j, 0);
        A_calc_w(A)(w5)(p5)(s);
        draw w5;
        endfor
    endfor

% label.lrt(btex $\mathop{\times}\limits_{\alpha\in A}V_\alpha$ etex, w1+(0,5));
label.lrt(btex $S=\reals^2$ etex, w1+(0,5));
% label.urt(btex $y$ etex, w2);
label.top(btex $K=\reals$ etex, w3+(0,2));

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w9 := (0,3);            % Vertical distance for labels.

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw a vector at a particular point u.
Z_set(p7)(3, 3, 0);
Z_set(p8)(3, 3, 1);
A_calc_w(A)(w7)(p7)(s);
A_calc_w(A)(w8)(p8)(s);

% Sneeky trick to make the vertical line look more vertical!!
% (I think this is called orthographic projection.)
w8 := w7 + (0, ypart(w8-w7));

pickup pencircle scaled thx;
draw w7--w8 dashed evenly;
pickup pencircle scaled 4pt;
draw w8;
label.top(btex $(u,1)$ etex, w8 + w9);

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw a vector at a particular point v.
Z_set(p7)(1, -4, 0);
Z_set(p8)(1, -4, 2);
A_calc_w(A)(w7)(p7)(s);
A_calc_w(A)(w8)(p8)(s);

% Sneeky trick to make the vertical line look more vertical!!
% (I think this is called orthographic projection.)
w8 := w7 + (0, ypart(w8-w7));

pickup pencircle scaled thx;
draw w7--w8 dashed evenly;
pickup pencircle scaled 4pt;
draw w8;
label.top(btex $(v,2)$ etex, w8 + w9);

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw a vector at a particular point v.
Z_set(p7)(-4, -1, 0);
Z_set(p8)(-4, -1, -3/2);
A_calc_w(A)(w7)(p7)(s);
A_calc_w(A)(w8)(p8)(s);

% Sneeky trick to make the vertical line look more vertical!!
% (I think this is called orthographic projection.)
w8 := w7 + (0, ypart(w8-w7));

pickup pencircle scaled thx;
draw w7--w8 dashed evenly;
pickup pencircle scaled 4pt;
draw w8;
% label.bot(btex $(w,-3/2)$ etex, w8 - w9);
label.lft(btex $(w,-3/2)$ etex, w8 + w9 rotated 90);

endfig;
end
