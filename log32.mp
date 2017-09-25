% tex/conc/mp/log32.mp   2013-4-15   Alan U. Kennington.
% $Id: tex/conc/mp/log32.mp a34be18c76 2013-04-15 08:07:36Z Alan U. Kennington $
% Classes and objects in multiple machines. Unbounded class nesting depth.

input boxmax.mp

verbatimtex
\input dgmpmax
\input akmath
\input dgspell
\font\smallrm cmr5
etex

% Trace the box numbers.
% B_trace_box_numbers := 1;

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat[];

bbm_save := bboxmargin;

w11 := 40pt;        % Classes dimensions.
h11 := 14pt;

w12 := 0.30cm;      % Left/bottom margins.
h12 := 0.30cm;

w13 := w12;         % Right/top margins.
h13 := h12;

h14 := 10pt;        % Space between the boxes.

w15 := w11;         % Objects dimensions.
h15 := 40pt;

w10 := w12 + w11 + w13;
h10 := h12 + h15 + h14 + h11 + h13;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Second-order dimensions.
qq := 0.5;
w21 := w11 * qq;
h21 := h11 * qq;

h24 := h14 * qq + 4pt;

w25 := w15 * qq;
h25 := h15 * qq;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Third-order dimensions.
qqqq := 0.45;
w31 := w21 * qqqq;
h31 := h21 * qqqq;

h34 := h24 * qqqq + 1pt;

w35 := w25 * qqqq;
h35 := h25 * qqqq;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Fourth-order dimensions. This assumes bboxmargin := 0pt.
qqqqq := 0.7;
w41 := w31 * qqqqq;
h41 := h31 * qqqqq + 1pt;

h44 := h34 * qqqqq - 2pt;

w45 := w35 * qqqqq;
h45 := h35 * qqqqq;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% System dimensions.
qqq := 1.5;
w5 := w15 * qqq;
h5 := h15 * qqq;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
dx := 1.0cm;        % Box spacing.
ddx := 0.5cm;       % Extra box spacing.
spa := 10pt;        % Text spacing.

np := 6;            % Number of core propositions.
rp := 4pt;          % Diameter of core propositions.
yp := 0.17h10;      % Vertical offset of core propositions.
xp := 0.4w10;       % Half-width of set of core propositions.

p1 := (0,0);
p0 := p1 + (-(w10+w5)/2-dx,0);
p2 := p1 + (w10+dx,0);
p3 := p2 + (w10+dx+ddx,0);
p4 := p3 + (w10+dx,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_margset(1.5pt, 1.5pt);

B_draw_box(0, w5, h5, p0);
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);
B_draw_box(4, w10, h10, p4);

B_box_point_m(p11)(1, 0, -1);
B_box_point_m(p12)(1, 0, 1);
B_box_point_m(p13)(2, 0, -1);
B_box_point_m(p14)(2, 0, 1);
B_box_point_m(p15)(3, 0, -1);
B_box_point_m(p16)(3, 0, 1);
B_box_point_m(p17)(4, 0, -1);
B_box_point_m(p18)(4, 0, 1);

p5 := p11 + (0,h12 + 0.5h15);
p6 := p13 + (0,h12 + 0.5h15);
p7 := p12 + (0,-h13 - 0.5h11);
p8 := p14 + (0,-h13 - 0.5h11);
B_draw_box(5, w11, h15, p5);    % Objects.
B_draw_box(6, w11, h15, p6);    % Objects.
B_draw_box(7, w11, h11, p7);    % Classes.
B_draw_box(8, w11, h11, p8);    % Classes.

p75 := p15 + (0,h12 + 0.5h15);
p76 := p17 + (0,h12 + 0.5h15);
p77 := p16 + (0,-h13 - 0.5h11);
p78 := p18 + (0,-h13 - 0.5h11);
B_draw_box(25, w11, h15, p75);      % Objects.
B_draw_box(26, w11, h15, p76);      % Objects.
B_draw_box(27, w11, h11, p77);      % Classes.
B_draw_box(28, w11, h11, p78);      % Classes.

ddy := (h25 + h24 + h21)/2;
p41 := p6 + (0, -ddy + h25/2);      % Second order.
p42 := p6 + (0, ddy - h21/2);
p43 := p75 + (0, -ddy + h25/2);
p44 := p75 + (0, ddy - h21/2);
p45 := p76 + (0, -ddy + h25/2);
p46 := p76 + (0, ddy - h21/2);

dddy := (h35 + h34 + h31)/2;
p47 := p45 + (0, -dddy + h35/2);     % Third order.
p48 := p45 + (0, dddy - h31/2);
p49 := p43 + (0, -dddy + h35/2);
p50 := p43 + (0, dddy - h31/2);

ddddy := (h45 + h44 + h41)/2;
p51 := p47 + (0, -ddddy + h45/2);    % Fourth order.
p52 := p47 + (0, ddddy - h41/2);

B_draw_box(10, w25, h25, p41);
B_draw_box(11, w21, h21, p42);
B_draw_box(12, w25, h25, p43);
B_draw_box(13, w21, h21, p44);
B_draw_box(14, w25, h25, p45);
B_draw_box(15, w21, h21, p46);

B_draw_box(16, w35, h35, p47);
B_draw_box(17, w31, h31, p48);
B_draw_box(18, w35, h35, p49);
B_draw_box(19, w31, h31, p50);

bboxmargin := 0pt;
B_draw_box(20, w45, h45, p51);
B_draw_box(21, w41, h41, p52);
bboxmargin := bbm_save;

