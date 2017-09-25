% tex/conc/mp/tree48.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree48.mp 9c3fd39fb2 2016-05-12 16:45:05Z Alan U. Kennington $
% Functions and relations and order relations.

input boxmax.mp
verbatimtex
\input dgmpmax
\input dgspell
\font\ninerm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric h[];

h1 := 0.85cm;

p1 := (0,0);
p8 := p1 + (0,-h1);
p9 := p8 + (0,-h1);
p10 := p9 + (0,-h1);
p11 := p10 + (0,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}non-uniform fibration\cr}etex, p1);

B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}uniform fibration\cr}etex, p8);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}\fibre/ bundle\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}ordinary \fibre/ bundle\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}principal \fibre/ bundle\cr}etex, p11);

% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,8,1);
B_arrow(8,9,1);
B_arrow(9,10,1);
B_arrow(10,11,1);

endfig;
end
