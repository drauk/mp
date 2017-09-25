% tex/conc/mp/grid4.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/grid4.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% A family of curves.

input gridmax
verbatimtex
\input akmath
etex

beginfig(1);
path pat[];
pair p[];

m := 9;
n := 9;
unit := 2.5cm;
penLN := 0.5bp;

p0 := (0,0) * unit;
p1 := (1,0) * unit;
p2 := (-0.3,1) * unit;
p3 := (2,2) * unit;
p11 := (0.4,-0.3) * unit;
p12 := (0.1,0.6) * unit;
p13 := (0.8,1.9) * unit;
p14 := (1.2,1) * unit;

pat1 := p0..p11..p1;
pat2 := p0..p12..p2;
pat3 := p2..p13..p3;
pat4 := p1..p14..p3;

pickup pencircle scaled penLN;
% G_grid(pat)(m, n, 0.2*unit, 0.2*unit, black);
G_grid(pat)(m, n, 3, 3, 1, 1, black);

label.bot(btex $\gamma(0,t)$ etex, p11);
label.lft(btex $\gamma(s,0)$ etex, p12);
label.top(btex $\gamma(1,t)$ etex, p13);
label.rt(btex $\gamma(s,1)$ etex, p14);

% label.llft(btex $q_0$ etex, p0);
% label.lrt(btex $q_1$ etex, p1);
% label.ulft(btex $q_2$ etex, p2);
% label.urt(btex $q_3$ etex, p3);

label.lft(btex $\gamma(0,0)$ etex, p0);
label.rt(btex $\gamma(0,1)$ etex, p1);
label.lft(btex $\gamma(1,0)$ etex, p2);
label.rt(btex $\gamma(1,1)$ etex, p3);

endfig;
end
