% tex/conc/mp/3d15.mp   2007-2-13   Alan Kennington.
% $Id: tex/conc/mp/3d15.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% 3d graphic: standard injection for tensor product of sets.

input 3dmax.mp

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);

numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.

ss := 1;
Z_set(p0)(12*ss, -16*ss, 5*ss);  % Position of viewer.
Z_set(q0)(0, 0, 0);         % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 350*ss;

axlength := 6;
yt := 0.5;
Z_set(p1)(axlength, 0, 0);      % X axis.
Z_set(p2)(0, axlength + yt, 0); % Y axis.
Z_set(p3)(0, 0, (1/3)*axlength);  % Z axis.
Z_set(p4)(0, 0, 0);             % Origin.

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

label.lrt(btex $S$ etex, w1+(0,3));
% label.urt(btex $y$ etex, w2);
label.top(btex $\chi_{\{a\}}$ etex, w3+(0,3));

% Draw a vector at a particular point.
Z_set(p7)(4, 4, 0);
Z_set(p8)(4, 4, 1);
A_calc_w(A)(w7)(p7)(s);
A_calc_w(A)(w8)(p8)(s);
w8 := (xpart w7, ypart w8);

pickup pencircle scaled 0.4pt;
draw w7--w8 dashed evenly;
pickup pencircle scaled 3pt;
draw w8;
label.top(btex $(a,1)$ etex, w8 + (0,3));

endfig;
end
