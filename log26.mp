% tex/conc/mp/log26.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log26.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Modelling of modelling, within one mind.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input dgmpmax
\input akmath
\font\smallrm cmr9
\font\smalllrm cmr8
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[], q[];
numeric w[], h[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Dimensions for boxes.
w11 := 2.6cm;       % A machine box.
h11 := 2.6cm;

fac := 0.6;
w12 := w11 * fac;   % A model box.
h12 := h11 * fac;

w13 := w12 * fac;   % A model-model box.
h13 := h12 * fac;

% Locations of boxes.
dx := 1.8cm;
dxx := 0.5dx;
p1 := (0, 0);
p2 := p1 + (dxx + w11, 0);
p3 := p2 + (dx + w11, 0);
p4 := 0.5[p1,p2];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw_box_null(1, w11, h11, p1);
B_draw_box(11, w12, h12, p1);
B_draw_box(12, w13, h13, p1);

B_draw_box_null(2, w11, h11, p2);
B_draw_box(21, w12, h12, p2);
% B_draw_box(22, w13, h13, p2);

B_draw_box(3, w11, h11, p3);

B_draw_box(4, 2w11 + dxx, h11, p4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for boxes.
B_box_point_m(p41)(1, 0, -1);
B_box_point_m(p42)(2, 0, -1);
B_box_point_m(p43)(3, 0, -1);
B_box_point_m(p44)(4, 0, -1);
% label.bot(btex machine 1 etex, p41);
% label.bot(btex machine 2 etex, p42);
label.bot(btex machine 3 etex, p43);
label.bot(btex machine 1${}={}$machine 2 etex, p44);

B_box_point_m(p51)(11, 0, -1);
B_box_point_m(p52)(21, 0, -1);
label.bot(btex\smallrm model 1 etex, p51);
label.bot(btex\smallrm model 2 etex, p52);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Arrows to indicate what's modelling what.
B_margset(2pt, 0pt);

B_box_point_m(p81)(11, 1, 1);
B_box_point_m(p82)(11, 1, -1);
B_box_point_m(p83)(2, -1, 1);
B_box_point_m(p84)(2, -1, -1);
% drawarrow p81--p83 dashed evenly;
% drawarrow p82--p84 dashed evenly;

B_box_point_m(p85)(21, 1, 1);
B_box_point_m(p86)(21, 1, -1);
B_box_point_m(p87)(3, -1, 1);
B_box_point_m(p88)(3, -1, -1);
drawarrow p85--p87 dashed evenly;
drawarrow p86--p88 dashed evenly;

B_box_point_m(p91)(12, 1, 1);
B_box_point_m(p92)(12, 1, -1);
B_box_point_m(p93)(21, -1, 1);
B_box_point_m(p94)(21, -1, -1);
drawarrow p91--p93 dashed evenly;
drawarrow p92--p94 dashed evenly;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some random patterns inside the inner boxes.
% Pseudo-random number generation. (Very rough!!)
rand_x := 981;
rand_T := 2048;
rand_a := 13;
rand_b := 1;
a := w11;
b := h11;

nlines := 20;
for i=1 upto nlines * 2:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    aa := a * (rand_x/rand_T);
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    bb := b * (rand_x/rand_T);
    q[i] := (aa, bb);
    endfor

B_box_point(p101)(12, -1, -1);
B_box_point(p102)(21, -1, -1);
B_box_point(p103)(3, -1, -1);
for i=1 upto nlines:
    draw (q[i]--q[nlines + i]) shifted p103;
    draw (q[i]--q[nlines + i]) scaled fac shifted p102;
    draw (q[i]--q[nlines + i]) scaled (fac*fac) shifted p101;
    endfor

endfig;
end
