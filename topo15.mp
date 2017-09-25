% tex/conc/mp/topo15.mp   2009-2-7   Alan Kennington.
% $Id: tex/conc/mp/topo15.mp 7f394e9070 2009-02-06 15:15:14Z Alan U. Kennington $
% Open and closed portions of the boundary of a set.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
numeric t[];
pair p[], q[];
path pat[];

q := 0.7;
r := 3cm;
d := 2r;
rr := 3pt;
dd := 2rr;
rrr := 2rr;
ddd := 2rrr;
qq := 1.065;

p0 := (0,0);
p1 := p0 + (-0.2r,0.2r*q);
p2 := p0 + (0.9r,-0.9r*q);

penln := 0.5bp;
penlnn := 1.5bp;
penpt := 2.2pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pat1 := (fullcircle scaled d) yscaled q shifted p0;
pat2 := (fullcircle scaled (d*qq)) yscaled q shifted p0;
pickup pencircle scaled penln;
fill pat1 withcolor 0.90white;

t0 := 0;
t1 := 0.75;
t2 := 2;
t3 := 3.2;
t4 := 4.2;
t5 := 5;
t6 := 5.8;
t7 := 7;
t8 := 8;

pickup pencircle scaled penlnn;
draw subpath (t0,t1) of pat1;
draw subpath (t1,t2) of pat1 dashed withdots;
draw subpath (t2,t3) of pat1;
draw subpath (t3,t4) of pat1 dashed withdots;
draw subpath (t4,t5) of pat1;
draw subpath (t5,t6) of pat1 dashed withdots;
draw subpath (t6,t7) of pat1;
draw subpath (t7,t8) of pat1 dashed withdots;

q1 := point 3.5 of pat1;
label.ulft(btex $X\setminus S$ etex, q1);
label.lrt(btex $S$ etex, q1);

q2 := p0 + (0.3r,0.3r*q);
q3 := p0 + (-0.3r,-0.3r*q);
label(btex $\Bdy(S)\subseteq X\setminus S$ etex, q2);
label(btex $\Bdy(S)\subseteq S$ etex, q3);

pickup pencircle scaled penln;
drawarrow subpath (0.22,0.92) of (q2--(point (0.5(t1+t2)) of pat1));
drawarrow subpath (0.17,0.95) of (q2--(point (0.5(t7+t8)) of pat1));
drawarrow subpath (0.13,0.96) of (q3--(point (0.5(t2+t3)) of pat1));
drawarrow subpath (0.19,0.93) of (q3--(point (0.5(t6+t7)) of pat1));

% Curvy text.
S_textcurve("open portion", subpath (t2,t1) of pat2, 1, "cmr9", 1);
S_textcurve("closed portion", subpath (t3,t2) of pat2, 1, "cmr9", 1);

endfig;
end
