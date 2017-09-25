% tex/conc/mp/tree61.mp   2014-3-7   Alan U. Kennington.
% $Id: tex/conc/mp/tree61.mp dcd71af09b 2014-03-07 08:00:27Z Alan U. Kennington $
% Family tree for Riemannian manifolds.

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
w1 := 1.7cm;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-w1,-h1);
p3 := p2 + (0,-h1);
p6 := p1 + (w1,-h1);
p7 := p6 + (0,-h2);
p8 := p7 + (-w1,-h3);
p9 := p8 + (0,-h2);

B_draw(1, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut topological space\cr}etex, p1);

B_draw(2, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut topological manifold\cr}etex, p2);

B_draw(3, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut differentiable manifold\cr}etex, p3);

B_draw(6, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut metric space\cr}etex, p6);

B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut topological manifold\cr
 \hfil\smallrm\fystrut with distance function\cr}etex, p7);

B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut differentiable manifold\cr
 \hfil\smallrm\fystrut with distance function\cr}etex, p8);

B_draw(9, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut Riemannian manifold\cr}etex, p9);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(2,7,1);
B_arrow(3,8,1);
B_arrow(1,6,1);
B_arrow(6,7,1);
B_arrow(7,8,1);
B_arrow(8,9,1);

endfig;
end
