% tex/conc/mp/tree24.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree24.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Relations between fibre bundles, tangent bundles and tensor bundles.

input boxmax.mp
verbatimtex
\input dgmpmax
\input dgspell
\font\ninerm cmr9
\font\ninemi cmmi9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

w1 := 2.2cm;
w2 := 5.2cm;
h1 := 1.2cm;
h2 := 1.2cm;
h3 := 2.2cm;
penLN := 0.5bp;
penDOTS := 1.0bp;
scDASH := 0.84;
scDOTS := 0.5;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h3);

p4 := p2 + (w1,-h2);
p5 := p2 + (w2,-h2);

p6 := p3 + (w1,-h2);
p7 := p3 + (w2,-h2);

B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}non-topological\cr
\hfil\ninerm\vphantom{fy}\fibre/ bundle\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}topological\cr
\hfil\ninerm\vphantom{fy}\fibre/ bundle\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}differentiable\cr
\hfil\ninerm\vphantom{fy}\fibre/ bundle\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}tangent bundle\cr
 \hfil\ninerm\vphantom{fy}on
 $\hbox{\ninemi C}^{\hbox{\ninemi1}}$ manifold\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}tensor bundle\cr
 \hfil\ninerm\vphantom{fy}on
 $\hbox{\ninemi C}^{\hbox{\ninemi1}}$ manifold\cr}etex, p5);

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}tangent bundle\cr
 \hfil\ninerm\vphantom{fy}on
 $\hbox{\ninemi C}^{\hbox{\ninemi2}}$ manifold\cr}etex, p6);

B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}tensor bundle\cr
 \hfil\ninerm\vphantom{fy}on
 $\hbox{\ninemi C}^{\hbox{\ninemi2}}$ manifold\cr}etex, p7);

% Draw the arrows.
pickup pencircle scaled penLN;
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(2,4,1);
% B_arrow(2,5,1);
B_arrow(3,6,1);
% B_arrow(3,7,1);
B_arrowcol(4,6,1,0.3white,evenly scaled scDASH);
B_arrowcol(5,7,1,0.3white,evenly scaled scDASH);

pickup pencircle scaled penDOTS;
B_margset(1pt, 1pt);
B_arrowcol(4,5,1,0.3white,withdots scaled scDOTS);
B_arrowcol(6,7,1,0.3white,withdots scaled scDOTS);

pickup pencircle scaled penLN;
B_margset(2pt, 2pt);
B_box_point_m(p20)(2, 1, 0);
B_box_point_m(p21)(5, -1, 0.9);
drawarrow p20--p21;

B_box_point_m(p22)(3, 1, 0);
B_box_point_m(p23)(7, -1, 0.9);
drawarrow p22--p23;

endfig;
end
