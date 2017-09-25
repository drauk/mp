% tex/conc/mp/logmap9.mp   2015-2-16   Alan U. Kennington.
% $Id: tex/conc/mp/logmap9.mp eacf44d69b 2015-05-09 12:59:30Z Alan U. Kennington $
% Real numbers exist only in observers, not in the observed physical systems.

input mapmax.mp
verbatimtex
\input dgmpmax
etex

beginfig(1);
pair p[];
path pat[];

q := 0.7;
r := 0.9cm;
rr := q * r;
d := 2r;
ang := 0.23;        % Angle for text outside the regions.
angg := 0.80;       % Angle for arrows.

dx := d + 1.5cm;
dxA := 1.5cm;
dyA := 2.1cm;
penLN := 0.5bp;
penTIME := 0.5bp;

p1 := (0,0);
p2 := p1 + (dx,0);
p3 := p1 + (-dxA,dyA);
p4 := p2 + (dxA,dyA);
p5 := p1 + (-dxA,-dyA);
p6 := p2 + (dxA,-dyA);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
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

p41 := point 4 of pat1;
p42 := point 8 of pat2;
p43 := point 6 of pat1;
p44 := point 6 of pat2;

% label.lft(btex object etex, p41);
% label.rt(btex observer etex, p42);
% label.bot(btex world etex, p43);
% label.bot(btex observer etex, p44);
label(btex object etex, p1);
label(btex observer etex, p2);
sepY := 5pt;
label(btex\strut real etex, p4+(0,sepY));
label(btex\strut number etex, p4+(0,-sepY));
label(btex ? etex, p3);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
p31 := point (angg) of pat1;
p32 := point (4-angg) of pat2;
p33 := point (-angg) of pat1;
p34 := point (4+angg) of pat2;
anggg := angle(p31-p1);
pat10 := p31{dir anggg}..{dir -anggg}p32;
pat11 := p33{dir -anggg}..{dir anggg}p34;

rat := 0.08;
drawarrow subpath (1-rat, rat) of pat10;
drawarrow subpath (rat, 1-rat) of pat11;
p21 := point 0.5 of pat10;
p22 := point 0.5 of pat11;

spa := 3pt;
S_textcurve("action", (pat10 shifted (0,spa)), 1, "cmr9", 1);
S_textcurve("reaction", (pat11 shifted (0,spa)), 1, "cmr9", 1);

p50 := 0.5[p3,p4];
p51 := 0.5[p5,p6];
% label(btex time $t_1$ etex, p50);
% label(btex time $t_0$ etex, p51);
label(btex after etex, p50);
label(btex before etex, p51);

sepC := sqrt(rr*r) + 1.5bp;
S_arrowspace(p5, p1, sepC, 1, black);
S_arrowspace(p6, p2, sepC, 1, black);
S_arrowspace(p1, p3, sepC, 1, black);
S_arrowspace(p2, p4, sepC, 1, black);

%==============================================================================
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat0 := bbox currentpicture;
bboxmargin := bbx;

% Draw the arrow of time.
pickup pencircle scaled penTIME;
ratTIME := 0.1;
sepTIME := 8pt;
p60 := ratTIME[p6,p4] + (r + sepTIME,0);
p61 := ratTIME[p4,p6] + (r + sepTIME,0);
drawarrow p60--p61;

label.rt(btex \tmat{arrow\cr of\cr time} etex, 0.5[p60,p61]);

setbounds currentpicture to pat0;

endfig;
end
