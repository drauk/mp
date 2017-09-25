% tex/conc/mp/tree28.mp   2015-10-1   Alan U. Kennington.
% $Id: tex/conc/mp/tree28.mp 2319cad73c 2015-09-30 14:24:13Z Alan U. Kennington $
% Dependencies of chapters. Arrows pointing in forward-time direction.

input boxmax.mp
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

w1 := 39pt;
% h1 := 26.0pt;
h1 := 25.0pt; % Reduce size be about 10 points overall.
% h2 := 0.25h1;
h2 := 0pt;
% h3 := 0.5h1;
h3 := 0h1;
w4 := 0.0w1;
w5 := -0.75w1;

p1 := (0,0);                            % sets
p2 := p1 + (0.5w1,-h1);                 % algebra
p3 := p1 + (-w1,-2h1) + (-w4,0);        % topology
p4 := p2 + (0.5w1,-h1);                 % linear
p5 := p4 + (0.5w1,-h1);                 % tensor
p6 := p1 + (-0.25w1,-4h1) + (0,h3);     % top manif
p7 := p3 + (0w1,-3h1) + (0,0);          % top fibre
p8 := p5 + (0,-h1);                     % diff manif
p9 := p8 + (w5,-h1);                    % Lie
p10 := p9 + (w5,-h1);                   % diff fibre

p11 := p10 + (0,-h1);                   % connections
p12 := p11 + (-w1,-h1);                 % Riemann
p13 := p11 + (w1,-h1);                  % pseudo-Riemann
w3 := -0.29w1;
p15 := p4 + (-w1,-h1) + (0,h2);         % calculus

% Elbow point for short-cut.
p16 := (xpart(p8),ypart(p11));

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}sets and numbers\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}algebra\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}topology\cr}etex, p3);

B_draw(4, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}linear spaces\cr}etex, p4);

B_draw(5, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}tensor algebra\cr}etex, p5);

B_draw(6, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}topological\cr
 \hfil\sevenrm manifolds\cr}etex, p6);

B_draw(7, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}topological\cr
 \hfil\sevenrm \fibre/ bundles\cr}etex, p7);

B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}differentiable\cr
 \hfil\sevenrm manifolds\cr}etex, p8);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}Lie groups\cr}etex, p9);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}differentiable \fibre/ bundles\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}connections on \fibre/ bundles\cr}etex, p11);

B_draw(12, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}Riemannian\cr
 \hfil\sevenrm manifolds\cr}etex, p12);

B_draw(13, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}pseudo-Riemannian\cr
 \hfil\sevenrm manifolds\cr}etex, p13);

B_draw(15, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}calculus\cr}etex, p15);

% Draw the arrows.
mmx := 1.8pt;
mmy := 2.0pt;
B_margset(mmx, mmy);
B_arrow(2,1,2);
B_arrow(3,1,2);
B_arrow(4,2,2);
B_arrow(5,4,2);
B_arrow(6,3,2);
B_arrow(7,3,2);
B_arrow(8,5,2);
B_arrow(8,6,2);
B_arrow(9,8,2);
B_arrow(10,9,2);
B_arrow(10,7,2);
B_arrow(11,10,2);
B_arrow(12,11,2);
B_arrow(13,11,2);
B_arrow(8,15,2);
B_arrow(15,3,2);
B_arrow(15,4,2);
B_arrow(15,5,2);

% Shortcut arrow.
% p17 := p8 + (0,-B_h8-bboxmargin-mmx);
% p18 := p11 + (B_w11+bboxmargin+mmx,0);
% drawarrow p17--p16--p18 dashed evenly;

endfig;
end
