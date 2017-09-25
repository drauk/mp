% tex/conc/mp/tree42.mp   2012-3-25   Alan U. Kennington.
% $Id: tex/conc/mp/tree42.mp 617e0386bd 2012-03-24 15:07:52Z Alan U. Kennington $
% Functions and relations and order relations.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\ninerm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric h[];

h1 := 0.85cm;

p1 := (0,0);
p8 := p1 + (0,-h1);
p9 := p8 + (0,-h1);
p10 := p9 + (0,-h1);
p11 := p10 + (0,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}relation\cr}etex, p1);

B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}partial order\cr}etex, p8);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}lattice order\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}total order\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}well-ordering\cr}etex, p11);

% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,8,1);
B_arrow(8,9,1);
B_arrow(9,10,1);
B_arrow(10,11,1);

endfig;
end
