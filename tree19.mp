% tex/conc/mp/tree19.mp   2009-2-25   Alan Kennington.
% $Id: tex/conc/mp/tree19.mp 39c3ab2d89 2009-02-25 07:33:50Z Alan U. Kennington $
% Family tree for separation of topologies.

input boxmax.mp

verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

% w1 := 45pt;
% h1 := 34pt;
w1 := 2.8cm;
h1 := 0.85cm;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (0,-h1);
p5 := p4 + (0,-h1);

% Draw the boxes.
% Topological space.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological space\cr}etex, p1);
% \tmat{\hfil\sevenrm topological space\cr\hfil
% $\scriptstyle(X,T_X)$\cr}etex, p1);

% T_1.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm $\scriptstyle \tc_1$ space\cr}etex, p2);
% \tmat{\hfil\sevenrm $\scriptstyle \tc_1$ space\cr\hfil
% $\scriptstyle(X,T_X)$\cr}etex, p2);

% Hausdorff.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm Hausdorff ($\scriptstyle \tc_2$) space\cr}etex, p3);
% \tmat{\hfil\sevenrm Hausdorff ($\scriptstyle \tc_2$) space\cr\hfil
% $\scriptstyle(X,T_X)$\cr}etex, p3);

% Completely regular space.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm completely regular space\cr}etex, p4);
% \tmat{\hfil\sevenrm normal space\cr\hfil
% $\scriptstyle(X,T_X)$\cr}etex, p4);

% Normal space.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm normal space\cr}etex, p5);
% \tmat{\hfil\sevenrm normal space\cr\hfil
% $\scriptstyle(X,T_X)$\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,2,2);
B_arrow(4,3,2);
B_arrow(5,4,2);

endfig;
end
