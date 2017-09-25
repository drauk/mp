% tex/conc/mp/log44.mp   2013-5-4   Alan U. Kennington.
% $Id: tex/conc/mp/log44.mp ddcbaf49fc 2013-05-03 18:38:19Z Alan U. Kennington $
% Representations of a logical expression.

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

w1 := 0.8cm;
h1 := 0.95cm;

w2 := 3.5cm;
w3 := 2.6cm;
spL := 13pt;
spM := 23pt;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p7 := p2 + (0,-h1);
p4 := p7 + (-w1,-h1);
p5 := p7 + (w1,-h1);
p6 := p5 + (0,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the syntax tree.
B_draw_no_box(1, btex $\strut\imprel$ etex, p1);
B_draw_no_box(2, btex $\strut\lnot$ etex, p2);
B_draw_no_box(3, btex $\strut p_3$ etex, p3);
B_draw_no_box(4, btex $\strut p_1$ etex, p4);
B_draw_no_box(5, btex $\strut\lnot$ etex, p5);
B_draw_no_box(6, btex $\strut p_2$ etex, p6);
B_draw_no_box(7, btex $\strut\lor$ etex, p7);

% Draw the arrows.
B_margset(0pt, 0pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(2,7,1);
B_arrow(7,4,1);
B_arrow(7,5,1);
B_arrow(5,6,1);

B_box_point(p11)(1, 0, 1);      % Top of box 1.
p11 := p11 + (0,spL/2);
label(btex\strut syntax tree etex, p11);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Textual logical expressions.
p20 := p11 + (w2,0);
p21 := p20 + (0,-spL);
p22 := p21 + (0,-spM);
p23 := p22 + (0,-spL);
p24 := p23 + (0,-spM);
p25 := p24 + (0,-spL);
p26 := p25 + (0,-spM);
p27 := p26 + (0,-spL);
p28 := p27 + (0,-spM);
p29 := p28 + (0,-spL);

label(btex\strut postfix expression etex, p20);
label(btex\strut $p_1\;p_2\;\lnot\;\lor\;\lnot\;p_3\,\imprel$ etex, p21);

label(btex\strut prefix expression etex, p22);
label(btex\strut $\imprel\,\lnot\;\lor\;p_1\;\lnot\;p_2\;p_3$ etex, p23);

label(btex\strut infix expression etex, p24);
label(btex\strut $((\lnot(p_1\lor(\lnot p_2)))\implies p_3)$ etex, p25);

label(btex\strut abbreviated infix etex, p26);
label(btex\strut $\lnot(p_1\lor\lnot p_2)\implies p_3$ etex, p27);

label(btex\strut functional expression etex, p28);
label(btex\strut $f_2(\hboxqm{\imprel},f_1(\hboxqm{\lnot},f_2(\hboxqm{\lor},
\hboxqm{p_1},f_1(\hboxqm{\lnot},\hboxqm{p_2}))),\hboxqm{p_3})$ etex, p29);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Logical expression table.

% Logical expression table parameters.
ddA := 25pt;                % Width for individual propositions.
ddB := 25pt;                % Width for compound proposition.
ddC := 13pt;                % Height for propositions.
ddD := 14.5pt;              % Height for each letter in the table.
ddE := ddD * 7;             % Height of lower part of the table.
ddF := ddA * 2 + ddB;       % Full width of table.
ddG := -2pt;                % Vertical adjustment to cell-letters.
ddH := 0.5ddB-6pt;

p32 := p20 + (w3,0);        % Top label.
p30 := p32 + (0,-ddD-8pt);  % Top left point of table.
p31 := p30 + (0,ddG);

% Horizontal lines.
draw (p30+(0,0))--(p30+(ddF,0));
draw (p30+(0,-ddE))--(p30+(ddF,-ddE));

% Vertical lines.
draw (p30+(ddA,ddC))--(p30+(ddA,-ddE));
draw (p30+(2ddA,ddC))--(p30+(2ddA,-ddE));

label.top(btex\strut node etex, p30+(0.5ddA,0));
label.top(btex\strut op etex, p30+(1.5ddA,0));
label.top(btex\strut args etex, p30+(2ddA+0.5ddB,0));

label.top(btex\strut $0$ etex, p31+(0.5ddA,-ddD));
label.top(btex\strut $1$ etex, p31+(0.5ddA,-2ddD));
label.top(btex\strut $2$ etex, p31+(0.5ddA,-3ddD));
label.top(btex\strut $3$ etex, p31+(0.5ddA,-4ddD));
label.top(btex\strut $4$ etex, p31+(0.5ddA,-5ddD));
label.top(btex\strut $5$ etex, p31+(0.5ddA,-6ddD));
label.top(btex\strut $6$ etex, p31+(0.5ddA,-7ddD));

label.top(btex\strut $\imprel$ etex, p31+(1.5ddA,-ddD));
label.top(btex\strut $\lnot$ etex, p31+(1.5ddA,-2ddD));
label.top(btex\strut $\lor$ etex, p31+(1.5ddA,-3ddD));
label.top(btex\strut $p_1$ etex, p31+(1.5ddA,-4ddD));
label.top(btex\strut $\lnot$ etex, p31+(1.5ddA,-5ddD));
label.top(btex\strut $p_2$ etex, p31+(1.5ddA,-6ddD));
label.top(btex\strut $p_3$ etex, p31+(1.5ddA,-7ddD));

label.top(btex\strut 1\rlap{, 6} etex, p31+(2ddA+ddH,-ddD));
label.top(btex\strut 2 etex, p31+(2ddA+ddH,-2ddD));
label.top(btex\strut 3\rlap{, 4} etex, p31+(2ddA+ddH,-3ddD));
label.top(btex\strut 5 etex, p31+(2ddA+ddH,-5ddD));

label(btex\strut data structure etex, (xpart(p30+(ddF/2,0)),ypart(p32)));

endfig;
end
