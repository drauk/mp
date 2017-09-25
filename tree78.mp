% tex/conc/mp/tree78.mp   2015-6-14   Alan U. Kennington.
% $Id: tex/conc/mp/tree78.mp f80a334508 2015-06-14 04:33:51Z Alan U. Kennington $
% Family tree for rings.

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

dh := 4bp;
h1 := 0.80cm;
h2 := h1 + dh;
h3 := h1 + 2dh;
w1 := 2.4cm;
w2 := w1 + 20pt;
dy := 5pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-w1,-h2);
p3 := p1 + (0,-h2);
p4 := p1 + (w1,-h2);
p5 := 0.5[p3,p4] + (0,-h1);
p6 := (xpart(p1), ypart(p5 + (0,-h1)));
p7 := p6 + (-w1,0);
% p8 := 0.5[p6,p7] + (0,-h2);
p8 := p6 + (0,-h2);
p9 := p8 + (0,-h2);
p10 := p9 + (0,-h2);
p11 := p6 + (w2,-h2);
p12 := p11 + (0,-h3);
p13 := p1 + (2w1,-h2);
p14 := p13 + (0,-h1);

B_draw(1, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ring\cr}etex, p1);

B_draw(2, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut cancellative ring\cr}etex, p2);

B_draw(3, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut unitary ring\cr}etex, p3);

B_draw(4, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut commutative ring\cr}etex, p4);

B_draw(5, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut commutative unitary ring\cr}etex, p5);

B_draw(6, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut integral domain\cr}etex, p6);

B_draw(7, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut division ring\cr}etex, p7);

B_draw(8, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut commutative division ring\cr
 \hfil\smallrm\fystrut ${}\equiv{}$field\cr}etex, p8);

B_draw(9, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ordered field\cr}etex, p9);

B_draw(10, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut complete ordered field\cr
 \hfil\smallrm\fystrut ${}\equiv{}$\hbox{\smallbbm R}\cr}etex, p10);

B_draw(11, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ordered\cr
 \hfil\smallrm\fystrut integral domain\cr}etex, p11);

B_draw(12, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut integral system\cr
 \hfil\smallrm\fystrut ${}\equiv{}$\hbox{\smallbbm Z}\cr}etex, p12);

B_draw(13, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ordered ring\cr}etex, p13);

B_draw(14, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut ordered unitary ring\cr}etex, p14);

% Draw the arrows.
marg := 2pt;
B_margset(marg, marg);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(1,4,1);
% B_arrow(1,13,1);
B_arrow(3,5,1);
B_arrow(3,7,1);
B_arrow(4,5,1);
B_arrow(2,6,1);
B_arrow(2,7,1);
B_arrow(5,6,1);
B_arrow(7,8,1);
B_arrow(6,8,1);
B_arrow(8,9,1);
B_arrow(9,10,1);
% B_arrow(6,11,1);
B_arrow(11,12,1);
B_arrow(13,14,1);
B_arrow(14,11,1);

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

endfig;
end
