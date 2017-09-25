% tex/conc/mp/topo39.mp   2015-5-9   Alan U. Kennington.
% $Id: tex/conc/mp/topo39.mp c3c3f62517 2015-05-09 14:16:45Z Alan U. Kennington $
% Equivalent nested open/closed condition for a T_3 space.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
color col[];
path pat[];

ddA := 1.3cm;
ddB := ddA + 1cm;;
ddC := ddB + 1cm;;
rrA := ddA/2;
rrB := ddB/2;
rrC := ddC/2;
xsA := 1.2;

zz0 := (0,0);
zz1 := zz0 + (rrA*xsA,0);
zz2 := zz0 + (rrB*xsA,0);
zz3 := zz0 + (rrC*xsA,0);
col1 := 0.88white;
col2 := 0.92white;
col3 := 0.96white;

penLN := 0.5bp;
penOM := 0.35bp;
penPT := 2.5bp;

scA := 0.4;                 % Scale for the dashed lines.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penOM;
pat1 := (fullcircle scaled ddA) xscaled xsA shifted zz0;
pat2 := (fullcircle scaled ddB) xscaled xsA shifted zz0;
pat3 := (fullcircle scaled ddC) xscaled xsA shifted zz0;
fill pat3 withcolor col3;
fill pat2 withcolor col2;
fill pat1 withcolor col1;
draw pat1 dashed evenly scaled scA;
draw pat2;
draw pat3 dashed evenly scaled scA;

pickup pencircle scaled penPT;
draw zz0;
label.lft(btex $x$ etex, zz0);

% Labels for sets.
label.lft(btex\strut $\Omega_1$ etex, zz1);
label(btex\strut $K_2$ etex, 0.5[zz1,zz2]);
label(btex\strut $\Omega$ etex, 0.5[zz2,zz3]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

label.rt(btex\strut $X\setminus\Omega$ etex, zz3);

setbounds currentpicture to pat1;

endfig;
end
