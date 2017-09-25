% tex/conc/mp/grid1.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/grid1.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Testing the G_lingrid macro.

input gridmax
verbatimtex
\input akmath
etex

beginfig(1);

path pat[];
pair p[];

unit := 3cm;
p[0] := (0,0) * unit;
p[1] := (1,0) * unit;
p[2] := (-0.3,1) * unit;
p[3] := (2,2) * unit;

pat1 := p0..p1;
pat2 := p0..p2;
pat3 := p2..(0.8,1.5)*unit..p3;
pat4 := p1..(1.2,1)*unit..p3;

% G_grid(pat)(8, 8, 0.2*unit, 0.2*unit, black);
G_lingrid(p)(8, 8, 0.2*unit, 0.2*unit);

endfig;
end
