% tex/conc/mp/fn68.mp   2012-1-27   Alan U. Kennington.
% $Id: tex/conc/mp/fn68.mp 5d12879670 2012-01-26 14:26:08Z Alan U. Kennington $
% Joining two points in $\reals^2$.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol, gc;

gcol = 0.4white;    % Colour of axes.
gc = 0.55white;     % Colour of diagonal lines.
unit := 1.50cm;     % Unit length on axes.
a := 2.35 unit;
b := 2.35 unit;
bb := 1.2 unit;
r := 1;
R := 1.75 unit;
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
nqqN := 1;          % Number of notches on Y axes.
ht := a/45;         % Notch length.
% penx := 0.24pt;
penx := 0.5pt;
penA := 2.5pt;

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-bb);

zz11 := (0.5 unit, 0.6 unit);
zz12 := (1.5 unit, 1.3 unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled 0.6pt;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.urt(btex $\strut x\in\reals$ etex, zz1);
label.ulft(btex $\strut y\in\reals$ etex, zz2);

% Draw the graphs.
pickup pencircle scaled penx;
% drawarrow (zz11-(zz12-zz11))--(zz11+2*(zz12-zz11));
drawarrow ((-2)[zz11,zz12])--(2[zz11,zz12]);

pickup pencircle scaled penA;
draw zz11;
draw zz12;
label.lrt(btex $(x_1,y_1)$ etex, zz11);
label.lrt(btex $(x_2,y_2)$ etex, zz12);
% S_tiltlabel_top_up(
%  btex $\displaystyle{y-y_1\over y_2-y_1}={x-x_1\over x_2-x_1}$ etex,
%  0.85[zz11,zz12], angle(zz12-zz11), 3pt);
S_tiltlabel_top_up(
 btex $(y-y_1)(x_2-x_1)=(x-x_1)(y_2-y_1)$ etex,
 0.84[zz11,zz12], angle(zz12-zz11), 3pt);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some notches.
pickup pencircle scaled 0.7pt;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if (i > 0):
            label.bot(decimal i, (x1,-2pt));
        else:
            label.bot(decimal i, (x1,-2pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqqN step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i, (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% ...

setbounds currentpicture to pat1;

endfig;
end
