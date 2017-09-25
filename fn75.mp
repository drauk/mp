% tex/conc/mp/fn75.mp   2012-2-5   Alan U. Kennington.
% $Id: tex/conc/mp/fn75.mp f3f3072894 2012-02-05 05:35:25Z Alan U. Kennington $
% Letter-box bounds for real-valued function of real variable.

input mapmax.mp
% verbatimtex
% \input akmath
% etex

beginfig(1);
numeric xx[], yy[], tt[];
pair zz[], pnt[];
color col[];
path pat[];

a := 120mm;
b := 20mm;
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
zz11 := (0.3a,0.3b);
zz12 := (0.4a,0.4b);
zz13 := (0.55a,0.4b);
zz14 := (0.7a,0.8b);
pat2 := zz11..zz12..zz13..zz14;
pat1 := subpath (0.5,2.8) of pat2;

len := length pat1;
zz20 := point 0 of pat1;
zz21 := point len of pat1;
xA := xpart(zz20);
xB := xpart(zz21);
xAB := xB - xA;

nints := 2;             % Number of intervals.
for i=0 upto nints:
    xx[i] := xA+(i/nints)*xAB;
    pat0 := (xx[i], -bb)--(xx[i],b);
    tt[i] := ypart(pat0 intersectiontimes pat1);
    pnt[i] := point tt[i] of pat1;
    yy[i] := ypart(pnt[i]);
    endfor

eps := 0.10b;
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
    if (i mod 2) = 1:
        fill pat[10+i] withcolor col4;
        fi
    endfor

for i=0 upto nints-2:
    pickup pencircle scaled penF;
    if (i mod 2) = 0:
        fill pat[10+i] withcolor col3;
        fi
    endfor

for i=0 upto nints-2:
    if (i mod 2) = 1:
        pickup pencircle scaled penE;
        draw pat[10+i] dashed withdots scaled scA withcolor col2;
    else:
        pickup pencircle scaled penF;
        draw pat[10+i] dashed evenly scaled scB withcolor col2;
        fi
    endfor

pickup pencircle scaled penD;
draw pat2;

zz30 := 0.5[pnt[0],pnt[2]] + (0,alpha);
zz31 := zz30 + (15pt,25pt);
zz32 := pnt[2] + (0,alpha);
zz33 := zz32 + (30pt,0pt);
zz34 := pnt[2] + (0,alpha+eps);
zz35 := zz32 + (10pt,20pt);
zz36 := pnt[2] + (0,alpha-eps);
zz37 := zz32 + (10pt,-14pt);
pickup pencircle scaled penC;
draw zz30;
draw zz32;

pickup pencircle scaled penD;
S_arrowspaces(zz31, zz30, 0pt, 2.5pt, 1, black);
label.urt(btex $(x,u)$ etex, zz31);
S_arrowspaces(zz33, zz32, 0pt, 2.5pt, 1, black);
label.rt(btex $(x+\delta,u+\delta v)$ etex, zz33);
S_arrowspaces(zz35, zz34, 0pt, 1.0pt, 1, black);
label.urt(btex $(x+\delta,u+\delta v+\varepsilon)$ etex, zz35);
S_arrowspaces(zz37, zz36, 0pt, 1.0pt, 1, black);
label.lrt(btex $(x+\delta,u+\delta v-\varepsilon)$ etex, zz37);

for i=0 upto nints:
    % Draw the points.
    pickup pencircle scaled penC;
    draw (xx[i], yy[i]);

    % Draw the X-axis notches.
    pickup pencircle scaled penB;
    draw (xx[i],0)--(xx[i],-ht) withcolor col1;
    endfor

label.bot(btex \strut$x-\delta$ etex, (xx[0],-ht));
label.bot(btex \strut$x$ etex, (xx[1],-ht));
label.bot(btex \strut$x+\delta$ etex, (xx[2],-ht));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penA;
drawarrow zz0--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $x$ etex, zz1);
label.rt(btex $f(x)$ etex, zz2);

endfig;
end
