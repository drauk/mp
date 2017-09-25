% tex/conc/mp/tree62.mp   2014-5-10   Alan U. Kennington.
% $Id: tex/conc/mp/tree62.mp f94c321433 2014-05-10 09:17:57Z Alan U. Kennington $
% Classes of logic systems.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\ninerm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric h[];

h1 := 0.85cm;
w1 := 4.50cm;

p1 := (0,0);
p8 := p1 + (0,-h1);
p9 := p8 + (0,-h1);
p7 := p8 + (w1,0);
p10 := p9 + (w1,0);
p11 := p10 + (0,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}propositional logic\cr}etex, p1);

B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}predicate logic\cr}etex, p8);

B_draw(7, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}predicate logic with equality\cr}etex, p7);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}first-order language\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}first-order language with equality\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}Zermelo-Fraenkel set theory\cr}etex, p11);

% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,8,1);
B_arrow(8,9,1);
B_arrow(8,7,1);
B_arrow(9,10,1);
B_arrow(7,10,1);
B_arrow(10,11,1);

endfig;
end
