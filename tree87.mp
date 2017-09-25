% tex/conc/mp/tree87.mp   2016-5-3   Alan U. Kennington.
% $Id: tex/conc/mp/tree87.mp 5391af643f 2016-05-03 13:19:56Z Alan U. Kennington $
% Variant definitions for Lipschitz classes.

input boxmax.mp
verbatimtex
\input dgmpmax
\def\blskip{9pt}
% \font\smc cmcsc10
\font\smallrm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

h1 := 10mm;
h2 := 8mm;
w1 := 10mm;
sepA := 16pt;
sepB := 4.5pt;
sepD := 6pt;

p11 := (0,0);                           % 1
p12 := p11 + (w1, -1.5h2);              % 4
p13 := p11 + (-w1, -h2);                % 2
p20 := p11 + (0, -2h2);                 % 5'
p14 := p20 + (0, -h1);                  % 5
p21 := p13 + (-w1, -h2);                % 3'
p15 := p21 + (0, -h1);                  % 3
p22 := 0.5[p15,p14] + (0, 0);           % 6'
p16 := p22 + (0, -h1);                  % 6

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw_no_box(11, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(1)\cr}etex, p11);

B_draw_no_box(12, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(4)\cr}etex, p12);

B_draw_no_box(13, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(2)\cr}etex, p13);

B_draw_no_box(14, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(5)\cr}etex, p14);

B_draw_no_box(15, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(3)\cr}etex, p15);

B_draw_no_box(16, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(6)\cr}etex, p16);

B_draw_no_box(20, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(5${}'$)\cr}etex, p20);

B_draw_no_box(21, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(3${}'$)\cr}etex, p21);

B_draw_no_box(22, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(6${}'$)\cr}etex, p22);

%==============================================================================
% Draw the arrows.
B_margset(1pt, 1pt);

B_arrowD(11, 12, 1);
B_arrowD(11, 13, 1);
B_arrowD(12, 14, 1);
B_arrowD(13, 20, 1);
B_arrowD(13, 21, 1);
B_arrowD(14, 16, 1);
B_arrowD(15, 16, 1);

B_arrowD(20, 14, 1);
B_arrowD(20, 22, 1);
B_arrowD(21, 15, 1);
B_arrowD(21, 22, 1);
B_arrowD(22, 16, 1);

endfig;
end
