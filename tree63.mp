% tex/conc/mp/tree63.mp   2014-5-21   Alan U. Kennington.
% $Id: tex/conc/mp/tree63.mp 1c7af2417a 2014-05-21 03:44:43Z Alan U. Kennington $
% Classes of logic systems.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\smallrm cmr9
\def\fystrut{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric h[];

h1 := 1.2cm;
h2 := h1/2;
w1 := 2.70cm;

p1 := (0,0);
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (0,-h1);
p5 := p4 + (0,-h1);
p11 := p1 + (w1,h2);
p12 := p11 + (0,-h1);
p13 := p12 + (0,-h1);

% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut mathematics\cr
 \hfil\smallrm\fystrut semantics\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut set theory\cr
 \hfil\smallrm\fystrut semantics\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut logic\cr
 \hfil\smallrm\fystrut semantics\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut naive\cr
 \hfil\smallrm\fystrut set theory\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut naive\cr
 \hfil\smallrm\fystrut logic\cr}etex, p5);

B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut mathematics\cr
 \hfil\smallrm\fystrut language\cr}etex, p11);

B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut set theory\cr
 \hfil\smallrm\fystrut language\cr}etex, p12);

B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\smallrm\fystrut logic\cr
 \hfil\smallrm\fystrut language\cr}etex, p13);

% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(4,5,1);

B_arrow(11,12,1);
B_arrow(12,13,1);

B_arrow(11,1,1);
B_arrow(12,2,1);
B_arrow(13,3,1);

endfig;
end
