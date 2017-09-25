% tex/conc/mp/logmap7.mp   2009-1-20   Alan U. Kennington.
% $Id: tex/conc/mp/logmap7.mp eacf44d69b 2015-05-09 12:59:30Z Alan U. Kennington $
% Constant names for fixed concrete objects.

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

dx := 1.6d;
dxx := 2dx + d + 2cm;
ddx := 2dx + 1.5d;
ddy := 1.3dx;
penA := 3pt;                % Points.
penB := 0.5bp;              % Normal lines.
penC := 1.8bp;              % Big horizontal line.

p1 := (0,0);
p2 := p1 + (dx,0);
p3 := p2 + (dx,0);
p4 := p1 + (0,-ddy);
p5 := p4 + (dx,0);
p6 := p5 + (dx,0);
p7 := 0.55[p2,p5];          % Horizontal dividing line mid-point.
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
draw pat1 shifted (dxx,0);
draw pat2 shifted (dxx,0);
draw pat3 shifted (dxx,0);
draw pat4 shifted (dxx,0);
draw pat5 shifted (dxx,0);
draw pat6 shifted (dxx,0);

p41 := point 4 of pat1;
p42 := point 4 of pat4;
p43 := point 2 of pat1;
p44 := point 2 of pat2;
p45 := point 2 of pat3;
p46 := point 6 of pat4;
p47 := point 6 of pat5;
p48 := point 6 of pat6;
p49 := point 0 of pat3;
p50 := point 0 of pat6;

label.top(btex\strut $A$ etex, p43);
label.top(btex\strut $B$ etex, p44);
label.top(btex\strut $C$ etex, p45);
label.bot(btex\strut $a\eqrm{c}\Tvarnamemap^1(A)$ etex, p46);
label.bot(btex\strut $b\eqrm{c}\Tvarnamemap^1(B)$ etex, p47);
label.bot(btex\strut $c\eqrm{c}\Tvarnamemap^1(C)$ etex, p48);
label.lft(btex\strut $\Tvarnamespace$ etex, p41);
label.lft(btex\strut $\Tvarspace$ etex, p42);

label.top(btex\strut $A$ etex, p43 + (dxx,0));
label.top(btex\strut $B$ etex, p44 + (dxx,0));
label.top(btex\strut $C$ etex, p45 + (dxx,0));
label.bot(btex\strut $a\eqrm{c}\Tvarnamemap^2(B)$ etex, p46 + (dxx,0));
label.bot(btex\strut $b\eqrm{c}\Tvarnamemap^2(A)$ etex, p47 + (dxx,0));
label.bot(btex\strut $c\eqrm{c}\Tvarnamemap^2(C)$ etex, p48 + (dxx,0));
label.rt(btex\strut $\Tvarnamespace$ etex, p49 + (dxx,0));
label.rt(btex\strut $\Tvarspace$ etex, p50 + (dxx,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Dividing line between abstract and concrete.
pickup pencircle scaled penC;
% draw p8--p9 withcolor 0.7white dashed evenly scaled 0.5;
draw p8--p9 withcolor 0.7white dashed withdots scaled 0.6;
draw ((p8--p9) shifted (dxx,0)) withcolor 0.7white dashed withdots scaled 0.6;
pickup pencircle scaled penB;

spc := 14pt;
spcc := 14pt;
label.top(btex\strut abstract names etex, p44 + (0,spc));
label.bot(btex\strut concrete objects etex, p47 + (0,-spcc));
label.top(btex\strut abstract names etex, p44 + (dxx,spc));
label.bot(btex\strut concrete objects etex, p47 + (dxx,-spcc));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The name-map arrows. Should have a macro to do this kind of arrow drawing.
p21 := pat1 intersectionpoint (p1--p4);
p22 := pat4 intersectionpoint (p1--p4);
p23 := pat2 intersectionpoint (p2--p5);
p24 := pat5 intersectionpoint (p2--p5);
p25 := pat3 intersectionpoint (p3--p6);
p26 := pat6 intersectionpoint (p3--p6);

p31 := pat1 intersectionpoint (p1--p5);
p32 := pat5 intersectionpoint (p1--p5);
p33 := pat2 intersectionpoint (p2--p4);
p34 := pat4 intersectionpoint (p2--p4);

ratt := 0.05;
drawarrow subpath (ratt, 1-ratt) of (p21--p22);
drawarrow subpath (ratt, 1-ratt) of (p23--p24);
drawarrow subpath (ratt, 1-ratt) of (p25--p26);

drawarrow subpath (ratt, 1-ratt) of (p31--p32) shifted (dxx,0);
drawarrow subpath (ratt, 1-ratt) of (p33--p34) shifted (dxx,0);
drawarrow subpath (ratt, 1-ratt) of (p25--p26) shifted (dxx,0);

fra := 0.30;
label.lft(btex $\Tvarnamemap^1$ etex, fra[p21,p22]);
label.rt(btex $\Tvarnamemap^1$ etex, fra[p23,p24]);
label.rt(btex $\Tvarnamemap^1$ etex, fra[p25,p26]);

spb := 2pt;
label.lft(btex $\Tvarnamemap^2$ etex, fra[p31,p32] + (dxx-spb,0));
label.rt(btex $\Tvarnamemap^2$ etex, fra[p33,p34] + (dxx+spb,0));
label.rt(btex $\Tvarnamemap^2$ etex, fra[p25,p26] + (dxx,0));

endfig;
end
