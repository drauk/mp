% tex/conc/mp/log38.mp   2012-3-3   Alan U. Kennington.
% $Id: tex/conc/mp/log38.mp d92a7a3a85 2012-03-02 14:20:06Z Alan U. Kennington $
% Minimal and maximal elements for a partial order.

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

w1 := 0.70cm;
h1 := 1.0cm;
w2 := 8w1;
w3 := 1.5w1;
dy := 13pt;

p1 := (0,0);
p2 := p1 + (-w3,-h1);
p3 := p1 + (w3,-h1);
p4 := p3 + (0,-h1);
p6 := p2 + (0,-h1);

p7 := p1 + (2w3,0);
p5 := p7 + (0.5w3,-h1);
p8 := p5 + (-w1,-h1);
p9 := p5 + (w1,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the parse tree.
B_draw_no_box(1, btex\tmatten{\strut $a$\cr}etex, p1);
B_draw_no_box(2, btex\tmatten{\strut $c$\cr}etex, p2);
B_draw_no_box(3, btex\tmatten{\strut $d$\cr}etex, p3);
B_draw_no_box(4, btex\tmatten{\strut $g$\cr}etex, p4);
B_draw_no_box(5, btex\tmatten{\strut $e$\cr}etex, p5);
B_draw_no_box(6, btex\tmatten{\strut $f$\cr}etex, p6);
B_draw_no_box(7, btex\tmatten{\strut $b$\cr}etex, p7);
B_draw_no_box(8, btex\tmatten{\strut $h$\cr}etex, p8);
B_draw_no_box(9, btex\tmatten{\strut $i$\cr}etex, p9);

% Draw the arrows.
pickup pencircle scaled 0.5bp;
B_margset(1pt, 1pt);
B_arrow(1,2,2);
B_arrow(1,3,2);
B_arrow(1,4,2);
B_arrow(1,6,2);
B_arrow(2,6,2);
B_arrow(3,4,2);
B_arrow(5,8,2);
B_arrow(5,9,2);
B_arrow(7,3,2);
B_arrow(7,4,2);
B_arrow(7,8,2);

B_margset(0pt, 0pt);
B_arrow(3,8,2);
B_arrow(7,5,2);

pat1 := p7..(0.5[p7,p9]+(10pt,2pt))..p9;
pickup pencircle scaled 0.5bp;
drawarrow reverse (subpath(0.2,1.75) of pat1);

pat2 := p8..(0.5[p8,p1]+(10pt,8pt))..p1;
pickup pencircle scaled 0.5bp;
drawarrow subpath(0.22,1.80) of pat2;

% Add some labels on the boxes.
p20 := 0.5[p1,p7]+(0,5pt);
p21 := 0.5[p6,p9]+(0,-7pt);
dx := 0.5 * xpart(p21-p20);
p20 := p20 + (dx,0);
p21 := p21 + (-dx,0);
p22 := p21 + (0,-dy);

label.top(btex\strut maximal elements $a$, $b$ etex, p20);
label.bot(btex\strut minimal elements $f$, $g$, $h$, $i$ etex, p21);
label.bot(btex\strut (with ``transitivity arrows'') etex, p22);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for i=1 upto 9:
    p[30+i] := p[i] + (w2, 0);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the parse tree.
B_draw_no_box(31, btex\tmatten{\strut $a$\cr}etex, p31);
B_draw_no_box(32, btex\tmatten{\strut $c$\cr}etex, p32);
B_draw_no_box(33, btex\tmatten{\strut $d$\cr}etex, p33);
B_draw_no_box(34, btex\tmatten{\strut $g$\cr}etex, p34);
B_draw_no_box(35, btex\tmatten{\strut $e$\cr}etex, p35);
B_draw_no_box(36, btex\tmatten{\strut $f$\cr}etex, p36);
B_draw_no_box(38, btex\tmatten{\strut $h$\cr}etex, p38);
B_draw_no_box(39, btex\tmatten{\strut $i$\cr}etex, p39);
B_draw_no_box(37, btex\tmatten{\strut $b$\cr}etex, p37);

% Draw the arrows.
pickup pencircle scaled 0.5bp;
B_margset(1pt, 1pt);
B_arrow(31,32,2);
B_arrow(31,33,2);
% B_arrow(31,34,2);
% B_arrow(31,36,2);
B_arrow(32,36,2);
B_arrow(33,34,2);
B_arrow(35,38,2);
B_arrow(35,39,2);
B_arrow(37,33,2);
% B_arrow(37,34,2);
% B_arrow(37,38,2);

B_margset(0pt, 0pt);
B_arrow(33,38,2);
B_arrow(37,35,2);

% Add some labels on the boxes.
p40 := 0.5[p31,p37]+(0,5pt);
p41 := 0.5[p36,p39]+(0,-7pt);
dx := 0.5 * xpart(p41-p40);
p40 := p40 + (dx,0);
p41 := p41 + (-dx,0);
p42 := p41 + (0,-dy);

label.top(btex\strut maximal elements $a$, $b$ etex, p40);
label.bot(btex\strut minimal elements $f$, $g$, $h$, $i$ etex, p41);
label.bot(btex\strut (without ``transitivity arrows'') etex, p42);

endfig;
end
