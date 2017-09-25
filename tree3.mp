% tex/conc/mp/tree3.mp   2012-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/tree3.mp 5f4ff88abd 2012-01-14 15:40:44Z Alan U. Kennington $
% Family tree for semigroups, groups, rings and algebras.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
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
h1 := 32pt;

p1 := (0,0);
p2 := p1 + (0,-h1);
p3 := p2 + (-w1,-h1);
p4 := p3 + (0,-h1);
p9 := p4 + (w1,-h1);
p10 := p4 + (-w1,-h1);
p11 := p4 + (0,-2h1);
p5 := p11 + (0,-h1);

p6 := p2 + (w1,-h1);
p7 := p6 + (0,-h1);
p8 := p6 + (2.5w1,-h1/2);

% Draw the boxes.
% Semigroup.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm semigroup\cr\hfil
 $\scriptstyle(\Gamma,\sigma_\Gamma)$\cr}etex, p1);

% Group.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm group\cr\hfil
 $\scriptstyle(G,\sigma_G)$\cr}etex, p2);

% Commutative group.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm commutative group\cr\hfil
 $\scriptstyle(G,\sigma_G)$\cr}etex, p3);

% Ring.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm ring\cr\hfil
 $\scriptstyle(R,\sigma_R,\tau_R)$\cr}etex, p4);

% Commutative ring.
B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm commutative ring\cr\hfil
 $\scriptstyle(R,\sigma_R,\tau_R)$\cr}etex, p9);

% Unitary ring.
B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\sevenrm unitary ring\cr\hfil
 $\scriptstyle(R,\sigma_R,\tau_R)$\cr}etex, p10);

% Commutative unitary ring.
B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\sevenrm commutative unitary ring\cr\hfil
 $\scriptstyle(R,\sigma_R,\tau_R)$\cr}etex, p11);

% Field.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm field\cr\hfil
 $\scriptstyle(K,\sigma_K,\tau_K)$\cr}etex, p5);

% Transformation group.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p6);

% Effective transformation group.
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm effective transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p7);

% Left module over a group.
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm left module over a group\cr\hfil
 $\scriptstyle(G,M,\sigma_G,\sigma_M,\mu)$\cr}etex, p8);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,2,2);
B_arrow(4,3,2);
B_arrow(9,4,2);
B_arrow(10,4,2);
B_arrow(11,9,2);
B_arrow(11,10,2);
B_arrow(5,11,2);

B_arrow(6,2,2);
B_arrow(7,6,2);
B_arrow(8,6,2);

endfig;
end
