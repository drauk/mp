% tex/conc/mp/log50.mp   2015-12-20   Alan U. Kennington.
% $Id: tex/conc/mp/log50.mp 40070b4114 2015-12-20 11:51:38Z Alan U. Kennington $
% The hierarchy of predicates/variables/propositions, formulas and names.

input boxmax.mp
verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[], q[];
numeric w[], h[], L[], M[];
path pat[];

w10 := 9.4cm;
h10 := 1.1cm;

dx := 4.0cm;
dy := 0.55cm;
spa := 13pt;        % Text spacing.
spc := 3pt;         % Gap for side labels.
spd := 2.4cm;       % Gap for layer-number labels.
spx := 3pt;         % For brackets.
spy := 6pt;
penLN := 0.5bp;
ratEXP := 0.38;

pickup pencircle scaled penLN;
p1 := (0,0);
p2 := p1 + (0,-h10-dy);
p3 := p2 + (0,-h10-dy);
p4 := p3 + (0,-h10-dy);
p5 := p4 + (0,-h10-dy);
p5 := p4 + (0,-h10-dy);

% Draw the big boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);
B_draw_box(4, w10, h10, p4);
B_draw_box(5, w10, h10, p5);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Locations of labels at left and right of the big boxes.
B_box_point(p31)(1, -1, 0);
B_box_point(p32)(2, -1, 0);
B_box_point(p33)(3, -1, 0);
B_box_point(p34)(4, -1, 0);
B_box_point(p35)(5, -1, 0);

