% tex/conc/mp/log8.mp   2012-2-7   Alan Kennington.
% $Id: tex/conc/mp/log8.mp d78a8fbbde 2012-02-07 07:47:20Z Alan U. Kennington $
% Object spaces for propositional calculuses.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input dgmpmax
\input akmath
\font\ninerm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
path pat[];

w10 := 3.3cm;
h10 := 1.1cm;

dx := 0.6cm;
dy := 1.5cm;
w11 := w10 + dx;
h11 := h10 + dy;
w12 := w11/2;
w13 := 0.25w10;
w14 := 0.4w13;
w15 := 0.15w10;

h20 := 9pt;         % Text spacing.
h21 := h20/2;       % Text spacing.
w20 := 3pt;

np := 7;            % Number of core propositions.
rp := 4pt;          % Diameter of core propositions.
yp := 0.17h10;      % Vertical offset of core propositions.
xp := 0.4w10;       % Half-width of set of core propositions.

p1 := (0,0);
p2 := p1 + (w12-w15,h11);
p3 := p1 + (w11,0);
p4 := p3 + (w12+w15,h11);
p5 := p3 + (w11,0);

% Draw the boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);
B_draw_box(4, w10, h10, p4);
B_draw_box(5, w10, h10, p5);

B_box_point(p11)(1, 0, 0);      % Centre of box 1.
B_box_point(p12)(3, 0, 0);      % Centre of box 3.
B_box_point(p19)(5, 0, 0);      % Centre of box 5.
p13 := p11 + (-xp,yp);
p14 := p11 + (xp,yp);
p15 := p12 + (-xp,yp);
p16 := p12 + (xp,yp);
p17 := p19 + (-xp,yp);
p18 := p19 + (xp,yp);

% Draw lots of little propositions.
for i = 0 upto np-1:
    p10 := (i/(np-1))[p13,p14];
    draw fullcircle scaled rp shifted p10;
    endfor
for i = 0 upto np-1:
    p10 := (i/(np-1))[p15,p16];
    draw fullcircle scaled rp shifted p10;
    endfor
for i = 0 upto np-1:
    p10 := (i/(np-1))[p17,p18];
    draw fullcircle scaled rp shifted p10;
    endfor
B_box_point(p20)(2, 0, 0);
p20 := p20 + (0,yp);
draw fullcircle scaled rp shifted (p20+(-w13-w14,0));
draw fullcircle scaled rp shifted (p20+(-w13+w14,0));
draw fullcircle scaled rp shifted (p20+(w13,0));

B_box_point(p30)(4, 0, 0);
p30 := p30 + (0,yp);
draw fullcircle scaled rp shifted (p30+(-w13-w14,0));
draw fullcircle scaled rp shifted (p30+(-w13+w14,0));
draw fullcircle scaled rp shifted (p30+(w13,0));

% Draw the arrows.
B_margset(1.5pt, 1.5pt);
B_arrow(1,2,2);
B_arrow(1,4,2);
B_arrow(3,2,2);
B_arrow(3,4,2);
B_arrow(5,2,2);
B_arrow(5,4,2);

% Add labels.
B_box_point(p21)(1, 0, -1);
B_box_point(p22)(2, 0, 1);
B_box_point(p23)(3, 0, -1);
B_box_point(p24)(4, 0, 1);
B_box_point(p25)(5, 0, -1);

B_box_point(p31)(1, -1, 0);
B_box_point(p32)(2, -1, 0);
B_box_point(p33)(3, 1, 0);
B_box_point(p34)(4, 1, 0);
B_box_point(p35)(5, 1, 0);

label.bot(btex \ninerm transistor voltages etex, p21);
label.top(btex \ninerm propositional calculus 1 etex, p22);
label.bot(btex \ninerm natural language sentences etex, p23);
label.top(btex \ninerm propositional calculus 2 etex, p24);
label.bot(btex \ninerm set theory propositions etex, p25);

% label.lft(btex \strut proposition etex, p31+(-w20,h20));
% label.lft(btex \strut object etex, p31+(-w20,0));
% label.lft(btex \strut spaces etex, p31+(-w20,-h20));

label.lft(btex \ninerm \strut object etex, p31+(-w20,h21));
label.lft(btex \ninerm \strut spaces etex, p31+(-w20,-h21));

p39 := (xpart(p31),ypart(p32));
% label.lft(btex \strut proposition etex, p39+(-w20,h20));
% label.lft(btex \strut name etex, p39+(-w20,0));
% label.lft(btex \strut spaces etex, p39+(-w20,-h20));

label.lft(btex \ninerm \strut name etex, p39+(-w20,h21));
label.lft(btex \ninerm \strut spaces etex, p39+(-w20,-h21));

label.rt(btex \ninerm \strut concrete etex, p35+(w20,h21));
label.rt(btex \ninerm \strut logics etex, p35+(w20,-h21));

p38 := (xpart(p35),ypart(p34));
label.rt(btex \ninerm \strut abstract etex, p38+(w20,h21));
label.rt(btex \ninerm \strut logics etex, p38+(w20,-h21));

rpf := 1;
label.bot(btex $V_1$ etex, p13+(0,-rpf*rp));
label.bot(btex $V_2$ etex, (1/(np-1))[p13,p14]+(0,-rpf*rp));
label.bot(btex \strut\dots etex, (2/(np-1))[p13,p14]+(0,-rpf*rp));

label.bot(btex $S_1$ etex, p15+(0,-rpf*rp));
label.bot(btex $S_2$ etex, (1/(np-1))[p15,p16]+(0,-rpf*rp));
label.bot(btex \strut\dots etex, (2/(np-1))[p15,p16]+(0,-rpf*rp));

label.bot(btex $P_1$ etex, p17+(0,-rpf*rp));
label.bot(btex $P_2$ etex, (1/(np-1))[p17,p18]+(0,-rpf*rp));
label.bot(btex \strut\dots etex, (2/(np-1))[p17,p18]+(0,-rpf*rp));

label.bot(btex $A$ etex, p20+(-w13-w14,-rpf*rp));
label.bot(btex $B$ etex, p20+(-w13+w14,-rpf*rp));
label.bot(btex $A\tslor B$ etex, p20+(w13,-rpf*rp));

label.bot(btex $A$ etex, p30+(-w13-w14,-rpf*rp));
label.bot(btex $B$ etex, p30+(-w13+w14,-rpf*rp));
label.bot(btex $A\tslor B$ etex, p30+(w13,-rpf*rp));

endfig;
end
