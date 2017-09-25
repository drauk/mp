% tex/conc/mp/fn2d4.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d5.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Gradient of a quadratic function.

input mapmax.mp
verbatimtex
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choose drawing primitive according to mask.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      X_gradient       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def X_gradient(expr Xx, Xy) =
pair Xa, Xb, Xdf;

Xa := (Xx * unit, Xy * unit);
Xdfx := 2 aa * Xx;
Xdfy := 2 bb * Xy;
Xdf := (Xdfx * unit, Xdfy * unit);
Xb := Xa + Xdf;
drawarrow Xa--Xb;
enddef; % End of function X_gradient.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol, gc;

% Parameters for ellipses.
aa := 0.25;
bb := 1.0;
aaa := 1/(aa**0.5);
bbb := 1/(bb**0.5);

gcol = 0.35white;   % Colour of axes.
gc = 0.65white;     % Colour of diagnoal lines.
unit := 2.50cm;     % Unit length on axes.
a := 1.20 unit * aaa;
b := 1.25 unit * bbb;
r := 1;
R := 1.75 unit;
np := 200;          % Number of points in graph.
nq := 2;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/50;         % Notch length.
gap := 1pt;
penAXIS := 0.5bp;
penNOTCH := 0.5bp;
penCURVE := 0.7bp;
penLN := 0.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.bot(btex $\strut x$ etex, zz1);
label.top(btex $\strut y$ etex, zz2+(0pt,0));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if i > 1:
            label.bot(decimal i, (x1,-ht)+(4pt,0));
        elseif i < -1:
            label.bot(decimal i, (x1,-ht)+(-6pt,0));
        else:
            label.bot(decimal i, (x1,-ht)+(0pt,0));
            fi
        draw (x1,0)--(x1,-ht) withcolor gcol;
        fi
    endfor
for i=0 step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.ulft(decimal i, (0,y1));
%        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% Calculate and draw the curves.
pickup pencircle scaled penCURVE;
imax := 10;
jmax := 16;
for i=0 step 1 until imax:
    ka := sqrt(i/imax/aa);
    kb := sqrt(i/imax/bb);
    for j=0 step 1 until jmax-1:
        theta := 360*(j/jmax);
        xx1 := ka * cosd(theta);
        yy1 := kb * sind(theta);
        zz[10+j] := (xx1*unit, yy1*unit);
        endfor
    draw
    for j=0 step 1 until jmax-1:
        zz[10+j]..
        endfor
        cycle withcolor 0.4white;
    endfor

% Some labels and arrows.
pickup pencircle scaled penLN;

alpha := 1;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
theta := 225;
xx1 := ka * cosd(theta);
yy1 := kb * sind(theta);
zz40 := (xx1 * unit, yy1 * unit);
zz41 := zz40 + (0,-20pt);
S_arrowspaces(zz41, zz40, 0, gap, 1, black);
label.bot(btex $f(x,y)=1.0$ etex, zz41);

alpha := 0.9;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
theta := -45;
xx1 := ka * cosd(theta);
yy1 := kb * sind(theta);
zz40 := (xx1 * unit, yy1 * unit);
zz41 := zz40 + (0,-20pt);
S_arrowspaces(zz41, zz40, 0, gap, 1, black);
label.bot(btex $f(x,y)=0.9$ etex, zz41);

% Draw the gradient of f.
jmax := 32;

alpha := 0.1;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
for j=0 step 1 until jmax-1:
    theta := 360*(j/jmax);
    xx1 := ka * cosd(theta);
    yy1 := kb * sind(theta);
    X_gradient(xx1, yy1);
    endfor

alpha := 0.2;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
for j=0 step 1 until jmax-1:
    theta := 360*((j+0.5)/jmax);
    xx1 := ka * cosd(theta);
    yy1 := kb * sind(theta);
    X_gradient(xx1, yy1);
    endfor

alpha := 0.01;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
for j=0 step 1 until jmax-1:
    theta := 360*((j+0.5)/jmax);
    xx1 := ka * cosd(theta);
    yy1 := kb * sind(theta);
    X_gradient(xx1, yy1);
    endfor

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.lft(btex $\displaystyle f(x,y) = x^2/4+y^2$ etex, (-1.0unit, 1.1unit));
label.rt(btex $\displaystyle (f_x,f_y) = (x/2,\;2y)$ etex, (1.0unit, 1.1unit));

setbounds currentpicture to pat1;

endfig;
end
