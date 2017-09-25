% tex/conc/mp/fn82.mp   2014-7-23   Alan U. Kennington.
% $Id: tex/conc/mp/fn82.mp b260362025 2014-07-23 09:44:21Z Alan U. Kennington $
% Integral powers of x.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[], yy[];
path pat[];
pair zz[];
color gcol;

gcol := 0.4white;   % Colour of axes.
unit := 1.65cm;     % Unit length on axes.
a := 2.25 unit;
b := 2.05 unit;
bb := 2.2 unit;
r := 1;
% R := 1.75 unit;
R := 2 unit;
nq := 2;            % Number of notches on X axes.
nqq := 2;           % Number of notches on Y axes.
ht := a/45;         % Notch length.
ylabelA := 1.9;

penLN := 0.5pt;
penNOTCH := 0.5pt;
penAXIS := 0.5pt;

aa := 0.4;          % Alpha value.
aaa := 0.8;         % Alpha value.

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,bb);
zz3 := (-a,0);
zz4 := (0,-b);

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $\strut x$ etex, zz1);

label.lft(btex $x^1$ etex, (-R+3pt,-ylabelA*unit));
label.ulft(btex $x^0$ etex, (-R+3pt,1unit));
label.urt(btex $x^0$ etex, (R,1unit));

% The y = x^0 and x^1 "curves".
pickup pencircle scaled penLN;
draw (-R,1unit)--(R,1unit);
draw (-R,-R)--(R,R);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 2.
np := 20;           % Number of points in graph.
factor := 2**0.5;
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**2;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
    (-xx[np]*unit, yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 3.
np := 20;           % Number of points in graph.
factor := 2**(1/3);
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**3;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
    (-xx[np]*unit, -yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 4.
np := 20;           % Number of points in graph.
factor := 2**0.25;
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**4;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, yy[i]*unit)..
    endfor
    (-xx[np]*unit, yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Calculate the points for alpha = 5.
np := 20;           % Number of points in graph.
factor := 2**(1/5);
for i=0 upto np:
    k := i * factor;
    xx[i] := k/np;
    yy[i] := (k/np)**5;
    endfor

% Draw the graph.
pickup pencircle scaled penLN;
draw for i=np downto 1:
    (xx[i]*unit, yy[i]*unit)..
    endfor
for i=0 upto np-1:
    (-xx[i]*unit, -yy[i]*unit)..
    endfor
    (-xx[np]*unit, -yy[np]*unit);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some notches.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if (i > 0):
            label.bot(decimal i infont "cmr8", (x1,-2pt));
        else:
            label.bot(decimal i infont "cmr8", (x1,-2pt));
            fi
        draw (x1,0)--(x1,ht) withcolor gcol;
        fi
    endfor
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        if i = 1:
            label.ulft(decimal i infont "cmr8", (0,y1));
        else:
            label.lft(decimal i infont "cmr8", (0,y1));
            fi
        draw (0,y1)--(ht,y1) withcolor gcol;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some labels.
zz12 := ((-(0.5**(1/3)))*unit,-0.5unit);
zz13 := zz12 + (1.0unit,-0.2unit);
zz14 := (((0.3**(1/2)))*unit,0.3unit);
zz15 := (0.3unit,0.65unit);
pickup pencircle scaled penLN;
% S_arrowspaces(zz11, zz10, 0pt, 0pt, 1, black);
S_arrowspaces(zz13, zz12, 0pt, 2pt, 1, black);
S_arrowspaces(zz15, zz14, 0pt, 2pt, 1, black);
label.rt(btex\strut $x^3$ etex, zz13);
label.ulft(btex $x\rlap{${}^2$}$ etex, zz15);

% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

label.urt(btex $x^1$ etex,
 (2unit,2unit));
label.rt(btex\strut $x^2$ etex,
 ((2**0.5)*unit,2unit));
label.top(btex $x\rlap{${}^3$}$ etex,
 ((2**(1/3))*unit+1.2pt,2unit-1pt));
label.lft(btex $x^5$ etex,
 ((2**0.2)*unit,2unit));

label.urt(btex $x^2$ etex,
 (-(0.5**(1/2))*unit,0.5unit));
label.rt(btex $x^5$ etex,
 ((0.4**(1/5))*unit,0.4unit));
label.lft(btex $x^4$ etex,
 (-(0.5**(1/4))*unit,0.5unit));

label.lft(btex $x^5$ etex,
 (-(0.5**(1/5))*unit,-0.5unit));
label.rt(btex $x^5$ etex,
 (-(ylabelA**(1/5))*unit,-ylabelA*unit));
label.lft(btex $x^3$ etex,
 (-(ylabelA**(1/3))*unit,-ylabelA*unit));
label.llft(btex $x^2$ etex,
 (-(2**0.5)*unit,2unit));
label.urt(btex $x^4$ etex,
 (-(2**0.25)*unit,2unit));

% setbounds currentpicture to pat1;

endfig;
end
