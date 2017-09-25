% tex/conc/mp/tree53.mp   2014-11-19   Alan U. Kennington.
% $Id: tex/conc/mp/tree53.mp ff8e3a4076 2014-11-19 08:58:26Z Alan U. Kennington $
% Relations between definitions of ``infinity''.

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

w1 := 48pt;
w2 := 3.75w1;
h1 := 32pt;
sepA := 10pt;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := p2 + (-w1,-h1);
p5 := p3 + (-w1,-h1);

p10 := p1 + (w2, 0);
p11 := p10 + (-w1, -2h1);
p12 := p10 + (w1, -2h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}infinite${}\equiv{}$non-finite\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}$\omega$-infinite${}\equiv$\cr\hfil
 \smallrm\vphantom{fy}Dedekind-infinite\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}uncountably infinite\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}countably infinite\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}uncountably $\omega$-infinite\cr}etex, p5);

B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}infinite${}\equiv{}$non-finite$
 {}\equiv\omega$-infinite${}\equiv{}$Dedekind-infinite\cr}etex, p10);

B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}countably infinite\cr}etex, p11);

B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\smallrm\vphantom{fy}uncountably infinite\cr}etex, p12);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(2,4,1);
B_arrow(3,5,1);
B_arrow(2,5,1);
B_arrow(10,11,1);
B_arrow(10,12,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.bot(btex ZF set theory etex, 0.5[p4,p5]+(0,-sepA));
label.bot(btex ZF+AC set theory etex,
 (xpart(0.5[p11,p12]),ypart(p5))+(0,-sepA));

endfig;
end
