% tex/conc/mp/log3.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log3.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Processing of propositions into true and false.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex \input dgmpmax etex
verbatimtex \input akmath etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat[];

w1 := 3.5cm;
w2 := 3.5cm;
h1 := 1.9cm;
% sp := 4.5pt;    % For 7-point text.
sp := 6.4pt;    % For 10-point text.
h2 := h1 - sp;
spp := 8pt;
sppp := 11pt;
spx := 1.5pt;
spy := -1.5pt;

w10 := 1.2cm;
h10 := 1.2cm;
w11 := 0.5 w10 - 7pt;
h11 := 0.5 h10 - 7pt;

p1 := (0,0);
p2 := p1 + (w1,0);
p3 := p2 + (w2,0);
p4 := p3 + (0,h11);
p5 := p3 + (0,-h11);

p6 := p1 + (0,h1);
p7 := p2 + (0,h1);

% Draw the boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);

B_draw(4, btex \valT etex, p4);
B_draw(5, btex \valF etex, p5);
B_draw(6, btex\tmatten{well-formed\cr formula rules\cr}etex, p6);
B_draw(7, btex\tmatten{axioms and\cr deduction rules\cr}etex, p7);

% Draw the arrows.
B_margset(3pt, 3pt);
B_arrow(1,2,1);
B_arrow(2,4,1);
B_arrow(2,5,1);
B_arrow(6,1,1);
B_arrow(7,2,1);

% Add some labels on the arrows.
B_box_point_m(p21)(1, 1, 0);
B_box_point_m(p31)(2, -1, 0);
p41 := 0.5[p21,p31];

B_box_point_m(p22)(2, 1, 0);
B_box_point_m(p32)(4, -1, 0);
p42 := 0.5[p22,p32];

B_box_point_m(p23)(2, 1, 0);
B_box_point_m(p33)(5, -1, 0);
p43 := 0.5[p23,p33];

label.top(btex offer of etex, p41);
label.bot(btex proposition etex, p41);

% Should tilt these labels, but it's too late in the morning. I need some sleep!
label.top(btex accept etex, p42);
label.bot(btex reject etex, p43);

B_box_point_m(p51)(1, 0, -1);
label.bot(btex\strut universe of etex, p51);
label.bot(btex\strut propositions etex, p51+(0,-sppp));

B_box_point_m(p52)(2, 0, -1);
label.bot(btex\strut proposition etex, p52);
label.bot(btex\strut truth tester etex, p52+(0,-sppp));

B_box_point_m(p53)(3, 0, -1);
label.bot(btex\strut proposition etex, p53);
label.bot(btex\strut stores etex, p53+(0,-sppp));

% Curvy arrows to feed propositions back into the proposition truth tester.
B_box_point_m(p24)(4, 1, 0);
B_box_point_m(p25)(5, 1, 0);
B_box_point_m(p26)(2, 1, 1);

pat1 := p24{dir0}..(p24+(w11,h11))..{dir225}p26+(spx,spy);
pat2 := p25{dir0}..(p24+(2w11,2h11))..{dir225}p26+(spy,spx);
drawarrow pat1;
drawarrow pat2;

p50 := point 1.5 of pat2;
label.top(btex proposition etex, p50+(0,8.0pt));
label.top(btex re-use etex, p50);

endfig;
end
