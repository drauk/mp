% tex/conc/mp/tree43.mp   2012-2-10   Alan U. Kennington.
% $Id: tex/conc/mp/tree43.mp cd88c6b7db 2012-02-09 17:23:19Z Alan U. Kennington $
% Family tree for bounds for a partial order.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input dgmpmax
\input akmath
\let\ss\scriptstyle
\def\vp{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 48pt;
w2 := 68mm;
h1 := 35pt;

p1 := (0,0);
p2 := p1 + (2w1,0);
p3 := p2 + (0,-h1);
p4 := p3 + (-w1,-h1);

p11 := p1 + (w2,0);
p12 := p11 + (2w1,0);
p13 := p12 + (0,-h1);
p14 := p13 + (-w1,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(1, btex\baselineskip10pt
 \tmat{\hfil\sevenrm\vp minimal element $\ss b\in A$\cr\hfil
 $\ss \forall a\in A,\,\lnot(a<b)$\cr}etex, p1);

B_draw(2, btex\baselineskip10pt
 \tmat{\hfil\sevenrm\vp lower bound: $\ss b\in X$\cr\hfil
 $\ss \forall a\in A,\,b\le a$\cr}etex, p2);

B_draw(3, btex\baselineskip10pt
 \tmat{\hfil\sevenrm\vp infimum: $\ss b\in X$\cr\hfil
 $\ss \forall x\in X,\,(x\le b\iffshort\forall a\in A,\,x\le a)$\cr}etex, p3);

B_draw(4, btex\baselineskip10pt
 \tmat{\hfil\sevenrm\vp minimum: $\ss b\in A$\cr\hfil
 $\ss \forall a\in A,\,b\le a$\cr}etex, p4);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,4,1);
B_arrow(2,3,1);
B_arrow(3,4,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(11, btex\baselineskip10pt
 \tmat{\hfil\sevenrm\vp maximal element $\ss b\in A$\cr\hfil
 $\ss \forall a\in A,\,\lnot(a>b)$\cr}etex, p11);

B_draw(12, btex\baselineskip10pt
 \tmat{\hfil\sevenrm\vp upper bound: $\ss b\in X$\cr\hfil
 $\ss \forall a\in A,\,b\ge a$\cr}etex, p12);

B_draw(13, btex\baselineskip10pt
 \tmat{\hfil\sevenrm\vp supremum: $\ss b\in X$\cr\hfil
 $\ss \forall x\in X,\,(x\ge b\iffshort\forall a\in A,\,x\ge a)$\cr}etex, p13);

B_draw(14, btex\baselineskip10pt
 \tmat{\hfil\sevenrm\vp maximum: $\ss b\in A$\cr\hfil
 $\ss \forall a\in A,\,b\ge a$\cr}etex, p14);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(11,14,1);
B_arrow(12,13,1);
B_arrow(13,14,1);

endfig;
end
