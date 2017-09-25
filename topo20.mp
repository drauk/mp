% tex/conc/mp/topo20.mp   2009-2-25   Alan U. Kennington.
% $Id: tex/conc/mp/topo20.mp 029b0d69cb 2012-02-25 11:28:11Z Alan U. Kennington $
% Relations between interior, closure, boundary and exterior of a set.

verbatimtex
\input akmath
etex

beginfig(1);
pair    p[], q[];
path    pat[];
color   colA, colB, colC;

unit := 1;
ww := unit * 7cm;
hh := unit * 1.6cm;
bdyA := 1/3;
dtB := ww * bdyA;
dtA := (ww - dtB)/2;
dbB := ww * bdyA;
dbA := (ww - dbB)/2;
spc := 10pt;
spcc := 12pt;
spx := 20pt;
spy := 8pt;
spxx := 10pt;
spa := 3pt;
spb := 0.7pt;                   % Space between arrow tips.

p0 := (0,0);
p1 := p0 + (ww,0);
p2 := p0 + (ww,-hh);
p3 := p0 + (0,-hh);

p11 := p0 + (dtA,0);            % Bdy top left.
p12 := p0 + (dtA + dtB,0);      % Bdy top right.
p13 := 0.5[p11,p12];            % Bdy top middle.
p14 := 0.5[p0,p12];             % Closure top middle.
p21 := p3 + (dbA,0);            % Bdy bottom left.
p22 := p3 + (dbA + dbB,0);      % Bdy bottom right.
p23 := 0.5[p21,p22];            % Bdy bottom middle.
p24 := 0.5[p3,p22];             % Closure bottom middle.
p25 := 0.5[p3,p2];              % X bottom middle.
p26 := 0.5[p3,p23];             % S.
p27 := 0.5[p23,p2];             % X \ S.

pat0 := p0--p1--p2--p3--cycle;
pat1 := p11--p12--p22--p21--cycle;

penpt := 1.8pt;
penln := 0.5bp;
colA := 0.9white;
colB := 0.8white;

%==============================================================================
pickup pencircle scaled penln;
fill pat0 withcolor colA;
fill pat1 withcolor colB;
draw pat0;
draw p11--p21;
draw p12--p22;
draw p13--p23 dashed evenly;

% Bdy(S).
drawarrow (p13+(-spx,spy))--(p11+(0,spy));
drawarrow (p13+(spx,spy))--(p12+(0,spy));

% \bar S.
drawarrow (p14+(-spxx,spcc+spy))--(p0+(0,spcc+spy));
drawarrow (p14+(spxx,spcc+spy))--(p12+(0,spcc+spy));

% X.
drawarrow (p25+(-spxx,-spcc-spy))--(p3+(0,-spcc-spy));
drawarrow (p25+(spxx,-spcc-spy))--(p2+(0,-spcc-spy));

% S.
drawarrow (p26+(-spxx,-spy))--(p3+(0,-spy));
drawarrow (p26+(spxx,-spy))--(p25+(-spb,-spy));

% X \ S.
drawarrow (p27+(-spx,-spy))--(p25+(spb,-spy));
drawarrow (p27+(spx,-spy))--(p2+(0,-spy));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.top(btex $\Int(S)$ etex, 0.5[p0,p11]);
label.top(btex $\Bdy(S)$ etex, 0.5[p11,p12]);
label.top(btex $\Ext(S)$ etex, 0.5[p12,p1]);
label.top(btex $\bar S$ etex, p14+(0,spcc+2pt));

label.bot(btex\strut $S$ etex, p26);
label.bot(btex\strut $X\setminus S$ etex, p27);
label.bot(btex $\vphantom{(}X$ etex, p25+(0,-spcc));

endfig;
end
