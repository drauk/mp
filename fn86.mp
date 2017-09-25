% tex/conc/mp/fn86.mp   2016-4-20   Alan U. Kennington.
% $Id: tex/conc/mp/fn86.mp 9f1354fded 2016-04-19 14:24:37Z Alan U. Kennington $
% Shadow-set lemma for proving Lebesgue differentiation theorem. (Riesz 1932.)

input mapmax
verbatimtex
\input dgmpmax
etex

beginfig(1);
numeric xx[];
pair zz[];
color col[];
path pat[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
unit := 3cm;            % Unit length on axes.
a := 2.4unit;
b := 1.8unit;

rA := 0.5unit;
rB := rA;
rC := 0.3unit;
rD := rC;
kA := 1.45;
kB := 2.75;

xx1 := a - 60pt;
yI := 2.7pt;            % Interval shadings just above the X axis.

penAXIS := 0.5bp;
penCURVE := 0.5bp;
penDASH := 0.6bp;
penNOTCH := 0.5bp;
penPT := 2.5bp;
penLN := 0.5bp;

col1 := 0.0white;
col2 := 0.6white;
col3 := 0.5white;
col4 := 0.90white;
col5 := 0.80white;
col6 := 0.80white;      % Sunlight shadows projected to X-axis.
col7 := 0.70white;      % Sunlight shadows projected to X-axis.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Axis dimensions.
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-10pt,0);
zz4 := (0,-10pt);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The main curve.
zz10 := (0.75unit, 0.75unit);
zz20 := (-10pt, 0.05unit);
zz21 := (0.2unit, ypart(zz20));
zz22 := zz21 + (0,rA);                  % Centre of circle.
zz23 := zz22 + (rA,0) rotated -45;
zz24 := zz22 + (rA,0);

zz25 := zz24 + (rB,0);                  % Centre of circle.
zz26 := zz25 + (rB,0) rotated 135;
zz27 := zz25 + (rB,0) rotated 90;

zz28 := zz27 + (0,rC);                  % Centre of circle.
zz29 := zz28 + (rC,0) rotated -45;
zz30 := zz28 + (rC,0);

zz31 := zz30 + (rD,0);                  % Centre of circle.
zz32 := zz31 + (rD,0) rotated 135;
zz33 := zz31 + (rD,0) rotated 90;

zz34 := zz33 + (0.2unit,0);
zz35 := zz34 + (0,16pt);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pat2 := zz20--zz21{dir0}..zz23..{dir90}zz24{dir90}..zz26..{dir0}zz27{dir0}
      ..zz29..{dir90}zz30{dir90}..zz32..{dir0}zz33--zz34;

% Find where the gradient has specified values.
tA := directiontime ((1,kA)) of (subpath(3,5) of pat2);
zz40 := point tA  of (subpath(3,5) of pat2);
zz43 := (xpart(zz40)-ypart(zz40)/kA,0);
zz41 := (zz40--zz43) intersectiontimes (subpath(0,3) of pat2);
zz42 := point ypart(zz41) of (subpath(0,3) of pat2);
zz44 := (xpart(zz40)+(ypart(zz35)-ypart(zz40))/kA,ypart(zz35));

tB := directiontime ((1,kB)) of (subpath(3,5) of pat2);
zz45 := point tB  of (subpath(3,5) of pat2);
zz48 := (xpart(zz45)-ypart(zz45)/kB,0);
zz46 := (zz45--zz48) intersectiontimes (subpath(0,3) of pat2);
zz47 := point ypart(zz46) of (subpath(0,3) of pat2);
zz49 := (xpart(zz45)+(ypart(zz35)-ypart(zz45))/kB,ypart(zz35));

% Find where the gradient has specified values.
tC := directiontime ((1,kA)) of (subpath(7,9) of pat2);
zz50 := point tC  of (subpath(7,9) of pat2);
zz53 := (xpart(zz50)-ypart(zz50)/kA,0);
zz51 := (zz50--zz53) intersectiontimes (subpath(0,7) of pat2);
zz52 := point ypart(zz51) of (subpath(0,7) of pat2);
zz54 := (xpart(zz50)+(ypart(zz35)-ypart(zz50))/kA,ypart(zz35));

tD := directiontime ((1,kB)) of (subpath(7,9) of pat2);
zz55 := point tD  of (subpath(7,9) of pat2);
zz58 := (xpart(zz55)-ypart(zz55)/kB,0);
zz56 := (zz55--zz58) intersectiontimes (subpath(0,7) of pat2);
zz57 := point ypart(zz56) of (subpath(0,7) of pat2);
zz59 := (xpart(zz55)+(ypart(zz35)-ypart(zz55))/kB,ypart(zz35));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Shading for the shadows.
pat3 := buildcycle (zz40--zz43, subpath(0,5) of pat2);
pickup pencircle scaled penCURVE;
fill pat3 withcolor col4;

