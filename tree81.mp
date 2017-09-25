% tex/conc/mp/tree81.mp   2015-8-17   Alan U. Kennington.
% $Id: tex/conc/mp/tree81.mp eb77d7eb22 2015-08-17 11:52:45Z Alan U. Kennington $
% Family tree for covers and partitions.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\ninerm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric h[], w[];
path pat[];

h1 := 0.85cm;
w1 := 1.33cm;

p1 := (0,0);
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}cover of a subset\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}cover of a set\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\vphantom{fy}partition\cr}etex, p3);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,2,1);
B_arrow(2,3,1);

endfig;
end
