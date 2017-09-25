% tex/conc/mp/tree79.mp   2015-8-16   Alan U. Kennington.
% $Id: tex/conc/mp/tree79.mp 690b6b7ed4 2015-08-16 13:31:02Z Alan U. Kennington $
% Family tree for locally Cartesian topological spaces.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\smallrm cmr9
\def\fystrut{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric h[];

h1 := 1.2cm;
h2 := h1/2;
w1 := 2.85cm;

p1 := (0,0);
p2 := p1 + (w1,0);
p3 := 0.5[p1,p2] + (0,-h1);
p4 := p3 + (0,-h1);
p5 := p1 + (0,h1);

% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut locally Cartesian\cr
 \hfil\smallrm\fystrut topological space\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut Hausdorff\cr
 \hfil\smallrm\fystrut topological space\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut topological\cr
 \hfil\smallrm\fystrut manifold\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut Cartesian\cr
 \hfil\smallrm\fystrut topological space\cr}etex, p4);

if 0=1:
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut non-topological\cr
 \hfil\smallrm\fystrut manifold\cr}etex, p5);
fi

% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,3,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
% B_arrow(5,1,1);

endfig;
end
