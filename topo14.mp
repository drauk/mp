% tex/conc/mp/topo14.mp   2013-9-11   Alan U. Kennington.
% $Id: tex/conc/mp/topo14.mp 5c3a16517e 2013-09-11 13:30:14Z Alan U. Kennington $
% Topological interior, exterior and boundary of a set.

verbatimtex
\input akmath
\input dgspell
etex

beginfig(1);
pair p[], q[];
path pat[];
color col;

q := 0.7;
r := 3cm;
d := 2r;
rr := 3pt;
dd := 2rr;
rrr := 2rr;
ddd := 2rrr;

p0 := (0,0);
p1 := p0 + (-0.2r,0.2r*q);
p2 := p0 + (0.9r,-0.9r*q);

penLN := 0.5bp;
penPT := 2.5pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pat1 := (fullcircle scaled d) yscaled q shifted p0;
pickup pencircle scaled penLN;
fill pat1 withcolor 0.90white;
draw pat1;

q1 := point 3 of pat1;
label.ulft(btex $X\setminus S$ etex, q1);
label.lrt(btex $S$ etex, q1);

q2 := point 1 of pat1;
pickup pencircle scaled penPT;
draw p1;
draw p2;
draw q2;
pickup pencircle scaled penLN;
draw fullcircle scaled ddd shifted p1;
draw fullcircle scaled ddd shifted p2;
draw fullcircle scaled dd shifted q2;
draw fullcircle scaled ddd shifted q2;

% label.top(btex $x_1\in\Int(S)$ etex, p1+(0,rrr-2pt));
label.ulft(btex \rlap{$x_1\in\Int(S)$} etex, p1+(0.7rrr,0)rotated90);
label.ulft(btex \rlap{$x_2\in\Bdy(S)$} etex, q2+(0.7rrr,0)rotated90);
label.ulft(btex \rlap{$x_3\in\Ext(S)$} etex, p2+(0.7rrr,0)rotated90);

q3 := p0 + (0.2r,-0.4r*q);
label(btex \neighbour/hoods etex, q3);

pickup pencircle scaled penLN;
col := 0.4white;
drawarrow subpath (0.2,0.82) of (q3--p1) withcolor col;
drawarrow subpath (0.1,0.90) of (q3--q2) withcolor col;
drawarrow subpath (0.2,0.87) of (q3--p2) withcolor col;

endfig;
end
