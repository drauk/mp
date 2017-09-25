% tex/conc/mp/fn39.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fn39.mp ec2798f5c7 2012-05-08 06:03:12Z Alan U. Kennington $
% Gradient of a function.

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
begingroup
pair Xa, Xb, Xdf;

Xa := (Xx * unit, Xy * unit);
Xdfx := (4Xx * Xy * Xy)/((1 - Xx**2) ** 3);
Xdfy := 2 * Xy/((1 - Xx ** 2)**2);
Xdf := (Xdfx * unit, Xdfy * unit);
Xb := Xa + Xdf;
drawarrow Xa--Xb;
endgroup
enddef; % End of function X_gradient.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol, gc;

gcol = 0.35white;   % Colour of axes.
gc = 0.65white;     % Colour of diagnoal lines.
unit := 3.50cm;     % Unit length on axes.
a := 1.35 unit;
b := 1.25 unit;
r := 1;
R := 1.75 unit;
np := 200;          % Number of points in graph.
nq := 1;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/35;         % Notch length.
gap := 1pt;

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.
penAXIS := 0.5bp;
penNOTCH := 0.5bp;
penCURVE := 0.5bp;
penARROW := 0.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-0.1b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $\strut x$ etex, zz1);
label.lrt(btex $\strut y$ etex, zz2+(2pt,0));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if (i > 0):
            label.bot(decimal i, (x1,-ht));
        else:
            label.bot(decimal i, (x1,-ht));
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
jmax := 3;
for i=0 step 1 until imax:
    alpha := (i/imax)**0.5;
    for j=-jmax step 1 until jmax:
        xx1 := j/jmax;
        yy1 := alpha * (1 - xx1 * xx1);
        zz[10+jmax+j] := (xx1*unit, yy1*unit);
        endfor
    draw
    for j=-jmax step 1 until jmax-1:
        zz[10+jmax+j]..
        endfor
        zz[10+jmax*2] withcolor 0.4white;
    endfor

% Some labels and arrows.
pickup pencircle scaled penARROW;

alpha := 0.1;
xx10 := -0.65;
zz40 := (xx10 * unit, (alpha ** 0.5) * (1 - xx10 ** 2) * unit);
zz41 := (xx10 * unit, -0.1 unit);
S_arrowspace(zz41, zz40, gap, 1, black);
label.bot(btex $f(x,y)=0.1$ etex, zz41);

alpha := 0.2;
xx10 := 0.66;
zz40 := (xx10 * unit, (alpha ** 0.5) * (1 - xx10 ** 2) * unit);
zz41 := (xx10 * unit, -0.1 unit);
S_arrowspace(zz41, zz40, gap, 1, black);
label.bot(btex $f(x,y)=0.2$ etex, zz41+(-10pt,0));

alpha := 1;
xx10 := -0.2;
zz40 := (xx10 * unit, (alpha ** 0.5) * (1 - xx10 ** 2) * unit);
zz41 := (-0.3 * unit, 1.1 unit);
S_arrowspaces(zz41, zz40, 0, gap, 1, black);
label.ulft(btex $f(x,y)=1.0$ etex, zz41);

alpha := 0.9;
xx10 := 0.2;
zz40 := (xx10 * unit, (alpha ** 0.5) * (1 - xx10 ** 2) * unit);
zz41 := (0.3 * unit, 1.1 unit);
S_arrowspaces(zz41, zz40, 0, gap, 1, black);
label.urt(btex $f(x,y)=0.9$ etex, zz41);

% Draw the gradient of f.
% X_gradient(0.5, 0.5);
for i=-9 step 1 until 9:
    alpha := 0.01 ** 0.5;
    xx1 := i/10;
    yy1 := alpha * (1 - xx1 * xx1);
    X_gradient(xx1, yy1);
    endfor

for i=-6 step 1 until 6:
    alpha := 0.1 ** 0.5;
    xx1 := i/10;
    yy1 := alpha * (1 - xx1 * xx1);
    X_gradient(xx1, yy1);
    endfor

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex
% $\displaystyle f(x)\rlap{$\displaystyle{}
% =x\sin\left(\frac{\pi\ln\vert x\vert}{\ln 2}\right)$}$
 $\displaystyle f(x,y) = \left(\frac{y}{1-x^2}\right)^2$ etex,
% (0.8unit, 0.72unit));
 (0.95unit, 0.2unit));

label.rt(btex
 $\displaystyle(f_x,f_y) ={}$ etex,
 (1.05unit, 0.8unit));

label.rt(btex
 $\displaystyle\frac{(4xy^2,2y(1-x^2))}{(1-x^2)^3}$ etex,
 (1.05unit, 0.8unit)+(10pt,-20pt));

setbounds currentpicture to pat1;

endfig;
end
