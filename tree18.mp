% tex/conc/mp/tree18.mp   2011-10-25   Alan U. Kennington.
% $Id: tex/conc/mp/tree18.mp 9be0a350fd 2011-10-25 13:29:03Z Alan U. Kennington $
% Family tree for semigroups, groups, rings and algebras.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex \input dgmpmax etex
% verbatimtex \input akmath etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 45pt;
h1 := 34pt;

p1 := (0,0);
p12 := p1 + (2w1,-h1);
p14 := p1 + (-1.25w1,-0.5h1);
p2 := p1 + (0,-h1);
p3 := p2 + (-w1,-h1);
p4 := p3 + (0,-h1);
p9 := p4 + (w1,-h1);
p10 := p4 + (-w1,-h1);
p11 := p4 + (0,-2h1);
p5 := p11 + (0,-h1);

p6 := p2 + (w1,-h1);
p8 := p6 + (2.5w1,-h1/2);
p7 := p6 + (0,-h1);
p13 := p7 + (w1,-h1);

% Draw the boxes.
% Semigroup.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}semigroup\cr\hfil
 $\scriptstyle(\Gamma,\sigma_\Gamma)$\cr}etex, p1);

% Monoid.
B_draw(14, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}monoid\cr\hfil
 $\scriptstyle(\Gamma,\sigma_\Gamma)$\cr}etex, p14);

% Group.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}group\cr\hfil
 $\scriptstyle(G,\sigma_G)$\cr}etex, p2);

% Commutative group.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}commutative group\cr\hfil
 $\scriptstyle(G,\sigma_G)$\cr}etex, p3);

% Ring.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}ring\cr\hfil
 $\scriptstyle(R,\sigma_R,\tau_R)$\cr}etex, p4);

% Commutative ring.
B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}commutative ring\cr\hfil
 $\scriptstyle(R,\sigma_R,\tau_R)$\cr}etex, p9);

% Unitary ring.
B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}unitary ring\cr\hfil
 $\scriptstyle(R,\sigma_R,\tau_R)$\cr}etex, p10);

% Commutative unitary ring.
B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}commutative unitary ring\cr\hfil
 $\scriptstyle(R,\sigma_R,\tau_R)$\cr}etex, p11);

% Field.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}field\cr\hfil
 $\scriptstyle(K,\sigma_K,\tau_K)$\cr}etex, p5);

% Transformation group.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p6);

% Effective transformation group.
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}effective transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p7);

% Left module over a group.
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}left module over a group\cr\hfil
 $\scriptstyle(G,M,\sigma_G,\sigma_M,\mu)$\cr}etex, p8);

% Transformation semigroup.
B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}transformation semigroup\cr\hfil
 $\scriptstyle(\Gamma,X,\sigma_\Gamma,\mu)$\cr}etex, p12);

% Free transformation group.
B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}free transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p13);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(1,14,1);
B_arrow(14,2,1);
B_arrow(12,1,2);
B_arrow(3,2,2);
B_arrow(4,3,2);
B_arrow(9,4,2);
B_arrow(10,4,2);
B_arrow(11,9,2);
B_arrow(11,10,2);
B_arrow(5,11,2);

B_arrow(6,2,2);
B_arrow(6,12,2);
B_arrow(8,6,2);
B_arrow(7,6,2);
B_arrow(13,7,2);

endfig;
end
