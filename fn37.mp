% tex/conc/mp/fn37.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fn37.mp c1042c4ff2 2012-05-07 09:22:41Z Alan U. Kennington $
% Definition of derivative of real-valued function of real variable.

beginfig(1);
pair zz[];
numeric xx[], yy[];
path pat[];
color col[];

a := 1.8in;
b := 0.90a;
unit := 0.7a;          % Unit length on axes.
np := 20;              % Number of points on X axis.
nq :=  1;              % Number of notches on both axes.
ht := 0;               % Notch length.
htt := a/45;           % Notch length.
col1 := 0.0white;
col2 := 0.6white;
penAXIS := 0.5bp;
penDYDX := 0.7bp;
penORD := 0.7bp;
penCURVE := 0.5bp;

zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz0 = 0.9[zz1,zz3] = 0.95[zz2,zz4];
x1 := 0.75 unit;
y1 := 0.75 unit;
delta := 0.16 unit;
dd := 0.3 unit;

zz7 := (0unit,0.07unit);
zz8 := (dd,0.15unit);
zz9 := (0unit,-0.1unit);
zz10 := (x1,y1);
zz11 := zz10 + zz8 + zz9;
zz12 := zz10 + 2 * zz8 + 4 * zz9;

zz21 := zz10 - zz8 + zz9;
zz22 := zz10 - 2 * zz8 + 4 * zz9;

zz31 := zz10 - 2 * zz8;
zz32 := zz10 + 2 * zz8;

zz35 := zz10 - 2 * zz8 - 2 * zz7;
zz36 := zz10 + 2 * zz8 + 2 * zz7;

zz37 := zz10 - 2 * zz8 + 2 * zz7;
zz38 := zz10 + 2 * zz8 - 2 * zz7;

zz13 := (x1-delta,0);
zz14 := (x1+delta,0);
zz15 := zz10 - (delta/dd)*zz8;
zz16 := zz10 + (delta/dd)*zz8;

pickup pencircle scaled penDYDX;
draw zz31--zz32 withcolor col2;
draw zz35--zz36 dashed (evenly scaled 0.5) withcolor col2;
draw zz37--zz38 dashed (evenly scaled 0.5) withcolor col2;

pickup pencircle scaled penORD;
draw (x1,0)--zz10 dashed evenly withcolor col2;
draw (0,y1)--zz10 dashed evenly withcolor col2;
draw zz13--zz15 dashed evenly withcolor col2;
draw zz14--zz16 dashed evenly withcolor col2;

pickup pencircle scaled penCURVE;
draw zz22..zz21..zz10..zz11..zz12;

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $x$ etex, zz1);

% Add some notches.
pickup pencircle scaled penAXIS;

draw (x1,0)--(x1,-ht) withcolor col1;
label.bot(btex $\strut p$ etex, (x1,-ht));
label.bot(btex $\strut\llap{$p-{}$}\delta$ etex, (x1-delta,-ht));
label.bot(btex $\strut p\rlap{${}+\delta$}$ etex, (x1+delta,-ht));

draw (0,y1)--(-ht,y1) withcolor col1;
label.lft(btex $f(p)$ etex, (-ht,y1));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex $f(x)$ etex, zz12);
label.rt(btex $f(p)+v(x-p)$ etex, zz32);
label.rt(btex $f(p)+v(x-p)+\varepsilon\vert x-p\vert$ etex, zz36);
label.rt(btex $f(p)+v(x-p)-\varepsilon\vert x-p\vert$ etex, zz38);

setbounds currentpicture to pat1;

endfig;
end
