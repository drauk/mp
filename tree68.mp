% tex/conc/mp/tree68.mp   2016-3-13   Alan U. Kennington.
% $Id: tex/conc/mp/tree68.mp f85a4aa983 2016-03-13 12:04:35Z Alan U. Kennington $
% Relations between separable and second/first countable topological spaces.

input boxmax.mp
verbatimtex
\input dgmpmax
\font\smallrm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 45pt;
w2 := 200pt;
h1 := 28pt;
sepA := 12pt;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := p3 + (0,-h1);

p10 := p1 + (w2, 0);
p11 := p10 + (-w1, -h1);
p12 := p10 + (w1, -h1);
p13 := 0.5[p11,p12] + (0, -h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}topological space\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}separable space\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}first countable space\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}second countable space\cr}etex, p4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}topological space\cr}etex, p10);

B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}separable space\cr}etex, p11);

B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}first countable space\cr}etex, p12);

B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}second countable space\cr}etex, p13);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(3,4,1);
B_arrow(10,11,1);
B_arrow(10,12,1);
B_arrow(11,13,1);
B_arrow(12,13,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.bot(btex ZF set theory etex, (xpart(p1),ypart(p4)-sepA));
label.bot(btex ZF+CC set theory etex,
 (xpart(p10),ypart(p13))+(0,-sepA));

endfig;
end