B_box_point(p41)(1, 1, 0);
B_box_point(p42)(2, 1, 0);
B_box_point(p43)(3, 1, 0);
B_box_point(p44)(4, 1, 0);
B_box_point(p45)(5, 1, 0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_margset(2pt, 2pt);
% Divide up the horizontal space.
Ln := 4;
for i := 0 upto Ln-1:
    L[i] := (i+0.5)/Ln;
    endfor

M0 := 0;
M1 := 0.25;
M2 := 0.5;
M3 := 1;
L11 := 0.3[M0,M1];
L12 := 0.7[M0,M1];

L21 := (1/6)[M1,M2];
L22 := (3/6)[M1,M2];
L23 := (5/6)[M1,M2];

L31 := 0.3[M2,M3];
L32 := 0.7[M2,M3];

M4 := ratEXP[M0,M3];
M5 := (1-ratEXP)[M0,M3];

B_margset(0pt, 0pt);
B_box_point_m(q3)(5, M1[-1,1], 1);
B_box_point_m(q4)(5, M1[-1,1], -1);
B_box_point_m(q5)(5, M2[-1,1], 1);
B_box_point_m(q6)(5, M2[-1,1], -1);
B_box_point_m(q7)(5, -1, -1);
B_box_point_m(q8)(5, 1, -1);
pickup pencircle scaled penLN;
draw q3--q4;
draw q5--q6;
label.bot(btex predicates etex, 0.5[q7,q4]);
label.bot(btex variables etex, 0.5[q4,q6]);
label.bot(btex concrete propositions etex, 0.5[q6,q8]);

B_box_point_m(q21)(4, M1[-1,1], 1);
B_box_point_m(q22)(4, M1[-1,1], -1);
B_box_point_m(q23)(4, M2[-1,1], 1);
B_box_point_m(q24)(4, M2[-1,1], -1);
pickup pencircle scaled penLN;
draw q21--q22;
draw q23--q24;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some concrete predicates, variables and propositions.
B_margset(2pt, 2pt);
B_box_point(q1)(5, -1, 0);
B_box_point(q2)(5, 1, 0);
q11 := L11[q1,q2];
q12 := L12[q1,q2];

q13 := L21[q1,q2];
q14 := L22[q1,q2];
q15 := L23[q1,q2];

q16 := L31[q1,q2];
q17 := L32[q1,q2];

B_draw(101, btex\strut $q_1$ etex, q11);
B_draw(102, btex\strut $q_2$ etex, q12);

B_draw(103, btex\strut $v_1$ etex, q13);
B_draw(104, btex\strut $v_2$ etex, q14);
B_draw(105, btex\strut $v_3$ etex, q15);

B_draw(106, btex\strut $q_1(v_1,v_2)$ etex, q16);
B_draw(107, btex\strut $q_2(v_2,v_3)$ etex, q17);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Names of some concrete predicates, variables and propositions.
B_margset(2pt, 2pt);
B_box_point(q41)(4, -1, 0);
B_box_point(q42)(4, 1, 0);
q43 := L11[q41,q42];
q44 := L12[q41,q42];

q45 := L21[q41,q42];
q46 := L22[q41,q42];
q47 := L23[q41,q42];

q48 := L31[q41,q42];
q49 := L32[q41,q42];

B_draw(111, btex\strut $\in$ etex, q43);
B_draw(112, btex\strut $=$ etex, q44);

B_draw(113, btex\strut $x$ etex, q45);
B_draw(114, btex\strut $y$ etex, q46);
B_draw(115, btex\strut $z$ etex, q47);

B_draw(116, btex\strut $x\in y$ etex, q48);
B_draw(117, btex\strut $y=z$ etex, q49);

% The name map arrows with labels.
B_arrow(111, 101, 1);
B_arrow(112, 102, 1);
B_arrow(113, 103, 1);
B_arrow(114, 104, 1);
B_arrow(115, 105, 1);
B_arrow(116, 106, 1);
B_arrow(117, 107, 1);

label.rt(btex $\Tprednamemap$ etex, 0.5[q11,q43]);
label.rt(btex $\Tvarnamemap$ etex, 0.5[q13,q45]);
label.rt(btex $\Tpropnamemap$ etex, 0.5[q16,q48]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Logical expressions.
B_box_point(q31)(3, -1, 0);
B_box_point(q32)(3, 1, 0);
q33 := M4[q31,q32];
q34 := M5[q31,q32];
B_draw(121, btex\strut $\forall x,\,x\in y$ etex, q33);
B_draw(122, btex\strut $\forsome z,\,y=z$ etex, q34);

B_margset(1pt, 1pt);
B_arrow(121, 111, 1);
B_arrow(121, 113, 1);
B_arrow(121, 114, 1);
B_arrow(121, 116, 1);

B_arrow(122, 112, 1);
B_arrow(122, 114, 1);
B_arrow(122, 115, 1);
B_arrow(122, 117, 1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some proposition form letters.
B_margset(2pt, 2pt);
B_box_point(p80)(2, -1, 0);
B_box_point(p81)(2, 1, 0);
p82 := M4[p80,p81];
p83 := M5[p80,p81];

B_draw(41, btex \strut $\alpha(y)$ etex, p82);
B_draw(42, btex \strut $\beta(y)$ etex, p83);

B_arrow(41, 121, 1);
B_arrow(42, 122, 1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some proposition form letter forms.
B_box_point(p90)(1, -1, 0);
B_box_point(p91)(1, 1, 0);
p92 := 0.5[p90,p91];

B_draw(51, btex\strut $\forall y,\,\alpha(y)\implies\beta(y)$ etex, p92);

B_arrow(51, 41, 1);
B_arrow(51, 42, 1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.lft(btex \tmattenR{compounds\cr of logical\cr expressions\cr} etex,
 p31+(-spc,0));
label.lft(btex \tmattenR{logical\cr expression\cr names\cr} etex, p32+(-spc,0));
label.lft(btex \tmattenR{logical\cr expressions\cr} etex, p33+(-spc,0));
label.lft(btex \tmattenR{concrete\cr object\cr names\cr} etex, p34+(-spc,0));
label.lft(btex \tmattenR{concrete\cr objects\cr} etex, p35+(-spc,0));

label.rt(btex\strut $5$ etex, p41+(spc,0));
label.rt(btex\strut $4$ etex, p42+(spc,0));
label.rt(btex\strut $3$ etex, p43+(spc,0));
label.rt(btex\strut $2$ etex, p44+(spc,0));
label.rt(btex\strut $1$ etex, p45+(spc,0));

% Put some brackets around the numbers.
spz := spc+10pt;
pickup pencircle scaled penLN;
draw (p41+(spz,spy))--(p41+(spz+spx,spy))
 --(p42+(spz+spx,-spy))--(p42+(spz,-spy));
draw (0.5[p41,p42]+(spz+spx,0))--(0.5[p41,p42]+(spz+2spx,0));

pickup pencircle scaled penLN;
draw (p43+(spz,spy))--(p43+(spz+spx,spy))
 --(p44+(spz+spx,-spy))--(p44+(spz,-spy));
draw (0.5[p43,p44]+(spz+spx,0))--(0.5[p43,p44]+(spz+2spx,0));

pickup pencircle scaled penLN;
draw (p45+(spz,spy))--(p45+(spz+spx,spy))
 --(p45+(spz+spx,-spy))--(p45+(spz,-spy));
draw (p45+(spz+spx,0))--(p45+(spz+2spx,0));

label.rt(btex\strut for etex, 0.5[p41,p42]+(spz+3spx,1.5spa));
label.rt(btex\strut axioms, etex, 0.5[p41,p42]+(spz+3spx,0.5spa));
label.rt(btex\strut rules and etex, 0.5[p41,p42]+(spz+3spx,-0.5spa));
label.rt(btex\strut theorems etex, 0.5[p41,p42]+(spz+3spx,-1.5spa));

label.rt(btex\strut predicate etex, 0.5[p43,p44]+(spz+3spx,0.5spa));
label.rt(btex\strut language etex, 0.5[p43,p44]+(spz+3spx,-0.5spa));

label.rt(btex\strut semantics etex, p45+(spz+3spx,0));

endfig;
end
