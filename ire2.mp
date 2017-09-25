% tex/conc/mp/ire2.mp   2007-3-28   Alan Kennington.
% $Id: tex/conc/mp/ire2.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Counties of Ireland. More precise version.

% prologues := 1;

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex \input dgmpmax etex
verbatimtex \input akmath etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];
color col;

col := (0.0, 0.75, 0.0);
% col := white;
% astyle = 3;     % Arrow style for links between provinces.
astyle = 0;     % Arrow style for links between provinces.
% bstyle = 3;     % Arrow style for links within provinces.
bstyle = 0;     % Arrow style for links within provinces.

w1 := 80pt;
h1 := 60pt;
w2 := 135mm;
h2 := 110mm;

%------------------------------------------------------------------------------
% Macro to convert longitude and latitude.
% W     = degrees West.
% Wp    = numerator of fraction of a degree west.
% Wq    = denominator of fraction of a degree west.
% N     = degrees North.
% Np    = numerator of fraction of a degree north.
% Nq    = denominator of fraction of a degree north.
def ptcalc(expr W, Wp, Wq, N, Np, Nq) =
 (((W + Wp/Wq - 6)/(4))*(-w2),         % Distance to the right of left edge.
  ((N + Np/Nq - 55)/(-3))*(-h2))       % Distance below the top edge.
enddef; % End of function ptcalc.

def ptcal(expr W, Wm, N, Nm) =
 (((W + Wm/60 - 6)/(4))*(-w2),         % Distance to the right of left edge.
  ((N + Nm/60 - 55)/(-3))*(-h2))       % Distance below the top edge.
enddef; % End of function ptcal.

%------------------------------------------------------------------------------
% Ulster.

B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Antrim\cr}etex,
 ptcal(6, 0, 54, 45));

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Down\cr}etex,
 ptcal(6, 0, 54, 15));

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Londonderry\cr}etex,
 ptcal(6, 45, 54, 45));

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Tyrone\cr}etex,
 ptcal(7, 0, 54, 30));

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Fermanagh\cr}etex,
 ptcal(7, 45, 54, 15));

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Armagh\cr}etex,
 ptcal(6, 30, 54, 15));

B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Monaghan\cr}etex,
 ptcal(7, 0, 54, 5));

B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Cavan\cr}etex,
 ptcal(7, 30, 54, 0));

B_draw(32, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Donegal\cr}etex,
 ptcal(8, 0, 54, 45));

%------------------------------------------------------------------------------
% Leinster.
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Louth\cr}etex,
 ptcal(6, 15, 53, 45));

B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Meath\cr}etex,
 ptcal(6, 45, 53, 30));

B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Dublin\cr}etex,
 ptcal(6, 15, 53, 15));

B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Wicklow\cr}etex,
 ptcal(6, 15, 53, 0));

B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Wexford\cr}etex,
 ptcal(6, 30, 52, 30));

B_draw(14, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Longford\cr}etex,
 ptcal(7, 45, 53, 45));

B_draw(15, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Kildare\cr}etex,
 ptcal(6, 45, 53, 0));

B_draw(16, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Carlow\cr}etex,
 ptcal(6, 45, 52, 45));

B_draw(17, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Kilkenny\cr}etex,
 ptcal(7, 15, 52, 30));

B_draw(18, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Laois\cr}etex,
 ptcal(7, 15, 53, 0));

B_draw(19, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Of{}faly\cr}etex,
 ptcal(7, 30, 53, 15));

B_draw(20, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Westmeath\cr}etex,
 ptcal(7, 30, 53, 30));

%------------------------------------------------------------------------------
% Munster.
B_draw(21, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Waterford\cr}etex,
 ptcal(7, 30, 52, 0));

B_draw(22, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Tipperary\cr}etex,
 ptcal(7, 50, 52, 38));

B_draw(23, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Cork\cr}etex,
 ptcal(8, 45, 52, 0));

B_draw(24, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Limerick\cr}etex,
 ptcal(8, 45, 52, 30));

B_draw(25, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Clare\cr}etex,
 ptcal(9, 0, 52, 45));

