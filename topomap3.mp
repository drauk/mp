% tex/conc/mp/topomap3.mp   2014-4-17   Alan U. Kennington.
% $Id: tex/conc/mp/topomap3.mp bca0fd7376 2015-08-30 05:05:09Z Alan U. Kennington $
% Effect of an atlas chart-transition map on an open set.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric t[];
pair zz[];
color col[];
path pat[];
picture pic;

ddA := 1.8cm;
ddB := ddA;
ddC := ddA;
ddD := ddA;
rrA := ddA/2;
rrB := ddB/2;

xs := 1.35;                 % Eccentricity factor.
dx := -0.9rrA*xs;
dxB := 0.75cm;
dxC := 1.0cm;
aa := rrA * xs + rrB * xs + dx;
bb := ddA + dxB;
ratA := 1.1;

% Parameters for set Omega.
dxO := 0.35ddC * xs;
dyO := 0.35ddC;
ddO := 0.5ddC;

col0 := 0.93 white;
col1 := 0.85 white;
col2 := 1.00 white;
penLN := 0.5bp;
penPT := 2.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of the balls.
zz0 := (0,0);
zz1 := zz0 + (aa,0);
zz2 := zz0 + (-dxC,bb);
zz3 := zz1 + (dxC,bb);
zz4 := zz0 + (dxO, dyO);

pat1 := (fullcircle scaled ddA) xscaled xs shifted zz0;
pat2 := (fullcircle scaled ddB) xscaled xs shifted zz1;
pat3 := (fullcircle scaled ddC) xscaled xs shifted zz2;
pat4 := (fullcircle scaled ddD) xscaled xs shifted zz3;
pat5 := (fullcircle scaled ddO) xscaled xs shifted zz4;

% Add shading to the sets.
pickup pencircle scaled penLN;
fill pat1 withcolor col1;
fill pat2 withcolor col1;
fill pat3 withcolor col1;
fill pat4 withcolor col1;

% Erase some of the shading.
pickup pencircle scaled penLN;

pic := nullpicture;
addto pic contour reverse pat1 withcolor col0;
clip pic to pat2;
addto currentpicture also pic;
addto currentpicture also pic shifted (zz2-zz0);
addto currentpicture also pic shifted (zz3-zz1);

% The intersection of Omega with the intersection of the two charts.
pic := nullpicture;
addto pic contour reverse pat1 withcolor col2;
clip pic to pat2;
clip pic to pat5;
addto currentpicture also pic;
addto currentpicture also pic shifted (zz2-zz0);
addto currentpicture also pic shifted (zz3-zz1);

% Add outlines to excluded ranges of charts.
(t1, t2) = (subpath (0,4) of pat1) intersectiontimes pat2;
(t3, t4) = (subpath (4,8) of pat1) intersectiontimes pat2;
% Note: The following line does work as intended, but it shouldn't work!
draw subpath (t1, t3 - 4) of pat1 shifted (zz3 - zz1);

(t5, t6) = (subpath (0,4) of pat2) intersectiontimes pat1;
(t7, t8) = (subpath (4,8) of pat2) intersectiontimes pat1;
draw subpath (t5, t7 + 4) of pat2 shifted (zz2 - zz0);

(t11, t12) = (subpath (2,6) of pat5) intersectiontimes pat2;
(t13, t14) = (subpath (6,8) of pat5) intersectiontimes pat1;
draw subpath (t11 + 2, t13 + 6) of pat5;
draw subpath (t11 + 2, t13 + 6) of pat5 shifted (zz3 - zz1);

% Outlines of balls.
pickup pencircle scaled penLN;
draw pat1;
draw pat2;
draw pat3;
draw pat4;
% draw pat5;
draw pat5 shifted (zz2 - zz0);
% draw pat5 shifted (zz3 - zz1);

% Radius arrows.
pickup pencircle scaled penLN;
S_arrowspaces(zz0, zz2, ddA/2 * ratA, ddC/2 * ratA, 1, black);
S_arrowspaces(zz1, zz3, ddB/2 * ratA, ddD/2 * ratA, 1, black);

% Some labels.
label.top(btex $\Omega$ etex, zz4 + (zz2 - zz0) + (0,ddO/2));
label.lft(btex $U_1$ etex, zz0 + (-ddA * xs/2,0));
label.rt(btex $U_2$ etex, zz1 + (ddB * xs/2,0));
label.lft(btex $\Omega_1$ etex, zz2 + (-ddC * xs/2,0));
label.rt(btex $\Omega_2$ etex, zz3 + (ddD * xs/2,0));

label.lft(btex $\psi_1$ etex, 0.46[zz0,zz2]);
label.rt(btex $\psi_2$ etex, 0.46[zz1,zz3]);

label.lft(btex $\scriptstyle\psi_1(U_2)$ etex, point 7.8 of pat3);
label.rt(btex $\scriptstyle\psi_2(U_1)$ etex, point 4.2 of pat4);
label.bot(btex $\scriptstyle\tilde\Omega$ etex,
 (point 1.25 of pat3) + (0,-1pt));

zz10 := zz3 + (0,ddC/2) + (-20pt,8pt);
zz11 := (point 3 of pat4) + (-1pt,1pt);
zz12 := 0.5[zz10,zz11] + (-3pt,1pt);
label.rt(btex $(\psi_2\circ\psi_1^{-1})(\tilde\Omega)$ etex, zz10);
drawarrow zz10..zz12..zz11;

endfig;
end
