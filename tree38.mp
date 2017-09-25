% tex/conc/mp/tree38.mp   2012-3-25   Alan U. Kennington.
% $Id: tex/conc/mp/tree38.mp 617e0386bd 2012-03-24 15:07:52Z Alan U. Kennington $
% Functions and relations and order relations.

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

w1 := 2.2cm;
w2 := 2.6cm;
h1 := 0.78cm;
sp := 3.7pt;
h2 := h1 + sp;
h3 := h2 + sp;
h4 := 0.95cm;
h5 := h4 + sp;

p1 := (0,0);
p2 := p1 + (-0.5w1,-h5);
p3 := p2 + (0.5w1,-h2);
p4 := p3 + (-0.5w2,-h1);
p5 := p3 + (0.5w2,-h1);
p6 := 0.5[p4,p5] + (0,-h1);

p7 := p1 + (-1.5w2,-h2);
p8 := p1 + (0,h1);
p9 := p1 + (1.5w2,-h1);
p13 := p9 + (0,-h1);
p10 := p13 + (0,-h1);
p11 := p10 + (0,-h1);
p12 := p1 + (0.5w1,-h5);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}relation\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}partially defined\cr
 \hfil\sevenrm function\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}function\cr}etex, p3);

B_draw(4, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}injective function\cr}etex, p4);

B_draw(5, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}surjective function\cr}etex, p5);

B_draw(6, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}bijective function\cr}etex, p6);

B_draw(7, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}equivalence\cr
 \hfil\sevenrm relation\cr}etex, p7);

% An after-thought.
B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}Cartesian product\cr}etex, p8);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}partial order\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}total order\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}well-ordering\cr}etex, p11);

B_draw(12, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}mulitple-valued\cr
 \hfil\sevenrm function\cr}etex, p12);

B_draw(13, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}lattice order\cr}etex, p13);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(3,5,1);
B_arrow(4,6,1);
B_arrow(5,6,1);

B_arrow(1,7,1);
B_arrow(8,1,1);
B_arrow(1,9,1);
B_arrow(9,13,1);
B_arrow(13,10,1);
B_arrow(10,11,1);
B_arrow(1,12,1);
B_arrow(12,3,1);

endfig;
end
