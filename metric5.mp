% tex/conc/mp/metric5.mp   2013-12-21   Alan U. Kennington.
% $Id: tex/conc/mp/metric5.mp 1b86b5b461 2015-08-22 05:16:48Z Alan U. Kennington $
% Distance function on a torus.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[];

penLN := 0.5bp;
penPT := 2.0bp;

unit := 1.2cm;
aa := 4unit;
bb := 3unit;
zz10 := (0,0);
zz11 := (aa,0);
zz12 := (aa,bb);
zz13 := (0,bb);

zz20 := 0.5[zz10,zz13];
zz21 := 0.5[zz11,zz12];
zz22 := 0.5[zz20,zz21];

pickup pencircle scaled penLN;
draw zz13--zz10--zz11;
draw zz11--zz12--zz13 dashed evenly;

draw subpath(0,2) of fullcircle scaled 1unit shifted zz10;
draw subpath(2,4) of fullcircle scaled 1unit shifted zz11;
draw subpath(4,6) of fullcircle scaled 1unit shifted zz12;
draw subpath(6,8) of fullcircle scaled 1unit shifted zz13;

draw subpath(0,2) of fullcircle scaled 2unit shifted zz10;
draw subpath(2,4) of fullcircle scaled 2unit shifted zz11;
draw subpath(4,6) of fullcircle scaled 2unit shifted zz12;
draw subpath(6,8) of fullcircle scaled 2unit shifted zz13;

draw subpath(0,2) of fullcircle scaled 3unit shifted zz10;
draw subpath(2,4) of fullcircle scaled 3unit shifted zz11;
draw subpath(4,6) of fullcircle scaled 3unit shifted zz12;
draw subpath(6,8) of fullcircle scaled 3unit shifted zz13;

p[1] := (fullcircle scaled 4unit shifted zz10) intersectiontimes (zz20--zz21);
p[2] := (fullcircle scaled 4unit shifted zz11) intersectiontimes (zz20--zz21);
p[3] := (fullcircle scaled 4unit shifted zz12) intersectiontimes (zz20--zz21);
p[4] := (fullcircle scaled 4unit shifted zz13) intersectiontimes (zz20--zz21);

draw subpath(0,xpart(p[1])) of fullcircle scaled 4unit shifted zz10;
draw subpath(xpart(p[2]),4) of fullcircle scaled 4unit shifted zz11;
draw subpath(4,xpart(p[3])) of fullcircle scaled 4unit shifted zz12;
draw subpath(xpart(p[4]),8) of fullcircle scaled 4unit shifted zz13;

pickup pencircle scaled penPT;
draw zz10;
draw zz22;

% Some labels.
label.llft(btex $y$ etex, zz10);
label.bot(btex $x_1$ etex, zz11);
label.lft(btex $x_2$ etex, zz13);

label.lft(btex $\scriptstyle r=0.5$ etex, zz10+(0,0.5unit));
label.lft(btex $\scriptstyle r=1\phantom{.5}$ etex, zz10+(0,1unit));
label.lft(btex $\scriptstyle r=1.5$ etex, zz10+(0,1.5unit));
label.lft(btex $\scriptstyle r=1\phantom{.5}$ etex, zz13+(0,-1unit));
label.lft(btex $\scriptstyle r=0.5$ etex, zz13+(0,-0.5unit));

label.top(btex $\scriptstyle r=1.5$ etex, zz13+(1.5unit,0));
label.top(btex $\scriptstyle r=1.5$ etex, zz12+(-1.5unit,0));

label.bot(btex $\scriptstyle r=1$ etex, zz10+(1unit,0));
label.bot(btex $\scriptstyle r=2$ etex, zz10+(2unit,0));
label.bot(btex $\scriptstyle r=1$ etex, zz11+(-1unit,0));

label.top(btex $\scriptstyle r=2.5$ etex, zz22);

label.bot(btex points at distance $r$ from $y=(0,0)$ etex,
 0.5[zz10,zz11]+(0,-12pt));

endfig;
end
