% tex/conc/mp/tree85.mp   2016-1-23   Alan U. Kennington.
% $Id: tex/conc/mp/tree85.mp 4efe89112a 2016-01-23 12:22:41Z Alan U. Kennington $
% Family tree for semigroups, groups, transformation semigroups, etc.

input boxmax.mp
verbatimtex
\input dgmpmax
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 45pt;
h1 := 32pt;
sepA := 10pt;
sepB := 5pt;
sepC := 3pt;

p2 := (0,0);                        % group
p6 := p2 + (0,-h1);                 % transformation group
p7 := p6 + (-w1-sepC,-h1-sepB);     % effective transformation group
p13 := p7 + (0,-h1-2sepB);          % free transformation group
p8 := p7 + (2w1+sepC,0);            % transitive transformation group
p9 := p13 + (2w1+sepC,0);           % free and transitive transformation group

% Draw the boxes.
% Group.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}group\cr\hfil
 $\scriptstyle(G,\sigma_G)$\cr}etex, p2);

% Transformation group.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p6);

% Effective transformation group.
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}effective\cr
 \hfil\sevenrm\vphantom{f}transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p7);

% Transitive transformation group.
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}transitive\cr
 \hfil\sevenrm\vphantom{f}transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p8);

% Free and transitive transformation group.
B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}free and transitive\cr
 \hfil\sevenrm\vphantom{f}transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p9);

% Free transformation group.
B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}free\cr
 \hfil\sevenrm\vphantom{f}transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p13);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,6,1);
B_arrow(6,7,1);
B_arrow(7,13,1);
B_arrow(6,8,1);
B_arrow(6,8,1);
B_arrow(13,9,1);
B_arrow(8,9,1);

endfig;
end
