% tex/conc/mp/tree82.mp   2015-9-27   Alan U. Kennington.
% $Id: tex/conc/mp/tree82.mp 2fea07bde7 2015-09-27 05:35:30Z Alan U. Kennington $
% The relation of mathematics foundations to quality of life.

input boxmax.mp

verbatimtex
\input dgmpmax
\font\eightrm cmr8
\def\fystrut{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 2.8cm;
h1 := 0.80cm;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,h1);
p3 := p2 + (0,h1);
p4 := p3 + (0,h1);
p5 := p4 + (0,h1);
p6 := p5 + (0,h1);

% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\eightrm\fystrut mathematics foundations\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\eightrm\fystrut mathematics\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\eightrm\fystrut science\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\eightrm\fystrut engineering\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\eightrm\fystrut technology\cr}etex, p5);

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\eightrm\fystrut quality of life\cr}etex, p6);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,2,2);
B_arrow(4,3,2);
B_arrow(5,4,2);
B_arrow(6,5,2);

endfig;
end
