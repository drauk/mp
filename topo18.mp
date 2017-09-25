% tex/conc/mp/topo18.mp   2009-2-25   Alan U. Kennington.
% $Id: tex/conc/mp/topo18.mp 81ae65cafd 2012-02-25 02:40:09Z Alan U. Kennington $
% Relation between topology strength and interior/boundary/exterior of sets.
% Formerly misc19.mp.

verbatimtex
\input akmath
etex

beginfig(1);
pair    p[], q[];
path    pat[];
color   colA, colB, colC;

unit := 1;
ww := unit * 7cm;
hh := unit * 3.5cm;
dt := 0.28;
dtB := ww * (1/3 + dt);
dtA := (ww - dtB)/2;
dbB := ww * (1/3 - dt/2);
dbA := (ww - dbB)/2;
spc := 10pt;
spcc := 12pt;
spx := 20pt;
spy := 8pt;
spxx := 10pt;
spa := 3pt;
spb := 17pt;
spbb := 34pt;

p0 := (0,0);
p1 := p0 + (ww,0);
p2 := p0 + (ww,-hh);
p3 := p0 + (0,-hh);

p11 := p0 + (dtA,0);
p12 := p0 + (dtA + dtB,0);
p13 := 0.5[p11,p12];
p14 := 0.5[p0,p12];
p21 := p3 + (dbA,0);
p22 := p3 + (dbA + dbB,0);
p23 := 0.5[p21,p22];
p24 := 0.5[p3,p22];
p25 := 0.5[p3,p2];

pat0 := p0--p1--p2--p3--cycle;
pat1 := p11--p12--p22--p21--cycle;

penpt := 1.8pt;
penln := 0.5bp;
colA := 0.9white;
colB := 0.8white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penln;
fill pat0 withcolor colA;
fill pat1 withcolor colB;
draw pat0;
draw p11--p21;
draw p12--p22;
draw p13--p23 dashed evenly;

drawarrow (p13+(-spx,spy))--(p11+(0,spy));
drawarrow (p13+(spx,spy))--(p12+(0,spy));
drawarrow (p14+(-spxx,spcc+spy))--(p0+(0,spcc+spy));
drawarrow (p14+(spxx,spcc+spy))--(p12+(0,spcc+spy));
drawarrow (p24+(-spxx,-spcc-spy))--(p3+(0,-spcc-spy));
drawarrow (p24+(spxx,-spcc-spy))--(p22+(0,-spcc-spy));
drawarrow (p25+(-spxx,-spcc-spc-spy))--(p3+(0,-spcc-spc-spy));
drawarrow (p25+(spxx,-spcc-spc-spy))--(p2+(0,-spcc-spc-spy));

drawarrow (0.5[p13,p23]+(-spb,0))--(0.5[p0,p3]) dashed evenly;
drawarrow (0.5[p13,p23]+(spbb,0))--(0.5[p1,p2]) dashed evenly;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.top(btex $\Int(S)$ etex, 0.5[p0,p11]);
label.top(btex $\Bdy(S)$ etex, 0.5[p11,p12]);
label.top(btex $\Ext(S)$ etex, 0.5[p12,p1]);

label.bot(btex $\Int(S)$ etex, 0.5[p3,p21]);
label.bot(btex $\Bdy(S)$ etex, 0.5[p21,p22]);
label.bot(btex $\Ext(S)$ etex, 0.5[p22,p2]);

label.top(btex $\vphantom{(}\bar S$ etex, p14+(0,spcc));
label.bot(btex $\vphantom{(}\bar S$ etex, p24+(0,-spcc));
label.bot(btex $\vphantom{(}X$ etex, p25+(0,-spcc-spc));

label.lft(btex\strut $S$ etex, 0.5[p13,p23]+(-spa,0));
label.rt(btex\strut $X\setminus S$ etex, 0.5[p13,p23]+(spa,0));

label.rt(btex\strut \rlap{weaker} etex, p1);
label.rt(btex\strut \rlap{topology} etex, p1+(0,-spc));
label.rt(btex\strut \rlap{stronger} etex, p2+(0,spc));
label.rt(btex\strut \rlap{topology} etex, p2);

label.lft(btex\strut \llap{topology} etex, p0);
label.lft(btex\strut \llap{$T_1$} etex, p0+(0,-spcc));
label.lft(btex\strut \llap{topology} etex, p3+(0,spcc));
label.lft(btex\strut \llap{$T_2$} etex, p3);

endfig;
end
