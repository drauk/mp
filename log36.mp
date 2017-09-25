% tex/conc/mp/log36.mp   2011-12-28   Alan U. Kennington.
% $Id: tex/conc/mp/log36.mp c9d0421084 2011-12-28 07:38:01Z Alan U. Kennington $
% The analysis-synthesis reductionism loop.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 5.5cm;
h1 := 1.35cm + 24pt;
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
B_draw(2, btex\tmatten{\strut differential\cr\strut equations\cr}etex, p2);
B_draw(3, btex\tmatten{\strut solutions of\cr\strut equations\cr}etex, p3);
B_draw(4, btex\tmatten{\strut macroscopic\cr\strut real world\cr}etex, p4);
B_draw(5, btex\tmatten{\strut microscopic\cr\strut real world\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(5,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);

% Add some labels on the arrows.
B_box_point_m(p22)(2, 0, -1);
B_box_point_m(p32)(3, 0, 1);
p42 := 0.5[p22,p32];

B_box_point_m(p25)(3, 0, 1);
B_box_point_m(p35)(4, 0, -1);
p45 := 0.5[p25,p35];

B_box_point_m(p26)(2, 1, 0);
B_box_point_m(p36)(5, -1, 0);
p46 := 0.5[p26,p36];

label.top(btex\strut observation etex, p46);
label.bot(btex\strut analysis/inference etex, p46);
label.lft(btex\strut integration etex, p42 + (-spp,0));
label.rt(btex\strut synthesis etex, p42 + (spp,0));
label.top(btex\strut prediction etex, p45);
label.bot(btex\strut control/design etex, p45);

endfig;
end
