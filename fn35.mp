% tex/conc/mp/fn35.mp   2014-7-28   Alan U. Kennington.
% $Id: tex/conc/mp/fn35.mp e980cdffe1 2014-07-28 10:54:05Z Alan U. Kennington $
% Graph of C^{0,1} transition map with no directional derivatives at origin.

verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol, gc;

gcol := 0.35white;    % Colour of axes.
gc := 0.65white;      % Colour of diagnoal lines.
unit := 1.65cm;     % Unit length on axes.
a := 2.35 unit;
b := 1.7 unit;
r := 1;
R := 1.75 unit;
np := 200;          % Number of points in graph.
nq := 2;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/35;         % Notch length.

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.
penLN := 0.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% The y = +- x curves.
pickup pencircle scaled penLN;
draw (-R,-R)--(R,R) dashed (evenly scaled 0.95) withcolor gc;
draw (-R,R)--(R,-R) dashed (evenly scaled 0.95) withcolor gc;

% Draw the axes.
pickup pencircle scaled penLN;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $\strut x$ etex, zz1);

label.rt(btex $y=x$ etex, (R,R));
label.rt(btex $y=-x$ etex, (R,-R));

% Add some notches.
pickup pencircle scaled penLN;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if (i > 0):
            label.bot(decimal i, (x1+2pt,-ht-2.5pt));
        else:
            label.top(decimal i, (x1-4pt,ht+2.5pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i, (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% Calculate the points.
factor := 180/mlog(2);
for i=0 upto np:
    k := i*8 - 178;
    xx[i] := mexp(-k);
    yy[i] := -xx[i] * sind(factor * k);
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=0 upto np-1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[np]*unit, yy[np]*unit);

draw for i=0 upto np-1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
    (-xx[np]*unit, -yy[np]*unit);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex
% $\displaystyle f(x)\rlap{$\displaystyle{}
% =x\sin\left(\frac{\pi\ln\vert x\vert}{\ln 2}\right)$}$
 $\displaystyle f(x)=x\sin\left(\pi\ln_2\vert x\vert\right)$
 etex, (1.8unit,1.3unit));

setbounds currentpicture to pat1;

endfig;
end
