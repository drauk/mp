% tex/conc/mp/tree6.mp   2008-12-3   Alan Kennington.
% $Id: tex/conc/mp/tree6.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
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
% p1 := p0 + (w1,-h1*0.5);
p1 := p0;
p2 := p1 + (2w1,h1);
p3 := p1 + (-w1,-h1);
p4 := p1 + (2w1,0);
p5 := p1 + (0,-2h1);
p6 := p1 + (w1,-h1);
p7 := p6 + (0.8w1,-1.7h1);
p8 := p4 + (2.3w1,-h1*1.5);

% Draw the boxes.
% Topological group.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm topological group\cr\hfil
 $\scriptstyle(G,T_G,\sigma_G)$\cr}etex, p1);

% Transformation group.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p2);

% Lie group.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm Lie group\cr\hfil
 $\scriptstyle(G,A_G,\sigma_G)$\cr}etex, p3);

% Transf. gp of top space.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm transf.\ group of top.\ space\cr\hfil
 $\scriptstyle(G,X,T_X,\sigma_G,\mu)$\cr}etex, p4);

% Lie transformation group.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm $\scriptstyle C^k$ Lie transf.\ group\cr\hfil
 $\scriptstyle(G,A_G,M,A_M,\sigma_G,\mu)$\cr}etex, p5);

% Top. transf. gp of top space.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm top.\ transf.\ group of top.\ space\cr\hfil
 $\scriptstyle(G,T_G,X,T_X,\sigma_G,\mu)$\cr}etex, p6);

% Top. transf. gp of top space with conditions.
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm eff.\ top.\ transf.\ group,
 $\scriptstyle M$ is $\scriptstyle C^k$\cr
 \hfil\sevenrm $\scriptstyle G$ loc.\ compact, $\scriptstyle\mu$ is
 $\scriptstyle C^k$ w.r.t.\ $\scriptstyle M$\cr\hfil
 $\scriptstyle(G,A_G,M,A_M,\sigma_G,\mu)$\cr}etex, p7);

% Transf. gp of top space with conditions.
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm transf.\ group of top.\ space\cr
 \hfil\sevenrm $\scriptstyle M$ loc.\ compact,
 $\scriptstyle T_G={}$compact-open top.\cr\hfil
 \hfil\sevenrm $\scriptstyle M$ loc.\ connected or
 unif.\ top.\ space\cr\hfil
 \hfil\sevenrm $\scriptstyle G$ acts equicontinuously
 on $\scriptstyle M$\cr\hfil
 $\scriptstyle(G,T_G,X,T_X,\sigma_G,\mu)$\cr}etex, p8);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(3,1,2);
B_arrow(4,2,2);
B_arrow(5,3,2);
B_arrow(5,6,2);
B_arrow(6,1,2);
B_arrow(6,4,2);
B_arrow(7,6,2);
% B_arrow(7,5,2);
% B_arrow(8,6,2);
B_arrow(8,4,2);

% Special arrow for boxes 5 and 7.
B_box_point_m(p20)(7, -1, 0);
B_box_point_m(p21)(5, 0, -1);

pat := p20{dir180}...{dir90}p21;
drawarrow reverse pat;
label.llft(btex \sevenrm EDM2, 431.H(11) etex, point 0.5 of pat);

% Special arrow for boxes 8 and 6.
B_box_point_m(p20)(8, -1, 0);
B_box_point_m(p21)(6, 1, 0);

pat := p20{dir180}...{dir180}p21;
drawarrow reverse pat;
label.llft(btex \sevenrm EDM2, 431.H(10) etex, point 0.12 of pat);

endfig;
end
