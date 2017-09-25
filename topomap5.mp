% tex/conc/mp/topomap5.mp   2015-8-30   Alan U. Kennington.
% $Id: tex/conc/mp/topomap5.mp 6a0136300e 2015-08-30 10:06:10Z Alan U. Kennington $
% Continuity of composition of partially defined functions.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair p[];
color col[];
path pat[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The full source and target sets.
rXa := 2.0cm;
rYa := 0.9cm;
qYXa := rYa/rXa;
dXa := 2rXa;
dYa := 2rYa;
spYa := rYa + 2pt;
dy := dYa + 20pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Domain and range of f.
rXb := 0.55rXa;
rYb := 0.55rYa;
qYXb := rYb/rXb;
dXb := 2rXb;
dYb := 2rYb;
spYb := rYb + 2pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Domain and range of g.
rXc := rXb;
rYc := rYb;
qYXc := rYc/rXc;
dXc := 2rXc;
dYc := 2rYc;
spYc := rYc + 2pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Omega.
rXd := 0.35rXa;
rYd := 0.35rYa;
qYXd := rYd/rXd;
dXd := 2rXd;
dYd := 2rYd;
spYd := rYd + 2pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
sepA := 2pt;
sepB := 10pt;
scA := 0.7;
scB := 0.5;
penLN := 0.5bp;
penLNx := penLN + 0.05bp;
col1 := 0.85white;
col2 := 0.94white;

%------------------------------------------------------------------------------
p1 := (0,0);
p2 := p1 + (0,dy);
p3 := p2 + (0,dy);

p41 := p1 + (-0.2rXa,-0.1rYa);      % f.
p42 := p1 + (0.2rXa,0.1rYa);        % g.
p43 := p1 + (-0.1rXa,0.4rYa);       % Omega.

p51 := p41 + (0,dy);
p52 := p42 + (0,dy);
p53 := p43 + (0,dy);                % Omega.

p61 := p51 + (0,dy);
p62 := p52 + (0,dy);
p63 := p53 + (0,dy);                % Omega.

p70 := p41 + (-rXb-sepA,0);
p71 := (xpart(p1 + (-rXa-sepB,0)), ypart(p41));
p72 := p51 + (-rXb-sepA,0);
p73 := (xpart(p1 + (-rXa-sepB,0)), ypart(p51));
p74 := p52 + (rXb+sepA,0);
p75 := (xpart(p1 + (rXa+sepB,0)), ypart(p52));
p76 := p62 + (rXb+sepA,0);
p77 := (xpart(p1 + (rXa+sepB,0)), ypart(p62));

p80 := p41 + (rXb+sepA,0);
p81 := (xpart(p1 + (rXa+sepB,0)), ypart(p41));
p82 := p62 + (-rXb-sepA,0);
p83 := (xpart(p1 + (-rXa-sepB,0)), ypart(p62));

p90 := p63 + (-0.1rXd, -0.4rYd);    % Label for Omega'.
p91 := p90 + (0,-dy);
p92 := p90 + (0,-2dy);
p93 := 0.5[p71,p73];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
pat51 := (fullcircle scaled dXa) yscaled qYXa shifted p1;
pat52 := (fullcircle scaled dXa) yscaled qYXa shifted p2;
pat53 := (fullcircle scaled dXa) yscaled qYXa shifted p3;
draw pat51;
draw pat52;
draw pat53;

% S_arrowspace(p1, p2, spYa, 1, black);
% S_arrowspace(p2, p3, spYa, 1, black);

label.lrt(btex $X$ etex, point 7 of pat51);
label.lrt(btex $Y$ etex, point 7 of pat52);
label.lrt(btex $Z$ etex, point 7 of pat53);

% label.rt(btex $f$ etex, 0.5[p1,p2]);
% label.rt(btex $g$ etex, 0.5[p2,p3]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
pat1 := (fullcircle scaled dXb) yscaled qYXb shifted p41;
pat2 := (fullcircle rotated 180 scaled dXb) yscaled qYXb shifted p51;
% pat3 := (fullcircle scaled dXb) yscaled qYXb shifted p61;

% pat11 := (fullcircle scaled dXc) yscaled qYXc shifted p42;
pat12 := (fullcircle scaled dXc) yscaled qYXc shifted p52;
pat13 := (fullcircle scaled dXc) yscaled qYXc shifted p62;

pat23 := (fullcircle scaled dXd) yscaled qYXd shifted p63;
% pat24 := (fullcircle rotated 180 scaled dXd) yscaled qYXd shifted p63;

pat30 := buildcycle(pat2, pat12);
pat31 := buildcycle(pat12, pat2);
pickup pencircle scaled penLN;
% fill (pat30 shifted (0,-dy)) withcolor col1;
% draw (pat30 shifted (0,-dy)) dashed (evenly scaled scA);
% fill pat30 withcolor col1;
% fill (pat30 shifted (0,dy)) withcolor col1;
% draw (pat30 shifted (0,dy)) dashed (evenly scaled scA);

% Z' intersection Omega.
pat40 := buildcycle(pat30 shifted (0,dy), pat23);
% pat41 := buildcycle(pat24, reverse pat30 shifted (0,dy));
% Z' setminus Omega.
pat41 := buildcycle(pat31 shifted (0,dy), reverse pat23);

% This is really untidy! Do not program at home like this, kiddies!
pickup pencircle scaled penLN;
fill pat40 withcolor col1;
fill pat41 withcolor col2;
fill (pat40 shifted (0,-dy)) withcolor col1;
fill (pat41 shifted (0,-dy)) withcolor col2;
fill (pat40 shifted (0,-2dy)) withcolor col1;
fill (pat41 shifted (0,-2dy)) withcolor col2;
draw (pat30 shifted (0,dy)) dashed (evenly scaled scA);
draw (pat41 shifted (0,-dy)) dashed (evenly scaled scA);
% draw (pat41 shifted (0,-2dy)) dashed (evenly scaled scA);
draw (pat40 shifted (0,-2dy));
pickup pencircle scaled penLNx;
draw (pat30 shifted (0,-dy)) withcolor white;
pickup pencircle scaled penLN;
draw (pat30 shifted (0,-dy)) dashed (evenly scaled scA);

pickup pencircle scaled penLN;
draw pat1;
draw pat2;
draw pat12;
draw pat13;
draw pat23;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Tests.
% drawarrow subpath(0,4) of pat30 withcolor blue;
% drawarrow subpath(0,4) of pat31 withcolor blue;
% drawarrow subpath(4,8) of pat31 withcolor green;
% drawarrow subpath(0,4) of pat40 withcolor blue;
% drawarrow subpath(4,8) of pat40 withcolor green;
% drawarrow subpath(0,4) of pat41 withcolor blue;
% drawarrow subpath(4,8) of pat41 withcolor green;
% drawarrow subpath(8,12) of pat41 withcolor red;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
S_arrowspace(p41, p51, spYb, 1, black);
S_arrowspace(p52, p62, spYc, 1, black);

label.rt(btex $f$ etex, (xpart(0.5[p41,p51]), ypart(0.5[p1,p2])));
label.rt(btex $g$ etex, (xpart(0.5[p52,p62]), ypart(0.5[p2,p3])));

label.lft(btex $\Omega$ etex, p63 + (-rXd,0));
label.llft(btex $Z'$ etex, point 4.5 of pat13);
label.urt(btex $X'$ etex, point 0.5 of pat1);
label(btex $\scriptstyle\Omega'$ etex, p90);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for domains and ranges.
pickup pencircle scaled penLN;
drawarrow p71--p70;
drawarrow p73--p72;
label.lft(btex $\Domain(f)$ etex, p71);
label.lft(btex $\Range(f)$ etex, p73);

drawarrow p75--p74;
drawarrow p77--p76;
label.rt(btex $\Domain(g)$ etex, p75);
label.rt(btex $\Range(g)$ etex, p77);

drawarrow p81--p80;
drawarrow p83--p82;
label.rt(btex $f^{-1}(\Domain(g))$ etex, p81);
label.lft(btex $g(\Range(f))$ etex, p83);

drawarrow p93--p92;
label.lft(btex $(g\circ f)^{-1}(\Omega')$ etex, p93);

endfig;
end
