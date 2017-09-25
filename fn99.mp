% tex/conc/mp/fn99.mp   2016-2-28   Alan U. Kennington.
% $Id: tex/conc/mp/fn99.mp 9f23acf9f3 2016-02-28 04:47:38Z Alan U. Kennington $
% Graph of continuous curve with infinitely many constant stretches.

beginfig(1);
numeric xx[], yy[];
pair zz[];

unit := 4.0cm;
xmax := 2;
aX := 20pt;
bX := 20pt;
a := xmax * unit + aX;
b := 1unit + bX;
aa := 0.5unit;
bb := 0.15unit;

np := 10;               % Number of vertex pairs.
nqx :=  2;             % Number of notches on X axis.
nq :=  1;              % Number of notches on Y axis.
ht := 4pt;             % Notch length.

penLN := 0.5bp;
penPT := 2.5pt;        % Diameter of big dots.
penAXIS := 0.5pt;      % Thickness of drawing axes.
penNOTCH := 0.5bp;

% Geometry of the axes.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-aa,0);
zz4 := (0,-bb);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor0.6white;
drawarrow zz4--zz2 withcolor0.6white;
label.lrt(btex $x$ etex, zz1);
label.rt(btex $\gamma_1(x)$ etex, zz2+(3pt,0pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Compute points of the graph of the function.
off := 10;
pw := 2;
for n=0 upto np:
    xx[off + 2 * n] := 2 - pw;
    yy[off + 2 * n] := xx[off + 2 * n] / 2;
    xnext := 2 - pw/2;
    ynext := xnext / 2;
    dx := xnext - xx[off + 2 * n];

    % Ascend at rate = 1 for the first half of the interval.
    xx[off + 2 * n + 1] := xx[off + 2 * n] + dx / 2;
    yy[off + 2 * n + 1] := yy[off + 2 * n] + dx / 2;

    pw := pw/2;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw (-aa,0)--
for n=0 upto np:
    (xx[off + 2 * n] * unit, yy[off + 2 * n] * unit)--
    (xx[off + 2 * n + 1] * unit, yy[off + 2 * n + 1] * unit)--
    endfor
    (2unit, 1unit)--(2unit+bX, 1unit+bX);

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
