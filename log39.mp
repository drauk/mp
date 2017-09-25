% tex/conc/mp/log39.mp   2012-2-8   Alan U. Kennington.
% $Id: tex/conc/mp/log39.mp 232046a199 2016-09-09 07:24:46Z Alan U. Kennington $
% Minimal and maximal elements for a partial order.

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

w1 := 0.80cm;
w2 := w1 + 8pt;
h1 := 1.0cm;

p1 := (0,0);
p2 := p1 + (w1,0);
p3 := p2 + (w1,0);
p4 := p3 + (w1,0);
p5 := p4 + (w1,0);

p6 := p5 + (w2,0);
p7 := p6 + (w1,0);
p8 := p7 + (w1,0);
p9 := p8 + (w1,0);
p10 := p9 + (w1,0);

p11 := p10 + (w2,0);
p12 := p11 + (w1,0);
p13 := p12 + (w1,0);
p14 := p13 + (w1,0);
p15 := p14 + (w1,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the parse tree.
B_draw_no_box(1, btex\tmatten{\strut $a$\cr}etex, p1);
B_draw_no_box(2, btex\tmatten{\strut $b$\cr}etex, p2);
B_draw_no_box(3, btex\tmatten{\strut $c$\cr}etex, p3);
B_draw_no_box(4, btex\tmatten{\strut $d$\cr}etex, p4);
B_draw_no_box(5, btex\tmatten{\strut $e$\cr}etex, p5);

B_draw_no_box(6, btex\tmatten{\strut $f$\cr}etex, p6);
B_draw_no_box(7, btex\tmatten{\strut $g$\cr}etex, p7);
B_draw_no_box(8, btex\tmatten{\strut $h$\cr}etex, p8);
B_draw_no_box(9, btex\tmatten{\strut $i$\cr}etex, p9);
B_draw_no_box(10, btex\tmatten{\strut $j$\cr}etex, p10);

B_draw_no_box(11, btex\tmatten{\strut $k$\cr}etex, p11);
B_draw_no_box(12, btex\tmatten{\strut $l$\cr}etex, p12);
B_draw_no_box(13, btex\tmatten{\strut $m$\cr}etex, p13);
B_draw_no_box(14, btex\tmatten{\strut $n$\cr}etex, p14);
B_draw_no_box(15, btex\tmatten{\strut $o$\cr}etex, p15);

% Draw the arrows.
pickup pencircle scaled 0.5bp;
B_margset(1pt, 1pt);
B_arrow(1,2,2);
B_arrow(2,3,2);
B_arrow(3,4,2);
B_arrow(4,5,2);

B_arrow(6,7,2);
B_arrow(7,8,2);
B_arrow(8,9,2);
B_arrow(9,10,2);

B_arrow(11,12,2);
B_arrow(12,13,2);
B_arrow(13,14,2);
B_arrow(14,15,2);

label(btex \strut$\dots$ etex, 0.5[p5,p6]);
label(btex \strut$\dots$ etex, 0.5[p10,p11]);
label(btex \strut$\dots$ etex, p1+(-0.5w2,0));
label(btex \strut$\dots$ etex, p15+(0.5w2,0));

endfig;
end
