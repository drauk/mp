% tex/conc/mp/fn100.mp   2016-5-4   Alan U. Kennington.
% $Id: tex/conc/mp/fn100.mp dd26b71d0f 2016-05-04 07:00:07Z Alan U. Kennington $
% Function which is very weakly Lipschitz continuous.

beginfig(1);
numeric xx[], yy[];
pair zz[];
color col[];

unit := 4.0cm;
xmax := 1;
aX := 20pt;
bX := 20pt;
a := xmax * unit + aX;
b := 1unit + bX;
aa := 0.5unit;
bb := 0.15unit;

np := 40;              % Number of vertex pairs.
nqx :=  1;             % Number of notches on X axis.
nq :=  1;              % Number of notches on Y axis.
ht := 4pt;             % Notch length.

penLN := 0.5bp;
penPT := 2.5pt;        % Diameter of big dots.
penAXIS := 0.5pt;      % Thickness of drawing axes.
penNOTCH := 0.5bp;
penASYM := 0.5bp;

% Geometry of the axes.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-aa,0);
zz4 := (0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some asymptotes.
La := 1.1;
Lb := 0.6;
col1 := 0.5white;
pickup pencircle scaled penASYM;
draw (0,0)--(La*unit, La*unit) dashed evenly withcolor col1;
draw (0,0)--(Lb*unit, -Lb*unit) dashed evenly withcolor col1;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor0.6white;
drawarrow zz4--zz2 withcolor0.6white;
label.lrt(btex $x$ etex, zz1);
label.rt(btex $f(x)$ etex, zz2+(3pt,0pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Compute points of the graph of the function.
off := 10;
sgn := 1;
for n=1 upto np:
    xx[off + n] := 1/n;
    yy[off + n] := sgn/n;
    sgn := sgn * -1;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw
for n=1 upto np-1:
    (xx[off + n] * unit, yy[off + n] * unit)--
    endfor
    (xx[off + np] * unit, yy[off + np] * unit);

% Put a dot at the origin.
pickup pencircle scaled penPT;
draw (0*unit,0*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some notches.
pickup pencircle scaled penNOTCH;
for i=1 upto nqx:
    xx1 := i * unit;
    label.lrt(decimal i infont "cmr10", (xx1,-2pt));
    draw (xx1,0)--(xx1,-ht);
    endfor
for i=0 upto nq:
    yy1 := i*unit;
    label.ulft(decimal i infont "cmr10", (-ht,yy1));
    if i<>0:
        draw (0,yy1)--(-ht,yy1);
        fi
    endfor

endfig;
end
