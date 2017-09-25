% tex/conc/mp/tree7.mp   2008-12-3   Alan Kennington.
% $Id: tex/conc/mp/tree7.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Family tree for topological groups.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex \input dgmpmax etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat;

w1 := 60pt;
h1 := 37pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := p1 + (0,-2h1);
p5 := p4 + (0,-h1);

% Draw the boxes.
% Topological group.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological group\cr\hfil
 $\scriptstyle(G,T_G,\sigma_G)$\cr}etex, p1);

% Locally compact.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm locally compact top.\ group\cr\hfil
 $\scriptstyle(G,T_G,\sigma_G)$\cr}etex, p2);

% Locally compact.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm locally connected top.\ group\cr\hfil
 $\scriptstyle(G,T_G,\sigma_G)$\cr}etex, p3);

% Locally Euclidean.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm locally Euclidean group\cr\hfil
 $\scriptstyle(G,T_G,\sigma_G)$\cr}etex, p4);

% Lie group.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm Lie group\cr\hfil
 $\scriptstyle(G,A_G,\sigma_G)$\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,1,2);
B_arrow(4,2,2);
B_arrow(4,3,2);
B_arrow(5,4,2);

% Special arrow for boxes 5 and 4.
B_box_point_m(p20)(5, 1, 0);
B_box_point_m(p21)(4, 1, 0);

pat := p20{dir0}...{dir180}p21;
% drawarrow reverse pat;
drawarrow pat;
label.rt(btex \sevenrm EDM2, 423.N etex, point 0.5 of pat);

endfig;
end
