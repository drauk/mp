% tex/conc/mp/tree58.mp   2014-3-4   Alan U. Kennington.
% $Id: tex/conc/mp/tree58.mp 6526b59af9 2014-03-03 17:31:01Z Alan U. Kennington $
% Derivation of pseudo-Riemannian manifolds from Riemannian manifolds and
% Minkowski space-time.

input boxmax.mp
input mapmax.mp
verbatimtex
\input dgmpmax
% \input akmath
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
h1 := 2.1cm;
penLN := 0.5bp;
tx := 0.42;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Locations of all boxes.
p0 := (0,0);
p2 := p0;
p3 := p2 + (w1,0);
p4 := 0.5[p2,p3] + (0,-h1);
p5 := 0.5[p2,p3] + (0,h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}Riemannian\cr
 \hfil\ninerm\vphantom{fy}manifold\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}Minkowski\cr
 \hfil\ninerm\vphantom{fy}space-time\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}pseudo-Riemannian\cr
 \hfil\ninerm\vphantom{fy}manifold\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\ninerm\vphantom{fy}Euclidean\cr
 \hfil\ninerm\vphantom{fy}space\cr}etex, p5);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
pickup pencircle scaled penLN;
B_margset(3pt, 3pt);

% Add labels.
B_box_point_m(p24)(3, 0, -1);
B_box_point_m(p25)(4, 0.5, 1);
p42 := tx[p24,p25];
drawarrow p24--p25;
S_tiltlabel_top(btex \eightrm add etex, p42, angle(p24-p25));
S_tiltlabel_bot(btex \eightrm curvature etex, p42, angle(p24-p25));

B_box_point_m(p26)(2, 0, -1);
B_box_point_m(p27)(4, -0.5, 1);
p43 := tx[p26,p27];
drawarrow p26--p27;
S_tiltlabel_top(btex \eightrm add etex, p43, angle(p27-p26));
S_tiltlabel_bot(btex \eightrm time etex, p43, angle(p27-p26));

B_box_point_m(p28)(5, -1, -1);
B_box_point_m(p29)(2, 0, 1);
p44 := tx[p28,p29];
drawarrow p28--p29;
S_tiltlabel_top(btex \eightrm add etex, p44, angle(p28-p29));
S_tiltlabel_bot(btex \eightrm curvature etex, p44, angle(p28-p29));

B_box_point_m(p30)(5, 1, -1);
B_box_point_m(p31)(3, 0, 1);
p45 := tx[p30,p31];
drawarrow p30--p31;
S_tiltlabel_top(btex \eightrm add etex, p45, angle(p31-p30));
S_tiltlabel_bot(btex \eightrm time etex, p45, angle(p31-p30));

endfig;
end
