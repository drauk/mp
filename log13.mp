% tex/conc/mp/log13.mp   2012-1-8   Alan U. Kennington.
% $Id: tex/conc/mp/log13.mp 499765b185 2012-01-07 14:01:05Z Alan U. Kennington $
% The relation of ideas to verbalisation.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input akmath
\input dgspell
\input dgmpmax
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 4.5cm;
h1 := 1.35cm;
% sp := 4.5pt;    % For 7-point text.
sp := 6.4pt;    % For 10-point text.
h2 := h1 - sp;
spp := 4pt;

p1 := (0,0);
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (w1,0);
p5 := p4 + (0,h1);
p6 := p5 + (0,h1);

% Draw the boxes.
B_draw(2, btex\tmatten{\strut talking\cr}etex, p2);
B_draw(3, btex\tmatten{\strut ideas\cr}etex, p3);
B_draw(4, btex\tmatten{\strut ideas\cr}etex, p4);
B_draw(5, btex\tmatten{\strut hearing\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,3,2);
B_arrow(4,5,2);

B_arrow(2,5,1);

% Add some labels on the arrows.
B_box_point_m(p21)(1, 0, -1);
B_box_point_m(p31)(2, 0, 1);
p41 := 0.5[p21,p31];

B_box_point_m(p22)(2, 0, -1);
B_box_point_m(p32)(3, 0, 1);
p42 := 0.5[p22,p32];

B_box_point_m(p23)(1, 1, 0);
B_box_point_m(p33)(6, -1, 0);
p43 := 0.5[p23,p33];

B_box_point_m(p24)(4, 0, 1);
B_box_point_m(p34)(5, 0, -1);
p44 := 0.5[p24,p34];

B_box_point_m(p25)(5, 0, 1);
B_box_point_m(p35)(6, 0, -1);
p45 := 0.5[p25,p35];

B_box_point_m(p26)(2, 1, 0);
B_box_point_m(p36)(5, -1, 0);
p46 := 0.5[p26,p36];

label.top(btex speech etex, p46);
label.lft(btex\strut \verbalis/ation etex, p42 + (-spp,0));
label.rt(btex\strut interpretation etex, p44 + (spp,0));

endfig;
end
