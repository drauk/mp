% tex/conc/mp/fn73.mp   2012-2-2   Alan U. Kennington.
% $Id: tex/conc/mp/fn73.mp 939f1f3957 2012-02-02 06:10:47Z Alan U. Kennington $
% Letter-box bounds for real-valued function of real variable.

% verbatimtex
% \input akmath
% etex

beginfig(1);
numeric xx[], yy[], tt[];
pair zz[], pnt[];
color col[];
path pat[];

a := 120mm;
b := 40mm;
bb := 3mm;
ht := 4.5pt;
scA := 0.35;
scB := 0.55;

penA := 0.5bp;          % Axes.
penB := 0.5bp;          % Notches.
penC := 2.5pt;          % Points.
penD := 0.5pt;          % Curve.
penE := 0.70pt;         % Outlines of letterboxes. Dots.
penF := 0.60pt;         % Outlines of letterboxes. Dashes.

col1 := 0.5 white;      % Axes.
col2 := 0.3 white;      % Letterbox outlines.
col3 := 0.87 white;     % Letterbox fill.
col4 := 0.75 white;     % Letterbox double fill.

zz0 := (0,0);
zz1 := zz0+(a+5pt,0);
zz2 := zz0+(0,b);
zz3 := zz0+(-a,0);
zz4 := zz0+(0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
zz11 := (0.1a,0.1b);
zz12 := (0.3a,0.5b);
zz13 := (0.6a,0.3b);
zz14 := (0.9a,0.9b);
pat1 := zz11..zz12..zz13..zz14;

len := length pat1;
zz20 := point 0 of pat1;
zz21 := point len of pat1;
xA := xpart(zz20);
xB := xpart(zz21);
xAB := xB - xA;

nints := 10;            % Number of intervals.
for i=0 upto nints:
    xx[i] := xA+(i/nints)*xAB;
    pat0 := (xx[i], -bb)--(xx[i],b);
    tt[i] := ypart(pat0 intersectiontimes pat1);
    pnt[i] := point tt[i] of pat1;
    yy[i] := ypart(pnt[i]);
    endfor

eps := 0.08b;
for i=0 upto nints-2:
    % Determine coordinates of a "letterbox".
    yA := ypart(pnt[i]);
    yB := ypart(pnt[i+1]);
    yC := ypart(pnt[i+2]);
    yAC := 0.5(yA + yC);
    alpha := 0.5(yB - yAC);
    pat[10+i] := (pnt[i]+(0,alpha-eps))--(pnt[i]+(0,alpha+eps))
        --(pnt[i+2]+(0,alpha+eps))--(pnt[i+2]+(0,alpha-eps))--cycle;
    endfor

for i=0 upto nints-2:
    pickup pencircle scaled penE;
    if (i mod 2) = 0:
        fill pat[10+i] withcolor col4;
        fi
    endfor

for i=0 upto nints-2:
    pickup pencircle scaled penF;
    if (i mod 2) = 1:
        fill pat[10+i] withcolor col3;
        fi
    endfor

for i=0 upto nints-2:
    if (i mod 2) = 0:
        pickup pencircle scaled penE;
        draw pat[10+i] dashed withdots scaled scA withcolor col2;
    else:
        pickup pencircle scaled penF;
        draw pat[10+i] dashed evenly scaled scB withcolor col2;
        fi
    endfor

pickup pencircle scaled penD;
draw pat1;

for i=0 upto nints:
    % Draw the points.
    pickup pencircle scaled penC;
    draw (xx[i], yy[i]);

    % Draw the X-axis notches.
    pickup pencircle scaled penB;
    draw (xx[i],0)--(xx[i],-ht);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penA;
drawarrow zz0--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $x$ etex, zz1);

endfig;
end