label(btex objects etex, p0);
label(btex objects etex, p5);
label(btex\smallrm objects etex, p41);
label(btex\smallrm classes etex, p42);
% label(btex\smallrm objects etex, p43);
label(btex\smallrm classes etex, p44);
% label(btex\smallrm objects etex, p45);
label(btex\smallrm classes etex, p46);
% label(btex\smallrm .... etex, p47);
label(btex\smallrm .... etex, p48);
label(btex\smallrm .... etex, p49);
label(btex\smallrm .... etex, p50);
label(btex\smallrm .. etex, p51);
label(btex\smallrm .. etex, p52);
label(btex\strut classes etex, p7);
label(btex\strut classes etex, p8);
label(btex\strut classes etex, p77);
label(btex\strut classes etex, p78);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw some arrows.
B_arrow(7,5,1);
B_arrow(8,6,1);
B_arrow(11,10,1);
B_arrow(13,12,1);
B_arrow(15,14,1);
B_arrow(27,25,1);
B_arrow(28,26,1);

B_box_point_m(p54)(5, 1, 0);
B_box_point_m(p55)(7, 1, 0);
B_box_point_m(p56)(10, -1, 0);
B_box_point_m(p57)(11, -1, 0);
B_box_point_m(p58)(1, 1, 0);
B_box_point_m(p59)(6, -1, 0.3);
drawarrow p56--p54 dashed evenly scaled 0.5;
drawarrow p57--p55 dashed evenly scaled 0.5;
drawarrow p59--p58;

B_box_point_m(p80)(12, 1, 0);
B_box_point_m(p81)(13, 1, 0);
B_box_point_m(p82)(16, -1, 0);
B_box_point_m(p83)(17, -1, 0);

B_box_point_m(p84)(25, 1, 0.065);
B_box_point_m(p85)(27, 1, 0);
B_box_point_m(p86)(14, -1, 0.2);
B_box_point_m(p87)(15, -1, 0);
B_box_point_m(p88)(3, 1, 0.1);
B_box_point_m(p89)(26, -1, 0.4);
drawarrow p82--p80 dashed evenly scaled 0.5;
drawarrow p83--p81 dashed evenly scaled 0.5;
drawarrow p86--p84 dashed evenly scaled 0.5;
drawarrow p87--p85 dashed evenly scaled 0.5;
drawarrow p89--p88;

B_box_point_m(p64)(0, 1, 0);
B_box_point_m(p66)(5, -1, 0);
drawarrow p66--p64;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add labels.
B_box_point(p20)(0, 0, 1);
B_box_point(p21)(1, 0, 1);
B_box_point(p22)(2, 0, 1);
B_box_point(p23)(3, 0, 1);
B_box_point(p24)(4, 0, 1);

B_box_point_m(p30)(0, 0, -1);
B_box_point_m(p31)(1, 0, -1);
B_box_point_m(p32)(2, 0, -1);
B_box_point_m(p33)(3, 0, -1);
B_box_point_m(p34)(4, 0, -1);

label.top(btex \strut \modell/ed etex, p20+(0,spa));
label.top(btex \strut system etex, p20);
label.top(btex \strut model etex, p21);
label.top(btex \strut meta-model etex, p22);
label.top(btex \strut meta${}^{n-1}$-model etex, p23);
label.top(btex \strut meta${}^n$-model etex, p24);

label.bot(btex \strut machine $M_0$ etex, p30);
% label.bot(btex \strut (projected) etex, p30+(0,-spa));
label.bot(btex \strut machine $M_1$ etex, p31);
label.bot(btex \strut machine $M_2$ etex, p32);
label.bot(btex \strut machine $M_n$ etex, p33);
label.bot(btex \strut machine $M_{n+1}$ etex, p34);

% Dot, dot, dot.
B_box_point_m(p90)(2, 0, 1);
B_box_point_m(p91)(3, 0, -1);
% label(btex \dots etex, 0.5[p90,p91]);
label(btex . . . . etex, 0.5[p90,p91]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Shrink the recursive system, package it, and model it.
currentpicture := currentpicture scaled 0.72;
pickup pencircle scaled 0.8pt;
bboxmargin := 4pt;
draw bbox currentpicture withcolor 0.5white;
pickup pencircle scaled 0.4pt;

p100 := ulcorner currentpicture;
p101 := urcorner currentpicture;
p102 := llcorner currentpicture;
p103 := lrcorner currentpicture;

bboxmargin := bbm_save;

label.top(btex inductive system \modell/ed by $M_\omega$ etex, 0.5[p100,p101]);

p104 := 0.5[p101,p103];
p105 := p104 + (dx + w10/2, 0);

B_draw_box(30, w10, h10, p105);

B_box_point_m(p110)(30, 0, -1);
B_box_point_m(p111)(30, 0, 1);

p112 := p110 + (0,h12 + 0.5h15);
p113 := p111 + (0,-h13 - 0.5h11);
B_draw_box(31, w11, h15, p112);    % Objects.
B_draw_box(32, w11, h11, p113);    % Classes.

label(btex objects etex, p112);
label(btex classes etex, p113);

B_box_point_m(p114)(31, -1, 0);
B_box_point_m(p115)(30, 0, 1);
B_box_point_m(p116)(30, 0, -1);
drawarrow p114--(p104+(1.5pt,0));
B_arrow(32,31,1);

label.top(btex meta${}^\omega$-model etex, p115);
label.bot(btex machine $M_\omega$ etex, p116);

endfig;
end
