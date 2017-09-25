% tex/conc/mp/tree49.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tree49.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Relations for tangent bundles, Lie groups, differentiable fibre bundles.

input boxmax
input mapmax
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

w1 := 4.0cm;
w2 := 3.8cm;
h1 := 2.4cm;
penLN := 0.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (w2,0);
p3 := p2 + (w1,0);
p4 := 0.5[p2,p3] + (0,h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}differentiable\cr
 \hfil\ninerm\vphantom{fy}manifold\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}tangent\cr
 \hfil\ninerm\vphantom{fy}bundle\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}\fibre/\cr
 \hfil\ninerm\vphantom{fy}atlas\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}structure\cr
 \hfil\ninerm\vphantom{fy}group\cr}etex, p4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
pickup pencircle scaled penLN;
B_margset(3pt, 3pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
% B_arrow(3,4,1);
% B_arrow(4,2,1);

% Add labels.
B_box_point_m(p20)(1, 1, 0);
B_box_point_m(p21)(2, -1, 0);
p40 := 0.5[p20,p21];
label.top(btex \eightrm unique etex, p40);
label.bot(btex \eightrm construction etex, p40);

B_box_point_m(p22)(2, 1, 0);
B_box_point_m(p23)(3, -1, 0);
p41 := 0.5[p22,p23];
label.top(btex \eightrm unique etex, p41);
label.bot(btex \eightrm construction etex, p41);

B_box_point_m(p24)(3, 0, 1);
B_box_point_m(p25)(4, 1, -0.5);
p42 := 0.5[p24,p25];
drawarrow p24--p25;
S_tiltlabel_top(btex \eightrm non-unique etex, p42, angle(p24-p25));
S_tiltlabel_bot(btex \eightrm construction etex, p42, angle(p24-p25));

B_box_point_m(p26)(4, -1, -0.5);
B_box_point_m(p27)(2, 0, 1);
p43 := 0.5[p26,p27];
drawarrow p26--p27;
S_tiltlabel_top(btex \eightrm unique etex, p43, angle(p26-p27));
S_tiltlabel_bot(btex \eightrm construction etex, p43, angle(p26-p27));

endfig;
end
