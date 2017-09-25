% tex/conc/mp/fn2d8.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d8.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Stokes formula for a rectangle.

beginfig(1);
pair zz[];
numeric xx[], yy[];
path pat[];
color col[];

a := 7cm;
b := 4cm;
unit := 0.7a;          % Unit length on axes.
np := 20;              % Number of points on X axis.
nq :=  1;              % Number of notches on both axes.
col1 := 0.0white;
col2 := 0.6white;

xa := 0.25a;
xb := 0.85a;
xc := xa+0.1a;
ya := 0.25b;
yb := 0.85b;
yc := ya+0.1b;
yd := ya+0.25b;
penDASH := 0.7bp;
penINT := 1.0bp;
penARROW := 0.5bp;
penBDY := 0.5bp;
penVEC := 0.5bp;
penAXIS := 0.5bp;

zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz0 = 0.9[zz1,zz3] = 0.95[zz2,zz4];

pickup pencircle scaled penDASH;
draw (xa,0)--(xa,ya) dashed evenly withcolor col2;
draw (xb,0)--(xb,ya) dashed evenly withcolor col2;
draw (0,ya)--(xa,ya) dashed evenly withcolor col2;
draw (0,yb)--(xa,yb) dashed evenly withcolor col2;

% Sample partial integration.
pickup pencircle scaled penINT;
draw (xa,yc)--(xb,yc) dashed (evenly scaled 0.75) withcolor col2;
draw ((xa,yc)--(xb,yc)) shifted(0,-3pt)
 dashed (evenly scaled 0.75) withcolor col2;
draw ((xa,yc)--(xb,yc)) shifted(0,-6pt)
 dashed (evenly scaled 0.75) withcolor col2;
% draw ((xa,yc)--(xb,yc)) shifted(0,-6pt)
%  dashed (evenly scaled 0.5) withcolor col2;
% draw ((xa,yc)--(xb,yc)) shifted(0,-8pt)
%  dashed (evenly scaled 0.5) withcolor col2;

label.top(btex $\int_{a_1}^{b_1}\partial_1 A_2(x^1,x^2)\,dx^1$ etex,
 ((xa+xb)/2,yd));
pickup pencircle scaled penARROW;
drawarrow ((xa+xb)/2,yd)--((xa+xb)/2,yc+1pt) withcolor 0.5white;

pickup pencircle scaled penBDY;
draw (xa,ya)--(xb,ya)--(xb,yb)--(xa,yb)--cycle;
zz10 := ((xa+xb)/2,ya);     % Bottom
zz11 := (xb,(ya+yb)/2);     % Right.
zz12 := ((xa+xb)/2,yb);     % Top
zz13 := (xa,(ya+yb)/2);     % Left.

label.bot(btex $\gamma_b$ etex, zz10);
label.rt(btex $\gamma_r$ etex, zz11);
label.top(btex $\gamma_t$ etex, zz12);
label.lft(btex $\gamma_\ell$ etex, zz13);

% Arrows to indicate direction of boundary integration.
pickup pencircle scaled penVEC;
dd := -16pt;
ll := 0.5cm;
drawarrow (zz10+(-ll,dd))--(zz10+(ll,dd));
drawarrow (zz11+(-dd,-ll))--(zz11+(-dd,ll));
drawarrow (zz12+(ll,-dd))--(zz12+(-ll,-dd));
drawarrow (zz13+(dd,ll))--(zz13+(dd,-ll));

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $x^1$ etex, zz1);
label.lft(btex $x^2$ etex, zz2);

% Add some notches.
pickup pencircle scaled penAXIS;

label.bot(btex $\strut a_1$ etex, (xa,0));
label.bot(btex $\strut b_1$ etex, (xb,0));

label.lft(btex $a_2$ etex, (0,ya));
label.lft(btex $b_2$ etex, (0,yb));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

setbounds currentpicture to pat1;

endfig;
end
