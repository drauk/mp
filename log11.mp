% tex/conc/mp/log11.mp   2014-11-12   Alan U. Kennington.
% $Id: tex/conc/mp/log11.mp 89e62a40bb 2014-11-12 12:22:11Z Alan U. Kennington $
% Mapping meta-meta-propositions to meta-propositions, and then
% meta-propositions to concrete propositions.

input boxmax

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex
\input dgmpmax
\input akmath
etex

verbatimtex
\def\svn{%
 \textfont0=\sevenrm % \textfont1=\sevenmi %
 \textfont2=\sevensy % \textfont3=\seventenex %
 \textfont\bffam=\sevenbf %
 }
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[], L[];
path pat[];

w10 := 12.9cm;
h10 := 1.5cm;

dx := 4.0cm;
dy := 0.95cm;
spa := 11pt;        % Text spacing.
spc := 3pt;         % Gap for side labels.
p99 := (-9.3pt,10pt);  % Offset for meta-meta-proposition texts.

p1 := (0,0);
p2 := p1 + (0,-h10-dy);
p3 := p2 + (0,-h10-dy);

% Draw the boxes.
B_draw_box(1, w10, h10, p1);
B_draw_box(2, w10, h10, p2);
B_draw_box(3, w10, h10, p3);

% Draw the arrows.
B_margset(0pt, 0pt);
% B_arrow(1,2,0);
% B_arrow(2,3,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add labels.
B_box_point(p31)(1, 0, 1);
B_box_point(p32)(2, 0, 1);
B_box_point(p33)(3, 0, 1);

label.top(btex \strut meta-meta-propositions etex, p31);
label.top(btex \strut meta-propositions etex, p32);
label.top(btex \strut concrete propositions etex, p33);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_margset(2pt, 2pt);
% Divide up the horizontal space.
Ln := 2;
for i := 0 upto Ln-1:
    L[i] := (i+0.5)/Ln;
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some statement forms.
B_box_point(p70)(3, -1, 0);
B_box_point(p71)(3, 1, 0);
p72 := L0[p70,p71];
p73 := L1[p70,p71];

B_draw(31, btex \strut $A={}$``T\'a an Domhan cothrom.'' etex, p72);
B_draw(32, btex \strut ``\dots ???\dots'' etex, p73);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some statement form letters.
B_box_point(p80)(2, -1, 0);
B_box_point(p81)(2, 1, 0);
p82 := L0[p80,p81];
p83 := L1[p80,p81];

B_draw(41, btex \strut $\tval($``T\'a an Domhan cothrom.''$)=\valT$ etex, p82);
B_draw(42, btex \strut $\tval($``T\'a an Domhan cothrom.''$)=\valF$ etex, p83);

B_arrow(41, 31, 1);
B_arrowcol(42, 32, 1, black, evenly);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some statement form letter forms.
B_box_point(p90)(1, -1, 0);
B_box_point(p91)(1, 1, 0);
p92 := L0[p90,p91];
p93 := L1[p90,p91];

B_draw(51, btex \sevenrm
 $\svn\tval($``$\svn\tval($``T\'a an Domhan cothrom.''$\svn)=\valT$''$\svn)
 =\valT$ etex,
 p92+p99);

B_draw(52, btex \sevenrm
 $\svn\tval($``$\svn\tval($``T\'a an Domhan cothrom.''$\svn)=\valT$''$\svn)
 =\valF$ etex,
 p93+p99);

B_draw(53, btex \sevenrm
 $\svn\tval($``$\svn\tval($``T\'a an Domhan cothrom.''$\svn)=\valF$''$\svn)
 =\valF$ etex,
 p92-p99);

B_draw(54, btex \sevenrm
 $\svn\tval($``$\svn\tval($``T\'a an Domhan cothrom.''$\svn)=\valF$''$\svn)
 =\valT$ etex,
 p93-p99);

B_arrow(51, 41, 1);
B_arrow(52, 42, 1);
B_arrow(53, 41, 1);
B_arrow(54, 42, 1);

endfig;
end
