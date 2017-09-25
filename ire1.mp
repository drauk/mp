% tex/conc/mp/ire1.mp   2007-3-28   Alan Kennington.
% $Id: tex/conc/mp/ire1.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Counties of Ireland.

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
col := (0.0,0.75,0.0);

w1 := 80pt;
h1 := 67pt;

% Ulster.
p1 := (0,0);
p2 := p1 + (0.2w1,-0.7h1);
p3 := p1 + (-w1,0);
p4 := p1 + (-w1,-0.5h1);
p5 := p1 + (-1.5w1,-h1);
p6 := p1 + (-0.5w1,-h1);

% Leinster.
p7 := p6 + (-0.3w1,-0.5h1);
p8 := p7 + (0.5w1,-0.5h1);
p9 := p7 + (0w1,-h1);
p10 := p7 + (0.5w1,-1.5h1);
p11 := p7 + (0.5w1,-2h1);
p12 := p7 + (0.5w1,-3h1);
p13 := p7 + (-0.5w1,-0.5h1);
p14 := p7 + (-1.5w1,-0.75h1);
p15 := p7 + (-0.5w1,-1.75h1);
p16 := p7 + (-0w1,-2.5h1);
p17 := p7 + (-0.5w1,-3h1);
p18 := p7 + (-1w1,-2.25h1);
p19 := p7 + (-1.5w1,-1.75h1);
p20 := p7 + (-1.5w1,-1.25h1);

% Munster.
p21 := p17 + (-1.0w1,0.0h1);
p22 := p21 + (-0.5w1,0.75h1);
p23 := p21 + (-1.0w1,0.0h1);
p24 := p21 + (-1.3w1,0.5h1);
p25 := p21 + (-1.5w1,1.0h1);
p26 := p21 + (-1.7w1,0.0h1);

% Connacht.
p27 := p25 + (0.1w1,0.5h1);
p28 := p27 + (0.4w1,0.7h1);
p29 := p27 + (-0.4w1,0.9h1);
p30 := p27 + (0.7w1,1.5h1);
p31 := p27 + (-0.3w1,2.0h1);
p32 := p27 + (0.2w1,3.1h1);

%------------------------------------------------------------------------------
% Ulster.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Antrim\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Down\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Londonderry\cr}etex, p3);

B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Tyrone\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Fermanagh\cr}etex, p5);

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Armagh\cr}etex, p6);

% Leinster.
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Monaghan\cr}etex, p7);

B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Louth\cr}etex, p8);

B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Meath\cr}etex, p9);

B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Dublin\cr}etex, p10);

B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Wicklow\cr}etex, p11);

B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Wexford\cr}etex, p12);

B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Cavan\cr}etex, p13);

B_draw(14, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Longford\cr}etex, p14);

B_draw(15, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Kildare\cr}etex, p15);

B_draw(16, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Carlow\cr}etex, p16);

B_draw(17, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Kilkenny\cr}etex, p17);

B_draw(18, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Laois\cr}etex, p18);

B_draw(19, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Of{}faly\cr}etex, p19);

B_draw(20, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Westmeath\cr}etex, p20);

% Munster.
B_draw(21, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Waterford\cr}etex, p21);

B_draw(22, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Tipperary\cr}etex, p22);

B_draw(23, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Cork\cr}etex, p23);

B_draw(24, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Limerick\cr}etex, p24);

B_draw(25, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Clare\cr}etex, p25);

B_draw(26, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Kerry\cr}etex, p26);

% Connacht.
B_draw(27, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Galway\cr}etex, p27);

B_draw(28, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Roscommon\cr}etex, p28);

B_draw(29, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Mayo\cr}etex, p29);

B_draw(30, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Leitrim\cr}etex, p30);

B_draw(31, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Sligo\cr}etex, p31);

B_draw(32, btex\baselineskip9pt
 \tmat{\hfil\sevenrm\vphantom{f}Donegal\cr}etex, p32);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Ulster.
B_margset(2pt, 2pt);
B_arrow(1,2,3);
B_arrow(1,3,3);
B_arrow(1,4,3);
B_arrow(1,6,3);

B_arrow(2,6,3);
B_arrow(3,4,3);
B_arrow(4,5,3);
B_arrow(4,6,3);

% Leinster.
B_arrow(7,8,3);
B_arrow(7,9,3);
B_arrow(7,13,3);

B_arrow(8,9,3);

B_arrow(9,10,3);
B_arrow(9,13,3);
B_arrow(9,15,3);
B_arrow(9,19,3);
B_arrow(9,20,3);

B_arrow(10,11,3);
B_arrow(10,15,3);
B_arrow(11,12,3);
B_arrow(11,15,3);
B_arrow(11,16,3);
B_arrow(12,16,3);
B_arrow(12,17,3);

B_arrow(13,14,3);
B_arrow(13,20,3);
B_arrow(14,20,3);
B_arrow(15,16,3);
B_arrow(15,18,3);
B_arrow(15,19,3);
B_arrow(16,17,3);
B_arrow(16,18,3);
B_arrow(17,18,3);
B_arrow(18,19,3);
B_arrow(19,20,3);

% Munster.
B_arrow(21,22,3);
B_arrow(21,23,3);
B_arrow(22,23,3);
B_arrow(22,24,3);
B_arrow(22,25,3);
B_arrow(23,24,3);
B_arrow(23,26,3);
B_arrow(24,26,3);
B_arrow(24,25,3);

% Connacht.
B_arrow(27,28,3);
B_arrow(27,29,3);
B_arrow(28,29,3);
B_arrow(28,30,3);
B_arrow(28,31,3);
B_arrow(29,31,3);
B_arrow(30,31,3);
B_arrow(30,32,3);
B_arrow(31,32,3);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Ulster to other counties.
B_arrowcol(2,8,3,col,0);
B_arrowcol(3,32,3,col,0);
B_arrowcol(4,32,3,col,0);
B_arrowcol(4,7,3,col,0);
B_arrowcol(5,7,3,col,0);
B_arrowcol(5,13,3,col,0);
B_arrowcol(5,30,3,col,0);
B_arrowcol(5,32,3,col,0);
B_arrowcol(6,7,3,col,0);
B_arrowcol(6,8,3,col,0);

% Leinster to Munster and Connacht.
B_arrowcol(13,30,3,col,0);
B_arrowcol(14,28,3,col,0);
B_arrowcol(14,30,3,col,0);
B_arrowcol(17,21,3,col,0);
B_arrowcol(17,22,3,col,0);
B_arrowcol(18,22,3,col,0);
B_arrowcol(19,22,3,col,0);
B_arrowcol(19,27,3,col,0);
B_arrowcol(19,28,3,col,0);
B_arrowcol(20,28,3,col,0);

% Munster to Connacht.
B_arrowcol(22,27,3,col,0);
B_arrowcol(25,27,3,col,0);

endfig;
end
