% tex/conc/mp/tree26.mp   2014-11-10   Alan U. Kennington.
% $Id: tex/conc/mp/tree26.mp 5f9cb46c71 2014-11-10 11:33:25Z Alan U. Kennington $
% Family tree for sets of matrices.

input boxmax.mp
verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric w[], h[];
pair p[];

w1 := 52pt;
h1 := 33pt;
sp := 4.5pt;
h2 := h1 + sp;
h3 := h2 + sp;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := 0.5[p2,p3] + (0,-h1);
p5 := p4 + (0,-h1);
p6 := p5 + (-w1,-h2);
p7 := p5 + (w1,-h2);
p8 := p6 + (0,-h3);
p9 := p7 + (0,-h3);

% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}rectangular matrix\cr\hfil
 $\scriptstyle M_{m,n}(K)$\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}square matrix\cr\hfil
 $\scriptstyle M_{n,n}(K)$\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}real rectangular matrix\cr\hfil
 $\scriptstyle M_{m,n}(\reals)$\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}real square matrix\cr\hfil
 $\scriptstyle M_{n,n}(\reals)$\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}real symmetric matrix\cr\hfil
 $\scriptstyle\Msym{n}$\cr}etex, p5);

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm real positive semi-definite\cr
 \hfil\sevenrm symmetric matrix\cr\hfil
 $\scriptstyle\Msymnn{n}$\cr}etex, p6);

B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm real negative semi-definite\cr
 \hfil\sevenrm symmetric matrix\cr\hfil
 $\scriptstyle\Msymnp{n}$\cr}etex, p7);

B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm real positive definite\cr
 \hfil\sevenrm symmetric matrix\cr\hfil
 $\scriptstyle\Msymp{n}$\cr}etex, p8);

B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm real negative definite\cr
 \hfil\sevenrm symmetric matrix\cr\hfil
 $\scriptstyle\Msymn{n}$\cr}etex, p9);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,1,2);
B_arrow(4,2,2);
B_arrow(4,3,2);
B_arrow(5,4,2);
B_arrow(6,5,2);
B_arrow(7,5,2);
B_arrow(8,6,2);
B_arrow(9,7,2);

endfig;
end
