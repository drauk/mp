% tex/conc/mp/topo17.mp   2011-12-23   Alan U. Kennington.
% $Id: tex/conc/mp/topo17.mp 1ce9e6547f 2011-12-22 16:24:12Z Alan U. Kennington $
% The influence of topology strength on boundary thickness.

verbatimtex
\input akmath
etex

beginfig(1);
numeric dt[];
pair pt[];
path pat[];
color colA, colB, colC;

rr := 0.62cm;
dd := 2rr;
xs := 1.35;
dda := dd * 1.07;
rrr := 0.5rr;
ddd := 2rrr;

colA := 0.90white;          % Exterior.
colB := 0.75white;          % Boundary.
colC := white;              % Interior.

penln := 0.5bp;
penlnn := 0.3bp;
penpt := 2.5pt;

pt0 := (0,0);
pt1 := pt0 + (0,-dda);
pt2 := pt1 + (0,-dda);
pt3 := pt2 + (0,-dda);
pt4 := pt3 + (0,-dda);

dt1 := 0.42;
dt2 := 0.22;
dt3 := 0.12;
dt4 := 0.0;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pat9 := fullcircle scaled dd xscaled xs;
pat0 := pat9 shifted pt0;
pat1 := pat9 shifted pt1;
pat2 := pat9 shifted pt2;
pat3 := pat9 shifted pt3;
pat4 := pat9 shifted pt4;

pickup pencircle scaled penln;
fill pat0 withcolor colB;
fill pat1 withcolor colA;
fill pat2 withcolor colA;
fill pat3 withcolor colA;
fill pat4 withcolor colA;
draw pat0;
draw pat1;
draw pat2;
draw pat3;
draw pat4;

pat19 := fullcircle scaled ddd;
pat10 := pat19 shifted pt0;
pat11 := pat19 shifted pt1;
pat12 := pat19 shifted pt2;
pat13 := pat19 shifted pt3;
pat14 := pat19 shifted pt4;

pickup pencircle scaled penln;
fill pat19 scaled (1+dt1) shifted pt1 withcolor colB;
fill pat19 scaled (1-dt1) shifted pt1 withcolor colC;
fill pat19 scaled (1+dt2) shifted pt2 withcolor colB;
fill pat19 scaled (1-dt2) shifted pt2 withcolor colC;
fill pat19 scaled (1+dt3) shifted pt3 withcolor colB;
fill pat19 scaled (1-dt3) shifted pt3 withcolor colC;
fill pat19 scaled (1+dt4) shifted pt4 withcolor colB;
fill pat19 scaled (1-dt4) shifted pt4 withcolor colC;

pickup pencircle scaled penlnn;
draw pat10 dashed evenly scaled 0.5;
draw pat11 dashed evenly scaled 0.5;
draw pat12 dashed evenly scaled 0.5;
draw pat13 dashed evenly scaled 0.5;
draw pat14 dashed evenly scaled 0.5;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels.
label.lft(btex \llap{$\Bdy(S)=X$\quad} etex, point 4 of pat0);
label.lft(btex \llap{thick boundary\quad} etex, point 4 of pat1);

label.lft(btex \llap{thin boundary\quad} etex, point 4 of pat3);
label.lft(btex \llap{$\Bdy(S)=\emptyset$\quad} etex, point 4 of pat4);

label.rt(btex \rlap{\quad weakest topology\rlap{${}=\{\emptyset,X\}$}} etex,
 point 0 of pat0);
label.rt(btex \rlap{\quad weak topology} etex, point 0 of pat1);

label.rt(btex \rlap{\quad strong topology} etex, point 0 of pat3);
label.rt(btex \rlap{\quad strongest topology\rlap{${}=\powerset(X)$}} etex,
 point 0 of pat4);

label.rt(btex $\scriptstyle X$ etex, point 1 of pat0);
label.rt(btex $\scriptstyle X$ etex, point 1 of pat1);
label.rt(btex $\scriptstyle X$ etex, point 1 of pat2);
label.rt(btex $\scriptstyle X$ etex, point 1 of pat3);
label.rt(btex $\scriptstyle X$ etex, point 1 of pat4);

% label.rt(btex \hskip-1.5pt $\scriptstyle S$ etex, point 7 of pat10);
label(btex $\scriptstyle S$ etex, pt0);
label.rt(btex \hskip1.1pt $\scriptstyle\partial S$ etex, point 0 of pat11);
label.rt(btex \hskip-0.9pt $\scriptstyle\partial S$ etex, point 0 of pat12);
label.rt(btex \hskip-2.1pt $\scriptstyle\partial S$ etex, point 0 of pat13);
% label.rt(btex \hskip-1.5pt $\scriptstyle S$ etex, point 7 of pat14);
label(btex $\scriptstyle S$ etex, pt4);

endfig;
end
