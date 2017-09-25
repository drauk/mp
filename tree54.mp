% tex/conc/mp/tree54.mp   2015-8-11   Alan U. Kennington.
% $Id: tex/conc/mp/tree54.mp e059f406c4 2015-08-10 15:18:16Z Alan U. Kennington $
% Relations between logical language, logical propositions and mathematical
% systems.

input boxmax.mp
verbatimtex
\input akmath
\input dgmpmax
\font\ninerm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 140pt;
h1 := 52pt;
h2 := h1 - 6pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h2);
p4 := p2 + (w1,0);

B_draw(1, btex\baselineskip12pt
 \tmat{\hfil\rm\vphantom{fy}propositional calculus\cr
\hfil\rm\vphantom{fy}Example: ``$p_1\textsp{or}p_2$'', where\cr
\hfil\rm\vphantom{fy}$p_1={}$``$\pi<3$'', $p_2={}$``$\pi>3$''\cr}etex, p1);

B_draw(2, btex\baselineskip12pt
 \tmat{\hfil\rm\strut concrete proposition domain\cr
\hfil\rm\vphantom{fy}``$\pi<3$'', ``$\pi>3$'', ``$\pi=3$'', \dots\cr
\hfil\rm\vphantom{fy}$\Tvalmap($``$\pi<3$''$)=\valF$,
 $\Tvalmap($``$\pi>3$''$)=\valT$, \dots\cr}etex, p2);

B_draw(3, btex\baselineskip12pt
 \tmat{\hfil\rm\strut mathematical system\cr
\hfil\rm\vphantom{fy}$\pi$, 2, 3, $\le$, $<$, \dots\cr}etex, p3);

B_draw(4, btex\baselineskip12pt
 \tmat{\hfil\rm\strut truth values\cr
\hfil\rm\vphantom{fy}$\{\valF,\valT\}$\cr}etex, p4);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(2,4,1);

B_box_point_m(p20)(2, -1, 0);
p21 := p20 + (0,h1);
p22 := p20 + (0,-h2);
label.lft(btex $L$ etex, p21);
label.lft(btex $\Tpropspace$ etex, p20);
label.lft(btex $S$ etex, p22);

B_box_point_m(p30)(2, 1, 0);
B_box_point_m(p31)(4, -1, 0);
label.top(btex $\Tvalmap$ etex, 0.5[p30,p31]);

endfig;
end
