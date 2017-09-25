% tex/conc/mp/topomap4.mp   2015-8-24   Alan U. Kennington.
% $Id: tex/conc/mp/topomap4.mp bca0fd7376 2015-08-30 05:05:09Z Alan U. Kennington $
% Relations between sets, topologies and atlases.

input mapmax.mp
verbatimtex
% \input akmath
etex

beginfig(1);
pair p[];

q := 0.8;
r := 1.0cm;
rr := q * r;
d := 2r;

dx := d-10pt;
dy := 2rr+10pt;
spA := 3pt;
penLN := 0.5bp;

p1 := (0,0);
p2 := p1 + (-dx,dy);
p3 := p1 + (dx,dy);
p4 := 0.5[p1,0.5[p2,p3]];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
draw (fullcircle scaled d) yscaled q shifted p1;
draw (fullcircle scaled d) yscaled q shifted p2;
draw (fullcircle scaled d) yscaled q shifted p3;

S_arrowspace(p2, p1, r, 1, black);
S_arrowspace(p3, p1, r, 1, black);
S_arrowspace(p3, p2, r+spA, 1, black);

label(btex point set etex, p1);
label(btex topology etex, p2);
label(btex atlas etex, p3);

% Must manually adjust sepB to be the same as in the label.
sepB := 5.7cm;
spC := 12pt;
spD := 10pt;
label(btex $\left\{\hbox to5.7cm{\vbox to47pt{\null}}\right\}$ etex, p4);
label.lft(btex\strut topological etex, p4+(-sepB/2-spD, spC/2));
label.lft(btex\strut space etex, p4+(-sepB/2-spD, -spC/2));
label.rt(btex\strut manifold etex, p4+(sepB/2+spD, spC/2));
label.rt(btex\strut with atlas etex, p4+(sepB/2+spD, -spC/2));

endfig;
end
