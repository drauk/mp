% tex/conc/mp/tree20.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree20.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Family tree for fibre bundles.

input boxmax
verbatimtex
\input dgmpmax
\input dgspell
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 45pt;
h1 := 30pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (0,-h1);

B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\rm\strut non-topological \fibre/ bundle\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\rm\strut topological \fibre/ bundle\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\rm\strut differentiable \fibre/ bundle\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\rm\strut tangent bundle\cr}etex, p4);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,2,2);
B_arrow(4,3,2);

endfig;
end
