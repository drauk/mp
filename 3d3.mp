% tex/conc/mp/3d3.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/3d3.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% 3d graphic: x,y,z graph demo.

input 3dmax.mp

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);

numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.

Z_set(p0)(10, -20, 6);  % Position of viewer.
Z_set(q0)(0, 0, 0);         % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 300;

axlength := 6;
Z_set(p1)(axlength, 0, 0);   % X axis.
Z_set(p2)(0, axlength, 0);   % Y axis.
Z_set(p3)(0, 0, axlength);   % Z axis.
Z_set(p4)(0, 0, 0);   % Origin.

A_calc_w(A)(w1)(p1)(s);
A_calc_w(A)(w2)(p2)(s);
A_calc_w(A)(w3)(p3)(s);
A_calc_w(A)(w4)(p4)(s);

% showvariable w;
drawarrow w4--w1;
drawarrow w4--w2;
drawarrow w4--w3;

np := 5;
nq := 5;
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

label.rt(btex $x$ etex, w1);
label.urt(btex $y$ etex, w2);
label.top(btex $z$ etex, w3);

endfig;
end
