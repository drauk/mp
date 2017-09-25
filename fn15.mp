% tex/conc/mp/fn15.mp   2015-9-6   Alan U. Kennington.
% $Id: tex/conc/mp/fn15.mp 62d9ad71c7 2015-09-06 11:24:48Z Alan U. Kennington $
% Graph of C^infty function in range [x_0-R, x_0+R].

verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];

a := 1.8in;
b := 0.9a;
unit := 0.8a;           % Unit length on axes.
np := 60;               % Number of points on X axis.
nq := 1;                % Number of notches on both axes.
ht := a/45;             % Notch length.
penLN := 0.5bp;
penPT := 2.5bp;
maxnum := 4095;
maxexp := maxnum/256;
maxlog := mlog(maxnum);

z0 = (0,0);
z1 = (a,0);
z2 = (0,b);
z0=0.5[z1,z3]=1.0[z2,z4];

% Draw the axes.
pickup pencircle scaled penLN;
drawarrow z3--z1 withcolor0.6white;
drawarrow z4--z2 withcolor0.6white;
label.top(btex $\strut x\in\reals^n$ etex, z1);

% Load up the coordinates into an array.
for i=2 upto np-2:
    xx[i] := i/np;
%    yy[i] := 1/(1 + mexp(256*(1/xx[i]-1/(1-xx[i]))));
    % Algorithm to avoid integer overflow.
    % NOTE: Should make this a library function!
    qA := (np/i) - (np/(np-i));
    if qA >= maxexp:
        yy[i] := 0;
    elseif qA <= -maxexp:
        yy[i] := 1;
    else:
        qB := 256 * qA;
        if qB >= maxlog:
            yy[i] := 0;
        elseif qB <= -maxlog:
            yy[i] := 1;
        else:
            qC := mexp(qB);
            yy[i] := 1/(1 + qC);
            fi
        fi
    endfor

xx[0] := 0;
xx[1] := 1/np;
xx[np-1] := (np-1)/np;
xx[np] := 1;

yy[0] := 0;
yy[1] := 0;
yy[np-1] := 1;
yy[np] := 1;

pickup pencircle scaled penLN;
draw for i=0 upto np-1:
    (xx[i]*unit,(1-yy[i])*unit)...
    endfor
    (xx[np]*unit,(1-yy[np])*unit);
% The second curve.
draw for i=0 upto np-1:
    (-xx[i]*unit,(1-yy[i])*unit)...
    endfor
    (-xx[np]*unit,(1-yy[np])*unit);

% Do some extensions of the functions.
draw (-unit,0)--(-1.45*unit,0) dashed evenly;
draw (unit,0)--(1.45*unit,0) dashed evenly;

% Put some dots at the ends.
pickup pencircle scaled penPT;
draw (xx[0]*unit,(1-yy[0])*unit);
draw (xx[np]*unit,(1-yy[np])*unit);
draw (-xx[np]*unit,(1-yy[np])*unit);

% Add X-axis labels.
label.bot(btex \strut$x_0$ etex, z0+(0,-3pt));
label.bot(btex \strut$\vert x-x_0\vert=R$ etex, z0+(unit,-3pt));
label.bot(btex \strut$\vert x-x_0\vert=R$ etex, z0+(-unit,-3pt));

label.urt(btex $1$ etex, z0+(0,unit));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex $\displaystyle
 \phi(x)={1\over1+\displaystyle\exp\left(\frac1{R-\vert x-x_0\vert}
 -\frac1{\vert x-x_0\vert}\right)}$ etex,
 0.77[z0,z2]+(0.27unit,0.02unit));

setbounds currentpicture to pat1;

endfig;
end
