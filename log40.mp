% tex/conc/mp/log40.mp   2012-3-2   Alan U. Kennington.
% $Id: tex/conc/mp/log40.mp 232046a199 2016-09-09 07:24:46Z Alan U. Kennington $
% Inclusion relation on power set. Partial orders which are not total orders.

input boxmax
verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat[];

w1 := 0.70cm;
w2 := 2w1;
w3 := w2;
h1 := 1.0cm;

aa := 3.5cm;
dy := 13pt;

p1 := (0,0);
p2 := p1 + (-w1,h1);
p3 := p1 + (w1,h1);
p4 := 0.5[p2,p3] + (0,h1);

p11 := p1 + (aa,0);

p12 := p11 + (-w2,h1);
p13 := p11 + (0,h1);
p14 := p11 + (w2,h1);

p15 := p13 + (0,h1);
p16 := p15 + (-w3,0);
p17 := p15 + (w3,0);

p18 := p15 + (0,h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes.
B_draw_no_box(1, btex\tmatten{\strut $\emptyset$\cr}etex, p1);
B_draw_no_box(2, btex\tmatten{\strut $\{a\}$\cr}etex, p2);
B_draw_no_box(3, btex\tmatten{\strut $\{b\}$\cr}etex, p3);
B_draw_no_box(4, btex\tmatten{\strut $\{a,b\}$\cr}etex, p4);

B_draw_no_box(11, btex\tmatten{\strut $\emptyset$\cr}etex, p11);

B_draw_no_box(12, btex\tmatten{\strut $\{a\}$\cr}etex, p12);
B_draw_no_box(13, btex\tmatten{\strut $\{b\}$\cr}etex, p13);
B_draw_no_box(14, btex\tmatten{\strut $\{c\}$\cr}etex, p14);

B_draw_no_box(15, btex\tmatten{\strut $\{a,c\}$\cr}etex, p15);
B_draw_no_box(16, btex\tmatten{\strut $\{a,b\}$\cr}etex, p16);
B_draw_no_box(17, btex\tmatten{\strut $\{b,c\}$\cr}etex, p17);

B_draw_no_box(18, btex\tmatten{\strut $\{a,b,c\}$\cr}etex, p18);

% Draw the arrows.
pickup pencircle scaled 0.5bp;
B_margset(1pt, 1pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(2,4,1);
B_arrow(3,4,1);

B_arrow(11,12,1);
B_arrow(11,13,1);
B_arrow(11,14,1);

B_margset(0pt, 0pt);
B_arrow(12,15,1);
B_arrow(12,16,1);
B_arrow(13,16,1);
B_arrow(13,17,1);
B_arrow(14,15,1);
B_arrow(14,17,1);

B_margset(1pt, 1pt);
B_arrow(15,18,1);
B_arrow(16,18,1);
B_arrow(17,18,1);

endfig;
end
