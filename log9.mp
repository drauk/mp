% tex/conc/mp/log9.mp   2013-4-6   Alan U. Kennington.
% $Id: tex/conc/mp/log9.mp 0994a947fa 2013-04-06 05:14:00Z Alan U. Kennington $
% The hierarchy of propositions, formulas and names.

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
numeric w[], h[], L[];
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

pickup pencircle scaled penLN;
p1 := (0,0);
p2 := p1 + (0,-h10-dy);
p3 := p2 + (0,-h10-dy);
p4 := p3 + (0,-h10-dy);
p5 := p4 + (0,-h10-dy);
p5 := p4 + (0,-h10-dy);

% Draw the boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);
B_draw_box(4, w10, h10, p4);
B_draw_box(5, w10, h10, p5);

% Draw the arrows.
B_margset(0pt, 0pt);
B_arrow(1,2,0);
B_arrow(2,3,0);
B_arrow(3,4,0);
B_arrow(4,5,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add labels.
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
B_margset(1pt, 1pt);
% Divide up the horizontal space.
Ln := 4;
for i := 0 upto Ln-1:
    L[i] := (i+0.5)/Ln;
    endfor

% Some statements.
B_box_point(p50)(5, -1, 0);
B_box_point(p51)(5, 1, 0);
p52 := L0[p50,p51];
p53 := L1[p50,p51];
p54 := L2[p50,p51];
p55 := L3[p50,p51];

B_draw(11, btex proposition 1 etex, p52);
B_draw(12, btex proposition 2 etex, p53);
B_draw(13, btex proposition 3 etex, p54);
B_draw(14, btex proposition 4 etex, p55);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some proposition letters.
B_box_point(p60)(4, -1, 0);
B_box_point(p61)(4, 1, 0);
p62 := L0[p60,p61];
p63 := L1[p60,p61];
p64 := L2[p60,p61];
p65 := L3[p60,p61];

B_draw(21, btex \strut $A$ etex, p62);
B_draw(22, btex \strut $B$ etex, p63);
B_draw(23, btex \strut $C$ etex, p64);
B_draw(24, btex \strut $D$ etex, p65);

B_arrow(21, 11, 1);
B_arrow(22, 12, 1);
B_arrow(23, 13, 1);
B_arrowcol(24, 14, 1, black, evenly);
B_arrowcol(24, 13, 1, black, evenly);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some proposition forms.
B_box_point(p70)(3, -1, 0);
B_box_point(p71)(3, 1, 0);
p72 := L0[p70,p71];
p73 := L1[p70,p71];
p74 := L2[p70,p71];
p75 := L3[p70,p71];

B_draw(31, btex \strut $A\tsland B$ etex, p72);
B_draw(32, btex \strut $A\tsland(B\tslor C)$ etex, p73);
B_draw(33, btex \strut $B\tslor C$ etex, p74);
B_draw(34, btex \strut $\lnot C$ etex, p75);

B_arrow(31, 21, 1);
B_arrow(31, 22, 1);

B_arrow(32, 21, 1);
B_arrow(32, 22, 1);
B_arrow(32, 23, 1);

B_arrow(33, 23, 1);
B_arrow(33, 22, 1);

B_arrow(34, 23, 1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some proposition form letters.
B_box_point(p80)(2, -1, 0);
B_box_point(p81)(2, 1, 0);
p82 := L0[p80,p81];
p83 := L1[p80,p81];
p84 := L2[p80,p81];
p85 := L3[p80,p81];

B_draw(41, btex \strut $\alpha$ etex, p82);
B_draw(42, btex \strut $\beta$ etex, p83);
B_draw(43, btex \strut $\gamma$ etex, p84);
B_draw(44, btex \strut $\delta$ etex, p85);

B_arrow(41, 31, 1);
B_arrow(42, 32, 1);
B_arrow(43, 33, 1);
B_arrow(44, 34, 1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some proposition form letter forms.
B_box_point(p90)(1, -1, 0);
B_box_point(p91)(1, 1, 0);
p92 := L0[p90,p91];
p93 := L1[p90,p91];
p94 := L2[p90,p91];
p95 := L3[p90,p91];

B_draw(51, btex \strut $\alpha\implies\beta$ etex, p92);
B_draw(52, btex \strut $\beta\implies\gamma$ etex, p93);
B_draw(53, btex \strut $\gamma\tslor\delta$ etex, p94);
B_draw(54, btex \strut $\lnot\delta$ etex, p95);

B_arrow(51, 41, 1);
B_arrow(51, 42, 1);
B_arrow(52, 42, 1);
B_arrow(52, 43, 1);
B_arrow(53, 43, 1);
B_arrow(53, 44, 1);
B_arrow(54, 44, 1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

label.lft(btex \tmattenR{compounds\cr of logical\cr expressions\cr} etex,
 p31+(-spc,0));
label.lft(btex \tmattenR{logical\cr expression\cr names\cr} etex, p32+(-spc,0));
label.lft(btex \tmattenR{logical\cr expressions\cr} etex, p33+(-spc,0));
label.lft(btex \tmattenR{proposition\cr names\cr} etex, p34+(-spc,0));
label.lft(btex \tmattenR{concrete\cr propositions\cr} etex, p35+(-spc,0));

% label.rt(btex \tmattenL{compound\cr logical\cr expressions\cr} etex,
% p41+(spc,0));
% label.rt(btex \tmattenL{logical\cr expression\cr names\cr} etex, p42+(spc,0));
% label.rt(btex \tmattenL{logical\cr expressions\cr} etex, p43+(spc,0));
% label.rt(btex \tmattenL{proposition\cr names\cr} etex, p44+(spc,0));
% label.rt(btex \tmattenL{concrete\cr propositions\cr} etex, p45+(spc,0));

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

label.rt(btex\strut meta- etex, 0.5[p41,p42]+(spz+3spx,0.5spa));
label.rt(btex\strut mathematics etex, 0.5[p41,p42]+(spz+3spx,-0.5spa));
label.rt(btex\strut propositional etex, 0.5[p43,p44]+(spz+3spx,0.5spa));
label.rt(btex\strut calculus etex, 0.5[p43,p44]+(spz+3spx,-0.5spa));
label.rt(btex\strut semantics etex, p45+(spz+3spx,0));

% setbounds currentpicture to pat1;

endfig;
end
