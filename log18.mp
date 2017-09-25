% tex/conc/mp/log18.mp   2009-1-20   Alan Kennington.
% $Id: tex/conc/mp/log18.mp a4ecdad5a8 2009-01-20 05:56:25Z Alan U. Kennington $
% Single proposition name space with multiple concrete proposition domains.

input boxmax.mp
input mapmax.mp

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

w1 := 5.5cm;
w2 := w1 - 0.8cm;
h1 := 2.2cm;
spp := 0pt;
sp := 10pt;     % Vertical text spacing.

p2 := (0,0);
p3 := p2 + (0,-h1);
p4 := p3 + (w1,0);
p5 := p3 + (0,-h1);
p6 := p3 + (-w2,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(2, btex\tmatten{\strut``$\pi<3$'',\cr
 \strut``$3.1<\pi$'',\cr
 \strut``$\pi<3.2$'', \dots\cr}etex, p2);

B_draw(3,
 btex\tmatten{\strut``$\forsome x,\,\forall y,\,y\notin x$'',\cr
 \strut``$\emptyset\in\emptyset$'',\cr
 \strut``$\emptyset\subseteq\emptyset$'', \dots\cr}etex, p3);

B_draw(4, btex\tmatten{\cr
 \null\quad\valF\quad\valT\quad\null\cr
 \cr}etex, p4);

B_draw(5,
 btex\tmatten{\strut``$V_1(0)=1$'',\cr
 \strut``$V_2(3.7\uS)=0$'',\cr
 \strut``$V_7(7.2\mS)=1$'', \dots\cr}etex, p5);

B_draw(6, btex\tmatten{\cr
 $A$, $B$, $C$, \dots\cr
 \cr}etex, p6);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(3,4,1);
B_arrow(2,4,1);
B_arrow(5,4,1);
B_arrow(3,6,2);
B_arrow(2,6,2);
B_arrow(5,6,2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the arrows.
B_box_point(p51)(2, 0, 0);
B_box_point(p52)(4, 0, 0);
p50 := 0.5[p51,p52];
S_tiltlabel_top(btex $\Tvalmap_1$ etex, p50, angle(p52-p51));
S_tiltlabel_bot(btex truth value map etex, p50, angle(p52-p51));

B_box_point_m(p23)(3, 0, 0);
B_box_point_m(p33)(4, 0, 0);
p43 := 0.51[p23,p33];
label.top(btex $\Tvalmap_2$ etex, p43);
label.bot(btex truth value map etex, p43);

B_box_point(p61)(5, 0, 0);
B_box_point(p62)(4, 0, 0);
p60 := 0.56[p61,p62];
S_tiltlabel_top(btex $\Tvalmap_3$ etex, p60, angle(p62-p61));
S_tiltlabel_bot(btex truth value map etex, p60, angle(p62-p61));

B_box_point(p71)(6, 0, 0);
p72 := 0.48[p71,p51];
% S_tiltlabel_top(btex proposition name map etex, p72, angle(p51-p71));
S_tiltlabel_top(btex $\Tnamemap_1$ etex, p72, angle(p51-p71));
S_tiltlabel_bot(btex name map etex, p72, angle(p51-p71));

p73 := 0.46[p71,p23];
S_tiltlabel_top(btex $\Tnamemap_2$ etex, p73, angle(p23-p71));
S_tiltlabel_bot(btex name map etex, p73, angle(p23-p71));

p74 := 0.43[p71,p61];
S_tiltlabel_top(btex $\Tnamemap_3$ etex, p74, angle(p61-p71));
S_tiltlabel_bot(btex name map etex, p74, angle(p61-p71));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the boxes.
B_box_point_m(p53)(2, 0, 1);
B_box_point_m(p54)(2, 0, -1);

B_box_point_m(p55)(3, -1, 0);
B_box_point_m(p56)(3, 0, -1);

B_box_point_m(p57)(4, 0, -1);
B_box_point_m(p58)(4, 0, 1);

B_box_point_m(p63)(5, 0, -1);
B_box_point_m(p64)(5, -1, 0);

B_box_point_m(p65)(6, 0, 1);
B_box_point_m(p66)(6, 0, -1);

label.top(btex concrete proposition domains etex, p53);
label.bot(btex $\Tpropspace_1$ etex, p54);
label.bot(btex $\Tpropspace_2$ etex, p56);
label.bot(btex $\Tpropspace_3$ etex, p63);

label.top(btex truth value space etex, p58);
label.bot(btex $\Tvalspace$ etex, p57);

label.top(btex proposition etex, p65+(0,sp));
label.top(btex name space etex, p65);
label.bot(btex $\Tnamespace$ etex, p66);

endfig;
end
