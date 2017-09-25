% tex/conc/mp/topo13.mp   2009-1-29   Alan Kennington.
% $Id: tex/conc/mp/topo13.mp 32e9dc8321 2009-01-29 08:11:43Z Alan U. Kennington $
% Topological limit point of a set.

% input mapmax.mp
% verbatimtex \input akmath etex

beginfig(1);
numeric t[];
pair p[], q[], pt[];
path pat[];

ncurves := 25;
npoints := 4;
offset := ncurves + npoints + 1;
r := 0.8mm;
dx := r * 3 * (ncurves + npoints) + 0.5cm;
spb := -14pt;
spc := 8pt;
rat := 3.2;

penln := 0.5bp;
penpt := 1.5pt;
penptt := 2.5pt;

p0 := (0,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for i = 0 upto ncurves:
    p[i] := p0 + (-2i*r,0);     % Redefines p0 !!
    q[i] := p0 + (-i*r/2,0);

    pickup pencircle scaled (((ncurves-i)/ncurves)*penpt + (i/ncurves)*penptt);
    draw p[i];

    pat[i] := fullcircle xscaled ((2+3i)*r) yscaled ((2+2i)*r) shifted q[i];
    pickup pencircle scaled penln;
    draw pat[i];
    endfor

for i = ncurves+1 upto ncurves+npoints:
    p[i] := p0 + (-2i*r,0);

    pickup pencircle scaled penptt;
    draw p[i];
    endfor

label.ulft(btex $\Omega$ etex, point rat of pat[ncurves]);
label.top(btex\strut $S$ etex, p[ncurves + npoints - 1]);

pickup pencircle scaled penln;
pt1 := point 1 of pat[ncurves];
pt2 := unitvector (pt1 - p0);
pt3 := p0 + 0.55r*pt2;
pt4 := pt1 + 3r*pt2;
draw pt3--pt4 withcolor 0.5white;
label.urt(btex $x$ etex, pt4);
label.urt(btex not a limit point etex, pt4+(spb,spc));

p[offset] := p0 + (dx,0);
pickup pencircle scaled penpt;
draw p[offset];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for i = 0 upto ncurves:
    p[offset + i] := p0 + (dx-(2i+1)*r,0); % Changes p[offset] !!!
    q[offset + i] := p0 + (dx-(i+1)*r/2,0);

    pickup pencircle scaled (((ncurves-i)/ncurves)*penpt + (i/ncurves)*penptt);
    draw p[offset + i];

    pat[offset + i] :=
        fullcircle xscaled ((3+3i)*r) yscaled ((2+2i)*r) shifted q[offset + i];
    pickup pencircle scaled penln;
    draw pat[offset + i];
    endfor

for i = ncurves+1 upto ncurves+npoints:
    p[offset + i] := p0 + (dx-(2i+1)*r,0);

    pickup pencircle scaled penptt;
    draw p[offset + i];
    endfor

label.ulft(btex $\Omega$ etex, point rat of pat[offset + ncurves]);
label.top(btex\strut $S$ etex, p[offset + ncurves + npoints - 1]);

pickup pencircle scaled penln;
pt11 := point 1 of pat[offset + ncurves];
pt12 := unitvector (pt11 - p0 - (dx,0));
pt13 := p0 + (dx,0) + 0.55r*pt12;
pt14 := pt11 + 3r*pt12;
draw pt13--pt14 withcolor 0.5white;
label.urt(btex $x$ etex, pt14);
label.urt(btex limit point etex, pt14+(spb,spc));

endfig;
end
