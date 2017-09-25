% tex/conc/mp/log41.mp   2016-4-12   Alan U. Kennington.
% $Id: tex/conc/mp/log41.mp deda4df32f 2016-04-12 12:21:13Z Alan U. Kennington $
% Inclusion relation on power set of four letters.

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

penLN := 0.5bp;
dx := 6pt;
dy := 6pt;

w0 := 0.62cm;
w1 := w0;
w2 := (3/4)*w0;
w3 := w0;

h1 := 1.0cm;
h2 := h1 + h1 + dy;
h3 := h2 + h1 + dy;
h4 := h3 + h1;

p11 := (0,0);

p12 := p11 + (-3w1,h1);
p13 := p11 + (-w1,h1);
p14 := p11 + (w1,h1);
p15 := p11 + (3w1,h1);

p21 := p11 + (-5w2,h2);
p22 := p11 + (-3w2,h2);
p24 := p11 + (-w2,h2);
p23 := p11 + (w2,h2);
p25 := p11 + (3w2,h2);
p26 := p11 + (5w2,h2);

p31 := p11 + (-3w3,h3);
p32 := p11 + (-w3,h3);
p33 := p11 + (w3,h3);
p34 := p11 + (3w3,h3);

p41 := p11 + (0,h4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes.
B_draw_no_box(11, btex\tmatten{\strut $\emptyset$\cr}etex, p11);

B_draw_no_box(12, btex\tmatten{\strut $\{a\}$\cr}etex, p12);
B_draw_no_box(13, btex\tmatten{\strut $\{b\}$\cr}etex, p13);
B_draw_no_box(14, btex\tmatten{\strut $\{c\}$\cr}etex, p14);
B_draw_no_box(15, btex\tmatten{\strut $\{d\}$\cr}etex, p15);

B_draw_no_box(21, btex\tmatten{\strut $\{a,b\}$\cr}etex, p21);
B_draw_no_box(22, btex\tmatten{\strut $\{a,c\}$\cr}etex, p22);
B_draw_no_box(23, btex\tmatten{\strut $\{b,c\}$\cr}etex, p23);
B_draw_no_box(24, btex\tmatten{\strut $\{a,d\}$\cr}etex, p24);
B_draw_no_box(25, btex\tmatten{\strut $\{b,d\}$\cr}etex, p25);
B_draw_no_box(26, btex\tmatten{\strut $\{c,d\}$\cr}etex, p26);

B_draw_no_box(31, btex\tmatten{\strut $\{a,b,c\}$\cr}etex, p31);
B_draw_no_box(32, btex\tmatten{\strut $\{a,b,d\}$\cr}etex, p32);
B_draw_no_box(33, btex\tmatten{\strut $\{a,c,d\}$\cr}etex, p33);
B_draw_no_box(34, btex\tmatten{\strut $\{b,c,d\}$\cr}etex, p34);

B_draw_no_box(41, btex\tmatten{\strut $\{a,b,c,d\}$\cr}etex, p41);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
pickup pencircle scaled penLN;
B_margset(1pt, 1pt);
B_arrow(11,12,1);
B_arrow(11,13,1);
B_arrow(11,14,1);
B_arrow(11,15,1);

B_margset(-1pt, -1pt);
B_arrow(12,21,1);
B_arrow(12,22,1);
B_arrow(12,24,1);
B_arrow(13,21,1);
B_arrow(13,23,1);
B_arrow(13,25,1);
% B_arrow(14,22,1);
B_arrow(14,23,1);
B_arrow(14,26,1);
% B_arrow(15,24,1);
B_arrow(15,25,1);
B_arrow(15,26,1);

B_margset(-1pt, -1pt);
B_arrow(21,31,1);
B_arrow(21,32,1);
B_arrow(22,31,1);
B_arrow(22,33,1);
B_arrow(23,31,1);
B_arrow(23,34,1);
B_arrow(24,32,1);
B_arrow(24,33,1);
B_arrow(25,32,1);
B_arrow(25,34,1);
B_arrow(26,33,1);
B_arrow(26,34,1);

B_margset(1pt, 1pt);
B_arrow(31,41,1);
B_arrow(32,41,1);
B_arrow(33,41,1);
B_arrow(34,41,1);

% Fine adjustments for the tricky boxes.
pickup pencircle scaled penLN;
B_margset(-1pt, -1pt);
% d --> a,d
B_box_point_m(p51)(15, -1, 0.8);
B_box_point_m(p52)(24, 0.4, -1);
drawarrow p51--p52;

% c --> a,c
B_box_point_m(p53)(14, -1, 0.8);
B_box_point_m(p54)(22, 0.4, -1);
drawarrow p53--p54;

endfig;
end
