% tex/conc/mp/tree29.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/tree29.mp 7beeb1e1fd 2012-04-30 07:37:19Z Alan U. Kennington $
% Differentiability properties for real functions of multiple variables.

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

w1 := 2.2cm;
w2 := 3.5cm;
h1 := 10mm;
sp := 3.7pt;
h2 := h1 + sp;
h3 := h2 + sp;

p1 := (0,0);

p2 := p1 + (0, -h2);
p3 := p2 + (0, -h3);

p4 := p2 + (-w2, 0);
p5 := p3 + (-w2, 0);

p6 := p4 + (-w2, 0);
p7 := p5 + (-w2, 0);

p8 := p6 + (-w2, 0);
p9 := p7 + (-w2, 0);

% Draw the boxes.
B_draw(1, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ continuous
 in $\scriptstyle\Omega$\cr}etex, p1);

B_draw(2, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ totally\cr
 \hfil\sevenrm differentiable in $\scriptstyle\Omega$\cr}etex, p2);

B_draw(3, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ continuously totally\cr
 \hfil\sevenrm differentiable in $\scriptstyle\Omega$\cr}etex, p3);

B_draw(4, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ directionally\cr
 \hfil\sevenrm differentiable in $\scriptstyle\Omega$\cr}etex, p4);

B_draw(5, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ ctsly directionally\cr
 \hfil\sevenrm differentiable in $\scriptstyle\Omega$\cr}etex, p5);

B_draw(6, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ unidirectionally\cr
 \hfil\sevenrm differentiable in $\scriptstyle\Omega$\cr}etex, p6);

B_draw(7, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ ctsly unidirectionally\cr
 \hfil\sevenrm differentiable in $\scriptstyle\Omega$\cr}etex, p7);

B_draw(8, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ partially\cr
 \hfil\sevenrm differentiable in $\scriptstyle\Omega$\cr}etex, p8);

B_draw(9, btex\baselineskip7.6pt
 \tmat{\hfil\sevenrm\vphantom{fy}$\scriptstyle f$ ctsly partially\cr
 \hfil\sevenrm differentiable in $\scriptstyle\Omega$\cr}etex, p9);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(3.5pt, 3.5pt);

B_arrowD(1, 2, 2);
B_arrowD(2, 3, 2);
B_arrowD(4, 5, 2);
B_arrowD(6, 7, 2);
B_arrowD(8, 9, 2);

B_arrowD(4, 2, 2);
B_arrowD(6, 4, 2);
B_arrowD(8, 6, 2);

B_arrowD(3, 5, 3);
B_arrowD(5, 7, 3);
B_arrowD(7, 9, 3);

endfig;
end
