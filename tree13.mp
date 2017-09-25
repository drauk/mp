% tex/conc/mp/tree13.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree13.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
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

w1 := 60pt;
h1 := 35pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := 0.5[p2,p3] + (0,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological space\cr\hfil
 $\scriptstyle(X,T_X)$\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological fibration\cr\hfil
 $\scriptstyle(E,T_E,\pi,B,T_B)$\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological transformation group\cr\hfil
 $\scriptstyle(G,T_G,F,T_F,\sigma_G,\mu)$\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological \fibre/ bundle\cr\hfil
 $\scriptstyle(E,T_E,\pi,B,T_B,A^F_E;\,G,T_G,F,T_F,\sigma_G,\mu)$\cr}etex, p4);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,1,2);
B_arrow(4,2,2);
B_arrow(4,3,2);

endfig;
end
