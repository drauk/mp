% tex/conc/mp/tree15.mp   2016-12-1   Alan U. Kennington.
% $Id: tex/conc/mp/tree15.mp ed282b9812 2017-01-15 12:19:49Z Alan U. Kennington $
% Family tree for differentiable fibre bundles.

input boxmax
verbatimtex
\input akmath
\input dgmpmax
\input dgspell
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 100pt;
h1 := 45pt;
h2 := 35pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);

p11 := p1 + (-w1,-h2);
p12 := p11 + (0,-h1);
p13 := p12 + (0,-h1);

p21 := p11 + (-w1,-h2);
p22 := p21 + (0,-h1);
p23 := p22 + (0,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm non-topological\cr
 \hfil\sevenrm fibration\cr
 \hfil $\scriptstyle(E,\pi,B)$\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm non-topological\cr
 \hfil\sevenrm \fibre/ bundle\cr
 \hfil $\scriptstyle(E,\pi,B,A_E^F)$\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm non-topological\cr
 \hfil\sevenrm principal \fibre/ bundle\cr
 \hfil $\scriptstyle(P,\pi,B,A_P^G)$\cr}etex, p3);


B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological\cr
 \hfil\sevenrm fibration\cr
 \hfil $\scriptstyle(E,T_E,\pi,B,T_B)$\cr}etex, p11);

B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological\cr
 \hfil\sevenrm \fibre/ bundle\cr
 \hfil $\scriptstyle(E,T_E,\pi,B,T_B,A^F_E)$\cr}etex, p12);

B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological\cr
 \hfil\sevenrm principal \fibre/ bundle\cr
 \hfil $\scriptstyle(P,T_P,\pi,B,T_B,A_P^G)$\cr}etex, p13);


B_draw(21, btex\baselineskip9pt
 \tmat{\hfil\sevenrm differentiable\cr
 \hfil\sevenrm fibration\cr
 \hfil $\scriptstyle(E,A_E,\pi,M,A_M)$\cr}etex, p21);

B_draw(22, btex\baselineskip9pt
 \tmat{\hfil\sevenrm differentiable\cr
 \hfil\sevenrm \fibre/ bundle\cr
 \hfil $\scriptstyle(E,A_E,\pi,M,A_M,A^F_E)$\cr}etex, p22);

B_draw(23, btex\baselineskip9pt
 \tmat{\hfil\sevenrm differentiable\cr
 \hfil\sevenrm principal \fibre/ bundle\cr
 \hfil $\scriptstyle(P,A_P,\pi,M,A_M,A_P^G)$\cr}etex, p23);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);

B_arrow(1,11,1);
B_arrow(2,12,1);
B_arrow(3,13,1);

B_arrow(11,12,1);
B_arrow(12,13,1);

B_arrow(11,21,1);
B_arrow(12,22,1);
B_arrow(13,23,1);

B_arrow(21,22,1);
B_arrow(22,23,1);

endfig;
end
