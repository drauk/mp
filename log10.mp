% tex/conc/mp/log10.mp   2009-1-7   Alan Kennington.
% $Id: tex/conc/mp/log10.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Meaning of propositions: description versus prescription.

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

w10 := 3.5cm;
h10 := 1.1cm;

dx := 5.5cm;
dy := 0.55cm;
spa := 10pt;        % Text spacing.

np := 6;            % Number of core propositions.
rp := 4pt;          % Diameter of core propositions.
yp := 0.17h10;      % Vertical offset of core propositions.
xp := 0.4w10;       % Half-width of set of core propositions.

p1 := (0,0);
p2 := p1 + (0,h10+dy);
p3 := p1 + (w10+dx,0);
p4 := p3 + (0,h10+dy);

% Draw the boxes.
B_draw_box(1, w10, h10, p1);
% B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);
% B_draw_box(4, w10, h10, p4);

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

% Draw the arrows.
B_margset(3pt, 3pt);
B_arrow(1,3,1);

% Add labels.
B_box_point(p21)(1, 0, -1);
B_box_point(p22)(1, 0, 1);
B_box_point(p23)(3, 0, -1);
B_box_point(p24)(3, 0, 1);

B_box_point(p31)(1, -1, 0);
% B_box_point(p32)(2, -1, 0);
B_box_point(p33)(3, 1, 0);
% B_box_point(p34)(4, 1, 0);

label.top(btex \strut {\bf sender} etex, p22);
label.top(btex \strut {\bf receiver} etex, p24);

label.bot(btex \strut proposition store 1 etex, p21);
label.bot(btex \strut proposition store 2 etex, p23);

% label.lft(btex sender etex, p31);
% label.rt(btex receiver etex, p33);

p30 := 0.5[p1,p3];
label(btex \vphantom{fy}{\bf description} etex, p30+(0,2.5spa));
label(btex \vphantom{fy}``I accept $A$ and $B$.'' etex, p30+(0,spa));
label(btex \vphantom{fy}``You should accept $A$ and $B$.'' etex, p30+(0,-spa));
label(btex \vphantom{fy}{\bf prescription} etex, p30+(0,-2.5spa));

rpf := 1;
% label.bot(btex $A$ etex, p15+(0,-rpf*rp));
% label.bot(btex $B$ etex, (1/(np-1))[p15,p16]+(0,-rpf*rp));

label.bot(btex $A$ etex, p13+(0,-rpf*rp));
label.bot(btex $B$ etex, (1/(np-1))[p13,p14]+(0,-rpf*rp));

endfig;
end