B_draw(26, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Kerry\cr}etex,
 ptcal(9, 15, 52, 15));

%------------------------------------------------------------------------------
% Connacht.
B_draw(27, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Galway\cr}etex,
 ptcal(9, 0, 53, 15));

B_draw(28, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Roscommon\cr}etex,
 ptcal(8, 15, 53, 30));

B_draw(29, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Mayo\cr}etex,
 ptcal(9, 0, 53, 45));

B_draw(30, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Leitrim\cr}etex,
 ptcal(8, 0, 54, 0));

B_draw(31, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Sligo\cr}etex,
 ptcal(8, 30, 54, 0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Ulster.
B_margset(2pt, 2pt);
B_arrow(1,2,bstyle);
B_arrow(1,3,bstyle);
B_arrow(1,4,bstyle);
B_arrow(1,6,bstyle);

B_arrow(2,6,bstyle);
B_arrow(3,4,bstyle);
B_arrow(3,32,bstyle);

B_arrow(4,5,bstyle);
B_arrow(4,6,bstyle);
B_arrow(4,7,bstyle);
B_arrow(4,32,bstyle);

B_arrow(5,7,bstyle);
B_arrow(5,13,bstyle);
B_arrow(5,32,bstyle);

B_arrow(6,7,bstyle);
B_arrow(7,13,bstyle);

% Leinster.
B_arrow(8,9,bstyle);

B_arrow(9,10,bstyle);
B_arrow(9,15,bstyle);
B_arrow(9,19,bstyle);
B_arrow(9,20,bstyle);

B_arrow(10,11,bstyle);
B_arrow(10,15,bstyle);
B_arrow(11,12,bstyle);
B_arrow(11,15,bstyle);
B_arrow(11,16,bstyle);
B_arrow(12,16,bstyle);
B_arrow(12,17,bstyle);

B_arrow(14,20,bstyle);
B_arrow(15,16,bstyle);
B_arrow(15,18,bstyle);
B_arrow(15,19,bstyle);
B_arrow(16,17,bstyle);
B_arrow(16,18,bstyle);
B_arrow(17,18,bstyle);
B_arrow(18,19,bstyle);
B_arrow(19,20,bstyle);

% Munster.
B_arrow(21,22,bstyle);
B_arrow(21,23,bstyle);
B_arrow(22,23,bstyle);
B_arrow(22,24,bstyle);
B_arrow(22,25,bstyle);
B_arrow(23,24,bstyle);
B_arrow(23,26,bstyle);
B_arrow(24,26,bstyle);
B_arrow(24,25,bstyle);

% Connacht.
B_arrow(27,28,bstyle);
B_arrow(27,29,bstyle);
B_arrow(28,29,bstyle);
B_arrow(28,30,bstyle);
B_arrow(28,31,bstyle);
B_arrow(29,31,bstyle);
B_arrow(30,31,bstyle);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Ulster to other counties.
B_arrowcol(2,8,astyle,col,0);
B_arrowcol(5,30,astyle,col,0);
B_arrowcol(6,8,astyle,col,0);
B_arrowcol(7,8,astyle,col,0);
B_arrowcol(7,9,astyle,col,0);
B_arrowcol(13,9,astyle,col,0);
B_arrowcol(13,14,astyle,col,0);
B_arrowcol(13,20,astyle,col,0);
B_arrowcol(32,30,astyle,col,0);
B_arrowcol(32,31,astyle,col,0);

% Leinster to Munster and Connacht.
B_arrowcol(13,30,astyle,col,0);
B_arrowcol(14,28,astyle,col,0);
B_arrowcol(14,30,astyle,col,0);
B_arrowcol(17,21,astyle,col,0);
B_arrowcol(17,22,astyle,col,0);
B_arrowcol(18,22,astyle,col,0);
B_arrowcol(19,22,astyle,col,0);
B_arrowcol(19,27,astyle,col,0);
B_arrowcol(19,28,astyle,col,0);
B_arrowcol(20,28,astyle,col,0);

% Munster to Connacht.
B_arrowcol(22,27,astyle,col,0);
B_arrowcol(25,27,astyle,col,0);

endfig;
end
