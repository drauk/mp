% tex/conc/mp/misc6.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/misc6.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% A rectangle.

prologues := 1;

input mapmax.mp

defaultfont := "phvr8y"; dsc := 1; defaultscale := dsc;

beginfig(1);
path pat;

unit := 0.85;
a := 210 * unit;
b := 240 * unit;

pat := (0,0)--(a,0)--(a,b)--(0,b)--cycle;
fill pat withcolor white;
draw pat;
draw (0,b/2)--(a,b/2) dashed evenly;

label.urt("C", (0,0));
label.ulft("D", (a,0));
label.urt("X", (0,b/2));
label.ulft("Y", (a,b/2));
label.lrt("A", (0,b));
label.llft("B", (a,b));

endfig;
end
