% tex/conc/mp/tree10.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree10.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Dependencies of chapters.

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

w1 := 37pt;
h1 := 25pt;

p1 := (0,0);
p2 := p1 + (0,-h1);
p3 := p2 + (-w1,-h1);
p4 := p2 + (w1,-h1);
p5 := p4 + (0,-h1);
p6 := p3 + (0,-h1);
p7 := p6 + (-1/2w1,-3/2h1);
p8 := 0.5[p5,p6] + (0,-h1);
p9 := p8 + (0,-h1);
p10 := p9 + (0,-h1);
p11 := p10 + (0,-h1);
p12 := p11 + (-w1,-h1);
p13 := p11 + (w1,-h1);
p14 := 0.5[p12,p13] + (0,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}sets and functions\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}algebra\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}topology\cr}etex, p3);

B_draw(4, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}linear spaces\cr}etex, p4);

B_draw(5, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}tensor algebra\cr}etex, p5);

B_draw(6, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}topological manifolds\cr}etex, p6);

B_draw(7, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}topological\cr
 \hfil\sevenrm \fibre/ bundles\cr}etex, p7);

B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}differentiable\cr
 \hfil\sevenrm manifolds\cr}etex, p8);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}Lie groups\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}differentiable \fibre/ bundles\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}affine connections\cr}etex, p11);

B_draw(12, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}Riemannian\cr
 \hfil\sevenrm spaces\cr}etex, p12);

B_draw(13, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}pseudo-Riemannian\cr
 \hfil\sevenrm spaces\cr}etex, p13);

B_draw(14, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}tensor calculus\cr}etex, p14);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,2,2);
B_arrow(4,2,2);
B_arrow(5,4,2);
B_arrow(6,3,2);
B_arrow(7,6,2);
B_arrow(8,5,2);
B_arrow(8,6,2);
B_arrow(9,8,2);
B_arrow(10,9,2);
B_arrow(10,7,2);
B_arrow(11,10,2);
B_arrow(12,11,2);
B_arrow(13,11,2);
B_arrow(14,12,2);
B_arrow(14,13,2);

endfig;
end
