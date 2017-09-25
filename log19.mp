% tex/conc/mp/log19.mp   2013-3-28   Alan U. Kennington.
% $Id: tex/conc/mp/log19.mp c3c65b978a 2013-03-26 12:29:50Z Alan U. Kennington $
% Parsing a logical expression.

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

w1 := 0.8cm;
h1 := 1.0cm;
sp := 3pt;
spp := 20pt;
w2 := 4.5cm;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := p2 + (-w1,-h1);
p5 := p2 + (w1,-h1);
p6 := p5 + (0,-h1);

for i=1 upto 6:
    p[20+i] := p[i] + (w2, 0);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the parse tree.
B_draw_no_box(1, btex\tmatten{\strut $(A\land\lnot B)\lor C$\cr}etex, p1);
B_draw_no_box(2, btex\tmatten{\strut $A\land\lnot B$\cr}etex, p2);
B_draw_no_box(3, btex\tmatten{\strut $C$\cr}etex, p3);
B_draw_no_box(4, btex\tmatten{\strut $A$\cr}etex, p4);
B_draw_no_box(5, btex\tmatten{\strut $\lnot B$\cr}etex, p5);
B_draw_no_box(6, btex\tmatten{\strut $B$\cr}etex, p6);

% Draw the arrows.
B_margset(0pt, 0pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(2,4,1);
B_arrow(2,5,1);
B_arrow(5,6,1);

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
B_draw_no_box(21, btex\tmatten{\strut $\logop_{\lor}$\cr}etex, p21);
B_draw_no_box(22, btex\tmatten{\strut $\logop_{\land}$\cr}etex, p22);
B_draw_no_box(23, btex\tmatten{\strut $\tval(C)$\cr}etex, p23);
B_draw_no_box(24, btex\tmatten{\strut $\tval(A)$\cr}etex, p24);
B_draw_no_box(25, btex\tmatten{\strut $\logop_{\lnot}$\cr}etex, p25);
B_draw_no_box(26, btex\tmatten{\strut $\tval(B)$\cr}etex, p26);

% Draw the arrows.
B_margset(0pt, 0pt);
B_arrow(21,22,1);
B_arrow(21,23,1);
B_arrow(22,24,1);
B_arrow(22,25,1);
B_arrow(25,26,1);

% Add some labels on the boxes.
B_box_point(p31)(21, 0, 1);     % Top of box 21.
B_box_point(p32)(26, 0, -1);    % Bottom of box 26.
p31 := p31 + (0,sp);
p32 := p32 + (0,-sp);
p33 := (xpart(p31),ypart(p32));

label.top(btex\strut function  tree etex, p31);
label.bot(btex\strut semantics etex, p33);

label.bot(btex\strut
 $\tval\bigl((A\land\lnot B)\lor C\bigr)=\logop_{\lor}
 \bigl(\logop_{\land}(\tval(A),\logop_{\lnot}(\tval(B))),\tval(C)\bigr)$
 etex, 0.5[p13,p33]+(0,-spp));

endfig;
end
