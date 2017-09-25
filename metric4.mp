% tex/conc/mp/metric4.mp   2012-6-2   Alan U. Kennington.
% $Id: tex/conc/mp/metric4.mp 1b86b5b461 2015-08-22 05:16:48Z Alan U. Kennington $
% Equivalents to triangle inequality. Inner bounds.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
numeric a[];

dd := 2.4cm;
rr := dd/2;

ddd := 0.7dd;
rrr := ddd/2;
dd := dd + ddd;
rr := dd/2;

dddd := dd - ddd;
rrrr := dddd/2;

% First diagram.
a0 := -75;
a1 := 30;
a2 := -105;
a3 := 0;
b := dd + 2.8cm;
zz0 := (0,0);
zz1 := zz0 + (rr,0) rotated a1;
zz2 := zz0 + (rr,0) rotated a0;
zz3 := zz0 + (rrrr,0) rotated a2;
zz4 := 0.75[zz0,zz2];
zz5 := 0.91[zz0,zz3];
zz6 := zz1 + (rrr,0) rotated a3;
zz7 := 0.5[zz1,zz6];
zz8 := zz0 + (rrrr,0) rotated a1;
sp := 1pt;
penLN := 0.5bp;
penC := 2.5bp;
penPT := 2.5bp;

% Second diagram.
zz10 := zz0 + (b,0);
zz11 := zz10 + (rr,0) rotated a0;
zz12 := 0.75[zz10,zz11];
zz13 := zz10 + (rrrr,0) rotated a1;
zz14 := zz13 + (rrr,0) rotated a3;
zz15 := 0.5[zz13,zz14];
zz16 := zz10 + (rrrr,0) rotated a2;
zz17 := 0.91[zz10,zz16];
zz18 := zz10 + (rr,0) rotated a1;

% Circles.
pickup pencircle scaled penLN;
draw fullcircle scaled dd shifted zz0 dashed evenly;
draw fullcircle scaled ddd shifted zz1;
draw fullcircle scaled dddd shifted zz0 dashed evenly;

draw fullcircle scaled dd shifted zz10 dashed evenly;
draw fullcircle scaled ddd shifted zz13;
draw fullcircle scaled dddd shifted zz10 dashed evenly;;

drawarrow zz0--zz2;
drawarrow zz0--zz3;
drawarrow zz1--zz6;

drawarrow zz10--zz11;
drawarrow zz13--zz14;
drawarrow zz10--zz16;

% Labels on radius arrows.
label.llft(btex $r_1$ etex, zz4);
label.llft(btex $r_1-r_2$ etex, zz5);
label.top(btex $r_2$ etex, zz7);

label.llft(btex $r_1$ etex, zz12);
label.bot(btex $r_2$ etex, zz15);
label.llft(btex $r_1-r_2$ etex, zz17);

% Centres of balls.
pickup pencircle scaled penC;
draw zz0;
label.lft(btex $x$ etex, zz0+(-sp,0));

draw zz10;
label.lft(btex $x$ etex, zz10+(-sp,0));

draw zz1;
label.llft(btex $y$ etex, zz1);
draw zz8;
label.urt(btex $z$ etex, zz8);

draw zz13;
label.llft(btex $y$ etex, zz13);
draw zz18;
label.llft(btex $z$ etex, zz18);

% Labels under the balls.
label.bot(btex $y\notin B_{r_1}(x)\;\implies\;
 \bar B_{r_2}(y)\bcap B_{r_1-r_2}(x)=\emptyset$ etex, zz0+(0,-rr));

label.bot(btex $\bar B_{r_2}(y)\not\subseteq B_{r_1}(x)
 \;\implies\; y\notin B_{r_1-r_2}(x)$ etex, zz10+(0,-rr));

endfig;
end
