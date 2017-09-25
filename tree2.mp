% tex/conc/mp/tree2.mp   2014-5-29   Alan U. Kennington.
% $Id: tex/conc/mp/tree2.mp 122b700626 2014-05-29 11:36:12Z Alan U. Kennington $
% Family tree of algebraic structures.

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

w1 := 45pt;
h1 := 31pt;

p1 := (0,0);
p2 := p1 + (w1,h1) + (10pt,0);
p3 := p1 + (-w1,h1);
p4 := p3 + (-w1,-h1);
p5 := p4 + (0,-h1);

p6 := p5 + (2w1,-h1);
p7 := p5 + (-2w1,-h1);
p8 := p5 + (0,-h1);
p9 := p5 + (w1,-2h1);
p10 := p3 + (0,h1);
p11 := p10 + (0,h1);
p12 := p11 + (0,h1);

% Draw the boxes.
% Left module over group.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm left module over group\cr\hfil
 $\scriptstyle(G,M,\sigma_G,\sigma_M,\mu)$\cr}etex, p1);

% Transformation group.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p2);

% Left module over semigroup.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm left module over semigroup\cr\hfil
 $\scriptstyle(\Gamma,M,\sigma_\Gamma,\sigma_M,\mu)$\cr}etex, p3);

% Left module over ring.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm left module over ring\cr\hfil
 $\scriptstyle(R,M,\sigma_R,\tau_R,\sigma_M,\mu)$\cr}etex, p4);

% Unitary left module over ring.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm unitary left module over ring\cr\hfil
 $\scriptstyle(R,M,\sigma_R,\tau_R,\sigma_M,\mu)$\cr}etex, p5);

% Linear space.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm linear space\cr\hfil
 $\scriptstyle(K,V,\sigma_K,\tau_K,\sigma_V,\mu)$\cr}etex, p6);

% Associative algebra.
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm associative algebra\cr\hfil
 $\scriptstyle(R,A,\sigma_R,\tau_R,\sigma_A,\tau_A,\mu)$\cr}etex, p7);

% Lie algebra.
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm Lie algebra\cr\hfil
 $\scriptstyle(R,A,\sigma_R,\tau_R,\sigma_A,\tau_A,\mu)$\cr}etex, p8);

% Real Lie algebra.
B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm Real Lie algebra\cr\hfil
 $\scriptstyle(\reals,A,\sigma_{\reals},\tau_{\reals},\sigma_A,\tau_A,\mu)$\cr}etex,
 p9);

% Left A-module.
B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\sevenrm left $\scriptstyle A$-module\cr\hfil
 $\scriptstyle(A,M,\sigma_M,\mu)$\cr}etex, p10);

% Module without operator domain.
B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\sevenrm module\cr\hfil
 $\scriptstyle(M,\sigma_M)$\cr}etex, p11);

% Group.
B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\sevenrm group\cr\hfil
 $\scriptstyle(G,\sigma_G)$\cr}etex, p12);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,2);
B_arrow(1,3,2);
B_arrow(4,3,2);
B_arrow(5,4,2);
B_arrow(6,5,2);
B_arrow(7,5,2);
B_arrow(8,5,2);
B_arrow(9,8,2);
B_arrow(9,6,2);
B_arrow(3,10,2);
B_arrow(10,11,2);
B_arrow(11,12,2);

endfig;
end
