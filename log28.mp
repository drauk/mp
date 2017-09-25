% tex/conc/mp/log28.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log28.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Recursive modelling within a single brain.

% The next line is a very bad kludge. Just don't do it!
bboxmargin := 0pt;

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input dgmpmax
\input akmath
\font\smallrm cmr9
\font\smalllrm cmr7
\font\smallllrm cmr5
\font\smalllllrm cmr5 scaled 700
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

w14 := w13 * fac;   % A model-model-model box.
h14 := h13 * fac;

w15 := w14 * fac;   % A model-model-model-model box.
h15 := h14 * fac;

w16 := w15 * fac;   % A model-model-model-model-model box.
h16 := h15 * fac;

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
B_draw_box(13, w14, h14, p1);
B_draw_box(14, w15, h15, p1);
B_draw_box(15, w16, h16, p1);

B_draw_box_null(2, w11, h11, p2);
B_draw_box(21, w12, h12, p2);
B_draw_box(22, w13, h13, p2);
B_draw_box(23, w14, h14, p2);
B_draw_box(24, w15, h15, p2);
B_draw_box(25, w16, h16, p2);

B_draw_box(3, w11, h11, p3);
B_draw_box(31, w12, h12, p3);
B_draw_box(32, w13, h13, p3);
B_draw_box(33, w14, h14, p3);
B_draw_box(34, w15, h15, p3);
% B_draw_box(35, w16, h16, p3);

B_draw_box(4, 2w11 + dxx, h11, p4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for boxes.
B_box_point_m(p43)(3, 0, -1);
B_box_point_m(p44)(3, 0, 1);
B_box_point_m(p45)(4, 0, -1);
B_box_point_m(p46)(4, 0, 1);
label.bot(btex machine 3 etex, p43);
label.top(btex PC etex, p44);
label.bot(btex machine 1${}={}$machine 2 etex, p45);
label.top(btex PC + ZF etex, p46);

B_box_point_m(p51)(11, 0, -1);
B_box_point_m(p52)(21, 0, -1);
B_box_point_m(p53)(11, 0, 1);
B_box_point_m(p54)(21, 0, 1);
B_box_point_m(p55)(31, 0, 1);
label.bot(btex\smallrm model 1 etex, p51);
label.bot(btex\smallrm model 2 etex, p52);
label.top(btex\smallrm ZF etex, p53);
label.top(btex\smallrm PC etex, p54);
label.top(btex\smallrm ZF etex, p55);

spc := 2pt;
spcc := 2.5pt;
spccc := 2.7pt;
B_box_point_m(p61)(12, 0, 1);
B_box_point_m(p62)(22, 0, 1);
B_box_point_m(p63)(13, 0, 1);
B_box_point_m(p64)(23, 0, 1);
B_box_point_m(p65)(32, 0, 1);
B_box_point_m(p66)(33, 0, 1);
B_box_point_m(p67)(34, 0, 1);
label.top(btex\smalllrm PC etex, p61+(0,-spc));
label.top(btex\smalllrm ZF etex, p62+(0,-spc));
label.top(btex\smallllrm ZF etex, p63+(0,-spcc));
label.top(btex\smallllrm PC etex, p64+(0,-spcc));
label.top(btex\smalllrm PC etex, p65+(0,-spc));
label.top(btex\smallllrm ZF etex, p66+(0,-spcc));
label.top(btex\smalllllrm PC etex, p67+(0,-spccc));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Arrows to indicate what's modelling what.
B_margset(2pt, 0pt);

B_box_point_m(p81)(22, 1, 1);
B_box_point_m(p82)(22, 1, -1);
B_box_point_m(p83)(31, -1, 1);
B_box_point_m(p84)(31, -1, -1);
drawarrow p81--p83 dashed evenly;
drawarrow p82--p84 dashed evenly;

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

B_box_point_m(p95)(22, -1, 1);
B_box_point_m(p96)(22, -1, -1);
B_box_point_m(p97)(11, 1, 1);
B_box_point_m(p98)(11, 1, -1);
drawarrow p95--p97 dashed evenly;
drawarrow p96--p98 dashed evenly;

B_box_point_m(p101)(13, 1, 1);
B_box_point_m(p102)(13, 1, -1);
B_box_point_m(p103)(22, -1, 1);
B_box_point_m(p104)(22, -1, -1);
drawarrow p101--p103 dashed evenly;
drawarrow p102--p104 dashed evenly;

B_box_point_m(p105)(23, -1, 1);
B_box_point_m(p106)(23, -1, -1);
B_box_point_m(p107)(12, 1, 1);
B_box_point_m(p108)(12, 1, -1);
drawarrow p105--p107 dashed evenly;
drawarrow p106--p108 dashed evenly;

B_margset(0.8pt, 0pt);

B_box_point_m(p121)(23, 1, 1);
B_box_point_m(p122)(23, 1, -1);
B_box_point_m(p123)(32, -1, 1);
B_box_point_m(p124)(32, -1, -1);
drawarrow p121--p123 dashed evenly;
drawarrow p122--p124 dashed evenly;

B_box_point_m(p125)(24, 1, 1);
B_box_point_m(p126)(24, 1, -1);
B_box_point_m(p127)(33, -1, 1);
B_box_point_m(p128)(33, -1, -1);
drawarrow p125--p127 dashed evenly;
drawarrow p126--p128 dashed evenly;

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

B_box_point(p111)(15, -1, -1);
B_box_point(p112)(25, -1, -1);
B_box_point(p113)(34, -1, -1);
facccc := fac * fac * fac * fac;
faccccc := facccc * fac;
for i=1 upto nlines:
    draw (q[i]--q[nlines + i]) scaled faccccc shifted p111;
    draw (q[i]--q[nlines + i]) scaled faccccc shifted p112;
    draw (q[i]--q[nlines + i]) scaled facccc shifted p113;
    endfor

endfig;
end
