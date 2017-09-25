% tex/conc/mp/tree45.mp   2012-3-1   Alan U. Kennington.
% $Id: tex/conc/mp/tree45.mp 0f16c10124 2012-03-01 02:50:58Z Alan U. Kennington $
% Family tree for order relations, including various well-orderings.

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
numeric h[], w[];

h1 := 0.85cm;
w1 := 1.95cm;
dy := 5pt;

p1 := (0,0);
p9 := p1 + (0,-h1);
p10 := p9 + (0,-h1);

p11 := p10 + (-1.2w1,-0.7h1);
p12 := p10 + (1.2w1,-0.7h1);
p13 := 0.5[p11,p12] + (0,-h1-dy);

p16 := p13 + (0,-h1-dy);
p14 := p16 + (-1.5w1,h1);
p15 := p16 + (1.5w1,h1);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}relation\cr}etex, p1);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}partial order\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}total order\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}local left well-ordering\cr}etex, p11);

B_draw(12, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}local right well-ordering\cr}etex, p12);

B_draw(13, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}local two-sided\cr\hfil
 \ninerm\vphantom{fy} well-ordering\cr}etex, p13);

B_draw(14, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}left well-ordering\cr}etex, p14);

B_draw(15, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}right well-ordering\cr}etex, p15);

B_draw(16, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}two-sided well-ordering\cr}etex, p16);

% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,9,1);
B_arrow(9,10,1);

B_arrow(9,11,1);
B_arrow(9,12,1);
B_arrow(11,13,1);
B_arrow(12,13,1);

B_arrow(11,14,1);
B_arrow(12,15,1);
B_arrow(13,16,1);
B_arrow(14,16,1);
B_arrow(15,16,1);

endfig;
end
