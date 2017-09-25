% tex/conc/mp/tree4.mp   2014-12-4   Alan U. Kennington.
% $Id: tex/conc/mp/tree4.mp c6e496c898 2014-12-04 00:57:39Z Alan U. Kennington $
% Family tree for topological spaces.

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

w1 := 52pt;
h1 := 40pt;

p1 := (0,0);
p2 := p1 + (-2w1,-h1);
p3 := p1 + (2w1,-h1);
p4 := p1 + (0,-h1);
p5 := p1 + (w1,-2h1);
p6 := p1 + (-w1,-2h1);

% Draw the boxes.
% Topological space.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}topological space\cr}etex, p1);

% Hausdorff space.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}Hausdorff space\cr}etex, p2);

% Paracompact space.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}paracompact space\cr}etex, p3);

% Locally compact space.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}locally compact space\cr}etex, p4);

% Compact space.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}compact space\cr}etex, p5);

% Locally Cartesian space.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}locally Cartesian space\cr}etex, p6);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,1,2);
B_arrow(4,1,2);
B_arrow(5,3,2);
B_arrow(5,4,2);
B_arrow(6,4,2);

endfig;
end
