% tex/conc/mp/fn2d6.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d6.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Effect of diffeomorphism on the gradient of a quadratic function.

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

Xa := zz0 + (Xx * unit, Xy * unit);
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
color gcol, gc, acol;

% Common variables.
unit := 1.48cm;      % Unit length on axes.
da := 4.8 unit;     % Spacing between graphs.
ylab := 1.55 unit;
ylabb := 1.48 unit;
gcol := 0.35white;  % Colour of axes.
gc := 0.65white;    % Colour of diagnoal lines.
acol := 0.4white;   % Colour of some arrows.
penAXIS := 0.5bp;
penNOTCH := 0.5bp;
penCURVE := 0.7bp;
penLN := 0.5bp;
penVEC := 0.5bp;
penPT := 2.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Parameters for ellipses.
aa := 1.0;
bb := 1.0;
aaa := 1/(aa**0.5);
bbb := 1/(bb**0.5);

a := 1.20 unit * aaa;
b := 1.25 unit * bbb;
r := 1;
R := 1.75 unit;
np := 200;          % Number of points in graph.
nq := 1;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/50;         % Notch length.
gap := 1pt;

% Axis parameters.
zz0 := (0,0);
zz1 := zz0 + (a,0);
zz2 := zz0 + (0,b);
zz3 := zz0 + (-a,0);
zz4 := zz0 + (0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.rt(btex $x$ etex, zz1);
label.top(btex $\strut y$ etex, zz2+(0pt,0));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if i >= 1:
            label.bot(decimal i, (x1,-ht)+(4pt,0));
        elseif i <= -1:
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
imax := 4;
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
        cycle withcolor acol;
    endfor

% Some labels and arrows.
pickup pencircle scaled penLN;

alpha := 1;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
theta := 45;
xx1 := ka * cosd(theta);
yy1 := kb * sind(theta);
zz40 := (xx1 * unit, yy1 * unit);
zz41 := zz0 + (1.8unit,0) rotated theta;
S_arrowspaces(zz41, zz40, 0, gap, 1, acol);
label.urt(btex $f(x,y)=1.0$ etex, zz41+(-7pt,0));

alpha := 0.75;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
theta := -45;
xx1 := ka * cosd(theta);
yy1 := kb * sind(theta);
zz40 := (xx1 * unit, yy1 * unit);
zz41 := zz0 + (1.8unit,0) rotated theta;
S_arrowspaces(zz41, zz40, 0, gap, 1, acol);
label.lrt(btex $f(x,y)=0.75$ etex, zz41+(-7pt,0));

% Draw the gradient of f.
jmax := 24;

alpha := 0.25;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
for j=0 step 1 until jmax-1:
    theta := 360*((j+0.5)/jmax);
    xx1 := ka * cosd(theta);
    yy1 := kb * sind(theta);
    X_gradient(xx1, yy1);
    endfor

label.top(btex $\displaystyle\strut f(x,y) = x^2+y^2$ etex,
 (0unit, ylab));
label.bot(btex $\displaystyle\strut (f_x,f_y) = (2x,\;2y)$ etex,
 (0unit, -ylabb));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Parameters for ellipses.
aa := 0.25;
bb := 1.0;
aaa := 1/(aa**0.5);
bbb := 1/(bb**0.5);

a := 1.20 unit * aaa;
b := 1.25 unit * bbb;
r := 1;
R := 1.75 unit;
np := 200;          % Number of points in graph.
nq := 2;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/50;         % Notch length.
gap := 1pt;

% Axis parameters.
zz0 := (da,0);
zz1 := zz0 + (a,0);
zz2 := zz0 + (0,b);
zz3 := zz0 + (-a,0);
zz4 := zz0 + (0,-b);

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
            label.bot(decimal i, zz0+(x1,0)+(4pt,0));
        elseif i < -1:
            label.bot(decimal i, zz0+(x1,0)+(-6pt,0));
            fi
        draw (zz0+(x1,0))--(zz0+(x1,-ht)) withcolor gcol;
        fi
    endfor
x1 := -1;
label.lrt(decimal x1, zz0+(x1 * unit,0)+(4pt,0));
x1 := 1;
label.llft(decimal x1, zz0+(x1 * unit,0)+(-4pt,0));

for i=0 step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.ulft(decimal i, zz0+(0,y1));
%        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% Calculate and draw the curves.
pickup pencircle scaled penCURVE;
imax := 4;
jmax := 16;
for i=0 step 1 until imax:
    ka := sqrt(i/imax/aa);
    kb := sqrt(i/imax/bb);
    for j=0 step 1 until jmax-1:
        theta := 360*(j/jmax);
        xx1 := ka * cosd(theta);
        yy1 := kb * sind(theta);
        zz[10+j] := zz0 + (xx1*unit, yy1*unit);
        endfor
    draw
    for j=0 step 1 until jmax-1:
        zz[10+j]..
        endfor
        cycle withcolor acol;
    endfor

% Some labels and arrows.
pickup pencircle scaled penLN;

alpha := 1;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
theta := 135;
xx1 := ka * cosd(theta);
yy1 := kb * sind(theta);
zz40 := zz0 + (xx1 * unit, yy1 * unit);
zz41 := zz40 + (-15pt,10pt);
S_arrowspaces(zz41, zz40, 0, gap, 1, acol);
label.lft(btex $\strut\tilde f(x,y)=1.0$ etex, zz41);

alpha := 0.75;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
theta := 228;
xx1 := ka * cosd(theta);
yy1 := kb * sind(theta);
zz40 := zz0 + (xx1 * unit, yy1 * unit);
zz41 := zz40 + (-15pt,-10pt);
S_arrowspaces(zz41, zz40, 0, gap, 1, acol);
label.lft(btex $\strut\tilde f(x,y)=0.75$ etex, zz41);

% Draw the gradient of f.
jmax := 24;

alpha := 0.25;
ka := sqrt(alpha/aa);
kb := sqrt(alpha/bb);
for j=0 step 1 until jmax-1:
    theta := 360*((j+0.5)/jmax);
    xx1 := ka * cosd(theta);
    yy1 := kb * sind(theta);
    X_gradient(xx1, yy1);
    endfor

label.top(btex $\displaystyle\strut\tilde f(x,y) = x^2/4+y^2$ etex,
 zz0+(0unit, ylab));
label.bot(btex $\displaystyle\strut(\tilde f_x,\tilde f_y) = (x/2,\;2y)$ etex,
 zz0+(0unit, -ylabb));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw an arrow for the diffeomorphism.
pickup pencircle scaled penLN;
zz5 := (0, 0) + (1.1unit,1.55unit);
zz6 := (da,0) + (-1.1unit,1.55unit);
zz7 := 0.5[zz5,zz6] + (0,0.40unit);
drawarrow zz5..zz7..zz6;
label.top(btex $\phi:(x,y)\mapsto(2x,y)$ etex, zz7);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Draw the transformed tangent vector at a point.
pickup pencircle scaled penVEC;
j := 0;
theta := 360*((j+0.5)/jmax);
xx1 := ka * cosd(theta);
yy1 := kb * sind(theta);
kk := 0.5;
xx2 := kk * cosd(theta) * 4;
yy2 := kk * sind(theta) * 2;
zz8 := zz0+(xx1*unit,yy1*unit);
zz9 := zz8 + (xx2*unit,yy2*unit);
drawarrow zz8--zz9 dashed evenly;
label.lft(btex $\tilde p$ etex, zz8+(-3pt,3pt));
label.ulft(btex $\tilde v=\phi_*(v)$ etex, zz9);

xx3 := kk * cosd(theta);
yy3 := kk * sind(theta);
xx4 := kk * cosd(theta) * 2;
yy4 := kk * sind(theta) * 2;
zz28 := (xx3*unit,yy3*unit);
zz29 := zz28 + (xx4*unit,yy4*unit);
label.lft(btex $p$ etex, zz28+(-2pt,2pt));
label.rt(btex $v$ etex, zz29);

pickup pencircle scaled penPT;
draw zz8;
draw zz28;

setbounds currentpicture to pat1;

endfig;
end
