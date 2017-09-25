% tex/conc/mp/tree77.mp   2016-5-3   Alan U. Kennington.
% $Id: tex/conc/mp/tree77.mp 5391af643f 2016-05-03 13:19:56Z Alan U. Kennington $
% Variant definitions for Lipschitz classes.

input boxmax.mp
verbatimtex
\input dgmpmax
\def\blskip{10pt}
\font\smc cmcsc10
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

h1 := 15mm;
w1 := 18mm;
sepA := 16pt;
sepB := 4.5pt;
sepD := 6pt;

p11 := (0,0);
p12 := p11 + (w1, -h1);
p13 := p11 + (-w1, -h1);
p14 := 0.5[p12,p13] + (0, -h1);
p15 := p13 + (-w1, -h1);
p16 := 0.5[p15,p14] + (0, -h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(11, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(1) uniform bound\cr
 \hfil\vphantom{fy} global scope\cr}etex, p11);

B_draw(12, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(4) pointwise bound\cr
 \hfil\vphantom{fy} global scope\cr}etex, p12);

B_draw(13, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(2) uniform bound\cr
 \hfil\vphantom{fy} uniform locality\cr}etex, p13);

B_draw(14, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(5) pointwise bound\cr
 \hfil\vphantom{fy} uniform locality\cr}etex, p14);

B_draw(15, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(3) uniform bound\cr
 \hfil\vphantom{fy} pointwise locality\cr}etex, p15);

B_draw(16, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}(6) pointwise bound\cr
 \hfil\vphantom{fy} pointwise locality\cr}etex, p16);

%==============================================================================
% Draw the arrows.
B_margset(3pt, 3pt);

B_arrowD(11, 12, 1);
B_arrowD(11, 13, 1);
B_arrowD(12, 14, 1);
B_arrowD(13, 14, 1);
B_arrowD(13, 15, 1);
B_arrowD(14, 16, 1);
B_arrowD(15, 16, 1);

endfig;
end
