% tex/conc/mp/log4.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log4.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Equivalence for conjunction of propositions.

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

w10 := 4.0cm;
h10 := 1.1cm;

dx := 4.0cm;
dy := 0.55cm;
spa := 11pt;        % Text spacing.
spc := 3pt;         % Gap for side labels.

np := 8;            % Number of core propositions.
rp := 4pt;          % Diameter of core propositions.
yp := 0.17h10;      % Vertical offset of core propositions.
xp := 0.4w10;       % Half-width of set of core propositions.

p1 := (0,0);
p2 := p1 + (0,-h10-dy);
p3 := p1 + (w10+dx,0);
p4 := p3 + (0,-h10-dy);

% Draw the boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);
B_draw_box(4, w10, h10, p4);

B_box_point(p11)(1, 0, 0);      % Centre of box 1.
B_box_point(p12)(3, 0, 0);      % Centre of box 3.
p13 := p11 + (-xp,yp);
p14 := p11 + (xp,yp);
p15 := p12 + (-xp,yp);
p16 := p12 + (xp,yp);

% Draw lots of little propositions.
for i = 0 upto np-1:
    p10 := (i/(np-1))[p13,p14];
    draw fullcircle scaled rp shifted p10;
    endfor
for i = 0 upto np-1:
    p10 := (i/(np-1))[p15,p16];
    draw fullcircle scaled rp shifted p10;
    endfor
B_box_point(p20)(2, 0, 0);
p20 := p20 + (0,yp);
draw fullcircle scaled rp shifted p20;

% Draw the arrows.
B_margset(0pt, 0pt);
B_arrow(1,2,0);
B_arrow(3,4,0);

% Add labels.
B_box_point(p21)(1, 0, 1);      % Top of box 1.
B_box_point(p22)(2, 0, -1);     % Bottom of box 2.
B_box_point(p23)(3, 0, 1);      % Top of box 3.
B_box_point(p24)(4, 0, -1);     % Bottom of box 4.

B_box_point(p31)(1, -1, 0);
B_box_point(p32)(2, -1, 0);
B_box_point(p33)(3, 1, 0);
B_box_point(p34)(4, 1, 0);

label.top(btex \strut true propositions etex, p21);
label.bot(btex \strut true meta-propositions etex, p22);
label.top(btex \strut true propositions etex, p23);
label.bot(btex \strut true meta-propositions etex, p24);

label.lft(btex $\valT$ etex, p31+(-spc,0));
label.lft(btex $\valT'$ etex, p32+(-spc,0));
label.rt(btex $\valT$ etex, p33+(spc,0));
label.rt(btex $\valT'$ etex, p34+(spc,0));

p30 := 0.5[p1,p4];
label(btex \vphantom{fy}is etex, p30+(0,spa));
label(btex \vphantom{fy}equivalent etex, p30);
label(btex \vphantom{fy}to etex, p30+(0,-spa));

rpf := 1;
label.bot(btex $A$ etex, p15+(0,-rpf*rp));
label.bot(btex $B$ etex, (1/(np-1))[p15,p16]+(0,-rpf*rp));
label.bot(btex $A\tsland B$ etex, p20+(0,-rpf*rp));

endfig;
end
