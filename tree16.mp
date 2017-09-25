% tex/conc/mp/tree16.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree16.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Dependencies of chapters. Arrows pointing in forward-time direction.

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

w1 := 39pt;
h1 := 27.3pt;
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
% p10 := p1 + (0,-7h1);                   % diff fibre
% p9 := 0.5[p8,p10];                      % Lie
% p6 := 2/3[p7,p8];                       % top manif

p11 := p10 + (0,-h1);                   % conn
p12 := p11 + (-w1,-h1);                 % Riemann
p13 := p11 + (w1,-h1);                  % pseudo-Riemann
p14 := 0.5[p12,p13] + (0,-h1);          % tensor calculus
w3 := -0.29w1;
% p15 := p2 + (w1-w3,0);
p15 := p4 + (-w1,-h1) + (0,h2);         % calculus
% p15 := (p3--p8) intersectionpoint (p5--(p5+(-3w1,0))); % calculus

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}sets and functions\cr}etex, p1);

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
 \tmat{\hfil\sevenrm\vphantom{fy}affine connections\cr}etex, p11);

B_draw(12, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}Riemannian\cr
 \hfil\sevenrm manifolds\cr}etex, p12);

B_draw(13, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}pseudo-Riemannian\cr
 \hfil\sevenrm manifolds\cr}etex, p13);

B_draw(14, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}tensor calculus\cr}etex, p14);

B_draw(15, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}calculus\cr}etex, p15);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,2);
B_arrow(3,1,2);
% B_arrowcol(3,2,2,0white,withdots scaled0.5);
% B_arrowcol(6,4,1,0white,withdots scaled0.5);
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
B_arrow(14,12,2);
B_arrow(14,13,2);
B_arrow(8,15,2);
% B_arrow(15,4,2);
B_arrow(15,3,2);
B_arrow(15,4,2);
B_arrow(15,5,2);

endfig;
end
