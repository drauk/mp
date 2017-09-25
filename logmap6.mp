% tex/conc/mp/logmap6.mp   2013-4-15   Alan U. Kennington.
% $Id: tex/conc/mp/logmap6.mp eacf44d69b 2015-05-09 12:59:30Z Alan U. Kennington $
% The naming bottleneck and dark numbers.

input mapmax.mp
verbatimtex
\input dgmpmax
\input dgspell
\font\smallrm cmr8
etex

beginfig(1);
pair p[];
path pat[];
color dark;

q := 0.8;
r := 1.40cm;
rr := q * r;
d := 2r;
spc := 8pt;
qq := 0.5;
dd := d * qq;
qqq := 0.8;
ddd := d * qqq;
dark := 0.9white;

dy := 0.5(d + dd) + 0.6cm;
penA := 3pt;
penB := 0.5bp;

p1 := (0,0);
p2 := p1 + (0,-dy);
p3 := p2;
p11 := p1 + (0,-0.35r);
p12 := p2 + (0,-0.35r);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penB;
pat1 := (fullcircle scaled dd) yscaled q shifted p1;
pat2 := (fullcircle scaled d) yscaled q shifted p2;
pat3 := (fullcircle scaled dd) yscaled q shifted p2;
pat4 := (fullcircle scaled ddd) yscaled q shifted p2;
fill pat2 withcolor dark;
fill pat3 withcolor white;
draw pat1;
draw pat2;
draw pat3;

p31 := point 0 of pat1;
p32 := point 0 of pat2;
label.rt(btex $\Tvarnamespace$ etex, p31);
label.rt(btex $\Tvarspace$ etex, p32);

p41 := point 2 of pat1;
p42 := point 2 of pat2;
p43 := point 6 of pat1;
p44 := point 6 of pat2;

label.top(btex abstract name space etex, p41);
label.bot(btex \modell/ed concrete numbers etex, p44);
label(btex names etex, p1);
label(btex\smallrm nameable etex, p3+(0,0.5spc));
label(btex\smallrm numbers etex, p3+(0,-0.5spc));

spa := -2.5pt;
spb := 4.5pt;
pat10 := subpath (3.85, 0) of pat4;
pat11 := subpath (4, 0) of reverse pat2;
S_textcurve("dark numbers", (pat10 shifted (0,spa)), 1, "cmr9", 1);
S_textcurve("dark numbers", (pat11 shifted (0,spb)), 1, "cmr9", 1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrow.
p51 := point 6 of pat1;
p52 := point 2 of pat3;
p53 := 0.325[p51, p52];
spd := 0.03;
drawarrow subpath (spd, 1-spd) of (p51..p52);
label.rt(btex $\Tvarnamemap$ etex, p53);
label.lft(btex\strut name etex, p53+(0,0.5spc));
label.lft(btex\strut map etex, p53+(0,-0.5spc));

endfig;
end
