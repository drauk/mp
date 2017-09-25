% tex/conc/mp/tree25.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tree25.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Relations for tangent bundles, Lie groups, differentiable fibre bundles.

input boxmax
verbatimtex
\input dgmpmax
\input dgspell
\font\ninerm cmr9
\font\eightrm cmr8
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric w[], h[];
pair p[];

w1 := 4.3cm;
h1 := 1.5cm;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p1 + (w1,0);
p4 := p2 + (w1,0);
p5 := p3 + (w1,0);
p6 := p4 + (w1,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}differentiable\cr
 \hfil\ninerm\vphantom{fy}group\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}differentiable\cr
 \hfil\ninerm\vphantom{fy}manifold\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}differentiable\cr
 \hfil\ninerm\vphantom{fy}\fibre/ bundle\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}tangent bundle\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}connection\cr}etex, p5);

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}affine\cr
\hfil\ninerm\vphantom{fy}connection\cr}etex, p6);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(3pt, 3pt);
B_arrow(2,1,1);
B_arrowcol(2,4,1,black,evenly);
B_arrowcol(3,1,1,black,evenly);
B_arrow(3,4,1);
B_arrowcol(3,5,1,black,evenly);
B_arrowcol(4,6,1,black,evenly);
B_arrow(5,6,1);

% Add labels.
B_box_point_m(p20)(1, 1, 0);
B_box_point_m(p21)(3, -1, 0);
p40 := 0.5[p20,p21];
label.top(btex \eightrm non-unique etex, p40);
label.bot(btex \eightrm construction etex, p40);

B_box_point_m(p22)(2, 1, 0);
B_box_point_m(p23)(4, -1, 0);
p41 := 0.5[p22,p23];
label.top(btex \eightrm unique etex, p41);
label.bot(btex \eightrm construction etex, p41);

B_box_point_m(p24)(3, 1, 0);
B_box_point_m(p25)(5, -1, 0);
p42 := 0.5[p24,p25];
label.top(btex \eightrm non-unique etex, p42);
label.bot(btex \eightrm construction etex, p42);

B_box_point_m(p26)(4, 1, 0);
B_box_point_m(p27)(6, -1, 0);
p43 := 0.5[p26,p27];
label.top(btex \eightrm non-unique etex, p43);
label.bot(btex \eightrm construction etex, p43);

endfig;
end
