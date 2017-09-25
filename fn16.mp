% tex/conc/mp/fn16.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/fn16.mp 7beeb1e1fd 2012-04-30 07:37:19Z Alan U. Kennington $
% Graph of two C^infty functions in range [0,1].

verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];

a=1.8in;
b=0.93a;
unit=0.8a;          % Unit length on axes.
np=20;              % Number of points on X axis.
nq := 1;            % Number of notches on both axes.
ht=a/45;            % Notch length.

% The floor function.
z0=(0,0);
z1=(a,0);
z2=(0,b);
z0=0.8[z1,z3]=1.0[z2,z4];

% Draw the axes.
drawarrow z3--z1 withcolor0.6white;
drawarrow z4--z2 withcolor0.6white;
label.bot(btex $\strut x$ etex, z1);

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

pickup pencircle scaled 0.8pt;
draw for i=0 upto np-1:
    (xx[i]*unit,yy[i]*unit)...
    endfor
    (xx[np]*unit,yy[np]*unit);
% The second curve.
draw for i=0 upto np-1:
    (xx[i]*unit,(1-yy[i])*unit)...
    endfor
    (xx[np]*unit,(1-yy[np])*unit);

% Do some extensions of the functions.
draw (0,0)--(-0.45*unit,0) dashed evenly;
draw (unit,unit)--(1.45*unit,unit) dashed evenly;

draw (0,unit)--(-0.45*unit,unit) dashed evenly;
draw (unit,0)--(1.45*unit,0) dashed evenly;

% Put some dots at the ends.
pickup pencircle scaled 2pt;
draw (xx[0]*unit,yy[0]*unit);
draw (xx[np]*unit,yy[np]*unit);

draw (xx[0]*unit,(1-yy[0])*unit);
draw (xx[np]*unit,(1-yy[np])*unit);

% Add some notches.
pickup pencircle scaled 0.7pt;
for i=0 upto nq:
    x1 := i * unit;
    label.bot(decimal i, (x1,-3pt));
%    draw (x1,0)--(x1,ht);
    endfor
for i=1 upto nq:
    y1 := i*unit;
    label.ulft(decimal i, (0,y1));
%    draw (0,y1)--(ht,y1);
    endfor

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

label.lft(btex $\displaystyle
 1-f(x)={1\over1+\displaystyle\exp\left(\frac1{1-x}-\frac1x\right)}$ etex,
 0.7[z0,z2]+(-18pt,0));

label.rt(btex $\displaystyle
 f(x)={1\over1+\displaystyle\exp\left(\frac1x-\frac1{1-x}\right)}$ etex,
 0.7[z0,z2]+(unit + 18pt,0));

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
