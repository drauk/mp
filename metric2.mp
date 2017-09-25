% tex/conc/mp/metric2.mp   2012-6-2   Alan U. Kennington.
% $Id: tex/conc/mp/metric2.mp 1b86b5b461 2015-08-22 05:16:48Z Alan U. Kennington $
% Open and closed balls in a metric space.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];

dd := 3.5cm;
rr := dd/2;
zz0 := (0,0);
zz1 := (1.5dd,0);
a0 := -55;
a1 := -55;
zz2 := zz0 + (rr,0) rotated a0;
zz3 := zz1 + (rr,0) rotated a1;
zz4 := 0.5[zz0,zz2];
zz5 := 0.5[zz1,zz3];
sp := 3pt;
penLN := 0.5bp;
penC := 2.5bp;
penPT := 2.5bp;

% Two circles.
pickup pencircle scaled penLN;
draw fullcircle scaled dd shifted zz0 dashed evenly;
draw fullcircle scaled dd shifted zz1;

drawarrow zz0--zz2;
drawarrow zz1--zz3;

% Labels on radius arrows.
label.urt(btex $r$ etex, zz4);
label.urt(btex $r$ etex, zz5);

% Centres of balls.
pickup pencircle scaled penC;
draw zz0;
draw zz1;
label.lft(btex $x$ etex, zz0+(-sp,0));
label.lft(btex $x$ etex, zz1+(-sp,0));

% Add some points y.
pickup pencircle scaled penPT;
zz10 := zz0 + (0,0.5rr) rotated -10;
zz11 := zz0 + (0,0.8rr) rotated 80;
zz12 := zz0 + (0,0.4rr) rotated 140;
zz13 := zz0 + (0,0.96rr) rotated -90;

zz20 := zz1 + (0,0.5rr) rotated -10;
zz21 := zz1 + (0,0.8rr) rotated 80;
zz22 := zz1 + (0,0.4rr) rotated 140;
zz23 := zz1 + (0,0.96rr) rotated -90;
zz24 := zz1 + (0,rr) rotated -45;
zz25 := zz1 + (0,rr) rotated -120;

draw zz10;
draw zz11;
draw zz12;
draw zz13;
label.lft(btex $y$ etex, zz10);
label.lft(btex $y$ etex, zz11);
label.lft(btex $y$ etex, zz12);
label.lft(btex $y$ etex, zz13);

draw zz20;
draw zz21;
draw zz22;
draw zz23;
draw zz24;
draw zz25;
label.lft(btex $y$ etex, zz20);
label.lft(btex $y$ etex, zz21);
label.lft(btex $y$ etex, zz22);
label.lft(btex $y$ etex, zz23);
label.urt(btex $y$ etex, zz24);
label.lrt(btex $y$ etex, zz25);

% Labels under the balls.
label.bot(btex $y\in B_r(x)$ etex, zz0+(0,-rr));
label.bot(btex $y\in \bar B_r(x)$ etex, zz1+(0,-rr));

endfig;
end
