% tex/conc/mp/tree14.mp   2014-12-4   Alan U. Kennington.
% $Id: tex/conc/mp/tree14.mp c6e496c898 2014-12-04 00:57:39Z Alan U. Kennington $
% Relations between connectedness and topological manifolds.

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

w1 := 45pt;
h1 := 34pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (2w1,-h1);
p3 := p1 + (0,-h1);
p4 := p3 + (0,-h1);
p5 := p1 + (-2w1,-h1);
p6 := p1 + (-w1,-3h1);

% Draw the boxes.
% Topological space.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p1);

% Connected.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm connected space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p2);

% Locally connected.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm locally connected space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p3);

% Locally Cartesian.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm locally Cartesian space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p4);

% Hausdorff.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm Hausdorff space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p5);

% Manifold.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological manifold\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p6);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,1,2);
B_arrow(4,3,2);
B_arrow(5,1,2);
B_arrow(6,5,2);
B_arrow(6,4,2);

endfig;
end
