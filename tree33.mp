% tex/conc/mp/tree33.mp   2009-7-7   Alan Kennington.
% $Id: tex/conc/mp/tree33.mp 2c090bbb6b 2009-07-07 11:52:01Z Alan U. Kennington $
% Conjectural family tree for certain primates.

input boxmax.mp

verbatimtex
\input dgmpmax
\input akmath
etex
% \font\eightrm cmr8

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 0.60cm;
h1 := 1.0cm;
h2 := 1.5cm;
sp := 3pt;
spp := 20pt;
w2 := 2.5w1;
w3 := 3w1;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := p3 + (0,-h1);
p5 := p3 + (w2,-h1);
p6 := p4 + (-0,-h2);
p7 := p2 + (-w1,-h1-h2);
p9 := p5 + (w3,-h2);

for i=1 upto 9:
    p[20+i] := p[i] + (w2, 0);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the parse tree.
B_draw_no_box(1, btex\tmatten{\strut $A$\cr}etex, p1);
B_draw_no_box(2, btex\tmatten{\strut $C$\cr}etex, p2);
B_draw_no_box(3, btex\tmatten{\strut $B$\cr}etex, p3);
B_draw_no_box(4, btex\tmatten{\strut $H$\cr}etex, p4);
B_draw_no_box(5, btex\tmatten{\strut $O$\cr}etex, p5);
B_draw_no_box(6, btex\tmatten{\strut human\cr}etex, p6);
B_draw_no_box(7, btex\tmatten{\strut chimp\cr}etex, p7);
B_draw_no_box(9, btex\tmatten{\strut orang-utan\cr}etex, p9);

% Draw the arrows.
B_margset(0pt, 0pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(3,4,1);
B_arrow(3,5,1);
B_arrow(4,6,1);
B_arrow(2,7,1);
B_arrow(5,9,1);

endfig;
end