pat4 := buildcycle (zz45--zz48, subpath(0,5) of pat2);
pickup pencircle scaled penCURVE;
fill pat4 withcolor col5;

pat5 := buildcycle (zz50--zz53, subpath(4,8) of pat2);
pickup pencircle scaled penCURVE;
fill pat5 withcolor col4;

pat6 := buildcycle (zz55--zz58, subpath(4,8) of pat2);
pickup pencircle scaled penCURVE;
fill pat6 withcolor col5;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the main curve.
pickup pencircle scaled penCURVE;
draw pat2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Interval shading between ordinate lines for shadow boundary points.
pickup pencircle scaled penCURVE;
fill
 (xpart(zz40),0)--(xpart(zz40),yI)--(xpart(zz42),yI)--(xpart(zz42),0)--cycle
 withcolor col6;

fill
 (xpart(zz45),yI)--(xpart(zz45),2yI)--(xpart(zz47),2yI)--(xpart(zz47),yI)--cycle
 withcolor col7;

fill
 (xpart(zz50),0)--(xpart(zz50),yI)--(xpart(zz52),yI)--(xpart(zz52),0)--cycle
 withcolor col6;

fill
 (xpart(zz55),yI)--(xpart(zz55),2yI)--(xpart(zz57),2yI)--(xpart(zz57),yI)--cycle
 withcolor col7;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Ordinate lines for points where gradient is infinite.
pickup pencircle scaled penCURVE;
draw (xpart(zz24),0)--zz24 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz30),0)--zz30 dashed (evenly scaled 0.5) withcolor col2;
label.bot(btex\strut $x_1$ etex, (xpart(zz24),0));
label.bot(btex\strut $x_2$ etex, (xpart(zz30),0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Ordinate lines for shadow boundary points.
pickup pencircle scaled penCURVE;
draw (xpart(zz40),0)--zz40 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz42),0)--zz42 dashed (evenly scaled 0.5) withcolor col2;
% label.bot(btex\strut $b_1$ etex, (xpart(zz40),0));
label.bot(btex\strut $\scriptstyle a_1^1$ etex, (xpart(zz42),0));

draw (xpart(zz45),0)--zz45 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz47),0)--zz47 dashed (evenly scaled 0.5) withcolor col2;
% label.bot(btex\strut $b_1$ etex, (xpart(zz45),0));
label.bot(btex\strut $\scriptstyle a_1^2$ etex, (xpart(zz47),0));

draw (xpart(zz50),0)--zz50 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz52),0)--zz52 dashed (evenly scaled 0.5) withcolor col2;
% label.bot(btex\strut $b_1$ etex, (xpart(zz50),0));
label.bot(btex\strut $\scriptstyle a_2^1$ etex, (xpart(zz52),0));

draw (xpart(zz55),0)--zz55 dashed (evenly scaled 0.5) withcolor col2;
draw (xpart(zz57),0)--zz57 dashed (evenly scaled 0.5) withcolor col2;
% label.bot(btex\strut $b_1$ etex, (xpart(zz55),0));
label.bot(btex\strut $\scriptstyle a_2^2$ etex, (xpart(zz57),0)+(-2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex\strut $x$ etex, zz1);
label.ulft(btex $f(x)$ etex, zz2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Lines with specified gradients.
pickup pencircle scaled penLN;
draw zz44--zz43 withcolor col3;
draw zz49--zz48 withcolor col3;
draw zz54--zz53 withcolor col3;
draw zz59--zz58 withcolor col3;
label.top(btex $K_1$ etex, zz44);
label.top(btex $K_2$ etex, zz49);
label.top(btex $K_1$ etex, zz54+(5pt,0));
label.top(btex $K_2$ etex, zz59);

% label.urt(decimal xpart(zz41), zz2);
% label.lrt(decimal ypart(zz41), zz2);

% Points where gradient is infinite.
pickup pencircle scaled penPT;
draw zz24;
draw zz30;

draw zz40;
draw zz42;
draw zz45;
draw zz47;

draw zz50;
draw zz52;
draw zz55;
draw zz57;

% Some labels for infinite-derivative points.
zz60 := (xx1, ypart(zz24));
zz62 := (xx1, ypart(zz30));
pickup pencircle scaled penLN;
S_arrowspaces(zz60, zz24, 0pt, 3.5pt, 1, black);
S_arrowspaces(zz62, zz30, 0pt, 3.5pt, 1, black);
label.rt(btex $\Dur f(x_1)=\infty$ etex, zz60);
label.rt(btex $\Dur f(x_2)=\infty$ etex, zz62);

% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

% setbounds currentpicture to pat1;

endfig;
end
