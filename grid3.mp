% tex/conc/mp/grid3.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/grid3.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Testing the G_grid macro.

input gridmax
verbatimtex
\input akmath
etex

beginfig(1);
path pat[];
pair p[];

unit := 2.5cm;
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
pat4 := p1..p14+(0,-0.2)*unit..p14+(0.7,0)*unit..p14+(0,0.2)*unit..p3;

G_grid(pat)(18, 9, 3, 3, 1, 1, black);
% G_grid(pat)(27, -1, 1, 9, 3, 3, black);

label.bot(btex $\gamma_1$ etex, p11);
label.lft(btex $\gamma_2$ etex, p12);
label.lrt(btex $\gamma_3$ etex, p13);
label.rt(btex $\gamma_4$ etex, p14+(0.7,0)*unit);

label.lft(btex $q_0$ etex, p0);
label.rt(btex $q_1$ etex, p1);
label.lft(btex $q_2$ etex, p2);
label.rt(btex $q_3$ etex, p3);

endfig;
end
