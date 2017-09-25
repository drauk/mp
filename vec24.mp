% tex/conc/mp/vec24.mp   2012-3-27   Alan U. Kennington.
% $Id: tex/conc/mp/vec24.mp d1c31e5d3b 2012-03-27 09:24:44Z Alan U. Kennington $
% Span and independence of vectors in a linear space.

input mapmax.mp

verbatimtex
\input akmath
etex

beginfig(1);
pair p[];
color col[];
path pat[];
picture pic;

unit := 3.0cm;          % Scale factor.
aa := 2unit;
sp := 4pt;              % Arrow spacing.
spx := 3pt;
spy := 1pt;
spa := -0.5pt;
spb := 5.0pt;
ext := 0.27;
extA := 0.2;
extB := 0.2;
dya := extB * unit + 15pt;
dyb := extA * unit + 8pt;

penln := 0.5bp;         % Lines.
penlnf := 0.7bp;        % Faded lines.
penpt := 3.0bp;         % Points.

col1 := 0.7white;       % Projective space lines.
col2 := 0.93white;      % Span sets.
col3 := 0.85white;      % Intersections of span sets.

p0 := (0,0);
p1 := p0 + (unit,0)rotated-120;
p2 := p0 + (unit,0)rotated-60;

p10 := p0 + (-aa,0);
p11 := p10 + (unit,0)rotated-120;
p12 := p10 + (unit,0)rotated-60;

p20 := (-extA)[p10,p11];
p21 := 0.5[p10,p11]+((p11-p10)rotated90) scaled extB;
p22 := (1+extA)[p10,p11];
p23 := 0.5[p10,p11]+((p11-p10)rotated-90) scaled extB;

p30 := (-extA)[p10,p12];
p31 := 0.5[p10,p12]+((p12-p10)rotated90) scaled extB;
p32 := (1+extA)[p10,p12];
p33 := 0.5[p10,p12]+((p12-p10)rotated-90) scaled extB;

p40 := (-extA)[p11,p12];
p41 := 0.5[p11,p12]+((p12-p11)rotated90) scaled extB;
p42 := (1+extA)[p11,p12];
p43 := 0.5[p11,p12]+((p12-p11)rotated-90) scaled extB;

pat1 := p20...p21...p22...p23...cycle;
pat2 := p30...p31...p32...p33...cycle;
pat3 := p40...p41...p42...p43...cycle;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The projective version.
pickup pencircle scaled penlnf;
draw ((-ext)[p0,p1])--((1+ext)[p0,p1]) withcolor col1;
draw ((-ext)[p0,p2])--((1+ext)[p0,p2]) withcolor col1;
draw ((-ext)[p1,p2])--((1+ext)[p1,p2]) withcolor col1;

pickup pencircle scaled penpt;
draw p0;
draw p1;
draw p2;

label.top(btex $v_1$ etex, p0+(spa,spb));
label.llft(btex $v_2$ etex, p1+(-spx,-spy));
label.lrt(btex $v_3$ etex, p2+(spx,-spy));

S_tiltlabel_top_up(btex $\Span(\{v_1,v_2\})$ etex,
 0.5[p0,p1], angle(p0-p1), 0pt);
S_tiltlabel_top_up(btex $\Span(\{v_1,v_3\})$ etex,
 0.5[p0,p2], angle(p2-p0), 0pt);
S_tiltlabel_bot_up(btex $\Span(\{v_2,v_3\})$ etex,
 0.5[p1,p2], angle(p2-p1), 0pt);

% label.bot(btex projective space view etex, 0.5[p1,p2]+(0,-dya));
label.top(btex projective space view etex, p0+(0,dyb));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The vague version.
pickup pencircle scaled penln;
fill pat1 withcolor col2;
fill pat2 withcolor col2;
fill pat3 withcolor col2;

% Doubly shaded subsets.
pickup pencircle scaled penln;

pic := nullpicture;
addto pic contour reverse pat1 withcolor col3;
clip pic to pat2;
addto currentpicture also pic;

pic := nullpicture;
addto pic contour reverse pat1 withcolor col3;
clip pic to pat3;
addto currentpicture also pic;

pic := nullpicture;
addto pic contour reverse pat2 withcolor col3;
clip pic to pat3;
addto currentpicture also pic;

pickup pencircle scaled penln;
draw pat1;
draw pat2;
draw pat3;

pickup pencircle scaled penpt;
draw p10;
draw p11;
draw p12;

label.bot(btex \strut$v_1$ etex, p10);
label.rt(btex $v_2$ etex, p11);
label.lft(btex $v_3$ etex, p12);

S_tiltlabel_top_up(btex $\Span(\{v_1,v_2\})$ etex,
 p23, angle(p10-p11), 0pt);
S_tiltlabel_top_up(btex $\Span(\{v_1,v_3\})$ etex,
 p31, angle(p12-p10), 0pt);
S_tiltlabel_bot_up(btex $\Span(\{v_2,v_3\})$ etex,
 p43, angle(p12-p11), 0pt);

% label.bot(btex abstract view etex, 0.5[p11,p12]+(0,-dya));
label.top(btex abstract view etex, p10+(0,dyb));

endfig;
end
