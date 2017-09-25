% tex/conc/mp/log17.mp   2013-4-18   Alan U. Kennington.
% $Id: tex/conc/mp/log17.mp 45566896c3 2013-04-18 14:28:58Z Alan U. Kennington $
% Definition of concrete proposition domains.

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

w1 := 5.7cm;
h1 := 2.5cm;
spp := 0pt;

p2 := (0,0);
p3 := p2 + (0,-h1);
p4 := p3 + (w1,0);
p5 := p3 + (0,-h1);

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
 btex\tmatten{\strut``$V_1(0)=-1.4$'',\cr
 \strut``$V_2(3.7\uS)=0.5$'',\cr
 \strut``$V_7(7.2\mS)=2$'', \dots\cr}etex, p5);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(3,4,1);
B_arrow(2,4,1);
B_arrow(5,4,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the arrows.
B_box_point_m(p22)(2, 0, -1);       % Bottom of box 2.
B_box_point_m(p32)(3, 0, 1);        % Top of box 3.
p42 := 0.5[p22,p32];

B_box_point(p51)(2, 0, 0);
B_box_point(p52)(4, 0, 0);
p50 := 0.57[p51,p52];
S_tiltlabel_top(btex $\Tvalmap_1$ etex, p50, angle(p52-p51));
S_tiltlabel_bot(btex truth value map etex, p50, angle(p52-p51));

B_box_point_m(p23)(3, 1, 0);
B_box_point_m(p33)(4, -1, 0);
p43 := 0.5[p23,p33];
label.top(btex $\Tvalmap_2$ etex, p43);
label.bot(btex truth value map etex, p43);

B_box_point(p61)(5, 0, 0);
B_box_point(p62)(4, 0, 0);
p60 := 0.57[p61,p62];
S_tiltlabel_top(btex $\Tvalmap_3$ etex, p60, angle(p62-p61));
S_tiltlabel_bot(btex truth value map etex, p60, angle(p62-p61));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the boxes.
B_box_point_m(p53)(2, 0, 1);
B_box_point_m(p54)(2, -1, 0);

B_box_point_m(p55)(3, -1, 0);
B_box_point_m(p56)(3, 0, -1);

B_box_point_m(p57)(4, 1, 0);
B_box_point_m(p58)(4, 0, 1);

B_box_point_m(p63)(5, 0, -1);
B_box_point_m(p64)(5, -1, 0);

p65 := p64; % The left-most box-label.

label.lft(btex $\Tpropspace_1$ etex, (xpart(p65),ypart(p54)));
label.top(btex concrete proposition domain etex, p53);

label.lft(btex $\Tpropspace_2$ etex, (xpart(p65),ypart(p55)));
label.bot(btex concrete proposition domain etex, p56);

label.lft(btex $\Tpropspace_3$ etex, (xpart(p65),ypart(p64)));
label.bot(btex concrete proposition domain etex, p63);

label.rt(btex $\Tvalspace$ etex, p57);
label.top(btex truth value space etex, p58);

endfig;
end
