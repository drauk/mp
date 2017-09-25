% tex/conc/mp/tree88.mp   2017-2-22   Alan U. Kennington.
% $Id: tex/conc/mp/tree88.mp 1fdf5fb74f 2017-02-22 03:27:35Z Alan U. Kennington $
% Differentiability classes for maps between Cartesian spaces.

input boxmax
input centmax
verbatimtex
\input dgmpmax
\def\blskip{9pt}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric w[], h[];
pair p[], midpt;

h1 := 12mm;
w1 := 15mm;
w2 := w1/2;
w3 := w1/2;

p10 := (0,0);                           % C^0
p11 := p10 + (w1,0);                    % C^1
p12 := p11 + (w1,0);                    % C^2
p13 := p12 + (w1,0);                    % C^3
p14 := p13 + (w3,0);                    % ...

p20 := p10+(-w2,-h1);                   % D^0
p21 := p20 + (w1,0);                    % D^1
p22 := p21 + (w1,0);                    % D^2
p23 := p22 + (w1,0);                    % D^3
p24 := p23 + (w3,0);                    % ...
midpt := 0.5[p10, p23];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw_no_box(10, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$C^0$\cr}etex, p10);

B_draw_no_box(11, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$C^1$\cr}etex, p11);

B_draw_no_box(12, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$C^2$\cr}etex, p12);

B_draw_no_box(13, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$C^3$\cr}etex, p13);

B_draw_no_box(14, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}\dots\cr}etex, p14);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw_no_box(20, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$D^0$\cr}etex, p20);

B_draw_no_box(21, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$D^1$\cr}etex, p21);

B_draw_no_box(22, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$D^2$\cr}etex, p22);

B_draw_no_box(23, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$D^3$\cr}etex, p23);

B_draw_no_box(24, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}\dots\cr}etex, p24);

%==============================================================================
% Draw the arrows.
B_margset(5pt, 5pt);

B_arrowD(10, 11, 2);
B_arrowD(11, 12, 2);
B_arrowD(12, 13, 2);

B_arrowD(20, 21, 2);
B_arrowD(21, 22, 2);
B_arrowD(22, 23, 2);

B_margset(3.5pt, 3.5pt);
B_arrowD(10, 20, 1);
B_arrowD(11, 21, 1);
B_arrowD(12, 22, 1);
B_arrowD(13, 23, 1);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
