% tex/conc/mp/3d25.mp   2011-8-28   Alan U. Kennington.
% $Id: tex/conc/mp/3d25.mp 6c9fb01d1a 2011-08-28 10:31:04Z Alan U. Kennington $
% Ontological tangent vectors in a Cartesian space.
% Space-time version of diagram vec20.

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

Z_set(p0)(50, -100, 20); % Position of viewer.
Z_set(q0)(0, 0, 0);     % Centre of picture.

A_set_pq(A)(p0)(q0);
% A_print(A);

s := 3000;
unit := 10;

px := 0.30 unit;
py := 0.70 unit;
pz := 0 unit;
na := 2;        % Number of points to left of p.
nb := 3;        % Number of points to right of p.
dt := 0.1 unit; % Vertical distance for t = 1.
da := na + 0.3;
db := nb + 0.5;

vax := 0.1unit;     % X-part of vector va in X-Y plane.
vay := 0.1unit;     % Y-part of vector va in X-Y plane.
vbx := 0.1unit;     % X-part of vector vb in X-Y plane.
vby := -0.1unit;    % Y-part of vector vb in X-Y plane.

Z_set(p30)(px, py, 0unit);  % Point p on X-Y plane.
A_calc_w(A)(w30)(p30)(s);

Z_set(p31)(px - da*vax, py - da*vay, -da*dt);  % Point p-da*(va,1).
Z_set(p32)(px + db*vax, py + db*vay, db*dt);  % Point p+db*(va,1).
Z_set(p33)(px - da*vbx, py - da*vby, -da*dt);  % Point p-da*(vb,1).
Z_set(p34)(px + db*vbx, py + db*vby, db*dt);  % Point p+db*(vb,1).

Z_set(p41)(px - da*vax, py - da*vay, 0);  % Point p-da*(va,0).
Z_set(p42)(px + db*vax, py + db*vay, 0);  % Point p+db*(va,0).
Z_set(p43)(px - da*vbx, py - da*vby, 0);  % Point p-da*(vb,0).
Z_set(p44)(px + db*vbx, py + db*vby, 0);  % Point p+db*(vb,0).

A_calc_w(A)(w31)(p31)(s);
A_calc_w(A)(w32)(p32)(s);
A_calc_w(A)(w33)(p33)(s);
A_calc_w(A)(w34)(p34)(s);

A_calc_w(A)(w41)(p41)(s);
A_calc_w(A)(w42)(p42)(s);
A_calc_w(A)(w43)(p43)(s);
A_calc_w(A)(w44)(p44)(s);

% Some points along the lines.
for i=-na upto nb:
    Z_set(p[50+i])(px + i*vax, py + i*vay, i*dt);
    A_calc_w(A)(w[50+i])(p[50+i])(s);
    endfor
for i=-na upto nb:
    Z_set(p[60+i])(px + i*vbx, py + i*vby, i*dt);
    A_calc_w(A)(w[60+i])(p[60+i])(s);
    endfor

% The drop-down points.
for i=-na upto nb:
    Z_set(p[70+i])(px + i*vax, py + i*vay, 0);
    A_calc_w(A)(w[70+i])(p[70+i])(s);
    endfor
for i=-na upto nb:
    Z_set(p[80+i])(px + i*vbx, py + i*vby, 0);
    A_calc_w(A)(w[80+i])(p[80+i])(s);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Z_set(p10)(0cm, 0cm, 0cm);  % Origin.
Z_set(p11)(0.9unit, 0cm, 0cm); % X axis.
Z_set(p12)(0cm, 0.9unit, 0cm); % Y axis.
Z_set(p13)(0cm, 0cm, 0.4unit); % t axis.

A_calc_w(A)(w11)(p11)(s);
A_calc_w(A)(w12)(p12)(s);
A_calc_w(A)(w13)(p13)(s);
A_calc_w(A)(w10)(p10)(s);

% Labels for axes.
label.lrt(btex $\reals^n$ etex, w11+(0,-0.5pt));
% label.rt(btex $N$ etex, w12+(0,1.5pt));
label.lft(btex $t$ etex, w13+(-2pt,1pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Drop-down planes.
pat1 := w30--w31--w41--cycle;
pat2 := w30--w32--w42--cycle;
pat3 := w30--w33--w43--cycle;
pat4 := w30--w34--w44--cycle;

col1 := 0.9white;

fill pat2 withcolor col1;
fill pat3 withcolor col1;

% Solid lines.
pickup pencircle scaled 1.25;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw lines.
pickup pencircle scaled 0.5bp;
drawarrow w31--w32;
drawarrow w30--w42 dashed evenly;
for i=-na upto nb:
    pickup pencircle scaled 1.0bp;
    draw w[70+i]--w[50+i] dashed withdots;
    pickup pencircle scaled 3bp;
    draw w[50+i];
    if (i>0):
        label.ulft(decimal i infont "cmr7", w[50+i]);
        fi
    if (i<-1):
        label.lrt(decimal i infont "cmr7", w[50+i]);
        fi
    endfor

fill pat4 withcolor col1;

pickup pencircle scaled 0.5bp;
drawarrow w33--w34;
drawarrow w43--w44 dashed evenly;
pickup pencircle scaled 3bp;
for i=-na upto nb:
    pickup pencircle scaled 1.0bp;
    draw w[80+i]--w[60+i] dashed withdots;
    pickup pencircle scaled 3bp;
    draw w[60+i];
    if (i>0):
        label.ulft(decimal i infont "cmr7", w[60+i]);
        fi
    if (i<0):
        label.lrt(decimal i infont "cmr7", w[60+i]);
        fi
    endfor

fill pat1 withcolor col1;

pickup pencircle scaled 0.5bp;
draw w31--w30;
draw w41--w30 dashed evenly;
for i=-na upto -1:
    pickup pencircle scaled 1.0bp;
    draw w[70+i]--w[50+i] dashed withdots;
    pickup pencircle scaled 3bp;
    draw w[50+i];
    endfor

% Draw points.
pickup pencircle scaled 3bp;
draw w30;
label.top(btex \strut$p$ etex, w30);
label.bot(decimal 0 infont "cmr7", w30+(0,-2pt));
label.ulft(decimal -1 infont "cmr7", w49);

% Labels for lines.
label.rt(btex $L_1$ etex, w32);
label.rt(btex $L_1'$ etex, w42);
label.top(btex \strut$L_2$ etex, w34);
label.rt(btex \strut$L_2'$ etex, w44);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axes.
pickup pencircle scaled 0.5bp;
% showvariable w;
drawarrow w10--w11;
drawarrow w10--w12;
drawarrow w10--w13;

endfig;
end
