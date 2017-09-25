% tex/conc/mp/fn6.mp   2014-10-29   Alan U. Kennington.
% $Id: tex/conc/mp/fn6.mp 3f062786d6 2014-10-29 04:01:39Z Alan U. Kennington $
% Graph of C^infty function in range [0,1].

beginfig(1);
pair zz[];
numeric xx[], yy[];
path pat[];

a := 1.8in;
b := 0.93a;
unit := 0.8a;          % Unit length on axes.
np := 20;              % Number of points on X axis.
nq :=  1;              % Number of notches on both axes.
ht := a/45;            % Notch length.

penAXIS := 0.5bp;
penCURVE := 0.8bp;
penDOT := 2.0bp;
penNOTCH := 0.7bp;

% The floor function.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz0 = 0.8[zz1,zz3] = 1.0[zz2,zz4];

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor0.6white;
drawarrow zz4--zz2 withcolor0.6white;
label.lrt(btex $x$ etex, zz1);

% Draw the function.
for i=2 upto np-2:
    xx[i] := i/np;
    yy[i] := 1/(1 + mexp(256*(1/xx[i]-1/(1-xx[i]))));
    endfor

xx[0] := 0;
xx[1] := 1/np;
xx[np-1] := (np-1)/np;
xx[np] := 1;

yy[0] := 0;
yy[1] := 0;
yy[np-1] := 1;
yy[np] := 1;

pickup pencircle scaled penCURVE;
draw for i=0 upto np-1:
    (xx[i]*unit,yy[i]*unit)..
    endfor
    (xx[np]*unit,yy[np]*unit);

% Do some extensions of the function.
draw (0,0)--(-0.45*unit,0) dashed evenly;
draw (unit,unit)--(1.45*unit,unit) dashed evenly;

% Put some dots at the ends.
pickup pencircle scaled penDOT;
draw (xx[0]*unit,yy[0]*unit);
draw (xx[np]*unit,yy[np]*unit);

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=0 upto nq:
    x1 := i * unit;
    label.bot(decimal i, (x1,-3pt));
    draw (x1,0)--(x1,ht);
    endfor
for i=1 upto nq:
    y1 := i*unit;
    label.rt(decimal i, (ht,y1));
    draw (0,y1)--(ht,y1);
    endfor

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

label.lft(btex $\displaystyle f(x)={1\over1+\exp(1/x-1/(1-x))}$ etex,
 0.75[zz0,zz2]+(-12pt,0));

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
