% tex/conc/mp/3d21.mp   2007-2-9   Alan Kennington.
% $Id: tex/conc/mp/3d21.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Kronecker delta function on the integers.

input 3dmax.mp

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);

numeric A[][];          % The current 4x3 transformation matrix.
numeric p[][], q[][];   % Lists of 3-vectors.
pair w[];               % Coordinate pairs on the drawing canvas.
numeric s;              % The screen scale factor.

Z_set(p0)(20, -10, 10);  % Position of viewer.
Z_set(q0)(0, 0, 0);         % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 300;

axlength := 6;
Z_set(p1)(axlength, 0, 0);   % X axis.
Z_set(p2)(0, axlength, 0);   % Y axis.
Z_set(p3)(0, 0, 0.45axlength); % Z axis.
Z_set(p4)(0, 0, 0);   % Origin.

A_calc_w(A)(w1)(p1)(s);
A_calc_w(A)(w2)(p2)(s);
A_calc_w(A)(w3)(p3)(s);
A_calc_w(A)(w4)(p4)(s);

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

pickup pencircle scaled 1;
for i=-np step 1 until np:
    for j=-nq step 1 until nq:
        Z_set(p5)(i, j, 0);
        A_calc_w(A)(w5)(p5)(s);
        draw w5;
        endfor
    endfor

label.lrt(btex $i$ etex, w1);
label.rt(btex $j$ etex, w2+(1pt,3pt));
label.top(btex $\delta\rlap{${}_{ij}$}$ etex, w3);

% showvariable w;
pickup pencircle scaled 1pt;
drawarrow w4--w1;
drawarrow w4--w2;
pickup pencircle scaled 1pt;
drawarrow w4--w3 withcolor 0.6white;

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p9)(0,0,1.25);       % Vertical vector in 3d.
w9 := (0,3);            % Vertical distance for labels.

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw a vector at a particular point u.
for i=-np upto np:
    Z_set(p7)(i, i, 0);
    Z_assign(p8)(p7);
    Z_add(p8)(p9);
    A_calc_w(A)(w7)(p7)(s);
    A_calc_w(A)(w8)(p8)(s);

    % Sneeky trick to make the vertical line look more vertical!!
    % (I think this is called orthographic projection.)
    w8 := w7 + (0, ypart(w8-w7));

    pickup pencircle scaled 0.3pt;
    draw w7--w8 dashed (evenly scaled0.5);
    pickup pencircle scaled 4pt;
    draw w8;
    endfor

% label.top(btex $(u,1)$ etex, w8 + w9);

endfig;
end
