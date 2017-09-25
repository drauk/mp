% tex/conc/mp/tree80.mp   2015-8-16   Alan U. Kennington.
% $Id: tex/conc/mp/tree80.mp 6e6badb9b1 2015-08-16 14:16:19Z Alan U. Kennington $
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
numeric w[], h[];
pair p[];
color col[];

h1 := 1.2cm;
w1 := 3.5cm;
col1 := 0.5white;
scA := 0.7;

p1 := (0,0);
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (0,-h1);

p5 := p1 + (w1,0);
p6 := p5 + (0,-h1);
p7 := p6 + (0,-h1);
p8 := p7 + (0,-h1);

%------------------------------------------------------------------------------
% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut set\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut locally Cartesian\cr
 \hfil\smallrm\fystrut topological space\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut topological\cr
 \hfil\smallrm\fystrut manifold\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut Cartesian\cr
 \hfil\smallrm\fystrut topological space\cr}etex, p4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut non-topological\cr
 \hfil\smallrm\fystrut atlas on a set\cr}etex, p5);

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut locally Cartesian\cr
 \hfil\smallrm\fystrut atlas on a set\cr}etex, p6);

B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut topological manifold\cr
 \hfil\smallrm\fystrut atlas on a set\cr}etex, p7);

B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut Cartesian\cr
 \hfil\smallrm\fystrut atlas on a set\cr}etex, p8);

%------------------------------------------------------------------------------
% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);

B_arrow(5,6,1);
B_arrow(6,7,1);
B_arrow(7,8,1);

B_arrowcol(1, 5, 1, col1, evenly scaled scA);
B_arrowcol(2, 6, 1, col1, evenly scaled scA);
B_arrowcol(3, 7, 1, col1, evenly scaled scA);
B_arrowcol(4, 8, 1, col1, evenly scaled scA);

endfig;
end
