% tex/conc/mp/tree17.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree17.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Family tree for topological fibre bundles.

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

w1 := 105pt;
h1 := 35pt;
h2 := 35pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p1 + (-w1,-h2);
p4 := p3 + (0,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm non-topological fibration\cr\hfil
 $\scriptstyle(E,\pi,B)$\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm non-topological \fibre/ bundle\cr\hfil
 $\scriptstyle(E,\pi,B,A_E^F)$\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological fibration\cr\hfil
 $\scriptstyle(E,T_E,\pi,B,T_B)$\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological \fibre/ bundle\cr\hfil
 $\scriptstyle(E,T_E,\pi,B,T_B,A^F_E)$\cr}etex, p4);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(3,4,1);
B_arrow(2,4,1);

endfig;
end
