% tex/conc/mp/tree23.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree23.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Family tree for manifolds.

input boxmax
verbatimtex
\input dgmpmax
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

h1 := 1.03cm;
w1 := 2.3cm;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (-w1,-h1);
p5 := p3 + (w1,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\rm\strut topological manifold\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\rm\strut differentiable manifold\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\rm\strut affinely connected manifold\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\rm\strut Riemannian manifold\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\rm\strut pseudo-Riemannian manifold\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,2,2);
B_arrow(4,3,2);
B_arrow(5,3,2);

endfig;
end
