% tex/conc/mp/log30.mp   2013-4-15   Alan U. Kennington.
% $Id: tex/conc/mp/log30.mp a34be18c76 2013-04-15 08:07:36Z Alan U. Kennington $
% Classes and objects in multiple machines.

input boxmax.mp

verbatimtex
\input dgmpmax
\input akmath
\input dgspell
\font\smallrm cmr5
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat[];

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
% System dimensions.
qqq := 1.5;
w5 := w15 * qqq;
h5 := h15 * qqq;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
dx := 1.0cm;
spa := 10pt;        % Text spacing.

np := 6;            % Number of core propositions.
rp := 4pt;          % Diameter of core propositions.
yp := 0.17h10;      % Vertical offset of core propositions.
xp := 0.4w10;       % Half-width of set of core propositions.

p1 := (0,0);
p2 := p1 + (w10+dx,0);
p3 := p1 + (-(w10+w5)/2-dx,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_margset(1.5pt, 1.5pt);

B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w5, h5, p3);

B_box_point_m(p11)(1, 0, -1);
B_box_point_m(p12)(1, 0, 1);
B_box_point_m(p13)(2, 0, -1);
B_box_point_m(p14)(2, 0, 1);

p5 := p11 + (0,h12 + 0.5h15);
p6 := p13 + (0,h12 + 0.5h15);
p7 := p12 + (0,-h13 - 0.5h11);
p8 := p14 + (0,-h13 - 0.5h11);
B_draw_box(5, w11, h15, p5);    % Objects.
B_draw_box(6, w11, h15, p6);    % Objects.
B_draw_box(7, w11, h11, p7);    % Classes.
B_draw_box(8, w11, h11, p8);    % Classes.

ddy := (h25 + h24 + h21)/2;
p41 := p6 + (0, -ddy + h25/2);
p42 := p6 + (0, ddy - h21/2);
B_draw_box(10, w25, h25, p41);
B_draw_box(11, w21, h21, p42);

label(btex objects etex, p5);
label(btex\smallrm objects etex, p41);
label(btex\smallrm classes etex, p42);
label(btex classes etex, p7);
label(btex classes etex, p8);
label(btex objects etex, p3);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw some arrows.
B_arrow(7,5,1);
B_arrow(8,6,1);
B_arrow(11,10,1);

B_box_point_m(p54)(5, 1, 0);
B_box_point_m(p55)(7, 1, 0);
B_box_point_m(p56)(10, -1, 0);
B_box_point_m(p57)(11, -1, 0);
B_box_point_m(p58)(1, 1, 0);
B_box_point_m(p59)(6, -1, 0.3);
drawarrow p56--p54 dashed evenly scaled 0.5;
drawarrow p57--p55 dashed evenly scaled 0.5;
drawarrow p59--p58;

B_box_point_m(p64)(3, 1, 0);
B_box_point_m(p66)(5, -1, 0);
drawarrow p66--p64;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add labels.
B_box_point(p21)(1, 0, 1);
B_box_point(p22)(2, 0, 1);
B_box_point(p23)(3, 0, 1);

B_box_point_m(p31)(1, 0, -1);
B_box_point_m(p32)(2, 0, -1);
B_box_point_m(p33)(3, 0, -1);

label.top(btex \strut model etex, p21);
label.top(btex \strut meta-model etex, p22);
label.top(btex \strut system etex, p23);
label.top(btex \strut \modell/ed etex, p23+(0,spa));

label.bot(btex \strut machine $M_1$ etex, p31);
label.bot(btex \strut machine $M_2$ etex, p32);
label.bot(btex \strut machine $M_0$ etex, p33);
% label.bot(btex \strut (projected) etex, p33+(0,-spa));

endfig;
end
