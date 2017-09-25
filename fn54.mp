% tex/conc/mp/fn54.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fn54.mp 7af65d1b1d 2012-05-07 10:17:30Z Alan U. Kennington $
% Wedge set for derivative of real-valued function of real variable.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
numeric xx[], yy[];
path pat[];
color col[];

a := 1.8in;
b := 0.90a;
unit := 0.7a;           % Unit length on axes.
np := 20;               % Number of points on X axis.
nq :=  1;               % Number of notches on both axes.
ht := 0;                % Notch length.
htt := a/45;            % Notch length.
col1 := 0.0white;
col2 := 0.5white;
col3 := 0.5white;
col9 := 0.9white;       % Shaded region.
sep := 2.0pt;           % Distance of arrow head from point.

x1 := 0.75 unit;
y1 := 0.75 unit;
delta := 0.16 unit;
dd := 0.3 unit;

penENV := 0.7bp;
penCURVE := 0.6bp;
penZ := 1.0bp;
penAXIS := 0.5bp;
penNOTCH := 0.5bp;
penLN := 0.5bp;

zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz0 = 0.9[zz1,zz3] = 0.95[zz2,zz4];

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
zz17 := (x1,0);
zz18 := zz10 + (0,5mm);

pickup pencircle scaled penENV;
fill (zz35--zz37--zz38--zz36--cycle) withcolor col9;
draw zz31--zz32 withcolor col2;
draw zz35--zz36 dashed (evenly scaled 0.5) withcolor col2;
draw zz37--zz38 dashed (evenly scaled 0.5) withcolor col2;

% Draw vertical and horizontal dashed lines.
draw (x1,0)--zz10 dashed evenly withcolor col2;
draw (0,y1)--zz10 dashed evenly withcolor col2;
draw zz13--zz15 dashed evenly withcolor col2;
draw zz14--zz16 dashed evenly withcolor col2;

% Draw the curve.
pat2 := zz22..zz21..zz10..zz11..zz12;
pat3 := (pat2 cutbefore (zz13--zz15)) cutafter (zz14--zz16);
spc := 1pt;
pat4 := pat3 cutafter ((zz17--zz18) shifted (-spc,0));
pat5 := pat3 cutbefore ((zz17--zz18) shifted (spc,0));
pickup pencircle scaled penCURVE;
draw pat2 withcolor col3;
pickup pencircle scaled penZ;
% draw pat3;
draw pat4;
draw pat5;

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $x$ etex, zz1);

% Add some notches.
pickup pencircle scaled penNOTCH;

draw (x1,0)--(x1,-ht) withcolor col1;
label.bot(btex $\strut p$ etex, (x1,-ht));
label.bot(btex $\strut\llap{$p-{}$}\delta$ etex, (x1-delta,-ht));
label.bot(btex $\strut p\rlap{${}+\delta$}$ etex, (x1+delta,-ht));

draw (0,y1)--(-ht,y1) withcolor col1;
label.lft(btex $f(p)$ etex, (-ht,y1));
label.rt(btex $f(x)$ etex, zz12);

% Labels for the wedge set.
zz40 := (0.8x1, 1.4y1);
zz41 := 0.9[zz10, 0.5[zz32, zz36]];
zz42 := zz40+(0,-sep);
zz43 := 0.8[zz10, 0.5[zz32, zz38]];
zz44 := zz40+(-24pt,-7.5pt);
zz45 := 0.9[zz10, 0.5[zz31, zz37]];
pickup pencircle scaled penLN;
S_arrowspaces(zz40, zz41, 0, 0, 1, black);
S_arrowspaces(zz42, zz43, 0, 0, 1, black);
S_arrowspaces(zz44, zz45, 0, 0, 1, black);
label.lft(btex $K_{p,f(p),v,\varepsilon}$ etex, zz40);

% Label for the restricted part of the graph of the function f.
zz50 := (1.4x1, 0.5y1);
zz51 := point 2.2 of pat2;
pickup pencircle scaled penLN;
S_arrowspaces(zz50, zz51, 0, sep, 1, black);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex $f\restrict{(p-\delta,\,p+\delta)\setminus\{p\}}$ etex,
 zz50+(0,-3pt));
label.rt(btex $f(p)+v(x-p)$ etex, zz32);
label.rt(btex $f(p)+v(x-p)+\varepsilon\vert x-p\vert$ etex, zz36);
label.rt(btex $f(p)+v(x-p)-\varepsilon\vert x-p\vert$ etex, zz38);

setbounds currentpicture to pat1;

endfig;
end
