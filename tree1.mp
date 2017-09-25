% tex/conc/mp/tree1.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/tree1.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Floor and ceiling graphs.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex \input dgmpmax etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];

p1 := (0,0);
p2 := p1 + (50pt,-30pt);
p3 := p1 + (-15pt,-60pt);

B_draw(1, btex\mmat{a&b\cr c&2\pi\cr}etex, p1);
B_draw(2, btex\tmat{\hfil Testing,\cr\hfil testing\dots\cr}etex, p2);
B_draw(3, btex\emat{a&=10\cr b&=c+d\cr}etex, p3);

B_expt(2);
B_rays(1,3);

p1 := (120pt,0);
p2 := p1 + (100pt,-60pt);
p3 := p1 + (-30pt,-120pt);

B_draw(1, btex\mmat{a&b\cr c&2\pi\cr}etex, p1);
B_draw(2, btex\tmat{\hfil Testing,\cr\hfil testing\dots\cr}etex, p2);
B_draw(3, btex\emat{a&=10\cr b&=c+d\cr}etex, p3);

B_margset(2pt, 2pt);
B_arrow(1,3,1);
B_arrow(2,3,1);
B_arrow(1,2,1);

endfig;
end
