% tex/conc/mp/fn69.mp   2012-1-27   Alan U. Kennington.
% $Id: tex/conc/mp/fn69.mp 5d12879670 2012-01-26 14:26:08Z Alan U. Kennington $
% Joining two points in $\int^2$.

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
nq := 8;            % Number of notches on X axes.
nqq := 5;           % Number of notches on Y axes.
nqqN := 2;          % Number of notches on Y axes.
unit := 0.50cm;     % Unit length on axes.
a := (nq+.75) * unit;
b := (nqq+.75) * unit;
bb := (nqqN+.4) * unit;
r := 1;
R := 1.75 unit;
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

zz11 := (2 unit, 1 unit);
zz12 := (8 unit, 5 unit);
zz13 := 0.5[zz11,zz12];
zz14 := (-0.5)[zz11,zz12];
zz15 := (-1)[zz11,zz12];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled 0.6pt;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.urt(btex $\strut x\in\ints$ etex, zz1);
label.ulft(btex $\strut y\in\ints$ etex, zz2);

% Draw the graphs.
pickup pencircle scaled penx;
drawarrow ((-1.08)[zz11,zz12])--(1.2[zz11,zz12]);

pickup pencircle scaled penA;
draw zz11;
draw zz12;
draw zz13;
draw zz14;
draw zz15;
label.ulft(btex $(x_1,y_1)$ etex, zz11+(10pt,4pt));
label.ulft(btex $(x_2,y_2)$ etex, zz12);
label.lrt(btex $L(0)$ etex, zz11+(0pt,3pt));
label.lrt(btex $L(1)$ etex, zz12+(0pt,0pt));
label.ulft(btex $L(-1)$ etex, zz15+(0pt,0pt));

zz20 := zz4+(0,-11pt);
zz21 := zz20+(0,-13pt);
label.bot(btex $(y-y_1)(x_2-x_1)=(x-x_1)(y_2-y_1)$ etex, zz20);
label.bot(btex $L:t\mapsto(x_1,y_1)+t((x_2,y_2)-(x_1,y_1))$ etex, zz21);

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

endfig;
end
