% tex/conc/mp/3d1.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/3d1.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% 3d graphic: x,y,z demo.

input 3dmax.mp

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);

numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.

Z_set(p0)(100, -100, 50);   % Position of viewer.
Z_set(q0)(0, 0, 0);         % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 300;

Z_set(p1)(1cm, 0cm, 0cm);   % X axis.
Z_set(p2)(0cm, 1cm, 0cm);   % Y axis.
Z_set(p3)(0cm, 0cm, 1cm);   % Z axis.
Z_set(p4)(0cm, 0cm, 0cm);   % Origin.

A_calc_w(A)(w1)(p1)(s);
A_calc_w(A)(w2)(p2)(s);
A_calc_w(A)(w3)(p3)(s);
A_calc_w(A)(w4)(p4)(s);

% showvariable w;
drawarrow w4--w1;
drawarrow w4--w2;
drawarrow w4--w3;

label.lrt(btex $x$ etex, w1);
label.rt(btex $y$ etex, w2);
label.top(btex $z$ etex, w3);

endfig;
end
