% tex/conc/mp/fn71.mp   2012-2-2   Alan U. Kennington.
% $Id: tex/conc/mp/fn71.mp 939f1f3957 2012-02-02 06:10:47Z Alan U. Kennington $
% Bound on differential quotient for a noise function.

% verbatimtex
% \input akmath
% etex

beginfig(1);
pair zz[];
color col[];
path pat[];

unitY := 8mm;           % Y direction.
unitX := 80mm;          % X direction.
np := 1;                % Number of points on X axis.
nq := 1;                % Number of points on Y axis.
a := np*unitX+20pt;
b := 2unitY;
bb := 1.0unitY;
ht := 4.5pt;
dx := 0.4a;
eps := 0.5unitY;
delt := 2unitY;
scA := 0.7;

penA := 0.5bp;          % Axes.
penB := 0.5bp;          % Notches.
penC := 2.5pt;          % Points.

col1 := 0.5white;       % Axes.
col2 := 0.3white;       % Vertical lines.

zz0 := (0,0);
zz1 := zz0+(a+5pt,0);
zz2 := zz0+(0,b);
zz3 := zz0+(-a,0);
zz4 := zz0+(0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penA;
drawarrow zz0--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.lrt(btex $x+h$ etex, zz1);
% label.lft(btex $\reals$ etex, zz2+(-2pt,0));

pat1 := ((delt,eps)..(delt/2,2eps)..(delt/3,3eps)..(delt/4,4eps))
 shifted (dx,0);
pat2 := ((-delt,eps)..(-delt/2,2eps)..(-delt/3,3eps)..(-delt/4,4eps))
 shifted (dx,0);
pickup pencircle scaled penA;
draw (xpart(point 1.5 of pat1),0)--(point(1.5) of pat1)
 dashed evenly scaled scA withcolor col2;
draw (xpart(point 1.5 of pat2),0)--(point(1.5) of pat2)
 dashed evenly scaled scA withcolor col2;

draw (xpart(point 0 of pat1),0)--(point 0 of pat1)
 dashed evenly scaled scA withcolor col2;
draw (xpart(point 0 of pat2),0)--(point 0 of pat2)
 dashed evenly scaled scA withcolor col2;

pickup pencircle scaled penA;
draw subpath (0,1.5) of pat1;
draw subpath (1.5,3) of pat1 dashed evenly scaled 0.5;
draw subpath (0,1.5) of pat2;
draw subpath (1.5,3) of pat2 dashed evenly scaled 0.5;
deltt := xpart(point 1.5 of pat1)-dx;
dd := 5pt;
ddd := 9pt;

% X-axis notches.
pickup pencircle scaled penB;
draw (dx-delt,0)--(dx-delt,-ht);
label.bot(btex \strut$x-\delta$ etex, (dx-delt-ddd,-ht));

draw (dx+delt,0)--(dx+delt,-ht);
label.bot(btex \strut$x+\delta$ etex, (dx+delt+ddd,-ht));

draw (dx,0)--(dx,-ht);
label.bot(btex \strut$x$ etex, (dx,-ht));

draw (dx-deltt,0)--(dx-deltt,-ht);
label.bot(btex \strut$x-\delta'$ etex, (dx-deltt-dd,-ht));

draw (dx+deltt,0)--(dx+deltt,-ht);
label.bot(btex \strut$x+\delta'$ etex, (dx+deltt+dd,-ht));

label.rt(btex bound for
 $\displaystyle\Bigl\vert{f(x+h)-f(x)\over h}\Bigr\vert$ etex,
 (0.6unitX,1.4unitY));

% Notches.
epss := ypart(point 1.5 of pat1);
pickup pencircle scaled penB;
draw (0,eps)--(-ht,eps);
label.lft(btex $2\varepsilon_0/\delta\phantom{{}'}$ etex, (-ht,eps));
draw (0,epss)--(-ht,epss);
label.lft(btex $2\varepsilon_0/\delta'$ etex, (-ht,epss));

endfig;
end
