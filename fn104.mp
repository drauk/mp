% tex/conc/mp/fn104.mp   2018-1-23   Alan U. Kennington.
% $Id$
% Smooth (enough) global function which is zero/one out/inside given spheres.
% This is a very poorly coded metapost file. Please don't look at it.

input centmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
pair zz[], midpt;
color gcol;
path pat[];

gcol = 0.6white;    % Colour of axes.
unit := 2.25cm;      % Unit length on axes.
a := 2.2 unit;
b := 1.3 unit;
r := 1;
R := 2;
np := 22;           % Number of points on X axis.
nq := 2;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
ht := a/45;         % Notch length.
Rx := 0.8;
dA := 7pt;
dB := 0.7unit;
dC := 6pt;

penARROW := 0.5bp;
penAXIS := 0.8bp;
penDOT := 2bp;
penNOTCH := 0.7bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,0);
zz5 := (0.5unit,0);
midpt := zz0;

% Draw the axes.
pickup pencircle scaled penARROW;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
% label.top(btex $\strut p\in M$ etex, zz1);

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

pickup pencircle scaled penAXIS;
draw for i=0 upto np-1:
    (xx[i]*unit,yy[i]*unit)...
    endfor
    (xx[np]*unit,yy[np]*unit);
draw for i=0 upto np-1:
    (-xx[i]*unit,yy[i]*unit)...
    endfor
    (-xx[np]*unit,yy[np]*unit);

% Do some extensions of the functions.
% draw (-r*unit,unit)--(r*unit,unit) dashed evenly;
draw (-r*unit,unit)--(r*unit,unit);
draw (R*unit,0)--((R+Rx)*unit,0) dashed evenly;
draw (-R*unit,0)--(-(R+Rx)*unit,0) dashed evenly;
label.ulft(btex $M\setminus\psi^{-1}(B_{x,R})$ etex, (-R*unit,0));
label.urt(btex $M\setminus\psi^{-1}(B_{x,R})$ etex, (R*unit,0));

% Put some dots at the ends.
pickup pencircle scaled penDOT;
draw (xx[0]*unit,yy[0]*unit);
draw (xx[np]*unit,yy[np]*unit);

draw (-xx[0]*unit,yy[0]*unit);
draw (-xx[np]*unit,yy[np]*unit);

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
%    label.bot(decimal i infont "cmr10", (x1,-ht-2.5pt));
    draw (x1,0)--(x1,-ht) withcolor gcol;
    endfor
for i=1 step 1 until nqq:
    y1 := i*unit;
    label.ulft(decimal i infont "cmr10", (0,y1+2pt));
%    draw (0,y1)--(ht,y1) withcolor gcol;
    endfor

label.bot(btex $\psi^{-1}(x)$ etex, (0,-ht-2.5pt));
label.bot(btex $\psi^{-1}(\partial B_{x,r})$ etex, (unit,-ht-2.5pt));
label.bot(btex $\psi^{-1}(\partial B_{x,R})$ etex, (2unit,-ht-2.5pt));

label.bot(btex $\psi^{-1}(\partial B_{x,r})$ etex, (-unit,-ht-2.5pt));
label.bot(btex $\psi^{-1}(\partial B_{x,R})$ etex, (-2unit,-ht-2.5pt));

% label.lft(btex $f$ etex, zz2);
label.urt(btex\strut $f$ etex, (unit, unit));
label.top(btex\strut $p$ etex, zz5);
pickup pencircle scaled penARROW;
drawarrow (zz5+(-dA,dC))--(zz5+(-dB,dC));
drawarrow (zz5+(dA,dC))--(zz5+(dB,dC));

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
