% tex/conc/mp/tree22.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree22.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Family tree of mathematicians and physicists.

input boxmax
verbatimtex
\input dgmpmax
\input dgspell
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

w1 := 2.9cm;
h1 := 0.9cm;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (w1,0) + (-8pt,0);
p3 := p2 + (w1,0);
p4 := p3 + (w1,0);
p5 := p4 + (w1,0) + (4pt,0);

% Draw the boxes.
% B_draw(1, btex\baselineskip9pt
%  \tmat{\hfil\rm\vphantom{fy}non-topological\cr
%  \hfil\rm\vphantom{fy}\fibre/ bundle\cr}etex, p1);
%
% B_draw(2, btex\baselineskip9pt
%  \tmat{\hfil\rm\vphantom{fy}topological\cr
%  \hfil\rm\vphantom{fy}\fibre/ bundle\cr}etex, p2);

B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}real world\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}experimental\cr
 \hfil\rm\vphantom{fy}physicist\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}theoretical\cr
 \hfil\rm\vphantom{fy}physicist\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}mathematical\cr
 \hfil\rm\vphantom{fy}physicist\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\rm\strut mathematician\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,3);
B_arrow(3,2,3);
B_arrow(4,3,3);
B_arrow(5,4,3);

endfig;
end
