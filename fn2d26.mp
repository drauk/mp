% tex/conc/mp/fn2d26.mp   2018-2-2   Alan U. Kennington.
% $Id$
% Unit level curves of some norms for 2-space.

input mapmax
input centmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric xx[][], yy[][];
pair zz[], midpt;
color gcol, xcol;
path pat[];

unit := 0.90cm;     % Unit length on axes.
nn := 5;            % Number of notches.
a := nn * unit + 0.7cm;
b := nn * unit + 0.7cm;
bb := nn * unit + 0.6cm;
pmax := 6;

np := 12;           % Number of points in an eighth of a graph.
nq := nn;           % Number of notches on X axes.
nqq := nn;          % Number of notches on Y axes.
ht := 3pt;          % Notch length.

gcol := 0.35white;  % Colour of axes and notches.
xcol := 0.35white;  % Colour of spirals.

penARROW := 0.5bp;
penARROWLAB := 0.5bp;
penAXIS := 0.5bp;
penLN := 0.5bp;
penNOTCH := 0.5bp;
penPT := 3.0bp;
penSPIRAL := 0.5bp;

% Axis parameters.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-a,0);
zz4 := (0,-bb);
midpt := zz0;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor gcol;
drawarrow zz4--zz2 withcolor gcol;
label.lrt(btex $x$ etex, zz1);
label.lft(btex $y$ etex, zz2+(-2pt,0));

% Notches on X-axis.
pickup pencircle scaled penNOTCH;
for i=-nq step 1 until nq:
    x1 := i * unit;
    if (i <> 0):
        if i < 0:
            draw (x1,0)--(x1,ht) withcolor gcol;
            label.bot(decimal i infont "cmr9", (x1,0));
        else:
            draw (x1,0)--(x1,-ht) withcolor gcol;
            label.top(decimal i infont "cmr9", (x1,1pt));
            fi
        fi
    endfor
% Notches on Y-axis.
for i=-nqq step 1 until nqq:
    y1 := i*unit;
    if (i <> 0):
        if i < 0:
            draw (0,y1)--(-ht,y1) withcolor gcol;
            label.rt(decimal i infont "cmr9", (0,y1));
        else:
            draw (0,y1)--(ht,y1) withcolor gcol;
            label.lft(decimal i infont "cmr9", (0,y1));
            fi
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
epi2 := 4.810477381;        % exp(pi/2).
epi16 := 1.216952206;       % exp(pi/16).
zz9 := epi16 * (cosd(90/8), sind(90/8));

zz10 := (0, 1unit);
nverts := 9;
for i=1 upto nverts:
    zz[10 + i] := (zz[9 + i] * epi16) rotated (-90/8);
    endfor

pat1 := zz[10]
for i=1 upto nverts:
    ..zz[10 + i]
    endfor
    ;
% Draw the spirals.
nstarts := 12;
pickup pencircle scaled penSPIRAL;
for theta=0 upto nstarts - 1:
    drawarrow pat1 rotated (360*(theta/nstarts)) withcolor xcol;
    endfor

% Draw some arrows.
narrows := 4;
arrowDT := 1.8;
arrowscale := 4;
for i = 0 upto narrows:
    zz30 := (direction (i * arrowDT) of pat1) * arrowscale;
    zz31 := point (i * arrowDT) of pat1;
    pickup pencircle scaled penARROW;
    drawarrow zz31--(zz31+zz30);
    pickup pencircle scaled penPT;
    draw zz31;
    endfor

pickup pencircle scaled penARROWLAB;
zz40 := point (3.8 * arrowDT) of pat1;
zz41 := zz40 + (0.7unit,0.5unit);
label.rt(btex $\gamma_{(0,1)}$ etex, zz41);
S_arrowspaces(zz41, zz40, 0pt, 2pt, 1, black);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
