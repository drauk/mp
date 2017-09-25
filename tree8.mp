% tex/conc/mp/tree8.mp   2014-12-4   Alan U. Kennington.
% $Id: tex/conc/mp/tree8.mp c6e496c898 2014-12-04 00:57:39Z Alan U. Kennington $
% Family tree for topological classes for topological manifolds.

input boxmax.mp
verbatimtex
\input dgmpmax
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 50pt;
h1 := 40pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-2w1,-h1);
p3 := p1 + (0,-h1);
p4 := p1 + (2w1,-h1);
p5 := p1 + (-2w1,-2h1);
p6 := p1 + (2w1,-2h1);
p7 := p1 + (0,-2h1-3pt);
p8 := p1 + (-w1,-3h1);

% Draw the boxes.
% Topological space.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p1);

% Hausdorff.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm Hausdorff space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p2);

% Locally compact.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm locally compact space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p3);

% Paracompact.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm paracompact space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p4);

% Locally Cartesian.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm locally Cartesian space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p5);

% Compact.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm compact space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p6);

% Locally compact, second countable Hausdorff space.
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm locally compact, Hausdorff,\cr
 \hfil\sevenrm second countable space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p7);

% Topological manifold.
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological manifold\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p8);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,1,2);
B_arrow(4,1,2);
B_arrow(5,3,2);
B_arrow(6,3,2);
B_arrow(6,4,2);
B_arrow(7,4,2);
B_arrow(7,3,2);
B_arrow(7,2,2);
B_arrow(8,7,2);
B_arrow(8,5,2);

endfig;
end
