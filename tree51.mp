% tex/conc/mp/tree51.mp   2012-7-16   Alan U. Kennington.
% $Id: tex/conc/mp/tree51.mp 0e1a316dc5 2012-07-16 05:49:50Z Alan U. Kennington $
% Family tree for Riemannian manifolds.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\smallrm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

h1 := 1.0cm;
w1 := 1.6cm;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-w1,-h1);
p3 := p2 + (0,-h1);
p4 := p1 + (w1,-1.5h1);
p5 := p3 + (w1,-h1);

B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\smallrm\strut topological space\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\smallrm\strut topological manifold\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\smallrm\strut differentiable manifold\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\strut metric space\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\smallrm\strut Riemannian manifold\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,5,1);
B_arrow(1,4,1);
B_arrow(4,5,1);

endfig;
end
