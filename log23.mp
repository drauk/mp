% tex/conc/mp/log23.mp   2009-1-20   Alan Kennington.
% $Id: tex/conc/mp/log23.mp a4ecdad5a8 2009-01-20 05:56:25Z Alan U. Kennington $
% Ontology of unknown truth values. Two modelled logic machines.

input boxmax.mp
input mapmax.mp

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
pair p[];
numeric w[], h[];
path pat[];

% Coordinates/dimensions for world models.
w11 := 2.6cm;       % The world model box.
h11 := 0.75cm;

w12 := 0.50cm;      % Gaps between world model and machine box.
h12 := 0.25cm;

w13 := w12;         % Gap between truth value box and machine box.
h13 := h12;

h14 := 0.75cm;      % Space between the boxes.

w15 := 1.2cm;       % The truth values box.
h15 := h11;

w10 := w12 + w11 + w13;
h10 := h12 + h11 + h14 + h15 + h13;

dx := 4.0cm;
dy := 1.5cm;
spa := 0pt;         % Text spacing.
spb := 12pt;        % Text spacing.
spp := 0.20;        % Arrow spacing relative to box height.
sppp := 0.05;       % Arrow spacing differential relative to box height.

np := 6;            % Number of core propositions.
rp := 4pt;          % Diameter of core propositions.
yp := 0.17h10;      % Vertical offset of core propositions.
xp := 0.4w10;       % Half-width of set of core propositions.

p1 := (0,0);
p2 := p1 + (0,-h10-dy);
p3 := 0.5[p1,p2] + (w10+dx,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);

B_box_point_m(p11)(1, 0, -1);
B_box_point_m(p12)(1, 0, 1);
B_box_point_m(p13)(3, 0, -1);
B_box_point_m(p14)(3, 0, 1);
B_box_point_m(p15)(2, 0, -1);
B_box_point_m(p16)(2, 0, 1);

p5 := p11 + (0,h12 + 0.5h11);
p6 := p13 + (0,h12 + 0.5h11);
p7 := p12 + (0,-h13 - 0.5h15);
p8 := p14 + (0,-h13 - 0.5h15);
p9 := p15 + (0,h12 + 0.5h11);
p10 := p16 + (0,-h13 - 0.5h15);
B_draw_box(5, w11, h11, p5);    % World model 1.
B_draw_box(6, w11, h11, p6);    % World model 2.
B_draw_box(7, w15, h15, p7);    % Truth values 1.
B_draw_box(8, w15, h15, p8);    % Truth values 2.
B_draw_box(9, w11, h11, p9);    % World model 1.
B_draw_box(10, w15, h15, p10);  % Truth values 2.

B_box_point_m(p51)(5, -1, 0);
B_box_point_m(p52)(9, -1, 0);
B_box_point_m(p53)(6, 1, 0);
label.lft(btex $\Tpropspace$ etex, p51);
label.lft(btex $\Tpropspace$ etex, p52);
label.rt(btex $\Tpropspace$ etex, p53);
label(btex\strut\smallrm $P_1$, $P_2$, $P_3$,\dots etex, p5);
label(btex\strut\smallrm $P_1$, $P_2$, $P_3$,\dots etex, p9);
label(btex\strut\smallrm $P_1$, $P_2$, $P_3$,\dots etex, p6);
label(btex $\valF$\quad$\valT$ etex, p7);
label(btex $\valF$\quad$\valT$ etex, p10);
label(btex $\valF$ $\valT$ $\valU$ etex, p8);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw some arrows.
B_margset(2pt, 2pt);
B_arrow(5,7,1);
B_arrow(9,10,1);
B_arrow(6,8,1);

rat := 0.1;
B_box_point_m(p55)(5, 1, 0);
B_box_point_m(p56)(9, 1, 0);
B_box_point_m(p57)(6, -1, rat);
B_box_point_m(p58)(6, -1, -rat);
drawarrow p55--p57 dashed evenly;
drawarrow p56--p58 dashed evenly;
p68 := 0.4[p55,p57];
p69 := 0.4[p56,p58];
S_tiltlabel_top(btex\smalllrm axioms and rules etex, p68, angle(p57-p55));
% S_tiltlabel_bot(btex\smalllrm and rules etex, p68, angle(p57-p55));
% S_tiltlabel_top(btex\smalllrm axioms etex, p69, angle(p58-p56));
S_tiltlabel_bot(btex\smalllrm axioms and rules etex, p69, angle(p58-p56));

B_box_point_m(p61)(5, 0, 1);
B_box_point_m(p62)(7, 0, -1);
B_box_point_m(p63)(6, 0, 1);
B_box_point_m(p64)(8, 0, -1);
B_box_point_m(p65)(9, 0, 1);
B_box_point_m(p66)(10, 0, -1);
label.lft(btex\strut $\Tvalmap_1$ etex, 0.5[p61,p62]);
label.lft(btex\strut $\Tvalmap_2$ etex, 0.5[p65,p66]);
label.rt(btex\strut $\Tvalmap'$ etex, 0.5[p63,p64]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add labels.
B_box_point(p22)(1, 0, 1);
B_box_point(p24)(3, 0, 1);
B_box_point(p25)(2, 0, 1);
label.top(btex \strut true/false model etex, p22);
label.top(btex \strut true/false/unknown model etex, p24);
label.top(btex \strut true/false model etex, p25);

B_box_point_m(p31)(1, 1, spp);
B_box_point_m(p32)(2, 1, spp);
B_box_point_m(p33)(3, -1, spp + sppp);
B_box_point_m(p34)(3, -1, spp - sppp);
drawarrow p31--p33;
drawarrow p32--p34;

B_box_point_m(p35)(1, 0, -1);
B_box_point_m(p36)(3, 0, -1);
B_box_point_m(p37)(2, 0, -1);

label.bot(btex machine $M_1$ etex, p35);
label.bot(btex machine $M_3$ etex, p36);
label.bot(btex machine $M_2$ etex, p37);

p30 := 0.4[p31,p33];
p39 := 0.4[p32,p34];
S_tiltlabel_top(btex\smalllrm incomplete etex, p30, angle(p33-p31));
S_tiltlabel_bot(btex\smalllrm information flow etex, p30, angle(p33-p31));
S_tiltlabel_top(btex\smalllrm incomplete etex, p39, angle(p34-p32));
S_tiltlabel_bot(btex\smalllrm information flow etex, p39, angle(p34-p32));

endfig;
end
