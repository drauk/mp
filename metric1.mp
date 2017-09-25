% tex/conc/mp/metric1.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/metric1.mp 1b86b5b461 2015-08-22 05:16:48Z Alan U. Kennington $
% Radius of open ball within intersection of two given balls.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
color col[];
path pat[];
picture pic;

ddA := 2.6cm;
ddB := 1.25ddA;
rrA := ddA/2;
rrB := ddB/2;
xs := 1.35;                 % Eccentricity factor.
dx := -0.9rrA*xs;
aa := rrA * xs + rrB * xs + dx;
thA := 110;
thB := 70;
thC := 30;
thD := 45;

col1 := 0.90 white;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of the balls.
zz0 := (0,0);
zz1 := zz0 + (aa,0);
zz2 := 0.45[zz0,zz1]+(0,-12pt);
zz3 := 0.36[zz0,zz1]+(0,7pt);

rrC := min(rrA - length((zz2-zz0) xscaled (1/xs)),
           rrB - length((zz2-zz1) xscaled (1/xs)));
rrD := min(rrA - length((zz3-zz0) xscaled (1/xs)),
           rrB - length((zz3-zz1) xscaled (1/xs)));
ddC := 2rrC;
ddD := 2rrD;

% Arrowhead points.
zz10 := zz0+((rrA,0) rotated thA xscaled xs);
zz11 := zz1+((rrB,0) rotated thB xscaled xs);
zz12 := zz2+((rrC,0) rotated thC xscaled xs);
zz13 := zz3+((rrD,0) rotated thD xscaled xs);

pat1 := (fullcircle scaled ddA) xscaled xs shifted zz0;
pat2 := (fullcircle scaled ddB) xscaled xs shifted zz1;
pat3 := (fullcircle scaled ddC) xscaled xs shifted zz2;
pat4 := (fullcircle scaled ddD) xscaled xs shifted zz3;

fill pat1 withcolor col1;
fill pat2 withcolor col1;

% Shaded subsets.
pickup pencircle scaled penLN;
pic := nullpicture;
addto pic contour reverse pat1 withcolor white;
clip pic to pat2;
addto currentpicture also pic;

% Outlines of balls.
pickup pencircle scaled penLN;
draw pat1;
draw pat2;
draw pat3;
draw pat4;

% Centres.
pickup pencircle scaled penPT;
draw zz0;
draw zz1;
draw zz2;
draw zz3;
label.llft(btex $x$ etex, zz0);
label.lrt(btex $y$ etex, zz1);
label.bot(btex $z_1$ etex, zz2);
label.lft(btex $z_2$ etex, zz3);

% Radius arrows.
pickup pencircle scaled penLN;
S_arrowspaces(zz0, zz10, 2pt, 0pt, 1, black);
S_arrowspaces(zz1, zz11, 2pt, 0pt, 1, black);
S_arrowspaces(zz2, zz12, 2pt, 0pt, 1, black);
S_arrowspaces(zz3, zz13, 2pt, 0pt, 1, black);
label.lft(btex $r$ etex, 0.5[zz0,zz10]);
label.rt(btex $s$ etex, 0.5[zz1,zz11]);
label.bot(btex $t_1$ etex, 0.5[zz2,zz12]+(2pt,1pt));
label.ulft(btex $t_2$ etex, 0.5[zz3,zz13]+(0,-3pt));

endfig;
end
