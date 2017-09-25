% tex/conc/mp/class6.mp   2011-9-19   Alan U. Kennington.
% $Id: tex/conc/mp/class6.mp 10cf2d250e 2011-09-18 19:13:28Z Alan U. Kennington $
% Construction of Cartesian coordinates from Euclidean geometry.

verbatimtex
% \input akmath
etex

beginfig(1);
numeric th[];
pair v[];
path pat[];
color col[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
th1 := 0.5bp;           % Axes.
th2 := 2.5pt;           % Points.
th3 := 0.4bp;           % Arcs.
col1 := 0.5white;

aa := 5mm;
px := aa * 5;
py := aa * 4;
dx := (px - aa)/2;
dy := (py - aa)/2;

v0 := (0,0);            % O
v1 := v0+(aa,0);        % A
v2 := v0+(0,aa);        % B
v3 := v0+(px,0);
v4 := v0+(0,py);
v5 := v0+(px,py);       % P
v6 := v0+(px,-py);
v7 := v0+(-px,py);

v10 := v0+(px-dx,0);
v11 := v0+(px+dx,0);
v12 := v0+(0,py-dy);
v13 := v0+(0,py+dy);
rx := length(v5-v10);
ry := length(v5-v12);
cx := 0.75;
cy := 0.5;
ex := 0.3;
ey := 0.15;
fx := 0.9;
fy := 0.7;
pat1 := (subpath (6-cx,6+cx) of fullcircle scaled 2rx) shifted v5;
pat2 := (subpath (4-cy,4+cy) of fullcircle scaled 2ry) shifted v5;
pat3 := (subpath (6+ex,6+fx) of fullcircle scaled 2rx) shifted v10;
pat4 := (subpath (6-ex,6-fx) of fullcircle scaled 2rx) shifted v11;
pat5 := (subpath (4+ey,4+fy) of fullcircle scaled 2ry) shifted v13;
pat6 := (subpath (4-ey,4-fy) of fullcircle scaled 2ry) shifted v12;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled th3;
draw pat1;
draw pat2;
draw pat3;
draw pat4;
draw pat5;
draw pat6;

pickup pencircle scaled th1;
draw v0--v11 withcolor col1;
draw v0--v13 withcolor col1;
draw v0--v1;
draw v0--v2;
draw v5--v6 dashed evenly scaled 0.7;
% draw v5--v7 dashed withdots scaled 0.25;
draw v5--v7 dashed evenly scaled 0.7;

pickup pencircle scaled th2;
draw v0;
draw v1;
draw v2;
draw v3;
draw v4;
draw v5;
draw v6;
draw v7;

draw v10;
draw v11;
draw v12;
draw v13;

label.llft(btex $O$ etex, v0);
label.bot(btex $A$ etex, v1);
label.lft(btex $B$ etex, v2);
label.urt(btex $P_x$ etex, v3);
label.urt(btex $P_y$ etex, v4);
label.urt(btex $P$ etex, v5);
label.bot(btex $Q_x$ etex, v6);
label.lft(btex $Q_y$ etex, v7);

endfig;
end
