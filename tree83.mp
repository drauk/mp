% tex/conc/mp/tree83.mp   2015-9-28   Alan Kennington.
% $Id: tex/conc/mp/tree83.mp 1893ddf3fe 2015-09-28 11:13:30Z Alan U. Kennington $
% Basic family tree for functions.

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

w1 := 2.8cm;
w2 := 2.8cm;
h1 := 0.80cm;
h2 := h1 + 4pt;
h3 := h2 + 4pt;
h4 := h3 + 4pt;

p1 := (0,0);
p2 := p1 + (0,-h2);
p3 := p2 + (0w1,-h3);
p4 := p3 + (-0.5w1,-h3);
p5 := p3 + (0.5w1,-h3);
p6 := 0.5[p4,p5] + (0w1,-h3);
p7 := p2 + (-w2,-h3);
p8 := p2 + (w2,-h3);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}relation\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}partial function\cr
 \hfil\sevenrm $\scriptstyle\#(y)\le1$\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}function\cr
 \hfil\sevenrm $\scriptstyle\#(y)=1$\cr}etex, p3);

B_draw(4, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}injective function\cr
 \hfil\sevenrm $\scriptstyle\#(x)\le1$ $\scriptstyle\#(y)=1$\cr}etex, p4);

B_draw(5, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}surjective function\cr
 \hfil\sevenrm $\scriptstyle\#(x)\ge1$ $\scriptstyle\#(y)=1$\cr}etex, p5);

B_draw(6, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}bijective function\cr
 \hfil\sevenrm $\scriptstyle\#(x)=1$ $\scriptstyle\#(y)=1$\cr}etex, p6);

B_draw(7, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}injective partial function\cr
 \hfil\sevenrm $\scriptstyle\#(x)\le1$ $\scriptstyle\#(y)\le1$\cr}etex, p7);

B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}surjective partial function\cr
 \hfil\sevenrm $\scriptstyle\#(x)\ge1$ $\scriptstyle\#(y)\le1$\cr}etex, p8);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(3,5,1);
B_arrow(4,6,1);
B_arrow(5,6,1);
B_arrow(2,7,1);
B_arrow(2,8,1);
B_arrow(7,4,1);
B_arrow(8,5,1);

endfig;
end
