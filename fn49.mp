% tex/conc/mp/fn49.mp   2007-3-27   Alan Kennington.
% $Id: tex/conc/mp/fn49.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Graph of u(x) = exp(-x^{-2}/2).

verbatimtex \input akmath etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol;

gcol := 0.6white;   % Colour of axes.
unit := 0.7cm;      % Unit length on axes.
a := 4.4 unit;
b := 4.4 unit;
cc := 7.3cm;        % Spacing between diagrams.
xmax := 4;
np := 40;           % Number of points on X axis.
nq := 4;            % Number of notches on X axes.
nqq := 4;           % Number of notches on Y axes.
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
label.lrt(btex $\strut x$ etex, zz1);

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
ii := 5;
for i=ii upto np:
    xx[i] := (i/np)*xmax;
    yy[i] := (3*xx[i]*xx[i]-1)/xx[i]/xx[i]/xx[i];
    endfor
% Special point 0 for asymptote.
iii := ii - 0.3;
xx[0] := (iii/np)*xmax;
yy[0] := (3*xx[0]*xx[0]-1)/xx[0]/xx[0]/xx[0];

pickup pencircle scaled 0.8pt;
draw for i=ii upto np-1:
    (xx[i]*unit,yy[i]*unit)...
    endfor
    (xx[np]*unit,yy[np]*unit);
draw for i=ii upto np-1:
    (-xx[i]*unit,-yy[i]*unit)...
    endfor
    (-xx[np]*unit,-yy[np]*unit);
% pickup pencircle scaled 2.5pt;
% draw (-xx[0]*unit,-yy[0]*unit);
% Do the asymptote as a line. Should really be a sub-curve.
pickup pencircle scaled 0.8pt;
draw (xx[ii]*unit,yy[ii]*unit)--(xx[0]*unit,yy[0]*unit) dashed evenly;
draw (-xx[ii]*unit,-yy[ii]*unit)--(-xx[0]*unit,-yy[0]*unit) dashed evenly;

label.lrt(btex $b(x)=-u''(x)/u'(x)$ etex,
 zz0+(0,4unit)+(3pt,0));
label.lrt(btex $\phantom{b(x)}{}=(3x^2-1)/x^3$ etex,
 zz0+(0,4unit)+(3pt,-13pt));

%------------------------------------------------------------------------------
% The second diagram.

gcol := 0.6white;   % Colour of axes.
unit := 2.85cm;     % Unit length on axes.
a := 1.15 unit;
b := 1.15 unit;
c := 6.5cm;
R := 1;
np := 40;           % Number of points on X axis.
nq := 1;            % Number of notches on X axes.
nqq := 1;           % Number of notches on Y axes.
% ht := a/45;         % Notch length.

% Axis parameters.
zz0 := (-cc,0);
zz1 := zz0 + (a,0);
zz2 := zz0 + (0,b);
zz3 := zz0 + (-a,0);
zz4 := zz0 + (0,0);

% Draw the axes.
pickup pencircle scaled 0.4pt;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.top(btex $\strut x$ etex, zz1);

% Add some notches.
pickup pencircle scaled 0.7pt;
for i=-nq step 1 until nq:
    x1 := i * unit;
    label.bot(decimal i, zz0+(x1,-ht-2.5pt));
    draw zz0+(x1,0)--zz0+(x1,-ht) withcolor gcol;
    endfor
for i=1 step 1 until nqq:
    y1 := i*unit;
    label.lft(decimal i, zz0+(0,y1));
    draw zz0+(0,y1)--zz0+(ht,y1) withcolor gcol;
    endfor

% Draw the function.
iiii := 3;
for i=iiii upto np:
    xx[i] := (i/np);
    yy[i] := mexp(-128/xx[i]/xx[i]);
    endfor

% Special treatment for overflow cases.
for i=0 upto iiii-1:
    xx[i] := 0;
    yy[i] := 0;
    endfor

pickup pencircle scaled 0.8pt;
draw for i=0 upto np-1:
    zz0+(xx[i]*unit,yy[i]*unit)...
    endfor
    zz0+(xx[np]*unit,yy[np]*unit);
draw for i=0 upto np-1:
    zz0+(-xx[i]*unit,yy[i]*unit)...
    endfor
    zz0+(-xx[np]*unit,yy[np]*unit);

% Put some dots at the ends.
pickup pencircle scaled 2pt;
% draw (xx[np]*unit,yy[np]*unit) shifted zz0;
% draw (-xx[np]*unit,yy[np]*unit) shifted zz0;

label.lrt(btex $\displaystyle u(x)=\exp(-x^{-2}/2)$ etex,
 zz0+(0,unit)+(3pt,0));

label.bot(btex $\displaystyle u''(x)+b(x)u'(x)=0$ etex, zz0+(0,-24pt));

endfig;
end
