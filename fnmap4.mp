% tex/conc/mp/fnmap4.mp   2011-11-12   Alan U. Kennington.
% $Id: tex/conc/mp/fnmap4.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Domain and range of composite of local transformations.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
color col[];
path pat[];
picture pic;

dd := 1.8cm;
rr := dd/2;
xs := 1.2;                  % Eccentricity factor.
rrd := 3.5rr*xs;
rrdd := 2.4rr*xs;
col1 := 0.85 white;

% Offsets.
zz1 := (rrd, 0.2rrdd);
zz2 := (0, -0.4rrdd);

% Domain/range of L_{g_2}.
zz0 := (0,0);
zz10 := zz0 + zz1;

% Domain/range of L_{g_1}.
zz20 := zz10 + zz2;
zz30 := zz20 + zz1;

% Position of labels for composite domain/range.
zz3 := zz0 + (-10pt, -rr-10pt);
zz4 := zz30 + (10pt, rr+10pt);

% Domains and ranges.
pat1 := (fullcircle scaled dd) xscaled xs shifted zz0;
pat2 := (fullcircle scaled dd) xscaled xs shifted zz10;
pat3 := (fullcircle scaled dd) xscaled xs shifted zz20;
pat4 := (fullcircle scaled dd) xscaled xs shifted zz30;

% Shaded subsets.
pic := nullpicture;
addto pic contour pat2 withcolor col1;
clip pic to pat3;
addto currentpicture also pic;
addto currentpicture also (pic shifted -zz1);
addto currentpicture also (pic shifted zz1);

% Dashed lines.
pickup pencircle scaled 0.7bp;
pic := nullpicture;
addto pic doublepath pat3 withpen currentpen dashed evenly scaled 0.5;
clip pic to pat2;
addto currentpicture also (pic shifted -zz1);

pickup pencircle scaled 0.7bp;
pic := nullpicture;
addto pic doublepath pat2 withpen currentpen dashed evenly scaled 0.5;
clip pic to pat3;
addto currentpicture also (pic shifted zz1);

% Arrows.
S_arrowspace(zz0, zz10, rr*xs + 3pt, 1, black);
S_arrowspace(zz20, zz30, rr*xs + 3pt, 1, black);
label.bot(btex $L_{g_2}$ etex, 0.5[zz0,zz10]);
label.bot(btex $L_{g_1}$ etex, 0.5[zz20,zz30]);

% Outlines of domains and ranges.
pickup pencircle scaled 0.5bp;
draw pat1;
draw pat2;
draw pat3;
draw pat4;

% Labels under the sets.
label.top(btex $\Domain(L_{g_2})$ etex, zz0+(0,rr));
label.top(btex $\Range(L_{g_2})$ etex, zz10+(0,rr));
label.bot(btex $\Domain(L_{g_1})$ etex, zz20+(0,-rr));
label.bot(btex $\Range(L_{g_1})$ etex, zz30+(0,-rr));

% Labels for domain and range of the composite function.
drawarrow zz3--(zz0+(0,-rr/2));
label.bot(btex $L_{g_2}^{-1}(\Domain(L_{g_1}))$ etex, zz3);
label.bot(btex $=\Domain(L_{g_1g_2})$ etex, zz3+(0,-14pt));

drawarrow zz4--(zz30+(0,rr/2));
label.top(btex $L_{g_1}(\Range(L_{g_2}))$ etex, zz4+(0,14pt));
label.top(btex $=\Range(L_{g_1g_2})$ etex, zz4);

endfig;
end
