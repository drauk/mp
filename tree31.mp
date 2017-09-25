% tex/conc/mp/tree31.mp   2007-10-9   Alan Kennington.
% $Id: tex/conc/mp/tree31.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Classification of differential equations.

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

w1 := 2.1cm;
h1 := 1.05cm;
sp := 3.7pt;

p1 := (0,0);

p2 := p1 + (-w1, -h1);
p3 := p1 + (w1, -h1);

p4 := 0.5[p2,p3] + (0, -h1);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}ordinary differential equation\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}partial differential equation\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}system of\cr
 \hfil\sevenrm\vphantom{fy}ordinary differential equations\cr}etex, p3);

B_draw(4, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}system of\cr
 \hfil\sevenrm\vphantom{fy}partial differential equations\cr}etex, p4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2.5pt, 2.5pt);

B_arrow(1, 2, 1);
B_arrow(1, 3, 1);
B_arrow(2, 4, 1);
B_arrow(3, 4, 1);

endfig;
end
