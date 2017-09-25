% tex/conc/mp/tree46.mp   2012-3-18   Alan U. Kennington.
% $Id: tex/conc/mp/tree46.mp 505123b3a5 2012-03-17 14:35:05Z Alan U. Kennington $
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
w1 := 1.20cm;
dy := 4.5pt;

p1 := (0,0);                        % relation
p9 := p1 + (0,-h1);                 % partial
p17 := p9 + (0,-h1);                % lattice
p10 := p17 + (0,-h1);               % total
p11 := p9 + (-2.2w1,-1.4h1);        % local well

p14 := p10 + (0,-h1);               % well
p13 := p14 + (-2.2w1,dy);           % local double well
p16 := p14 + (0,-h1);               % double well
p18 := p17 + (2w1,-2h1+dy);         % complete lattice

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}relation\cr}etex, p1);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}partial order\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}total order\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}local well-ordering\cr}etex, p11);

B_draw(13, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}local two-sided\cr\hfil
 \ninerm\vphantom{fy}well-ordering\cr}etex, p13);

B_draw(14, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}well-ordering\cr}etex, p14);

B_draw(16, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}two-sided well-ordering\cr}etex, p16);

B_draw(17, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}lattice order\cr}etex, p17);

B_draw(18, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}complete\cr\hfil
 \ninerm\vphantom{fy}lattice order\cr}etex, p18);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,9,1);
% B_arrow(9,10,1);

B_arrow(9,11,1);
B_arrow(11,13,1);

B_arrow(11,14,1);
B_arrow(13,16,1);
B_arrow(14,16,1);
B_arrow(10,14,1);

B_arrow(9,17,1);
B_arrow(17,18,1);
B_arrow(18,16,1);
% B_arrow(17,13,1);
B_arrow(17,10,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some tailored arrows.
B_box_point_m(p20)(17,-0.7,-1);
B_box_point_m(p21)(13,1,0.5);
% drawarrow p20--p21;

endfig;
end
