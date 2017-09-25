% tex/conc/mp/log52.mp   2016-4-7   Alan U. Kennington.
% $Id: tex/conc/mp/log52.mp d8875afd74 2016-04-07 12:12:50Z Alan U. Kennington $
% Inclusion relation on power set. Partial orders which are not total orders.

input boxmax.mp

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

dx := 6pt;
dy := 6pt;

w1 := 0.70cm;
w2 := 2w1;
w3 := w2;

w10 := 0.62cm;
w11 := w10;
w12 := (3/4)*w10;
w13 := w10;

h1 := 1.0cm;
h2 := h1 + h1 + dy;
h3 := h2 + h1 + dy;
h4 := h3 + h1;

aa := 3.5cm;
aaa := 5.0cm;

penLN := 0.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p1 := (0,0);
p2 := p1 + (-w1,h1);
p3 := p1 + (w1,h1);
p4 := 0.5[p2,p3] + (0,h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p11 := p1 + (aa,0);

p12 := p11 + (-w2,h1);
p13 := p11 + (0,h1);
p14 := p11 + (w2,h1);

p15 := p13 + (0,h1);
p16 := p15 + (-w3,0);
p17 := p15 + (w3,0);

p18 := p15 + (0,h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p21 := p11 + (aaa,0);

p22 := p21 + (-3w11,h1);
p23 := p21 + (-w11,h1);
p24 := p21 + (w11,h1);
p25 := p21 + (3w11,h1);

p31 := p21 + (-5w12,h2);
p32 := p21 + (-3w12,h2);
p34 := p21 + (-w12,h2);
p33 := p21 + (w12,h2);
p35 := p21 + (3w12,h2);
p36 := p21 + (5w12,h2);

p41 := p21 + (-3w13,h3);
p42 := p21 + (-w13,h3);
p43 := p21 + (w13,h3);
p44 := p21 + (3w13,h3);

p51 := p21 + (0,h4);

%------------------------------------------------------------------------------
% Draw the nodes.
B_draw_no_box(1, btex\tmatten{\strut $\emptyset$\cr}etex, p1);
B_draw_no_box(2, btex\tmatten{\strut $\{a\}$\cr}etex, p2);
B_draw_no_box(3, btex\tmatten{\strut $\{b\}$\cr}etex, p3);
B_draw_no_box(4, btex\tmatten{\strut $\{a,b\}$\cr}etex, p4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw_no_box(11, btex\tmatten{\strut $\emptyset$\cr}etex, p11);

B_draw_no_box(12, btex\tmatten{\strut $\{a\}$\cr}etex, p12);
B_draw_no_box(13, btex\tmatten{\strut $\{b\}$\cr}etex, p13);
B_draw_no_box(14, btex\tmatten{\strut $\{c\}$\cr}etex, p14);

B_draw_no_box(15, btex\tmatten{\strut $\{a,c\}$\cr}etex, p15);
B_draw_no_box(16, btex\tmatten{\strut $\{a,b\}$\cr}etex, p16);
B_draw_no_box(17, btex\tmatten{\strut $\{b,c\}$\cr}etex, p17);

B_draw_no_box(18, btex\tmatten{\strut $\{a,b,c\}$\cr}etex, p18);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw_no_box(21, btex\tmatten{\strut $\emptyset$\cr}etex, p21);

B_draw_no_box(22, btex\tmatten{\strut $\{a\}$\cr}etex, p22);
B_draw_no_box(23, btex\tmatten{\strut $\{b\}$\cr}etex, p23);
B_draw_no_box(24, btex\tmatten{\strut $\{c\}$\cr}etex, p24);
B_draw_no_box(25, btex\tmatten{\strut $\{d\}$\cr}etex, p25);

B_draw_no_box(31, btex\tmatten{\strut $\{a,b\}$\cr}etex, p31);
B_draw_no_box(32, btex\tmatten{\strut $\{a,c\}$\cr}etex, p32);
B_draw_no_box(33, btex\tmatten{\strut $\{b,c\}$\cr}etex, p33);
B_draw_no_box(34, btex\tmatten{\strut $\{a,d\}$\cr}etex, p34);
B_draw_no_box(35, btex\tmatten{\strut $\{b,d\}$\cr}etex, p35);
B_draw_no_box(36, btex\tmatten{\strut $\{c,d\}$\cr}etex, p36);

B_draw_no_box(41, btex\tmatten{\strut $\{a,b,c\}$\cr}etex, p41);
B_draw_no_box(42, btex\tmatten{\strut $\{a,b,d\}$\cr}etex, p42);
B_draw_no_box(43, btex\tmatten{\strut $\{a,c,d\}$\cr}etex, p43);
B_draw_no_box(44, btex\tmatten{\strut $\{b,c,d\}$\cr}etex, p44);

B_draw_no_box(51, btex\tmatten{\strut $\{a,b,c,d\}$\cr}etex, p51);

%------------------------------------------------------------------------------
% Draw the arrows.
pickup pencircle scaled penLN;
B_margset(1pt, 1pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(2,4,1);
B_arrow(3,4,1);

B_arrow(11,12,1);
B_arrow(11,13,1);
B_arrow(11,14,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
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

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows for the four-point network.
pickup pencircle scaled penLN;
B_margset(1pt, 1pt);
B_arrow(21,22,1);
B_arrow(21,23,1);
B_arrow(21,24,1);
B_arrow(21,25,1);

B_margset(-1pt, -1pt);
B_arrow(22,31,1);
B_arrow(22,32,1);
B_arrow(22,34,1);
B_arrow(23,31,1);
B_arrow(23,33,1);
B_arrow(23,35,1);
% B_arrow(24,32,1);
B_arrow(24,33,1);
B_arrow(24,36,1);
% B_arrow(25,34,1);
B_arrow(25,35,1);
B_arrow(25,36,1);

B_margset(-1pt, -1pt);
B_arrow(31,41,1);
B_arrow(31,42,1);
B_arrow(32,41,1);
B_arrow(32,43,1);
B_arrow(33,41,1);
B_arrow(33,44,1);
B_arrow(34,42,1);
B_arrow(34,43,1);
B_arrow(35,42,1);
B_arrow(35,44,1);
B_arrow(36,43,1);
B_arrow(36,44,1);

B_margset(1pt, 1pt);
B_arrow(41,51,1);
B_arrow(42,51,1);
B_arrow(43,51,1);
B_arrow(44,51,1);

% Fine adjustments for the tricky boxes.
pickup pencircle scaled penLN;
B_margset(-1pt, -1pt);
% d --> a,d
B_box_point_m(p61)(25, -1, 0.8);
B_box_point_m(p62)(34, 0.4, -1);
drawarrow p61--p62;

% c --> a,c
B_box_point_m(p63)(24, -1, 0.8);
B_box_point_m(p64)(32, 0.4, -1);
drawarrow p63--p64;

endfig;
end
