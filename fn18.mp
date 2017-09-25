% tex/conc/mp/fn18.mp   2007-3-26   Alan Kennington.
% $Id: tex/conc/mp/fn18.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Graphs of two C^infty functions.

verbatimtex \input akmath etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol;

gcol := 0.6white;   % Colour of axes.
unit := 2.85cm;     % Unit length on axes.
a := 2.15 unit;
b := 1.15 unit;
c := 10.25cm;
xmax := 2;
np := 20;           % Number of points on X axis.
nq := 2;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/45;         % Notch length.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-0.08a,0);
zz4 := (0,0);

% Draw the axes.
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.bot(btex $\strut x$ etex, zz1);

% Add some notches.
pickup pencircle scaled 0.7pt;
for i=0 step 1 until nq:
    x1 := i * unit;
    label.bot(decimal i, (x1,-ht-2.5pt));
    draw (x1,0)--(x1,-ht) withcolor gcol;
    endfor
for i=1 step 1 until nqq:
    y1 := i*unit;
    label.lft(decimal i, (0,y1));
    draw (0,y1)--(ht,y1) withcolor gcol;
    endfor

% Draw the function.
for i=1 upto np:
    xx[i] := (i/np)*xmax;
    yy[i] := mexp(256*(-1/(xx[i])));
    endfor

xx[0] := 0;
yy[0] := 0;

pickup pencircle scaled 0.8pt;
draw for i=0 upto np-1:
    (xx[i]*unit,yy[i]*unit)...
    endfor
    (xx[np]*unit,yy[np]*unit);

% Do some extensions of the functions.
draw (0,0)--(-0.3*unit,0) dashed evenly;

% An asymptote.
draw (0,unit)--(2.15*unit,unit) withcolor gcol dashed evenly;

% Put some dots at the ends.
pickup pencircle scaled 2pt;
draw (xx[0]*unit,yy[0]*unit);

% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

label.rt(btex
$\displaystyle f(x)=\exp\left(-\frac1{x}\right)$ etex,
 0.62[zz0,zz2]+(0.12unit,0));

% setbounds currentpicture to pat1;

% Shift the first picture over.
currentpicture := currentpicture shifted (-c,0);

%------------------------------------------------------------------------------
% The second diagram.

gcol := 0.6white;   % Colour of axes.
unit := 2.85cm;     % Unit length on axes.
a := 1.15 unit;
b := 1.15 unit;
c := 6.5cm;
R := 1;
np := 20;           % Number of points on X axis.
nq := 1;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
% ht := a/45;         % Notch length.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,0);

% Draw the axes.
pickup pencircle scaled 0.4pt;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.bot(btex $\strut x$ etex, zz1);

% Add some notches.
pickup pencircle scaled 0.7pt;
for i=-nq step 1 until nq:
    x1 := i * unit;
    label.bot(decimal i, (x1,-ht-2.5pt));
    draw (x1,0)--(x1,-ht) withcolor gcol;
    endfor
for i=1 step 1 until nqq:
    y1 := i*unit;
    label.lft(decimal i, (0,y1));
    draw (0,y1)--(ht,y1) withcolor gcol;
    endfor

% Draw the function.
for i=0 upto np-2:
    xx[i] := (i/np)*R;
    yy[i] := mexp(256*(1/(xx[i]*xx[i]-R*R)));
    endfor

xx[np-1] := ((np-1)/np)*R;
xx[np] := R;

yy[np-1] := 0;
yy[np] := 0;

pickup pencircle scaled 0.8pt;
draw for i=0 upto np-1:
    (xx[i]*unit,yy[i]*unit)...
    endfor
    (xx[np]*unit,yy[np]*unit);
draw for i=0 upto np-1:
    (-xx[i]*unit,yy[i]*unit)...
    endfor
    (-xx[np]*unit,yy[np]*unit);

% Do some extensions of the functions.
draw (R*unit,0)--((R+0.3)*unit,0) dashed evenly;
draw (-R*unit,0)--(-(R+0.3)*unit,0) dashed evenly;

% Put some dots at the ends.
pickup pencircle scaled 2pt;
draw (xx[np]*unit,yy[np]*unit);
draw (-xx[np]*unit,yy[np]*unit);

% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

label.rt(btex
$\displaystyle g_R(x)=\exp\left(\frac1{x^2-R^2}\right)$ etex,
 0.62[zz0,zz2]+(0.12unit,0));

% setbounds currentpicture to pat1;

endfig;
end
