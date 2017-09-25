% tex/conc/mp/tree44.mp   2012-3-17   Alan U. Kennington.
% $Id: tex/conc/mp/tree44.mp cbfd924f74 2012-03-17 09:36:48Z Alan U. Kennington $
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
path pat[];

h1 := 0.85cm;
w1 := 1.33cm;
dx := 3pt;

p1 := (0,0);
p9 := p1 + (0,-h1);
p14 := p9 + (0,-h1);
p10 := p14 + (0,-h1);
p11 := p10 + (-w1-dx,-h1);
p12 := p10 + (w1+dx,-h1);
p13 := 0.5[p11,p12] + (0,-h1);
p15 := p14 + (3w1,-2h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}relation\cr}etex, p1);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}partial order\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}total order\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}left well-ordering\cr}etex, p11);

B_draw(12, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}right well-ordering\cr}etex, p12);

B_draw(13, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}two-sided well-ordering\cr}etex, p13);

B_draw(14, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}lattice order\cr}etex, p14);

B_draw(15, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}complete\cr\hfil
 \ninerm\vphantom{fy}lattice order\cr}etex, p15);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,9,1);
B_arrow(14,10,1);
B_arrow(10,11,1);
B_arrow(10,12,1);
B_arrow(11,13,1);
B_arrow(12,13,1);

B_arrow(9,14,1);
B_arrow(14,15,1);
% B_arrow(15,13,1);

B_box_point_m(p22)(15,-1,-0.9);
B_box_point_m(p23)(13,1,0.25);
drawarrow p22--p23;

endfig;
end
