% tex/conc/mp/logmap5.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/logmap5.mp eacf44d69b 2015-05-09 12:59:30Z Alan U. Kennington $
% Abstract and concrete equality relations.

% input mapmax.mp
verbatimtex
\input dgmpmax
etex

beginfig(1);
pair p[], w[];
path pat[];

q := 0.8;
r := 1.40cm;
rr := q * r;
d := 2r;
angg := 0.80;       % Angle for arrows.
spc := 10pt;

dx := d + 2.7cm;
penA := 2.5bp;
penB := 0.5bp;

p1 := (0,0);
p2 := p1 + (dx,0);
p3 := 0.5[p1,p2];
p11 := p1 + (0,-0.35r);
p12 := p2 + (0,-0.35r);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Sets inside minds.
rota := 135;
w1 := (0.2r,0);
w2 := w1 rotated 90;
w3 := w1 rotated 250;
w4 := w1 rotated rota;
w5 := w2 rotated rota;
w6 := w3 rotated rota;
sca := 3.6;
ang := 25;
w7 := (w1 scaled sca) rotated ang;          % Right arrow.
w8 := (w1 scaled sca) rotated (180-ang);    % Left arrow.
qq := 1.6;
spx := 0;
spy := -2pt;

% Set inside mind 1.
w11 := p11 + w1;
w12 := p11 + w2;
w13 := p11 + w3;
w14 := p11 + w1 * qq;
w15 := p11 + w2 * qq;
w16 := p11 + w3 * qq;
w17 := p11 + w7;
w18 := p11 + w8;
pat11 := w14..w15..w16..cycle;
pickup pencircle scaled penB;
draw pat11;
drawarrow subpath (0,0.5) of (w17--p11);
drawarrow subpath (0,0.5) of (w18--p11);

pickup pencircle scaled penA;
draw w11;
draw w12;
draw w13;
draw p11 - 0.5w1;
label.top(btex
 $\Tnamemap_{\Tvarspace_1}(X)\eqrm{c\rlap{$\scriptstyle{}_1$}}
 \Tnamemap_{\Tvarspace_1}(Y)$ etex, w15+(spx,spy));

% Set inside mind 2.
w21 := p12 + w4;
w22 := p12 + w5;
w23 := p12 + w6;
w24 := p12 + w4 * qq;
w25 := p12 + w5 * qq;
w26 := p12 + w6 * qq;
w27 := p12 + w7;
w28 := p12 + w8;
pat12 := w24..w25..w26..cycle;
pickup pencircle scaled penB;
draw pat12;
drawarrow subpath (0,0.5) of (w27--p12);
drawarrow subpath (0,0.5) of (w28--p12);

pickup pencircle scaled penA;
draw w21;
draw w22;
draw w23;
draw p12 - 0.5w4;
label.top(btex
 $\Tnamemap_{\Tvarspace_2}(X)\eqrm{c\rlap{$\scriptstyle{}_2$}}
  \Tnamemap_{\Tvarspace_2}(Y)$ etex, p12+(0,0.25r));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penB;
pat1 := (fullcircle scaled d) yscaled q shifted p1;
pat2 := (fullcircle scaled d) yscaled q shifted p2;
draw pat1;
draw pat2;

p41 := point 2 of pat1;
p42 := point 2 of pat2;
p43 := point 6 of pat1;
p44 := point 6 of pat2;

label.top(btex object space $\Tvarspace_1$ etex, p41);
label.top(btex object space $\Tvarspace_2$ etex, p42);
label.bot(btex mind 1 etex, p43);
label.bot(btex mind 2 etex, p44);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
p31 := point (angg) of pat1;
p32 := point (4-angg) of pat2;
p33 := point (-angg) of pat1;
p34 := point (4+angg) of pat2;
anggg := angle(p31-p1);
pat3 := p31{dir anggg}..{dir -anggg}p32;
pat4 := p33{dir -anggg}..{dir anggg}p34;

rat := 0.08;
drawarrow subpath (rat, 1-rat) of pat3;
drawarrow subpath (1-rat, rat) of pat4;
p21 := point 0.5 of pat3;
p22 := point 0.5 of pat4;
label.top(btex $X\eqrm{a}Y$ etex, p21);
label.bot(btex $X\eqrm{a}Y$ etex, p22);

% spa := 3pt;
% S_textcurve("sensor path", (pat3 shifted (0,spa)), 1, "cmr9", 1);
% S_textcurve("motor path", (pat4 shifted (0,spa)), 1, "cmr9", 1);

label(btex\strut abstract etex, p3+(0,spc));
label(btex\strut linguistic etex, p3+(0,0));
label(btex\strut level etex, p3+(0,-spc));

endfig;
end
