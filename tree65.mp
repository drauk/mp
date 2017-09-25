% tex/conc/mp/tree65.mp   2014-8-2   Alan U. Kennington.
% $Id: tex/conc/mp/tree65.mp 73320a0f72 2014-08-02 01:12:54Z Alan U. Kennington $
% Family tree for topological linear spaces.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\smallrm cmr8
\def\fystrut{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

dh := 0.18cm;
h1 := 0.80cm;
h2 := h1 + dh;
h3 := h1 + 2dh;
w1 := 1.4cm;
dy := 5pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-2w1,-h1);
p3 := p1 + (0,-h1);
p8 := p2 + (0,-h1);
p9 := p3 + (0,-h1-dy);
p4 := p8 + (0,-h1);
p5 := p4 + (0,-h1);
p6 := p5 + (0,-h1);
p7 := p2 + (0,h1);

B_draw(1, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut topological space\cr}etex, p1);

B_draw(2, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut topological linear space\cr}etex, p2);

B_draw(3, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut metric space\cr}etex, p3);

B_draw(4, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut Banach space\cr}etex, p4);

B_draw(5, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut Hilbert space\cr}etex, p5);

B_draw(6, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut Euclidean space\cr}etex, p6);

B_draw(7, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut linear space\cr}etex, p7);

B_draw(8, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut normed linear space\cr}etex, p8);

B_draw(9, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut complete\cr
 \hfil\smallrm\fystrut metric space\cr}etex, p9);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(2,8,1);
B_arrow(8,4,1);
B_arrow(3,8,1);
B_arrow(4,5,1);
B_arrow(5,6,1);
B_arrow(7,2,1);
B_arrow(3,9,1);
B_arrow(9,4,1);

endfig;
end
