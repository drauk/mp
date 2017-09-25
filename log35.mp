% tex/conc/mp/log35.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/log35.mp 87f5956f06 2012-05-06 15:47:34Z Alan U. Kennington $
% Real world, probabilistic model, logical model and current knowledge.

input boxmax.mp
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

w1 := 3.0cm;
h1 := 2.2cm;
% sp := 4.5pt;    % For 7-point text.
sp := 6.4pt;    % For 10-point text.
h2 := h1 - sp;
spp := 8pt;
sep := 12pt;

p1 := (0,0);
p2 := p1 + (w1-3pt,0);
p3 := p2 + (w1,0);
p4 := p3 + (w1,0);

% Draw the boxes.
B_draw(1, btex\tmatten{$\tval(P_1)={}\text{?}$\cr
 $\tval(P_2)={}\text{?}$\cr}etex, p1);

B_draw(2, btex\tmatten{$\tval(P_1)=0.95$\cr
 $\tval(P_2)=0.01$\cr}etex, p2);

B_draw(3, btex\tmatten{$\tval(P_1)=\valT$\cr
 $\tval(P_2)=\valF$\cr}etex, p3);

B_draw(4, btex\tmatten{$\tval(P_1)={}\text{maybe}$\cr
 $\tval(P_2)=\valT$\cr}etex, p4);

% Draw the arrows.
B_margset(3pt, 3pt);
B_arrow(1,2,3);
B_arrow(2,3,3);
B_arrow(3,4,3);

B_box_point_m(p11)(1, 0, -1);
B_box_point_m(p12)(2, 0, -1);
B_box_point_m(p13)(3, 0, -1);
B_box_point_m(p14)(4, 0, -1);

label.bot(btex\strut real etex, p11);
label.bot(btex\strut world etex, p11+(0,-sep));

label.bot(btex\strut probabilistic etex, p12);
label.bot(btex\strut model etex, p12+(0,-sep));

label.bot(btex\strut logical etex, p13);
label.bot(btex\strut model etex, p13+(0,-sep));

label.bot(btex\strut knowledge etex, p14);
label.bot(btex\strut of model etex, p14+(0,-sep));

endfig;
end
