% tex/conc/mp/tree67.mp   2014-11-18   Alan U. Kennington.
% $Id: tex/conc/mp/tree67.mp 8fd8caa1cc 2014-11-18 11:47:57Z Alan U. Kennington $
% Family tree of topology separation classes. Adapted from tree50.mp.

input boxmax.mp

verbatimtex
\input akmath
\input dgspell
\input dgmpmax
\font\smc cmcsc10
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

h0 := 0.12cm;
h1 := 1.12cm;
h2 := 0.95cm;
h3 := 12pt;

w0 := -7.8cm;
w1 := 3.6cm;
w2 := 0.5cm;
w3 := w2 + h0;
w4 := 1.07cm;
spc := 9pt;

%==============================================================================
p0 := (0,0);                % T -1
p1 := p0 + (0, -h2);        % T 0
p2 := p1 + (0, -h1);        % T 1
p3 := p2 + (0, -h1);        % T 2
p4 := p3 + (0, -h1);        % T 3
p5 := p4 + (0, -h1);        % T 3.5
p6 := p5 + (0, -h1);        % T 4
p7 := p6 + (0, -h1);        % T 5
p8 := p7 + (0, -h1);        % T 6

p10 := p4 + (w1, 0);        % T 0 + 3
p11 := p5 + (w1, 0);        % T 1 + 3.5
p12 := p6 + (w1, 0);        % T 1 + 4
p13 := p7 + (w1, 0);        % T 1 + 5
p14 := p8 + (w1, 0);        % T 1 + 6
p15 := p14 + (0, -h1+spc/2); % metrisable
p16 := p15 + (-w1/2,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(0,
 btex \tmatseven{\vphantom{fy}topological space\cr} etex, p0);

B_draw(1, btex
 \tmatseven{$\scriptstyle\tc_0$\cr Kolmogorov space\cr} etex, p1);

B_draw(2, btex
 \tmatseven{$\scriptstyle\tc_1$\cr Kuratowski space\cr} etex, p2);

B_draw(3, btex
 \tmatseven{$\scriptstyle\tc_2$\cr Hausdorff space\cr} etex, p3);

B_draw(4, btex
 \tmatseven{$\scriptstyle\tc_3$\cr Vietoris axiom\cr} etex, p4);

B_draw(5, btex
 \tmatseven{$\scriptstyle\tc_{3{1\over2}}$\cr Tikhonov axiom\cr} etex, p5);

B_draw(6, btex
 \tmatseven{$\scriptstyle\tc_4$\cr Tietze's first axiom\cr} etex, p6);

B_draw(7, btex
 \tmatseven{$\scriptstyle\tc_5$\cr Tietze's second axiom\cr} etex, p7);

B_draw(8, btex
 \tmatseven{$\scriptstyle\tc_6$\cr Vedenisov axiom\cr} etex, p8);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(10, btex
 \tmatseven{$\scriptstyle\tc_0+\tc_3$\cr regular space\cr} etex, p10);

B_draw(11, btex
 \tmatseven{$\scriptstyle\tc_1+\tc_{3{1\over2}}$\cr
 completely regular space\cr} etex, p11);

B_draw(12, btex
 \tmatseven{$\scriptstyle\tc_1+\tc_4$\cr normal space\cr} etex, p12);

B_draw(13, btex
 \tmatseven{$\scriptstyle\tc_1+\tc_5$\cr completely normal space\cr} etex, p13);

B_draw(14, btex
 \tmatseven{$\scriptstyle\tc_1+\tc_6$\cr perfectly normal space\cr} etex, p14);

B_draw(15, btex
 \tmatseven{\metris/able space\cr} etex, p15);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(1.5pt, 1.5pt);

B_arrow(0, 1, 1);
B_arrow(1, 2, 1);
B_arrow(2, 3, 1);
% B_arrow(3, 4, 1);
B_arrow(4, 5, 1);
B_arrow(6, 7, 1);
B_arrow(7, 8, 1);

B_arrow(3, 10, 1);
B_arrow(4, 10, 1);
% B_arrow(2, 11, 1);
B_arrow(5, 11, 1);
B_arrow(10, 11, 1);
% B_arrow(5, 12, 1);
B_arrow(11, 12, 1);
B_arrow(6, 12, 1);
B_arrow(12, 13, 1);
B_arrow(7, 13, 1);
B_arrow(13, 14, 1);
B_arrow(8, 14, 1);
B_arrow(14, 15, 1);

label.rt(btex \smc ac etex, 0.5[p11,p12]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Short-cut arrows on the left.
B_box_point_m(p28)(0, -1, 0);
p22 := p28 + (0,-h0/2);
p23 := p28 + (0,h0/2);
B_box_point_m(p24)(4, -1, 0);
B_box_point_m(p25)(6, -1, 0);
p26 := p22+(-w2,0);
p27 := p23+(-w3,0);
drawarrow p22--p26--(xpart(p26),ypart(p24))--p24;
drawarrow p23--p27--(xpart(p27),ypart(p25))--p25;

B_box_point_m(p40)(5, -1, 0);
B_box_point_m(p41)(8, -1, 0);
p42 := (xpart(p26), ypart(p40));
drawarrow p40--p42--(xpart(p42),ypart(p41))--p41;

label.bot(btex ZF+AC set theory etex, p16+(0,-h3));

%==============================================================================
p0 := (w0,0);              % T -1
p1 := p0 + (0, -h2);        % T 0
p2 := p1 + (0, -h1);        % T 1
p3 := p2 + (0, -h1);        % T 2
p4 := p3 + (0, -h1);        % T 3
p5 := p4 + (0, -h1);        % T 3.5
p6 := p5 + (0, -h1);        % T 4
p7 := p6 + (0, -h1);        % T 5
p8 := p7 + (0, -h1);        % T 6

p10 := p4 + (w1, 0);        % T 0 + 3
p11 := p5 + (w1, 0);        % T 1 + 3.5
p12 := p6 + (w1, 0);        % T 1 + 4
p13 := p7 + (w1, 0);        % T 1 + 5
p14 := p8 + (w1, 0);        % T 1 + 6
p15 := p14 + (0, -h1+spc/2); % metrisable
p16 := p15 + (-w1/2,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(0,
 btex \tmatseven{\vphantom{fy}topological space\cr} etex, p0);

B_draw(1, btex
 \tmatseven{$\scriptstyle\tc_0$\cr Kolmogorov space\cr} etex, p1);

B_draw(2, btex
 \tmatseven{$\scriptstyle\tc_1$\cr Kuratowski space\cr} etex, p2);

B_draw(3, btex
 \tmatseven{$\scriptstyle\tc_2$\cr Hausdorff space\cr} etex, p3);

B_draw(4, btex
 \tmatseven{$\scriptstyle\tc_3$\cr Vietoris axiom\cr} etex, p4);

B_draw(5, btex
 \tmatseven{$\scriptstyle\tc_{3{1\over2}}$\cr Tikhonov axiom\cr} etex, p5);

B_draw(6, btex
 \tmatseven{$\scriptstyle\tc_4$\cr Tietze's first axiom\cr} etex, p6);

B_draw(7, btex
 \tmatseven{$\scriptstyle\tc_5$\cr Tietze's second axiom\cr} etex, p7);

B_draw(8, btex
 \tmatseven{$\scriptstyle\tc_6$\cr Vedenisov axiom\cr} etex, p8);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(10, btex
 \tmatseven{$\scriptstyle\tc_0+\tc_3$\cr regular space\cr} etex, p10);

B_draw(11, btex
 \tmatseven{$\scriptstyle\tc_1+\tc_{3{1\over2}}$\cr
 completely regular space\cr} etex, p11);

B_draw(12, btex
 \tmatseven{$\scriptstyle\tc_1+\tc_4$\cr normal space\cr} etex, p12);

B_draw(13, btex
 \tmatseven{$\scriptstyle\tc_1+\tc_5$\cr completely normal space\cr} etex, p13);

B_draw(14, btex
 \tmatseven{$\scriptstyle\tc_1+\tc_6$\cr perfectly normal space\cr} etex, p14);

B_draw(15, btex
 \tmatseven{\metris/able space\cr} etex, p15);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(1.5pt, 1.5pt);

B_arrow(0, 1, 1);
B_arrow(1, 2, 1);
B_arrow(2, 3, 1);
% B_arrow(3, 4, 1);
B_arrow(4, 5, 1);
B_arrow(6, 7, 1);
B_arrow(7, 8, 1);

B_arrow(3, 10, 1);
B_arrow(4, 10, 1);
% B_arrow(2, 11, 1);
B_arrow(5, 11, 1);
B_arrow(10, 11, 1);
% B_arrow(5, 12, 1); % Urysohn lemma needs AC.
% B_arrow(11, 12, 1); % Urysohn lemma needs AC.
B_arrow(6, 12, 1);
B_arrow(12, 13, 1);
B_arrow(7, 13, 1);
B_arrow(13, 14, 1);
B_arrow(8, 14, 1);
B_arrow(14, 15, 1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Short-cut arrows on the left.
B_box_point_m(p28)(0, -1, 0);
p22 := p28 + (0,-h0/2);
p23 := p28 + (0,h0/2);
B_box_point_m(p24)(4, -1, 0);
B_box_point_m(p25)(6, -1, 0);
p26 := p22+(-w2,0);
p27 := p23+(-w3,0);
drawarrow p22--p26--(xpart(p26),ypart(p24))--p24;
drawarrow p23--p27--(xpart(p27),ypart(p25))--p25;

B_box_point_m(p40)(5, -1, 0);
B_box_point_m(p41)(8, -1, 0);
p42 := (xpart(p26), ypart(p40));
drawarrow p40--p42--(xpart(p42),ypart(p41))--p41;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Short-cut arrows on the right.
% B_box_point_m(p30)(3, 1, 0);
B_box_point_m(p30)(10, 1, 0);
B_box_point_m(p34)(12, 1, 0);
p36 := p34+(w4,0);
drawarrow p30--(xpart(p36),ypart(p30))--p36--p34;

B_box_point_m(p45)(11, 1, 0);
B_box_point_m(p46)(14, 1, 0);
p47 := (xpart(p36) - h0, ypart(p45));
drawarrow p45--p47--(xpart(p47),ypart(p46))--p46;

label.bot(btex ZF set theory etex, p16+(0,-h3));

endfig;
end
