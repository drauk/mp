% tex/conc/mp/tree59.mp   2014-3-7   Alan U. Kennington.
% $Id: tex/conc/mp/tree59.mp 87f7ab10e2 2014-03-07 07:23:12Z Alan U. Kennington $
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
w1 := 1.4cm;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-w1,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (0,-h2);
p5 := p4 + (0,-h3);
p6 := p1 + (w1,-2.5h1 - dh);
p7 := p5 + (w1,-h2);

B_draw(1, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut topological space\cr}etex, p1);

B_draw(2, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut topological manifold\cr}etex, p2);

B_draw(3, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut differentiable manifold\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut manifold with\cr
 \hfil\smallrm\fystrut general connection\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut manifold with\cr
 \hfil\smallrm\fystrut affine connection\cr}etex, p5);

B_draw(6, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut metric space\cr}etex, p6);

B_draw(7, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut Riemannian manifold\cr}etex, p7);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(4,5,1);
B_arrow(5,7,1);
B_arrow(1,6,1);
B_arrow(6,7,1);

endfig;
end
