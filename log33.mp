% tex/conc/mp/log33.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/log33.mp 7beeb1e1fd 2012-04-30 07:37:19Z Alan U. Kennington $
% Parsing a quantified logic expression.

input boxmax.mp
verbatimtex
\input dgmpmax
\input akmath
% \font\eightrm cmr8
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 0.70cm;
h1 := 1.0cm;
sp := 3pt;
spp := 20pt;
w2 := 7w1;
w3 := 1.5w1;

p1 := (0,0);
p2 := p1 + (-w3,-h1);
p3 := p1 + (w3,-h1);
p4 := p3 + (-w3,-h1);
p5 := p3 + (w3,-h1);
p6 := p4 + (-w1,-h1);
p7 := p4 + (w1,-h1);
p8 := p5 + (-w1,-h1);
p9 := p5 + (w1,-h1);

for i=1 upto 9:
    p[20+i] := p[i] + (w2, 0);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the parse tree.
B_draw_no_box(1,
 btex\tmatten{\strut $\forsome b,(b\in X\tsland F(a,b))$\cr}etex, p1);
B_draw_no_box(2, btex\tmatten{\strut $\forsome b$\cr}etex, p2);
B_draw_no_box(3, btex\tmatten{\strut $b\in X\tsland F(a,b)$\cr}etex, p3);
B_draw_no_box(4, btex\tmatten{\strut $b\in X$\cr}etex, p4);
B_draw_no_box(5, btex\tmatten{\strut $F(a,b)$\cr}etex, p5);
B_draw_no_box(6, btex\tmatten{\strut $b$\cr}etex, p6);
B_draw_no_box(7, btex\tmatten{\strut $\smash{X}$\cr}etex, p7);
B_draw_no_box(8, btex\tmatten{\strut $a$\cr}etex, p8);
B_draw_no_box(9, btex\tmatten{\strut $b$\cr}etex, p9);

% Draw the arrows.
B_margset(0pt, 0pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(3,4,1);
B_arrow(3,5,1);
B_arrow(4,6,1);
B_arrow(4,7,1);
B_arrow(5,8,1);
B_arrow(5,9,1);

% Add some labels on the boxes.
B_box_point(p11)(1, 0, 1);      % Top of box 1.
B_box_point(p12)(6, 0, -1);     % Bottom of box 6.
p11 := p11 + (0,sp);
p12 := p12 + (0,-sp);
p13 := (xpart(p11),ypart(p12));

label.top(btex\strut parse tree etex, p11);
label.bot(btex\strut syntax etex, p13);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the function tree.
B_draw_no_box(21, btex\tmatten{\strut $\phi_{\forsome}$\cr}etex, p21);
B_draw_no_box(22, btex\tmatten{\strut $b$\cr}etex, p22);
B_draw_no_box(23, btex\tmatten{\strut $\phi_\land$\cr}etex, p23);
B_draw_no_box(24, btex\tmatten{\strut $\phi_\in$\cr}etex, p24);
B_draw_no_box(25, btex\tmatten{\strut $F$\cr}etex, p25);
B_draw_no_box(26, btex\tmatten{\strut $b$\cr}etex, p26);
B_draw_no_box(27, btex\tmatten{\strut $X$\cr}etex, p27);
B_draw_no_box(28, btex\tmatten{\strut $a$\cr}etex, p28);
B_draw_no_box(29, btex\tmatten{\strut $b$\cr}etex, p29);

% Draw the arrows.
B_margset(0pt, 0pt);
B_arrow(21,22,1);
B_arrow(21,23,1);
B_arrow(23,24,1);
B_arrow(23,25,1);
B_arrow(24,26,1);
B_arrow(24,27,1);
B_arrow(25,28,1);
B_arrow(25,29,1);

% Add some labels on the boxes.
B_box_point(p31)(21, 0, 1);     % Top of box 21.
B_box_point(p32)(26, 0, -1);    % Bottom of box 26.
p31 := p31 + (0,sp);
p32 := p32 + (0,-sp);
p33 := (xpart(p31),ypart(p32));

label.top(btex\strut function  tree etex, p31);
label.bot(btex\strut semantics etex, p33);

label.bot(btex\strut
 $\displaystyle\tval\bigl(\forsome b,(b\in X\tsland F(a,b))\bigr)=
 \max_b\,\phi_{\land}\bigl(\phi_{\in}(b,X),F(a,b)\bigr)$
 etex, 0.5[p13,p33]+(0,-spp));

endfig;
end
