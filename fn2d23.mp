% tex/conc/mp/fn2d23.mp   2015-9-17   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d23.mp b807a466aa 2015-09-17 09:31:32Z Alan U. Kennington $
% Geodesic curves for a slightly non-Riemannian manifold.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
boolean tracept;
numeric xx[], yy[];
pair zz[];
color gcol;
path pat[];

unit := 1.50cm;     % Unit length on axes.
a := 2.35 unit;
b := 2.35 unit;
bb := 2.15 unit;
r := 1;
R := 1.75 unit;
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := 0.1cm;        % Notch length.

penLN := 0.5pt;
penAXIS := 0.5pt;
penNOTCH := 0.5pt;
penPT := 3bp;
tracept := false;

gcol := 0.4white;   % Colour of axes.

xmax := 2;
ymax := 2;
np := 10;           % Number of points in half-graph.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-bb);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.urt(btex $\strut x_1$ etex, zz1);
label.lft(btex $\strut x_2$ etex, zz2+(-2pt,0));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if (i > 0):
            label.llft(decimal i infont "cmr9", (x1,-2pt));
        else:
            label.lrt(decimal i infont "cmr9", (x1,-2pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        label.lft(decimal i infont "cmr9", (0,y1));
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for level 0.5.
xA := 0.5;
pickup pencircle scaled penPT;
for i=0 upto np:
    k := 0.7 * ymax * (i/np);
    xx[i] := xA * (k*k + 1);
    yy[i] := xx[i] * sqrt(xx[i]/xA - 1);
    if tracept:
        draw (xx[i]*unit, yy[i]*unit);
        fi
    endfor

% Draw the graphs.
pickup pencircle scaled penLN;
draw
for i=np downto 1:
    (xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[np]*unit, yy[np]*unit);
draw
for i=np downto 1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
    (-xx[np]*unit, yy[np]*unit);

zz10 := (xx[np-2]*unit, yy[np-2]*unit);
zz11 := (xx[np]*unit, yy[np]*unit);
zz12 := (-xx[np-2]*unit, yy[np-2]*unit);
zz13 := (-xx[np]*unit, yy[np]*unit);
S_tiltlabel_top(btex $f(x_1,x_2)=0.5$ etex, zz10, angle(zz11-zz10)-3)
S_tiltlabel_top(btex $f(x_1,x_2)=-0.5$ etex, zz12, angle(zz12-zz13)+1)

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for level 1.
xA := 1;
pickup pencircle scaled penPT;
for i=0 upto np:
    k := 0.5 * ymax * (i/np);
    xx[i] := xA * (k*k + 1);
    yy[i] := xx[i] * sqrt(xx[i]/xA - 1);
    if tracept:
        draw (xx[i]*unit, yy[i]*unit);
        fi
    endfor

% Draw the graphs.
pickup pencircle scaled penLN;
draw
for i=np downto 1:
    (xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[np]*unit, yy[np]*unit);
draw
for i=np downto 1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
    (-xx[np]*unit, yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for level 1.5.
xA := 1.5;
pickup pencircle scaled penPT;
for i=0 upto np:
    k := 0.4 * ymax * (i/np);
    xx[i] := xA * (k*k + 1);
    yy[i] := xx[i] * sqrt(xx[i]/xA - 1);
    if tracept:
        draw (xx[i]*unit, yy[i]*unit);
        fi
    endfor

% Draw the graphs.
pickup pencircle scaled penLN;
draw
for i=np downto 1:
    (xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[np]*unit, yy[np]*unit);
draw
for i=np downto 1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
    (-xx[np]*unit, yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for level 2.
xA := 2;
pickup pencircle scaled penPT;
for i=0 upto np:
    k := 0.335 * ymax * (i/np);
    xx[i] := xA * (k*k + 1);
    yy[i] := xx[i] * sqrt(xx[i]/xA - 1);
    if tracept:
        draw (xx[i]*unit, yy[i]*unit);
        fi
    endfor

% Draw the graphs.
pickup pencircle scaled penLN;
draw
for i=np downto 1:
    (xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
    (xx[np]*unit, yy[np]*unit);
draw
for i=np downto 1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
    (-xx[np]*unit, yy[np]*unit);

zz20 := (xx[np-2]*unit, -yy[np-2]*unit);
zz21 := (xx[np]*unit, -yy[np]*unit);
zz22 := (-xx[np-2]*unit, -yy[np-2]*unit);
zz23 := (-xx[np]*unit, -yy[np]*unit);
S_tiltlabel_top(btex $f(x_1,x_2)=2$ etex, zz20, angle(zz21-zz20)-1)
S_tiltlabel_top(btex $f(x_1,x_2)=-2$ etex, zz22, angle(zz22-zz23))

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.bot(btex level curves of
 $\displaystyle f:(x_1,x_2)\mapsto{x_1^3\over x_1^2+x_2^2}$ etex, zz4);

endfig;
end
