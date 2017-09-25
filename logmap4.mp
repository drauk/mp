% tex/conc/mp/logmap4.mp   2009-1-20   Alan U. Kennington.
% $Id: tex/conc/mp/logmap4.mp eacf44d69b 2015-05-09 12:59:30Z Alan U. Kennington $
% Correspondence between concrete relations and abstract relations.

input mapmax.mp
verbatimtex
\input dgmpmax
etex

beginfig(1);
pair p[];
path pat[];

r := 0.6cm;
d := 2r;
q := 0.8;

dx := 3.2d;
dy := 0.4dx;
ddx := dx + 1.5d;
ddy := 2.2dy;
penA := 3pt;                % Points.
penB := 0.5bp;              % Normal lines.
penC := 1.8bp;              % Big horizontal line.

p1 := (0,0);
p2 := p1 + (dx,0);
p3 := 0.5[p1,p2] + (0,-dy);
p4 := p1 + (0,-ddy);
p5 := p4 + (dx,0);
p6 := 0.5[p4,p5] + (0,-dy);
p7 := 0.22[p3,p6];          % Horizontal dividing line mid-point.
p8 := p7 + (-ddx/2, 0);
p9 := p7 + (ddx/2, 0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The sets.
pickup pencircle scaled penB;
pat1 := (fullcircle scaled d) yscaled q shifted p1;
pat2 := (fullcircle scaled d) yscaled q shifted p2;
pat3 := (fullcircle scaled d) yscaled q shifted p3;
pat4 := (fullcircle scaled d) yscaled q shifted p4;
pat5 := (fullcircle scaled d) yscaled q shifted p5;
pat6 := (fullcircle scaled d) yscaled q shifted p6;
draw pat1;
draw pat2;
draw pat3;
draw pat4;
draw pat5;
draw pat6;

p43 := point 4 of pat1;
p44 := point 0 of pat2;
p45 := point 2 of pat3;
p46 := point 4 of pat4;
p47 := point 0 of pat5;
p48 := point 6 of pat6;

label.ulft(btex $A$ etex, p43);
label.urt(btex $B$ etex, p44);
label.top(btex $C$ etex, p45);
label.ulft(btex $\Tvarnamemap(A)$ etex, p46);
label.urt(btex $\Tvarnamemap(B)$ etex, p47);
label.bot(btex $\Tvarnamemap(C)$ etex, p48);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Dividing line between abstract and concrete.
pickup pencircle scaled penC;
% draw p8--p9 withcolor 0.7white dashed evenly scaled 0.5;
draw p8--p9 withcolor 0.7white dashed withdots scaled 0.6;
pickup pencircle scaled penB;

spc := 10pt;
label.top(btex abstract etex, 0.5[p1,p2]);
label.top(btex names etex, 0.5[p1,p2]+(0,-spc));
label.bot(btex concrete etex, (xpart(p4), ypart(p6)));
label.bot(btex objects etex, (xpart(p4), ypart(p6))+(0,-spc));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The membership arrows.
p31 := pat1 intersectionpoint (p1--p3);
p32 := pat2 intersectionpoint (p2--p3);
p33 := pat3 intersectionpoint (p1--p3);
p34 := pat3 intersectionpoint (p2--p3);
p35 := pat4 intersectionpoint (p4--p6);
p36 := pat5 intersectionpoint (p5--p6);
p37 := pat6 intersectionpoint (p4--p6);
p38 := pat6 intersectionpoint (p5--p6);
p51 := 0.5[p31,p33];
p52 := 0.5[p32,p34];
p53 := 0.5[p35,p37];
p54 := 0.5[p36,p38];

rat := 0.05;
drawarrow subpath (rat, 1-rat) of (p33--p31);
drawarrow subpath (rat, 1-rat) of (p34--p32);
drawarrow subpath (rat, 1-rat) of (p37--p35);
drawarrow subpath (rat, 1-rat) of (p38--p36);

label.llft(btex $\in$ etex, p51);
label.lrt(btex $\in$ etex, p52);
label.llft(btex $\Tprednamemap(\in)$ etex, p53);
label.lrt(btex $\Tprednamemap(\in)$ etex, p54);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The name-map arrows.
p21 := pat1 intersectionpoint (p1--p4);
p22 := pat4 intersectionpoint (p1--p4);
p23 := pat2 intersectionpoint (p2--p5);
p24 := pat5 intersectionpoint (p2--p5);
p25 := pat3 intersectionpoint (p3--p6);
p26 := pat6 intersectionpoint (p3--p6);

ratt := 0.022;
drawarrow subpath (ratt, 1-ratt) of (p21--p22);
drawarrow subpath (ratt, 1-ratt) of (p23--p24);
drawarrow subpath (ratt, 1-ratt) of (p25--p26);

label.lft(btex $\Tvarnamemap$ etex, 0.5[p21,p22]);
label.rt(btex $\Tvarnamemap$ etex, 0.5[p23,p24]);
label.lft(btex $\Tvarnamemap$ etex, 0.5[p25,p26]);

rata := 0.1;
ratb := 0.05;
drawarrow subpath (rata, 1-ratb) of (p51--p53) dashed evenly;
drawarrow subpath (rata, 1-ratb) of (p52--p54) dashed evenly;

label.llft(btex $\Tprednamemap$ etex, 0.5[p51,p53]);
label.lrt(btex $\Tprednamemap$ etex, 0.5[p52,p54]);

endfig;
end
