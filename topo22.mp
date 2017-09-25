% tex/conc/mp/topo22.mp   2012-3-13   Alan U. Kennington.
% $Id: tex/conc/mp/topo22.mp 2f38574180 2012-03-13 06:56:14Z Alan U. Kennington $
% Least upper bound and greatest lower bound.

verbatimtex
\input akmath
etex

beginfig(1);
pair    p[];
path    pat[];
color   colA, colB, colC;

dd := 1.35cm;
xd := 1.5;
sc := 0.6;
sp := 1bp;
% sppA := 2.5bp;
% sppB := 3.2bp;
sppA := 0bp;
sppB := 0bp;
dx := 0.5 * dd * xd;
blskipA := 13pt;
blskipB := 12pt;
dxA := 0pt;
dxB := 3pt;

penpt := 3.0pt;
penln := 0.5bp;
colA := 0.9white;
colB := 0.8white;

p0 := (0,0);
p1 := p0 + (0,-dd);
p2 := p1 + (0,-dd);

p6 := 0.5[p0,p1];
p7 := 0.5[p1,p2];

pat0 := (fullcircle scaled dd) xscaled xd;
pat1 := pat0 shifted (0,-dd);
pat2 := pat1 shifted (0,-dd);

%==============================================================================
pickup pencircle scaled penln;
fill pat0 withcolor colA;
draw pat0;
label(btex \strut$A\rlap{${}^+$}$ etex, p0+(0,sppA));

fill pat1 withcolor colA;
draw pat1 dashed (evenly scaled sc);
label(btex \strut$A$ etex, p1+(dxA,0));

fill pat2 withcolor colA;
draw pat2;
label(btex \strut$A\rlap{${}^-$}$ etex, p2+(0,-sppB));

pickup pencircle scaled penpt;
draw p6;
draw p7;
% label.top(btex $c$ etex, p6+(0,sp));
% label.bot(btex $b$ etex, p7+(0,-sp));
label.bot(btex $c$ etex, p6+(0,-sp));
label.top(btex $b$ etex, p7+(0,sp));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

% Do stuff outside the bounding box.
label.rt(btex \strut$c=\min(A^+)$ etex, p6+(dx,0.5blskipA));
label.rt(btex \strut$\phantom{c}{}=\sup(A)$ etex, p6+(dx,-0.5blskipA));

label.rt(btex \strut$b=\inf(A)$ etex, p7+(dx,0.5blskipA));
label.rt(btex \strut$\phantom{b}{}=\max(A^-)$ etex, p7+(dx,-0.5blskipA));

label.lft(btex \strut upper etex, p0+(-dx-dxB,0.5blskipB));
label.lft(btex \strut bounds etex, p0+(-dx-dxB,-0.5blskipB));

label.lft(btex \strut lower etex, p2+(-dx-dxB,0.5blskipB));
label.lft(btex \strut bounds etex, p2+(-dx-dxB,-0.5blskipB));

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
