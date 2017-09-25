% tex/conc/mp/tree40.mp   2012-4-21   Alan U. Kennington.
% $Id: tex/conc/mp/tree40.mp a568fdd583 2012-04-21 08:27:09Z Alan U. Kennington $
% Family tree for semigroups, groups, transformation semigroups, etc.

input boxmax.mp
verbatimtex
\input dgmpmax
% \input akmath
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

p1 := (0,0);                        % semigroup
p14 := p1 + (2w1,0);                % monoid
p2 := p1 + (4w1,0);                 % group

p15 := p1 + (0,-h1-sepA);           % local transformation semigroup
p16 := p15 + (0,-h1-sepA);          % effective local transformation semigroup
p12 := p1 + (2w1,-h1);              % transformation semigroup

p6 := p2 + (0,-2h1);                % transformation group
p7 := p6 + (-w1-sepC,-h1-sepB);     % effective transformation group
p13 := p7 + (0,-h1-2sepB);          % free transformation group
p8 := p7 + (2w1+sepC,0);            % transitive transformation group
p9 := p13 + (2w1+sepC,0);           % free and transitive transformation group

% Draw the boxes.
% Semigroup.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}semigroup\cr\hfil
 $\scriptstyle(\Gamma,\sigma_\Gamma)$\cr}etex, p1);

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

% Transformation semigroup.
B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}transformation semigroup\cr\hfil
 $\scriptstyle(\Gamma,X,\sigma_\Gamma,\mu)$\cr}etex, p12);

% Free transformation group.
B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}free\cr
 \hfil\sevenrm\vphantom{f}transformation group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu)$\cr}etex, p13);

% Monoid.
B_draw(14, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}monoid\cr\hfil
 $\scriptstyle(\Gamma,\sigma_\Gamma)$\cr}etex, p14);

% Local transformation semigroup.
B_draw(15, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}local transformation\cr
 \hfil\sevenrm\vphantom{f}semigroup\cr
 \hfil$\scriptstyle(\Gamma,X,\sigma_\Gamma,\mu)$\cr}etex, p15);

% Effective local transformation semigroup.
B_draw(16, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}effective local\cr
 \hfil\sevenrm\vphantom{f}transformation semigroup\cr
 \hfil$\scriptstyle(\Gamma,X,\sigma_\Gamma,\mu)$\cr}etex, p16);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,14,1);
B_arrow(1,15,1);
B_arrow(14,2,1);
B_arrow(15,6,1);
B_arrow(15,16,1);
B_arrow(16,7,1);
B_arrow(1,12,1);

B_arrow(2,6,1);
B_arrow(12,6,1);
B_arrow(6,7,1);
B_arrow(7,13,1);
B_arrow(6,8,1);
B_arrow(6,8,1);
B_arrow(13,9,1);
B_arrow(8,9,1);

endfig;
end
