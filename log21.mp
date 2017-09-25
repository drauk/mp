% tex/conc/mp/log21.mp   2012-7-12   Alan U. Kennington.
% $Id: tex/conc/mp/log21.mp 9a0c8e2bce 2012-07-11 14:14:50Z Alan U. Kennington $
% Abstract/concrete predicates, variables and propositions.

input boxmax.mp
verbatimtex
\input dgmpmax
\input akmath
\font\smallrm cmr8
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 3.25cm;
h1 := 2.6cm;
sp := 5.8pt;    % For 10-point text.
spp := 0pt;
penA := 0.5bp;

p1 := (0,0);
p2 := p1 + (0,h1);
p3 := p1 + (w1,0);
p4 := p3 + (0,h1);
p5 := p3 + (w1,0);
p6 := p5 + (0,h1);
p7 := p5 + (w1,0);
p8 := p7 + (0,h1);

pickup pencircle scaled penA;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(1, btex\tmatten{\strut\cr
 \strut $\emptyset$, $\{\emptyset\}$,\dots\cr
 \strut \cr}etex, p1);

B_draw(2, btex\tmatten{\strut\cr
 \strut $x$, $y$, $z$,\dots\cr
 \strut\cr}etex, p2);

B_draw(3, btex\tmatten{\strut\cr
 \strut``$\in$'',\dots\cr
 \strut\cr}etex, p3);

B_draw(4, btex\tmatten{\strut\cr
 \strut $P$, $Q$,\dots\cr
 \strut\cr}etex, p4);

B_draw(5, btex\tmatten{\strut\cr
 \strut $\emptyset\in\{\emptyset\}$,\dots\cr
 \strut\cr}etex, p5);

B_draw(6, btex\tmatten{\strut\cr
 \strut $P(x)$, $Q(y,z)$,\dots\cr
 \strut\cr}etex, p6);

B_draw(7, btex\tmatten{\strut\cr
 \strut\null\quad\valF\quad\valT\quad\null\cr
 \cr}etex, p7);

B_draw(8, btex\tmatten{\strut\cr
 \strut\null\quad\valF\quad\valT\quad\null\cr
 \strut\cr}etex, p8);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,1,1);
B_arrow(4,3,1);
B_arrow(6,5,1);
B_arrow(8,7,1);

B_arrowcol(1,3,1,black,evenly);
B_arrow(3,5,1);
B_arrow(5,7,1);

B_arrowcol(2,4,1,black,evenly);
B_arrow(4,6,1);
B_arrow(6,8,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the arrows.
B_box_point_m(p21)(1, 0, 1);
B_box_point_m(p22)(2, 0, -1);
p31 := 0.5[p21,p22];

B_box_point_m(p23)(3, 0, 1);
B_box_point_m(p24)(4, 0, -1);
p33 := 0.5[p23,p24];

B_box_point_m(p25)(5, 0, 1);
B_box_point_m(p26)(6, 0, -1);
p35 := 0.5[p25,p26];

B_box_point_m(p27)(7, 0, 1);
B_box_point_m(p28)(8, 0, -1);
p37 := 0.5[p27,p28];

label.lft(btex\strut $\Tvarnamemap$ etex, p31);
label.lft(btex\strut $\Tprednamemap$ etex, p33);
label.lft(btex\strut $\Tpropnamemap$ etex, p35);

B_box_point_m(p45)(5, 1, 0);
B_box_point_m(p47)(7, -1, 0);
p55 := 0.5[p45,p47];

B_box_point_m(p46)(6, 1, 0);
B_box_point_m(p48)(8, -1, 0);
p56 := 0.5[p46,p48];

label.bot(btex $\Tvalmap$ etex, p55);
label.bot(btex $\tval$ etex, p56);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the boxes.
B_box_point_m(p61)(1, 0, -1);
B_box_point_m(p71)(1, -1, 1);
B_box_point_m(p81)(1, -1, 0);

B_box_point_m(p62)(2, 0, 1);
B_box_point_m(p72)(2, -1, 1);
B_box_point_m(p82)(2, -1, 0);

B_box_point_m(p63)(3, 0, -1);
B_box_point_m(p73)(3, -1, 1);

B_box_point_m(p64)(4, 0, 1);
B_box_point_m(p74)(4, -1, 1);

B_box_point_m(p65)(5, 0, -1);
B_box_point_m(p75)(5, -1, 1);

B_box_point_m(p66)(6, 0, 1);
B_box_point_m(p76)(6, -1, 1);

B_box_point_m(p67)(7, 0, -1);
B_box_point_m(p77)(7, 1, 0);

B_box_point_m(p68)(8, 0, 1);
B_box_point_m(p78)(8, 1, 0);

label.bot(btex\strut variables etex, p61);
label.llft(btex $\Tvarspace$ etex, p71);
label.lft(btex\strut\smallrm concrete etex, p81);

label.top(btex\strut variable names etex, p62);
label.llft(btex $\Tvarnamespace$ etex, p72);
label.lft(btex\strut\smallrm abstract etex, p82);

label.bot(btex\strut predicates etex, p63);
label.llft(btex $\Tpredspace$ etex, p73);

label.top(btex\strut predicate names etex, p64);
label.llft(btex $\Tprednamespace$ etex, p74);

label.bot(btex\strut propositions etex, p65);
label.llft(btex $\Tpropspace$ etex, p75);

label.top(btex\strut proposition names etex, p66);
label.llft(btex $\Tpropnamespace$ etex, p76);

label.bot(btex\strut truth values etex, (xpart(p67),ypart(p65)));
label.rt(btex $\Tvalspace$ etex, p77);

label.top(btex\strut truth value names etex, (xpart(p68),ypart(p66)));
label.rt(btex $\Tvalspace$ etex, p78);

endfig;
end
