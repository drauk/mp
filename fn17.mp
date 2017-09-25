% tex/conc/mp/fn17.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/fn17.mp b4bb1441b5 2012-04-30 06:32:18Z Alan U. Kennington $
% Graph of a C^infty function with domain B_{0,R}.

verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol;

gcol = 0.6white;    % Colour of axes.
unit := 1.332in;    % Unit length on axes.
a := 2.2 unit;
b := 1.3 unit;
r := 1;
R := 2;
np := 22;           % Number of points on X axis.
nq := 2;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/45;         % Notch length.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,0);

% Draw the axes.
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.bot(btex $\strut x_1$ etex, zz1);

% Draw the function.
for i=2 upto np-2:
    xx[i] := r+(i/np)*(R-r);
    yy[i] := 1/(1 + mexp(256*(1/(R-xx[i])-1/(xx[i]-r))));
    endfor

xx[0] := r;
xx[1] := r+(1/np)*(R-r);
xx[np-1] := r+((np-1)/np)*(R-r);
xx[np] := R;

yy[0] := 1;
yy[1] := 1;
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
draw (-r*unit,unit)--(r*unit,unit) dashed evenly;
draw (R*unit,0)--((R+0.3)*unit,0) dashed evenly;
draw (-R*unit,0)--(-(R+0.3)*unit,0) dashed evenly;

% Put some dots at the ends.
pickup pencircle scaled 2pt;
draw (xx[0]*unit,yy[0]*unit);
draw (xx[np]*unit,yy[np]*unit);

draw (-xx[0]*unit,yy[0]*unit);
draw (-xx[np]*unit,yy[np]*unit);

% Add some notches.
pickup pencircle scaled 0.7pt;
for i=-nq step 1 until nq:
    x1 := i * unit;
    label.bot(decimal i, (x1,-ht-2.5pt));
    draw (x1,0)--(x1,-ht) withcolor gcol;
    endfor
for i=1 step 1 until nqq:
    y1 := i*unit;
    label.ulft(decimal i, (0,y1+2pt));
%    draw (0,y1)--(ht,y1) withcolor gcol;
    endfor

% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

label.rt(btex $\displaystyle
 g_{r,R}(x)={1\over1+\displaystyle\exp\left(\frac1{R-|x|}-\frac1{|x|-r}\right)}$
 etex, zz2);

% setbounds currentpicture to pat1;

endfig;
end
