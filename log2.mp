% tex/conc/mp/log2.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log2.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
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

w1 := 3.5cm;
w2 := 3.5cm;
h1 := 2.2cm;
% sp := 4.5pt;    % For 7-point text.
sp := 6.4pt;    % For 10-point text.
h2 := h1 - sp;
spp := 8pt;
sppp := 11pt;

w10 := 1.2cm;
h10 := 1.2cm;
w11 := 0.5 w10 - 7pt;
h11 := 0.5 h10 - 7pt;

p1 := (0,0);
p2 := p1 + (w1,0);
p3 := p2 + (w2,0);
p4 := p3 + (0,h11);
p5 := p3 + (0,-h11);

% Draw the boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);

B_draw(4, btex \valT etex, p4);
B_draw(5, btex \valF etex, p5);

% Draw the arrows.
B_margset(3pt, 3pt);
B_arrow(1,2,1);
B_arrow(2,4,1);
B_arrow(2,5,1);

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

endfig;
end
