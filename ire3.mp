% tex/conc/mp/ire3.mp   2007-5-16   Alan Kennington.
% $Id: tex/conc/mp/ire3.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Counties of Ireland. Irish language.

% prologues := 1;

input boxmax.mp

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
w2 := 140mm;
h2 := 115mm;

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

% Antrim
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Aontroim\cr}etex,
 ptcal(6, 0, 54, 45));

% Down
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}An D\'un\cr}etex,
 ptcal(6, 0, 54, 15));

% Londonderry
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Doire\cr}etex,
 ptcal(6, 45, 54, 45));

% Tyrone
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}T\'\i r Eoghain\cr}etex,
 ptcal(7, 0, 54, 30));

% Fermanagh
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Fear Manach\cr}etex,
 ptcal(7, 40, 54, 15));

% Armagh
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Ard Mhacha\cr}etex,
 ptcal(6, 30, 54, 15));

% Monaghan
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Muineach\'an\cr}etex,
 ptcal(7, 0, 54, 5));

% Cavan
B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}An Cabh\'an\cr}etex,
 ptcal(7, 30, 53, 55));

% Donegal
B_draw(32, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}D\'un na nGall\cr}etex,
 ptcal(8, 0, 54, 45));

%------------------------------------------------------------------------------
% Leinster.
% Louth
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}L\'u\cr}etex,
 ptcal(6, 15, 53, 45));

% Meath
B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}An Mh\'\i\cr}etex,
 ptcal(6, 45, 53, 30));

% Dublin
B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Baile \'Atha Cliath\cr}etex,
 ptcal(6, 12, 53, 15));

% Wicklow
B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Cill Mhant\'ain\cr}etex,
 ptcal(6, 12, 53, 0));

% Wexford
B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Loch Garman\cr}etex,
 ptcal(6, 30, 52, 30));

% Longford
B_draw(14, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Longfort\cr}etex,
 ptcal(7, 45, 53, 45));

% Kildare
B_draw(15, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Cill Dara\cr}etex,
 ptcal(6, 45, 53, 0));

% Carlow
B_draw(16, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Ceatharlach\cr}etex,
 ptcal(6, 45, 52, 45));

% Kilkenny
B_draw(17, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Cill Chainnigh\cr}etex,
 ptcal(7, 15, 52, 30));

% Laois
B_draw(18, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Laois\cr}etex,
 ptcal(7, 15, 53, 0));

% Offaly
B_draw(19, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}U\'\i bh Fhail\'\i\cr}etex,
 ptcal(7, 30, 53, 15));

% Westmeath
B_draw(20, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}An Iarmh\'\i\cr}etex,
 ptcal(7, 30, 53, 30));

%------------------------------------------------------------------------------
% Munster.
% Waterford
B_draw(21, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Port L\'airge\cr}etex,
 ptcal(7, 30, 52, 0));

% Tipperary
B_draw(22, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Tiobraid \'Arann\cr}etex,
 ptcal(8, 0, 52, 38));

% Cork
B_draw(23, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Corcaigh\cr}etex,
 ptcal(8, 45, 52, 0));

% Limerick
B_draw(24, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Luimneach\cr}etex,
 ptcal(8, 45, 52, 30));

% Clare
B_draw(25, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}An Cl\'ar\cr}etex,
 ptcal(9, 0, 52, 45));

% Kerry
B_draw(26, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Ciarra\'\i\cr}etex,
 ptcal(9, 15, 52, 15));

%------------------------------------------------------------------------------
% Connacht.
% Galway
B_draw(27, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Gaillimh\cr}etex,
 ptcal(9, 0, 53, 15));

% Roscommon
B_draw(28, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Ros Coma\'\i n\cr}etex,
 ptcal(8, 15, 53, 30));

% Mayo
B_draw(29, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Maigh Eo\cr}etex,
 ptcal(9, 0, 53, 45));

% Leitrim
B_draw(30, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Liatroim\cr}etex,
 ptcal(8, 0, 54, 0));

% Sligo
B_draw(31, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Sligeach\cr}etex,
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
