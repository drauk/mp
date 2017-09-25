% tex/conc/mp/tree52.mp   2012-8-4   Alan U. Kennington.
% $Id: tex/conc/mp/tree52.mp 8da18c9793 2012-08-04 07:44:17Z Alan U. Kennington $
% Family tree for topological spaces.

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

w1 := 68pt;
h1 := 30pt;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := p2 + (0,-h1);
p5 := p3 + (0,-h1);

% Draw the boxes.
% Topological space.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}topological space\cr}etex, p1);

% Hausdorff space.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}connected space\cr}etex, p2);

% Paracompact space.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}locally connected space\cr}etex, p3);

% Locally compact space.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}pathwise connected space\cr}etex, p4);

% Compact space.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}locally pathwise connected space\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(2,4,1);
B_arrow(3,5,1);

endfig;
end
