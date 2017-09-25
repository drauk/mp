% tex/conc/mp/topo12.mp   2009-1-27   Alan Kennington.
% $Id: tex/conc/mp/topo12.mp 060f695368 2009-01-27 11:48:52Z Alan U. Kennington $
% Topological limit point of a set.

% input mapmax.mp
% verbatimtex \input akmath etex

beginfig(1);
numeric t[];
pair p[], q[], pt[];
path pat[];

ncurves := 25;
npoints := 5;
r := 0.8mm;

penln := 0.5bp;
penpt := 1.5pt;
penptt := 2.5pt;

p0 := (0,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for i = 0 upto ncurves:
    p[i] := p0 + (-2i*r,0);
    q[i] := p0 + (-i*r/2,0);

    pickup pencircle scaled (((ncurves-i)/ncurves)*penpt + (i/ncurves)*penptt);
    draw p[i];

    pat[i] := fullcircle xscaled ((2+3i)*r) yscaled ((2+2i)*r) shifted q[i];
    pickup pencircle scaled penln;
    draw pat[i];
    endfor

for i = ncurves+1 upto ncurves+npoints:
    p[i] := p0 + (-2i*r,0);
    q[i] := p0 + (-i*r/2,0);

    pickup pencircle scaled penptt;
    draw p[i];
    endfor

label.ulft(btex $\Omega$ etex, point 3 of pat[ncurves]);
label.top(btex\strut $S$ etex, p[ncurves + npoints - 1]);

pickup pencircle scaled penln;
pt1 := point 1 of pat[ncurves];
pt2 := unitvector (pt1 - p0);
pt3 := p0 + 0.5r*pt2;
pt4 := pt1 + 3r*pt2;
draw pt3--pt4 withcolor 0.5white;
label.urt(btex $x$ etex, pt4);

endfig;
end
