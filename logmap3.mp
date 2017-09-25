% tex/conc/mp/logmap3.mp   2009-1-13   Alan U. Kennington.
% $Id: tex/conc/mp/logmap3.mp eacf44d69b 2015-05-09 12:59:30Z Alan U. Kennington $
% Sensor/motor loop between mind and matter.

input mapmax.mp
% verbatimtex \input akmath etex

beginfig(1);
pair p[];
path pat[];

q := 0.8;
r := 1.15cm;
rr := q * r;
d := 2r;
ang := 0.23;        % Angle for text outside the regions.
angg := 0.80;       % Angle for arrows.

dx := d + 2.7cm;
penA := 3pt;
penB := 0.5bp;

p1 := (0,0);
p2 := p1 + (dx,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penB;
pat1 := (fullcircle scaled d) yscaled q shifted p1;
pat2 := (fullcircle scaled d) yscaled q shifted p2;
draw pat1;
draw pat2;

p41 := point (4+ang) of pat1;
p42 := point (8-ang) of pat2;
p43 := point 6 of pat1;
p44 := point 6 of pat2;

% label.llft(btex world etex, p41);
% label.lrt(btex organism etex, p42);
label.bot(btex world etex, p43);
label.bot(btex organism etex, p44);
label(btex noumena etex, p1);
label(btex model etex, p2);

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
% label.top(btex sensor etex, p21);
% label.bot(btex motor etex, p22);

spa := 3pt;
S_textcurve("sensor path", (pat3 shifted (0,spa)), 1, "cmr9", 1);
S_textcurve("motor path", (pat4 shifted (0,spa)), 1, "cmr9", 1);

endfig;
end
