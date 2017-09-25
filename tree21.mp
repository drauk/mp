% tex/conc/mp/tree21.mp   2007-2-26   Alan Kennington.
% $Id: tex/conc/mp/tree21.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Functions and relations.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex \input dgmpmax etex
% verbatimtex \input akmath etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 2.8cm;
h1 := 0.87cm;

p1 := (0,0);
p2 := p1 + (-0.5w1,-h1);
p3 := p2 + (0w1,-h1);
p4 := p3 + (-0.5w1,-h1);
p5 := p3 + (0.5w1,-h1);
p6 := 0.5[p4,p5] + (0w1,-h1);

p7 := p1 + (0.5w1,-h1);
p8 := p1 + (0w1,h1);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}relation\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}partially defined\cr
 \hfil\sevenrm function\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}function\cr}etex, p3);

B_draw(4, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}injective function\cr}etex, p4);

B_draw(5, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}surjective function\cr}etex, p5);

B_draw(6, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}bijective function\cr}etex, p6);

B_draw(7, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}equivalence\cr
 \hfil\sevenrm relation\cr}etex, p7);

% An after-thought.
B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}Cartesian product\cr}etex, p8);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(3,5,1);
B_arrow(4,6,1);
B_arrow(5,6,1);

B_arrow(1,7,1);
B_arrow(8,1,1);

endfig;
end
