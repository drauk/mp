% tex/conc/mp/tree84.mp   2016-1-17   Alan U. Kennington.
% $Id: tex/conc/mp/tree84.mp f6c07b6a49 2016-01-17 10:37:54Z Alan U. Kennington $
% Family tree for semigroups, groups, rings and integral systems.

input boxmax.mp
verbatimtex
\input akmath
\input dgmpmax
\font\smallrm cmr8
\font\smallbbm bbm8
\def\fystrut{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[], q[];
numeric w[], h[];

h1 := 8.5mm;
h2 := h1 + 4bp;
w1 := 12mm;
w2 := w1 + 12pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (w2,-0.8h1);
p5 := p3 + (0,-h1);
p6 := p5 + (-w1,-h1);
p7 := p5 + (w1,-h1);
p8 := 0.5[p6,p7] + (0,-h1);
p9 := p8 + (0,-h2);

B_draw(1, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut semigroup\cr}etex, p1);

B_draw(2, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut monoid\cr}etex, p2);

B_draw(3, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut group\cr}etex, p3);

B_draw(4, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ordered group\cr}etex, p4);

B_draw(5, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ring\cr}etex, p5);

B_draw(6, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut unitary ring\cr}etex, p6);

B_draw(7, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ordered ring\cr}etex, p7);

B_draw(8, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ordered unitary ring\cr}etex, p8);

B_draw(9, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut integral system\cr
 \hfil\smallrm\fystrut ${}\equiv{}$\hbox{\smallbbm Z}\cr}etex, p9);

% Draw the arrows.
marg := 2pt;
B_margset(marg, marg);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(3,5,1);
B_arrow(4,7,1);
B_arrow(5,6,1);
B_arrow(5,7,1);
B_arrow(6,8,1);
B_arrow(7,8,1);
B_arrow(8,9,1);

if 0=1:
B_box_point_m(q1)(6, 1, -0.5);
B_box_point_m(q2)(11, -0.5, 1);
drawarrow q1--q2;

B_box_point_m(q1)(11, -1, -1);
B_box_point_m(q2)(9, 1, 0);
drawarrow q1--q2;

B_box_point_m(q1)(1, 1, 0);
B_box_point_m(q2)(13, 0, 1);
drawarrow q1--q2;

B_box_point_m(q1)(3, 1, -1);
B_box_point_m(q2)(14, -1, 1);
drawarrow (q1+(0,marg))--(q2+(0,-marg));
fi

endfig;
end
