% tex/conc/mp/log16.mp   2009-1-20   Alan Kennington.
% $Id: tex/conc/mp/log16.mp a4ecdad5a8 2009-01-20 05:56:25Z Alan U. Kennington $
% Definition of proposition name space and concrete proposition domain.

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
h1 := 3.0cm;
sp := 5.8pt;    % For 10-point text.
h2 := h1 - sp;
spp := 0pt;

p1 := (0,0);
p2 := p1 + (0,-h2);
p3 := p2 + (0,-h1);
p4 := p3 + (w1,0);
p5 := p4 + (0,h1);
p6 := p5 + (0,h2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(2, btex\tmatten{\cr
 $A$, $B$, $C$, \dots\cr
 \cr}etex, p2);

B_draw(3, btex\tmatten{\strut``$\forsome x,\,\forall y,\,y\notin x$'',\cr
 \strut``$\emptyset\in\emptyset$'',\cr
 \strut``$\emptyset\subseteq\emptyset$'', \dots\cr}etex, p3);

B_draw(4, btex\tmatten{\cr
 \null\quad\valF\quad\valT\quad\null\cr
 \cr}etex, p4);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(2,4,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the arrows.
B_box_point_m(p22)(2, 0, -1);       % Bottom of box 2.
B_box_point_m(p32)(3, 0, 1);        % Top of box 3.
p42 := 0.5[p22,p32];

B_box_point_m(p23)(3, 1, 0);
B_box_point_m(p33)(4, -1, 0);
p43 := 0.5[p23,p33];

label.lft(btex\strut proposition etex, p42 + (spp,sp));
label.lft(btex\strut name map etex, p42 + (spp,-sp));
label.rt(btex\strut $\Tnamemap$ etex, p42 + (-spp,0));

label.top(btex $\Tvalmap$ etex, p43);
label.bot(btex truth value map etex, p43);

B_box_point(p51)(2, 0, 0);
B_box_point(p52)(4, 0, 0);
p50 := 0.5[p51,p52];
S_tiltlabel_top(btex\ninerm abstract truth value map etex, p50, angle(p52-p51));
S_tiltlabel_bot(btex $\tval=\Tvalmap\circ\Tnamemap$ etex, p50, angle(p52-p51));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the boxes.
B_box_point_m(p53)(2, 0, 1);
B_box_point_m(p54)(2, -1, 0);

B_box_point_m(p55)(3, -1, 0);
B_box_point_m(p56)(3, 0, -1);

B_box_point_m(p57)(4, 1, 0);
B_box_point_m(p58)(4, 0, -1);

label.top(btex proposition name space etex, p53);
label.lft(btex $\Tnamespace$ etex, (xpart(p55),ypart(p54)));

label.lft(btex $\Tpropspace$ etex, p55);
label.bot(btex concrete proposition domain etex, p56);

label.rt(btex $\Tvalspace$ etex, p57);
label.bot(btex truth value space etex, p58);

endfig;
end
