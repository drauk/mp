% tex/conc/mp/tree64.mp   2014-7-1   Alan U. Kennington.
% $Id: tex/conc/mp/tree64.mp 394adc68ee 2014-07-01 09:44:06Z Alan U. Kennington $
% Family tree for Riemannian manifolds. Based on tree60.mp.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\smallrm cmr8
\def\fystrut{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat[];

dh := 0.18cm;
h1 := 0.80cm;
h2 := h1 + dh;
h3 := h1 + 2dh;
w1 := 1.7cm;
blskip := 9pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-w1,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (0,-h2);
p5 := p4 + (0,-h3);
% p6 := p1 + (w1,-2.5h1 - dh);
p6 := p1 + (w1,-h1);
p7 := p6 + (0,-h2);
p8 := p7 + (0,-h3);
p9 := p5 + (w1,-h2);

B_draw(1, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut topological space\cr}etex, p1);

B_draw(2, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut topological manifold\cr}etex, p2);

B_draw(3, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut differentiable manifold\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut manifold with\cr
 \hfil\smallrm\fystrut general connection\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut manifold with\cr
 \hfil\smallrm\fystrut affine connection\cr}etex, p5);

B_draw(6, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut metric space\cr}etex, p6);

B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut topological manifold\cr
 \hfil\smallrm\fystrut with distance function\cr}etex, p7);

B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut differentiable manifold\cr
 \hfil\smallrm\fystrut with distance function\cr}etex, p8);

B_draw(9, btex\baselineskip8pt
 \tmat{\hfil\smallrm\fystrut Riemannian manifold\cr}etex, p9);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(2,7,1);
B_arrow(3,4,1);
B_arrow(3,8,1);
B_arrow(4,5,1);
B_arrow(5,9,1);
B_arrow(1,6,1);
B_arrow(6,7,1);
B_arrow(7,8,1);
B_arrow(8,9,1);

%==============================================================================
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

B_box_point_m(p20)(9, 1, 0);
B_box_point_m(p21)(8, 1, 0);
B_box_point_m(p22)(7, 1, 0);
B_box_point_m(p23)(6, 1, 0);

p31 := p21 + (10pt,0pt);
p32 := p22 + (10pt,0pt);
p33 := 0.5[p31,p32] + (1pt,0pt);
drawarrow p20{dir0}..p31..p33..p32..{dir180}p23;

label.rt(btex\smallrm\fystrut construct etex, p33+(0,blskip));
label.rt(btex\smallrm\fystrut distance etex, p33);
label.rt(btex\smallrm\fystrut function etex, p33+(0,-blskip));

% Restore the bounding box for the current picture.
setbounds currentpicture to pat1;

endfig;
end
