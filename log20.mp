% tex/conc/mp/log20.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log20.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% World-model ontology for logical negation.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input dgmpmax
\input akmath
\font\smallrm cmr8
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat[];

drawO := 0;

% Coordinates/dimensions for world models.
w11 := 2.6cm;       % The world model.
h11 := 1.5cm;
w12 := 0.57cm;      % Gaps between world model and machine box.
h12 := 0.57cm;
w13 := 1.5cm;

w10 := w12 + w11 + w13;
h10 := 2h12 + h11;

dx := 4.0cm;
dy := 2.0cm;
spa := 10pt;        % Text spacing.
spb := 12pt;        % Text spacing.
spp := 0.38;        % Arrow spacing relative to box height.

np := 6;            % Number of core propositions.
rp := 4pt;          % Diameter of core propositions.
yp := 0.17h10;      % Vertical offset of core propositions.
xp := 0.4w10;       % Half-width of set of core propositions.

p1 := (0,0);
% p2 := p1 + (0,h10+dy);
p3 := p1 + (w10+dx,0);
p4 := 0.5[p1,p3] + (0,-h10-dy);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(3, w10, h10, p3);
if (drawO = 1):
    B_draw_box(4, w10, h10, p4);
    fi

B_box_point(p11)(1, -1, 0);
B_box_point(p12)(1, 1, 0);
B_box_point(p13)(3, 1, 0);
B_box_point(p14)(3, -1, 0);

p5 := p11 + (w12+0.5w11,0);
p6 := p13 + (-w12-0.5w11,0);
B_draw_box(5, w11, h11, p5);    % World model 1.
B_draw_box(6, w11, h11, p6);    % World model 2.

B_box_point_m(p15)(5, -1, 0);
B_box_point_m(p16)(5, 1, 0);
B_box_point_m(p17)(6, -1, 0);
B_box_point_m(p18)(6, 1, 0);
draw p15--p16;
draw p17--p18;

p41 := p5 + (0,0.25h11);
p42 := p5 + (0,-0.25h11);
p43 := p6 + (0,0.25h11);
p44 := p6 + (0,-0.25h11);
label(btex $P(z)$ true etex, p41);
label(btex other states etex, p42);
label(btex $P(z)$ true etex, p43);
label(btex other states etex, p44);

B_box_point_m(p45)(5, 0, 1);
B_box_point_m(p46)(5, 0, -1);
B_box_point_m(p47)(6, 0, 1);
B_box_point_m(p48)(6, 0, -1);
label.top(btex model states $z\in Z$ etex, p45);
label.bot(btex $Z_P=\{z\in Z;\;P(z)\}$ etex, p46);
label.top(btex model states $z\in Z$ etex, p47);
label.bot(btex $Z_P=\{z\in Z;\;P(z)\}$ etex, p48);

B_box_point(p51)(5, -1, 0.5);
B_box_point(p52)(5, -1, -0.5);
B_box_point(p53)(6, 1, 0.5);
B_box_point(p54)(6, 1, -0.5);
label.lft(btex $Z_P$ etex, p51);
label.lft(btex $\bar Z_P$ etex, p52);
label.rt(btex $Z_P$ etex, p53);
label.rt(btex $\bar Z_P$ etex, p54);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(3pt, 3pt);
% B_arrow(1,4,3);
if (drawO = 1):
    B_arrowcol(1, 4, 3, black, evenly);
    fi

rat := 0.24;
B_box_point_m(p55)(5, 1, rat);
B_box_point_m(p56)(5, 1, -rat);
B_box_point_m(p57)(6, -1, rat);
B_box_point_m(p58)(6, -1, -rat);
drawarrow p55--p57 dashed evenly;
drawarrow p56--p58 dashed evenly;

B_box_point(p63)(5, 1, rat);
B_box_point(p64)(5, 1, -rat);
p61 := p63 + (0.5w13,0);
p62 := p64 + (0.5w13,0);
label.top(btex\smallrm $P$ is true etex, p61);
label.bot(btex\smallrm $P$ is false etex, p62);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add labels.
B_box_point(p21)(1, 0, -1);
B_box_point(p22)(1, 0, 1);
B_box_point(p23)(3, 0, -1);
B_box_point(p24)(3, 0, 1);
B_box_point(p25)(4, 0, -1);

B_box_point_m(p31)(1, 1, spp);
B_box_point_m(p32)(1, 1, -spp);
B_box_point_m(p33)(3, -1, spp);
B_box_point_m(p34)(3, -1, -spp);
drawarrow p31--p33;
drawarrow p32--p34;

B_box_point_m(p35)(1, 0, -1);
B_box_point_m(p36)(3, 0, -1);
B_box_point_m(p37)(4, 0, 1);

label.top(btex \strut {\bf sender} etex, p22);
label.top(btex \strut {\bf receiver} etex, p24);
if (drawO = 1):
    label.bot(btex \strut {\bf observer} etex, p25);
    fi

label.bot(btex machine $M_1$ etex, p35);
label.bot(btex machine $M_2$ etex, p36);
if (drawO = 1):
    label.top(btex machine $M_3$ etex, p37);
    fi

p30 := 0.5[p31,p33] + (0, spp);
p40 := 0.5[p32,p34] + (0, -spp);

label(btex \vphantom{fy}``I assert $P$.'' etex, p30+(0,spa));
label(btex \vphantom{fy}``I do not assert $P$.'' etex, p40+(0,-spa));
label(btex \vphantom{fy}Or: ``I assert $\lnot P$.'' etex, p40+(0,-spa-spb));
label(btex \vphantom{fy}Or: {\it silence} etex, p40+(0,-spa-2spb));

endfig;
end
