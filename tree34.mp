% tex/conc/mp/tree34.mp   2015-9-27   Alan U. Kennington.
% $Id: tex/conc/mp/tree34.mp 2fea07bde7 2015-09-27 05:35:30Z Alan U. Kennington $
% Family tree for linear algebra.

input boxmax.mp

verbatimtex
\input dgmpmax
\font\eightrm cmr8
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

w1 := 2.8cm;
h1 := 0.80cm;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (0,-h1);
p5 := p4 + (0,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\eightrm unitary left module over a ring\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\eightrm linear space\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\eightrm linear space with a basis\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\eightrm linear space with a well-ordered basis\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\eightrm finite-dimensional linear space\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,2,2);
B_arrow(4,3,2);
B_arrow(5,4,2);

endfig;
end
