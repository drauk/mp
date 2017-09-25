% tex/conc/mp/tree35.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree35.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Family tree for fibre bundles and tangent bundles.

input boxmax.mp
verbatimtex
\input dgmpmax
\input dgspell
\font\ninerm cmr9
\def\strutA{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric w[], h[];
pair p[];

w1 := 78pt;
w2 := 2w1;
h1 := 34pt;
h2 := 50pt;
h3 := 0.5h2;
h4 := h1 - 3.8pt;
scA := 0.7;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;                       % non-top fb
p2 := p1 + (0,-h1);             % top fb
p3 := p2 + (w1,-h3);            % C^0 tang bundle
p4 := p3 + (0,-h2);             % C^1 tang bundle
p5 := p2 + (0,-h2);             % diff fb

p10 := p1 + (w2,0);             % top manifold
p11 := p10 + (0,-h4);           % C^1 manifold
p12 := p11 + (0,-h2);           % C^2 manifold

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\strutA non-topological\cr
 \hfil\ninerm\strutA \fibre/ bundle\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\strutA topological\cr
 \hfil\ninerm\strutA \fibre/ bundle\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\strutA tangent bundle\cr
 \hfil\ninerm\strutA on $C^1$ manifold\cr}etex, p3);

B_draw(4, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\strutA tangent bundle\cr
 \hfil\ninerm\strutA on $C^2$ manifold\cr}etex, p4);

B_draw(5, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\strutA differentiable\cr
 \hfil\ninerm\strutA \fibre/ bundle\cr}etex, p5);

B_draw(10, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\strutA topological\cr
 \hfil\ninerm\strutA manifold\cr}etex, p10);

B_draw(11, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\strutA $C^1$ manifold\cr}etex, p11);

B_draw(12, btex\baselineskip7.6pt
 \tmat{\hfil\ninerm\strutA $C^2$ manifold\cr}etex, p12);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(2,5,1);
B_arrow(3,4,1);
B_arrow(5,4,1);

B_arrow(10,11,1);
B_arrow(11,12,1);
B_margset(1pt, 1pt);
B_arrowcol(11,3,1,black,evenly scaled scA);
B_arrowcol(12,4,1,black,evenly scaled scA);

endfig;
end
