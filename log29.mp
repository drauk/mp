% tex/conc/mp/log29.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/log29.mp 87f5956f06 2012-05-06 15:47:34Z Alan U. Kennington $
% Simulation of a computer simulating a computer.

% The next line is a very bad kludge.
bboxmargin := 0pt;

input boxmax.mp
verbatimtex
\input dgmpmax
\input akmath
\font\smallrm cmr7
\font\smalllrm cmr5 scaled 700
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[], q[];
numeric w[], h[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Dimensions for boxes.
w11 := 2.8cm;       % A machine box.
h11 := 1.3cm;

fac := 0.3;
w12 := w11 * fac;   % A model box.
h12 := h11 * fac;

w13 := w12 * fac;   % A model-model box.
h13 := h12 * fac;

w14 := w13 * fac;   % A model-model-model box.
h14 := h13 * fac;

% Locations of boxes.
dy := h11;
p1 := (0, 0);
p2 := p1 + (0, h11);
p3 := p2 + (0, -h12/2);
p4 := p2 + (0, h12/2);
p5 := p4 + (0, -h13/2);
p6 := p4 + (0, h13/2);
p7 := p6 + (0, -h14/2);
p8 := p6 + (0, h14/2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw_box(1, w11, h11, p1);
B_draw_box(2, w11, h11, p2);
B_draw_box(3, w12, h12, p3);
B_draw_box(4, w12, h12, p4);
B_draw_box(5, w13, h13, p5);
B_draw_box(6, w13, h13, p6);
B_draw_box(7, w14, h14, p7);
B_draw_box(8, w14, h14, p8);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for boxes.
B_margset(0pt, 0pt);
sp := 2pt;
spp := 2pt;
B_box_point_m(p41)(1, 0, -1);
B_box_point_m(p42)(2, 0, 1);
B_box_point(p43)(3, 0, -1);
B_box_point(p44)(4, 0, 1);
B_box_point(p45)(5, 0, -1);
B_box_point(p46)(6, 0, 1);
B_box_point(p47)(7, 0, -1);
B_box_point(p48)(8, 0, 1);
label.bot(btex hardware etex, p41);
label.top(btex software etex, p42);
label.bot(btex\smallrm hardware etex, p43+(0,sp));
label.top(btex\smallrm software etex, p44+(0,-sp));
% label.bot(btex\smalllrm hardware etex, p45+(0,sp));
% label.top(btex\smalllrm software etex, p46+(0,-sp));
label(btex\smalllrm hardware etex, p3+(0,spp));
label(btex\smalllrm simulation etex, p3+(0,-spp));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Arrows to indicate what's modelling what.
B_margset(0pt, 0pt);

B_box_point_m(p81)(3, -1, 1);
B_box_point_m(p82)(3, -1, -1);
B_box_point_m(p83)(1, -1, 1);
B_box_point_m(p84)(1, -1, -1);
drawarrow p81--p83 dashed evenly;
drawarrow p82--p84 dashed evenly;

B_box_point_m(p91)(3, 1, 1);
B_box_point_m(p92)(3, 1, -1);
B_box_point_m(p93)(1, 1, 1);
B_box_point_m(p94)(1, 1, -1);
drawarrow p91--p93 dashed evenly;
drawarrow p92--p94 dashed evenly;

endfig;
end
