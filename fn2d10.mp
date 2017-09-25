% tex/conc/mp/fn2d10.mp   2007-9-26   Alan Kennington.
% $Id: tex/conc/mp/fn2d10.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Real-valued function on R^2 which is directionally differentiable but not
% continuous at (0,0).

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
numeric alpha[], sz[];
path pat[];
pair zz[], ptmp[];
color gcol;

gcol := 0.6white;   % Colour of axes.
unit := 1.35cm;     % Unit length on axes.
siz := 1.9 unit;    % Length of lines to draw.
c := 2.30;
a := unit * c;
b := unit * c;
np := 12;           % Number of points on X semi-axis.
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := a/45;         % Notch length.
sep := 1.0pt;       % Distance of arrow head from point.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.urt(btex $x_1$ etex, zz1+(0,-2pt));
label.rt(btex $x_2$ etex, zz2);
label.lft(btex $\scriptstyle f(x)=0$ etex, zz3+(0,0));
label.bot(btex $\scriptstyle f(x)=0$ etex, zz4+(0,0));

% Add some notches.
pickup pencircle scaled 0.7pt;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        label.bot(decimal i, (x1,0));
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

% Draw the contours.
alpha[0] := 1;      % Parameter of parabola.
sz[0] := 1.5;       % Width of parabola.
alpha[1] := 0.5;
sz[1] := 1.85;
alpha[2] := 2;
sz[2] := 1.05;

Nalpha := 2;        % Max index of alpha array.
os := Nalpha + 1;   % Offset in array of points.

pickup pencircle scaled 0.5;

for j=0 upto Nalpha:
    k := alpha[j];
    w := sz[j];
    for i=-np upto np:
        xx := (i/np) * w;
        ptmp[i] := (xx, xx * xx * k) * unit;
        endfor
    % Top parabola.
    draw
    for i=-np upto np-1:
        ptmp[i]..
        endfor
        ptmp[np];
    % Bottom parabola.
    draw
    for i=-np upto np-1:
        (-ptmp[i])..
        endfor
        (-ptmp[np]);
    endfor

% Some labels for the curves.
zz10 := (1, 1) * unit;
zz11 := (2, 1) * unit;
S_arrowspaces(zz11, zz10, 0, sep, 1, black);
label.rt(btex $f(x)=1$ etex, zz11);

zz12 := (-1, 1) * unit;
zz13 := (-2, 1) * unit;
S_arrowspaces(zz13, zz12, 0, sep, 1, black);
label.lft(btex $f(x)=1$ etex, zz13);

zz10 := (1, -1) * unit;
zz11 := (2, -1) * unit;
S_arrowspaces(zz11, zz10, 0, sep, 1, black);
label.rt(btex $f(x)=-1$ etex, zz11);

zz12 := (-1, -1) * unit;
zz13 := (-2, -1) * unit;
S_arrowspaces(zz13, zz12, 0, sep, 1, black);
label.lft(btex $f(x)=-1$ etex, zz13);


zz10 := (1, 0.5) * unit;
zz11 := (2, 0.5) * unit;
S_arrowspaces(zz11, zz10, 0, sep, 1, black);
label.rt(btex $f(x)=2e^{-1.5}$ etex, zz11);

zz12 := (-1, 0.5) * unit;
zz13 := (-2, 0.5) * unit;
S_arrowspaces(zz13, zz12, 0, sep, 1, black);
label.lft(btex $f(x)=2e^{-1.5}$ etex, zz13);

zz10 := (1, -0.5) * unit;
zz11 := (2, -0.5) * unit;
S_arrowspaces(zz11, zz10, 0, sep, 1, black);
label.rt(btex $f(x)=-2e^{-1.5}$ etex, zz11);

zz12 := (-1, -0.5) * unit;
zz13 := (-2, -0.5) * unit;
S_arrowspaces(zz13, zz12, 0, sep, 1, black);
label.lft(btex $f(x)=-2e^{-1.5}$ etex, zz13);


zz10 := (1, 2) * unit;
zz11 := (2, 2) * unit;
S_arrowspaces(zz11, zz10, 0, sep, 1, black);
label.rt(btex $f(x)=\frac12e^{3/8}$ etex, zz11);

zz12 := (-1, 2) * unit;
zz13 := (-2, 2) * unit;
S_arrowspaces(zz13, zz12, 0, sep, 1, black);
label.lft(btex $f(x)=\frac12e^{3/8}$ etex, zz13);

zz10 := (1, -2) * unit;
zz11 := (2, -2) * unit;
S_arrowspaces(zz11, zz10, 0, sep, 1, black);
label.rt(btex $f(x)=-\frac12e^{3/8}$ etex, zz11);

zz12 := (-1, -2) * unit;
zz13 := (-2, -2) * unit;
S_arrowspaces(zz13, zz12, 0, sep, 1, black);
label.lft(btex $f(x)=-\frac12e^{3/8}$ etex, zz13);

endfig;
end
