% tex/conc/mp/fn70.mp   2012-1-27   Alan U. Kennington.
% $Id: tex/conc/mp/fn70.mp 8dc195231e 2012-01-27 05:24:38Z Alan U. Kennington $
% Noise on the real line.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[], pts[];
color col[];

unitY := 7mm;           % Y direction.
unitX := 100mm;         % X direction.
np := 1;                % Number of points on X axis.
nq := 1;                % Number of points on Y axis.
a := np*unitX+20pt;
b := 2unitY;
bb := 1.5unitY;
ht := 4.5pt;
m := 140;

penA := 0.5bp;
penB := 0.5bp;
penC := 2.5pt;

col1 := 0.5white;
col2 := 0.5white;
col3 := 0.4white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The first basis.

zz0 := (0,0);
zz1 := zz0+(a+5pt,0);
zz2 := zz0+(0,b);
zz3 := zz0+(-a,0);
zz4 := zz0+(0,-bb);

% Draw the axes.
pickup pencircle scaled penA;
drawarrow zz0--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $\reals$ etex, zz1);
label.lft(btex $\reals$ etex, zz2+(-2pt,0));

% Notches.
pickup pencircle scaled penB;
draw (0,unitY)--(-ht,unitY);
label.lft(btex $\varepsilon_0$ etex, (-ht,unitY));
draw (0,-unitY)--(-ht,-unitY);
label.lft(btex $-\varepsilon_0$ etex, (-ht,-unitY));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Pseudo-random number generation. (Very bad!!)
rand_x := 993;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Draw a random graph.
npts := 0;
for i=0 upto m:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;

    % Number between -1 and +1.
    vx := -1 + 2 * (rand_x/rand_T);
    p0 := ((i/m)*unitX, vx * unitY);
    % Sample some points.
    if (i mod 10) = 6:
        npts := npts + 1;
        pts[npts] := p0;
        fi

    pickup pencircle scaled penB;
    draw (xpart(p0),0)--p0 withcolor col2;

    pickup pencircle scaled penC;
    draw p0;
    endfor

% Draw some velocity arrows.
pickup pencircle scaled penB;
for i=1 upto floor(npts/2)-1:
    p0 := pts[2i-1];
    p1 := pts[2i];
    drawarrow p0--(2[p0,p1]) withcolor col2;
    draw p0--p1 withcolor black;
    endfor

endfig;
end
