% tex/conc/mp/mapmax.mp   2016-9-1   Alan U. Kennington.
% $Id: tex/conc/mp/mapmax.mp 62fd1e1e92 2016-09-01 14:10:04Z Alan U. Kennington $
% MetaPost macros for arrows, labels, R^n sets, venn diagrams etc.
% These macros are not designed as a general purpose library.
% These macros are intended for use with Alan U. Kennington's diagrams.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Macros in this file.
%
% S_drawmask
% S_arrow
% S_arrowspacesstyle
% S_sym_mark
% S_erd_mark
% S_erd
% S_arrow_erd
% S_arrowspaces
% S_arrowspace
% S_labelspaces
% S_labelspace
% S_raypoints
% S_rays
% S_tiltlabel_top_up
% S_tiltlabel_bot_up
% S_tiltlabel_top
% S_tiltlabel_bot
% S_tiltlabel
% S_raylabels
% S_realscol
% S_reals
% S_rnsets
% S_rnset
% S_rn
% S_subset
% S_subsets_col
% S_subsets
% S_venn_AB
% S_venn_ABC
% S_textcurve_up
% S_textcurve
% S_ordset
% S_ordsetv
% S_universe
% S_axes_draw
% S_draw_x
% S_arrow_x
% S_tilt_parallel
% S_tilt_perp

% DISCLAIMER.
% The author of this file disclaims any express or implied guarantee of
% the fitness of this file for any purpose. In no event shall the author
% of this file be held liable for any direct, indirect, incidental,
% special, exemplary, or consequential damages (including, but not limited
% to, procurement of substitute services; loss of use, data, or profits; or
% business interruption) however caused and on any theory of liability,
% whether in contract, strict liability, or tort (including negligence or
% otherwise) arising in any way out of the use of this file, even if
% advised of the possibility of such damage.

verbatimtex
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choose drawing primitive according to mask.
% This is idential to B_drawmask.
% mask = 0      no arrowheads
% mask = 1      arrowhead at end of arrow
% mask = 2      arrowhead at start of arrow
% mask = 3      arrowhead at both ends of arrow
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_drawmask       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_drawmask(expr mask) =
if mask = 0:
    draw
elseif mask = 1:
    drawarrow
elseif mask = 2:
    drawarrow reverse
elseif mask = 3:
    drawdblarrow
    fi
enddef; % End of function S_drawmask.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an arrow with specified end-spacings, mask, colour, offset and style.
% Xa        first point.
% Xb        second point. (must be different to the first point)
% da        space at beginning of arrow
% db        space at end of arrow
% msk       arrowmask
% col       colour
% offset    offset to the left of the arrow
% sty       a style specification, such as:
%           "dashed evenly withcolor black", but without the quotes.
%%%%%%%%%%%%%%%%%
%    S_arrow    %
%%%%%%%%%%%%%%%%%
def S_arrow(expr Xa, Xb, da, db, msk, col, offset)(text sty) =
begingroup
pair S_v[];

% S_v1 := the unit vector in the direction of S_v1.
S_v1 := (Xb)-(Xa);
S_v1 := (S_v1)/length(S_v1);
% S_v2 := unit vector to the left of the arrow.
S_v2 := S_v1 rotated 90;

S_drawmask(msk)
 ((Xa+S_v2*offset+S_v1*da)--(Xb+S_v2*offset-S_v1*db)) sty withcolor col;
endgroup
enddef; % End of function S_arrow.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an arrow with specified spacing.
% Xa        first point.
% Xb        second point.
% da        space at beginning of arrow
% db        space at end of arrow
% msk       arrowmask
% sty       a style specification, such as:
%           "dashed evenly withcolor black", but without the quotes.
%%%%%%%%%%%%%%%%%%%%%%%%%
%  S_arrowspacesstyle   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_arrowspacesstyle(expr Xa, Xb, da, db, msk)(text sty) =
begingroup
pair S_v[];

S_v1 := (Xb-Xa);
S_v1 := (S_v1 / length(S_v1));
S_drawmask(msk) ((Xa+S_v1*da)--(Xb-S_v1*db)) sty;
endgroup
enddef; % End of function S_arrowspacesstyle.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add a symmetry mark for an entity-relationship diagram "arrow".
% xA        head of arrow, adjusted
% xB        tail of arrow, adjusted
% mA        mark: 0=nothing, 1=antisymmetric, 2=symmetric
% cA        colour
% sA        scale of mark
% pA        pen scale of mark
%%%%%%%%%%%%%%%%%%%%%
%    S_sym_mark     %
%%%%%%%%%%%%%%%%%%%%%
def S_sym_mark(expr xA, xB, mA, cA, sA, pA) =
begingroup
pair S_v[], uA, yA;

% Ignore undefined mark-codes.
if ((xA <> xB) and (mA >= 1) and (mA <= 2)):
    % Calculate mid-point and direction.
    yA := 0.5[xA,xB];
    uA := (xB - xA);
    uA := (uA / length(uA));
    sc := 0.707; % Scale factor.

    pickup pencircle scaled pA;
    if mA = 1:
        % Antisymmetric symbol: A zig-zag.
        S_v1 := yA - 2sc * sA * uA;
        S_v2 := yA - sc * sA * uA + sc * sA * (uA rotated 90);
        S_v3 := yA + sc * sA * uA + sc * sA * (uA rotated -90);
        S_v4 := yA + 2sc * sA * uA;
        draw S_v1--S_v2--yA--S_v3--S_v4 withcolor cA;
    elseif mA = 2:
        % Symmetric symbol: A square.
        S_v1 := yA - sc * sA * uA + sc * sA * (uA rotated 90);
        S_v2 := yA + sc * sA * uA + sc * sA * (uA rotated 90);
        S_v3 := yA + sc * sA * uA - sc * sA * (uA rotated 90);
        S_v4 := yA - sc * sA * uA - sc * sA * (uA rotated 90);
        draw S_v1--S_v2--S_v3--S_v4--cycle withcolor cA;
        fi
    fi
endgroup
enddef; % End of function S_sym_mark.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add head or tail mark for entity-relationship diagram "arrow".
% yA        first point, adjusted
% uA        unit vector
% mA        mark: 0=nothing, 1=one, 2=two, 3=many, 4=zero
% cA        colour
% sA        scale of mark
% pA        pen scale of mark
%%%%%%%%%%%%%%%%%%%%%
%    S_erd_mark     %
%%%%%%%%%%%%%%%%%%%%%
def S_erd_mark(expr yA, uA, mA, cA, sA, pA) =
begingroup
pair S_w[];

% Ignore mark 0.
if (mA >= 1) and (mA <= 4):
    pickup pencircle scaled pA;
    fi
if mA = 1:
    S_w1 := yA + sA * uA + sA * (uA rotated 90);
    S_w2 := yA + sA * uA + sA * (uA rotated -90);
    draw S_w1--S_w2 withcolor cA;
elseif mA = 2:
    S_w1 := yA + sA * uA + sA * (uA rotated 90);
    S_w2 := yA + sA * uA + sA * (uA rotated -90);
    S_w3 := yA + 1.5 * sA * uA + sA * (uA rotated 90);
    S_w4 := yA + 1.5 * sA * uA + sA * (uA rotated -90);
    draw S_w1--S_w2 withcolor cA;
    draw S_w3--S_w4 withcolor cA;
elseif mA = 3:
    S_w0 := yA + 1.5 * sA * uA;
    S_w1 := yA + sA * (uA rotated 90);
    S_w2 := yA + sA * (uA rotated -90);
    draw S_w1--S_w0--S_w2 withcolor cA;
elseif mA = 4:
    draw (fullcircle scaled sA) shifted (yA + sA * uA);
    fi
endgroup
enddef; % End of function S_erd_mark.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Decorate an arrow with entity-relationship diagram marks.
% xA        first point (head)
% xB        second point (tail)
% dA        space at head of arrow
% dB        space at tail of arrow
% mA        mark at head: 0=nothing, 1=one, 2=two, 3=many, 4=zero
% mB        mark at tail: 0=nothing, 1=one, 2=two, 3=many, 4=zero
% cA        colour at head
% cB        colour at tail
% sA        scale of head mark
% sB        scale of tail mark
% pA        pen scale of head mark
% pB        pen scale of tail mark
% The marks may be of the form 10 * S + M, where M is the mark as
% indicated, and S marks symmetry: 0=nothing, 1=antisymmetric, 2=symmetric
%%%%%%%%%%%%%%%%%%%%%
%       S_erd       %
%%%%%%%%%%%%%%%%%%%%%
def S_erd(expr xA, xB, dA, dB, mA, mB, cA, cB, sA, sB, pA, pB) =
begingroup
pair S_v[];

if (xA <> xB):
    % Calculuate the unit vector for the vector from xA to xB.
    S_v1 := (xB - xA);
    S_v1 := (S_v1 / length(S_v1));

    % Calculate the head and tail of the arrow.
    S_v2 := xA + S_v1 * dA;
    S_v3 := xB - S_v1 * dB;

    % Split the symmetry mark from the ERD mark.
    erdA := mA;
    symA := floor(mA/10);
    erdA := erdA - 10 * symA;

    erdB := mB;
    symB := floor(mB/10);
    erdB := erdB - 10 * symB;

    % Draw the head and tail of the arrow.
    S_erd_mark(S_v2, S_v1, erdA, cA, sA, pA);
    S_erd_mark(S_v3, -S_v1, erdB, cB, sB, pB);

    % Draw the symmetry marks.
    if symA > 0:
        S_sym_mark(S_v2, S_v3, symA, cA, sA, pA);
        fi
    if symB > 0:
        S_sym_mark(S_v3, S_v2, symB, cB, sB, pB);
        fi
    fi
endgroup
enddef; % End of function S_erd.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an arrow with specified spacing.
% Xa        first point.
% Xb        second point.
% da        space at beginning of arrow
% db        space at end of arrow
% msk       arrowmask
% col       colour
%%%%%%%%%%%%%%%%%%%%%%%%%
%     S_arrowspaces     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_arrowspaces(expr Xa, Xb, da, db, msk, col) =
begingroup
pair S_v[];

S_v1 := Xb - Xa;
S_v1 := S_v1 / length(S_v1);
S_drawmask(msk) ((Xa+S_v1*da)--(Xb-S_v1*db)) withcolor col;
endgroup
enddef; % End of function S_arrowspaces.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an arrow with specified spacing.
% Xa        first point.
% Xb        second point.
% xt        space at ends of arrow
% msk       arrowmask
% col       colour
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_arrowspace     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_arrowspace(expr Xa, Xb, xt, msk, col) =
S_arrowspaces(Xa, Xb, xt, xt, msk, col);
enddef; % End of function S_arrowspace.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an arrow/ERD combination.
% xA        first point (head)
% xB        second point (tail)
% dA        space at head of arrow
% dB        space at tail of arrow
% mC        arrow mask
% cC        arrow colour
% oC        arrow offset "to the left"
% pC        arrow pen scale
% mC = 0    no arrowheads
% mC = 1    arrowhead at end of arrow
% mC = 2    arrowhead at start of arrow
% mC = 3    arrowhead at both ends of arrow
%
% mA        mark at head: 0=nothing, 1=one, 2=two, 3=many, 4=zero
% mB        mark at tail: 0=nothing, 1=one, 2=two, 3=many, 4=zero
% cA        colour at head
% cB        colour at tail
% sA        scale of head mark
% sB        scale of tail mark
% pA        pen scale of head mark
% pB        pen scale of tail mark
% The marks may be of the form 10 * S + M, where M is the mark as
% indicated, and S marks symmetry: 0=nothing, 1=antisymmetric, 2=symmetric
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_arrow_erd      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_arrow_erd(expr xA, xB, dA, dB, mC, cC, oC, pC,
 mA, mB, cA, cB, sA, sB, pA, pB) =
begingroup
pair offs;

% offs := the unit vector in the direction of xA - xB.
if oC = 0:
    offs := (0,0);
else
    offs := (xB)-(xA);
    if length(offs) <> 0:
        offs := offs/length(offs);
        % offs := unit vector to the left of the arrow.
        offs := (offs rotated 90) * (oC);
        fi
    fi

% Draw the arrow part.
pickup pencircle scaled penA;
S_arrowspaces(xA + offs, xB + offs, dA, dB, mC, cC);

% Draw the ERD part.
S_erd(xA + offs, xB + offs, dA, dB, mA, mB, cA, cB, sA, sB, pA, pB);
endgroup
enddef; % End of function S_arrowerd.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Return a point on the specified arrow with given spacing.
% ret       returned value.
% Xa        first point.
% Xb        second point.
% da        space at beginning of arrow
% db        space at end of arrow
% rat       ratio of the arrow length.
%%%%%%%%%%%%%%%%%%%%%%%%%
%     S_labelspaces     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_labelspaces(text ret)(expr Xa, Xb, da, db, rat) =
begingroup
pair S_v[];

S_v1 := (Xb-Xa);
S_v1 := (S_v1 / length(S_v1));
ret := rat[(Xa+S_v1*da),(Xb-S_v1*db)];
endgroup
enddef; % End of function S_labelspaces.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Return a point on the specified arrow with given spacing.
% ret       returned value.
% Xa        first point.
% Xb        second point.
% xt        space at ends of arrow
% rat       ratio of the arrow length.
%%%%%%%%%%%%%%%%%%%%%%%%%
%     S_labelspace      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_labelspace(text ret)(expr Xa, Xb, xt, rat) =
S_labelspaces(rat)(Xa, Xb, xt, xt, rat);
enddef; % End of function S_labelspace.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Return the tangent points on two circles.
% pt            array of tangent points.
%               0--1 and 2--3 are from a to b.
% Xa            centre of circle a
% Da            diameter of circle a
% Xb            centre of circle b
% Db            diameter of circle b
% Db            diameter of circle b
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_raypoints      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_raypoints(text pt)(expr Xa, Da, Xb, Db) =
begingroup
pair S_v[];
S_Ra := Da/2;
S_Rb := Db/2;

% Assume that S_Rb >= S_Ra, and hope that it doesn't matter.
S_r := S_Rb - S_Ra;
S_d := length(Xb - Xa);
if S_d > S_r:
    S_rd := S_r / S_d;
    S_h := S_rd * sqrt(1 - S_rd*S_rd);
    S_k := S_rd * S_rd;
    S_v0 := Xa - Xb;
    S_v1 := S_v0 rotated -90;
    S_v2 := (S_v0 scaled S_k) + (S_v1 scaled S_h);

    % The top tangent points.
    pt[0] := Xa + (S_v2 * (S_Ra/S_r));
    pt[1] := Xb + (S_v2 * (S_Rb/S_r));

    % The bottom tangent points.
    pt[2] := Xa - (S_v2 * (S_Ra/S_r));
    pt[3] := Xb - (S_v2 * (S_Rb/S_r));
else:
    pt[0] := 0;
    pt[1] := 0;
    pt[2] := 0;
    pt[3] := 0;
    fi
endgroup
enddef; % End of function S_raypoints.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw "rays" from one circle to another.
% Xa            centre of circle a
% Da            diameter of circle a
% Xb            centre of circle b
% Db            diameter of circle b
% n_arrows      number of arrows to draw
% arrowmask     mask for arrowheads
% col           colour of arrows
%%%%%%%%%%%%%%%%%%%%%%%%%
%        S_rays         %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_rays(expr Xa, Da, Xb, Db, n_arrows, arrowmask, col) =
begingroup
save i, S_Ca, S_Cb, S_d, S_h, S_k, S_r, S_rat, S_Ra, S_Rb, S_rd, S_v;
pair S_v[];
path S_Ca, S_Cb;
S_Ra := Da/2;
S_Rb := Db/2;
S_Ca := fullcircle scaled Da shifted Xa;
S_Cb := fullcircle scaled Db shifted Xb;

% Assume that S_Rb >= S_Ra, and hope that it doesn't matter.
S_r := S_Rb - S_Ra;
S_d := length(Xb - Xa);
if S_d > S_r:
    S_rd := S_r / S_d;
    S_h := S_rd * sqrt(1 - S_rd*S_rd);  % Vertical factor.
    S_k := S_rd * S_rd;                 % Horizontal factor.
    S_v0 := Xa - Xb;
    S_v1 := S_v0 rotated -90;
    S_v2 := (S_v0 scaled S_k) + (S_v1 scaled S_h);

    % The tangent points.
    S_v3 := Xa + (S_v2 * (S_Ra/S_r));
    S_v4 := Xb + (S_v2 * (S_Rb/S_r));
    S_v5 := Xa - (S_v2 * (S_Ra/S_r));
    S_v6 := Xb - (S_v2 * (S_Rb/S_r));
    if n_arrows >= 1:
        S_drawmask(arrowmask) S_v3--S_v4 withcolor col;
        fi
    if n_arrows >= 2:
        S_drawmask(arrowmask) S_v5--S_v6 withcolor col;
        fi
    for i=2 upto n_arrows-1:
        S_rat := (i-1)/(n_arrows-1);
        S_v7 := S_rat[S_v3,S_v5];
        S_v8 := S_rat[S_v4,S_v6];

        % Find out where the lines intersect the circles.
        S_v9 := (S_v7..S_v8) intersectionpoint S_Ca;
        S_v10 := (S_v7..S_v8) intersectionpoint S_Cb;

        S_drawmask(arrowmask) S_v9--S_v10 withcolor col;
        endfor
    fi
endgroup
enddef; % End of function S_rays.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% str           the string or picture
% X             anchor point
% ang           angle of tilt
% up            amount to raise text by
%%%%%%%%%%%%%%%%%%%%%%%%%
%  S_tiltlabel_top_up   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_tiltlabel_top_up(expr str, X, ang, up) =
draw (thelabel.top(str, (0,up))) rotated ang shifted X;
enddef; % End of function S_tiltlabel_top_up.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% str           the string or picture
% X             anchor point
% ang           angle of tilt
% up            amount to raise text by
%%%%%%%%%%%%%%%%%%%%%%%%%
%  S_tiltlabel_bot_up   %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_tiltlabel_bot_up(expr str, X, ang, up) =
draw (thelabel.bot(str, (0,up))) rotated ang shifted X;
enddef; % End of function S_tiltlabel_top_up.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% str           the string or picture
% X             anchor point
% ang           angle of tilt
%%%%%%%%%%%%%%%%%%%%%%%%%
%    S_tiltlabel_top    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_tiltlabel_top(expr str, X, ang) =
% draw (thelabel.top(str, (0,0))) rotated ang shifted X;
S_tiltlabel_top_up(str, X, ang, 0);
enddef; % End of function S_tiltlabel_top.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% str           the string or picture
% X             anchor point
% ang           angle of tilt
%%%%%%%%%%%%%%%%%%%%%%%%%
%    S_tiltlabel_bot    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_tiltlabel_bot(expr str, X, ang) =
% draw (thelabel.bot(str, (0,0))) rotated ang shifted X;
S_tiltlabel_bot_up(str, X, ang, 0);
enddef; % End of function S_tiltlabel_bot.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% X             anchor point
% ang           angle of tilt
% str           the string or picture
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_tiltlabel      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_tiltlabel(expr str, X, ang) =
S_tiltlabel_top(str, X, ang);
enddef; % End of function S_tiltlabel.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Xa            centre of circle a
% Da            diameter of circle a
% Xb            centre of circle b
% Db            diameter of circle b
% Db            diameter of circle b
% Stop          top string
% Sbot          bottom string
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_raylabels      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_raylabels(expr Xa, Da, Xb, Db, Stop, Sbot) =
begingroup
pair S_v[];
picture S_pic;
S_Ra := Da/2;
S_Rb := Db/2;

% Assume that S_Rb >= S_Ra, and hope that it doesn't matter.
S_r := S_Rb - S_Ra;
S_d := length(Xb - Xa);
if S_d > S_r:
    S_rd := S_r / S_d;
    S_h := S_rd * sqrt(1 - S_rd*S_rd);
    S_k := S_rd * S_rd;
    S_v0 := Xa - Xb;
    S_v1 := S_v0 rotated -90;
    S_v2 := (S_v0 scaled S_k) + (S_v1 scaled S_h);

    % The top tangent points.
    if length Stop > 0:
        S_v3 := Xa + (S_v2 * (S_Ra/S_r));
        S_v4 := Xb + (S_v2 * (S_Rb/S_r));
        S_v5 := 0.5[S_v3,S_v4];
        S_pic := thelabel.top(Stop, (0,0));
        draw S_pic rotated (angle(S_v4-S_v3)) shifted S_v5;
        fi

    % The bottom tangent points.
    if length Sbot > 0:
        S_v3 := Xa - (S_v2 * (S_Ra/S_r));
        S_v4 := Xb - (S_v2 * (S_Rb/S_r));
        S_v5 := 0.5[S_v3,S_v4];
        S_pic := thelabel.bot(Sbot, (0,0));
        draw S_pic rotated (angle(S_v4-S_v3)) shifted S_v5;
        fi
    fi
endgroup
enddef; % End of function S_raylabels.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw the set of real numbers.
% pair q        origin point
% numeric a     length of positive real arrow
% numeric b     length of positive mark for origin
% pen pn        the pen to use
% axcol         colour of axis line
% barcol        colour of bar line
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_realscol       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_realscol(expr q, a, b, pn, axcol, barcol) =
begingroup
pickup pn;
drawarrow ((-a,0)--(a,0)) shifted q withcolor axcol;
draw ((0,-b)--(0,b)) shifted q withcolor barcol;
label.bot(btex $\reals$ etex, q+(0,-b));
endgroup
enddef; % End of function S_realscol.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw the set of real numbers.
% pair q        origin point
% numeric a     length of positive real arrow
% numeric b     length of positive mark for origin
% pen pn        the pen to use
%%%%%%%%%%%%%%%%%%%%%%%%%
%        S_reals        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_reals(expr q, a, b, pn) =
S_realscol(q, a, b, pn, black, black);
enddef; % End of function S_reals.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a set of coords for reals^2 within given pair of sets.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        S_rnsets       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_rnsets(expr q, unit, np, nq, xt, penIN, colIN,
    patBDY, penBDY, colBDY, patSUB, penSUB, colSUB, bgSUB, patMID) =
begingroup
picture S_pic;
path S_pat;

% Draw grey lines inside the set G_1.
S_pic := nullpicture;
for i=-np upto np:
    S_pat := ((i*unit, -(nq+xt)*unit)--(i*unit, (nq+xt)*unit)) shifted q;
    addto S_pic doublepath S_pat withpen penIN withcolor colIN;
    endfor
for j=-nq upto nq:
    S_pat := ((-(np+xt)*unit, j*unit)--((np+xt)*unit, j*unit)) shifted q;
    addto S_pic doublepath S_pat withpen penIN withcolor colIN;
    endfor
clip S_pic to patBDY;
addto currentpicture also S_pic;

% Draw grey lines inside the subset of G_1.
fill patSUB withcolor bgSUB;
S_pic := nullpicture;
for i=-np upto np:
    S_pat := ((i*unit, -(nq+xt)*unit)--(i*unit, (nq+xt)*unit)) shifted q;
    addto S_pic doublepath S_pat withpen penSUB withcolor colSUB;
    endfor
for j=-nq upto nq:
    S_pat := ((-(np+xt)*unit, j*unit)--((np+xt)*unit, j*unit)) shifted q;
    addto S_pic doublepath S_pat withpen penSUB withcolor colSUB;
    endfor
clip S_pic to patSUB;
addto currentpicture also S_pic;

% Draw the outer boundary and the inter-subset boundary.
pickup penBDY;
draw patBDY withcolor colBDY;
draw patMID withcolor colBDY;
endgroup
enddef; % End of function S_rnsets.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a set of coords for reals^2 within given set.
% pair q        origin of coords
% numeric unit  size of squares
% np            number of vertical lines
% nq            number of horizontal lines
% xt            extension over integer number of grid lines
% penIN         pen for grid within set
% colIN         colour for grid within set
% path bdy      boundary of set
% penBDY        pen for boundary
% colBDY        colour for boundary
%%%%%%%%%%%%%%%%%%%%%%%%%
%        S_rnset        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_rnset(expr q, unit, np, nq, xt, penIN, colIN, bdy, penBDY, colBDY) =
begingroup
picture S_pic;
path S_pat;

% Draw grey lines inside the set G.
S_pic := nullpicture;
for i=-np upto np:
    S_pat := ((i*unit, -(nq+xt)*unit)--(i*unit, (nq+xt)*unit)) shifted q;
    addto S_pic doublepath S_pat withpen penIN withcolor colIN;
    endfor
for j=-nq upto nq:
    S_pat := ((-(np+xt)*unit, j*unit)--((np+xt)*unit, j*unit)) shifted q;
    addto S_pic doublepath S_pat withpen penIN withcolor colIN;
    endfor
clip S_pic to bdy;
addto currentpicture also S_pic;
pickup penBDY;
draw bdy withcolor colBDY;
endgroup
enddef; % End of function S_rnset.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a set of coords for reals^2.
%%%%%%%%%%%%%%%%%%%%%%%%%
%         S_rn          %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_rn(expr q, unit, np, nq, xt, col) =
begingroup
for i=-np upto np:
    draw ((i*unit, -(nq+xt)*unit)--(i*unit, (nq+xt)*unit)) shifted q
        withcolor col;
    endfor
for j=-nq upto nq:
    draw ((-(np+xt)*unit, j*unit)--((np+xt)*unit, j*unit)) shifted q
        withcolor col;
    endfor

% Add the axes of reals^n
drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted q;
drawarrow ((0,-nq-xt)--(0,nq+xt+1)) scaled unit shifted q;
endgroup
enddef; % End of function S_rn.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a set with subset.
% pair c        centre of circle
% numeric d     diameter of circle
% numeric a     fraction of circle arc for subset (8 => 2pi)
% numeric b     fraction of radius for subset from centre
% numeric g     whiteness of subset complement
% numeric t     rotation of subset
%%%%%%%%%%%%%%%%%%%%%%%%%
%       S_subset        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_subset(expr c, d, a, b, g, t) =
begingroup
path S_p[];
pair S_q[];
color S_shade;

S_shade := (g,g,g);
S_p0 := fullcircle scaled d;

S_q0 := point a of S_p0;
S_q1 := (d/2*b,0);
S_q2 := point -a of S_p0;

S_p2 := subpath(-a,a) of S_p0 & S_q0..S_q1..S_q2 & cycle;
S_p3 := subpath(a,8-a) of S_p0 & S_q2..S_q1..S_q0 & cycle;
fill S_p3 rotated t shifted c withcolor S_shade;
draw S_p0 rotated t shifted c;
draw S_p2 rotated t shifted c;
endgroup
enddef; % End of function S_subset.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a set with two subsets.
% pair c        centre of circle
% numeric d     diameter of circle
% numeric t     rotation 1 of subset
% numeric a     angle 1 of circle arc for subset
% numeric b     fraction 1 of radius for subset from centre
%
% numeric u     rotation 2 of subset
% numeric e     angle 2 of circle arc for subset
% numeric f     fraction 2 of radius for subset from centre
%
% numeric g     colour of intersection of 0 subsets
% numeric h     colour of intersection of 1 subset only
% numeric i     colour of intersection of 2 subsets
%%%%%%%%%%%%%%%%%%%%%%%%%
%     S_subsets_col     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_subsets_col(expr c, d, t, a, b, u, e, f, g, h, i) =
begingroup
path S_p[];
pair S_q[];
% pair S_times[];
color S_shade[];
numeric S_t[];

S_shade0 := g;
S_shade1 := h;
S_shade2 := i;
S_p0 := fullcircle scaled d;

S_t0 := xpart(S_p0 intersectiontimes ((0,0)--(d,0) rotated (t + a)));
S_t1 := xpart(S_p0 intersectiontimes ((0,0)--(d,0) rotated (t - a)));
if S_t0 < S_t1: S_t0 := S_t0 + 8; fi
S_t2 := xpart(S_p0 intersectiontimes ((0,0)--(d,0) rotated (u + e)));
S_t3 := xpart(S_p0 intersectiontimes ((0,0)--(d,0) rotated (u - e)));
if S_t2 < S_t3: S_t2 := S_t2 + 8; fi
if S_t1 < S_t3: S_t1 := S_t1 + 8; S_t0 := S_t0 + 8; fi
% showvariable S_t;

S_q0 := point S_t0 of S_p0;
S_q1 := (d/2*b,0) rotated t;
S_q2 := point S_t1 of S_p0;

S_q3 := point S_t2 of S_p0;
S_q4 := (d/2*f,0) rotated u;
S_q5 := point S_t3 of S_p0;

S_p8 := (S_q0..S_q1..S_q2);
S_p9 := (S_q3..S_q4..S_q5);
S_q10 := S_p8 intersectiontimes S_p9;

S_p1 := subpath(S_t0,S_t1) of S_p0 & S_q2..S_q1..S_q0 & cycle;
S_p2 := subpath(S_t2,S_t3) of S_p0 & S_q5..S_q4..S_q3 & cycle;

% Boundary of intersection of S_1 and S_2.
S_p3 := subpath(S_t2,S_t1) of S_p0
    & subpath(length S_p8,xpart(S_q10)) of S_p8
    .. subpath(ypart(S_q10),0) of S_p9
    & cycle;
% Boundary of set S_1 \ S_2.
S_p4 := subpath(0,xpart(S_q10)) of S_p8
    .. subpath(ypart(S_q10),0) of S_p9
    & subpath(S_t2,S_t0) of S_p0
    & cycle;
% Boundary of set S_2 \ S_1.
S_p5 := subpath(length S_p8,xpart(S_q10)) of S_p8
    .. subpath(ypart(S_q10),length S_p9) of S_p9
    & subpath(S_t3,S_t1) of S_p0
    & cycle;
% Boundary of complement of S_1 and S_2.
S_p6 := subpath(S_t0,S_t3+8) of S_p0
    & subpath(length S_p9,ypart(S_q10)) of S_p9
    .. subpath(xpart(S_q10),0) of S_p8
    & cycle;

% S_p2 := subpath(-a,a) of S_p0 & S_q0..S_q1..S_q2 & cycle;
% S_p3 := subpath(a,8-a) of S_p0 & S_q2..S_q1..S_q0 & cycle;
fill S_p3 shifted c withcolor S_shade[2];
fill S_p4 shifted c withcolor S_shade[1];
fill S_p5 shifted c withcolor S_shade[1];
fill S_p6 shifted c withcolor S_shade[0];
% fill S_p4 shifted c withcolor S_shade[0];

draw S_p8 shifted c;
draw S_p9 shifted c;
draw S_p0 shifted c;
% draw S_p3 shifted c withcolor green;
endgroup
enddef; % End of function S_subsets_col.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a set with two subsets.
% pair c        centre of circle
% numeric d     diameter of circle
% numeric t     rotation 1 of subset
% numeric a     angle 1 of circle arc for subset
% numeric b     fraction 1 of radius for subset from centre
%
% numeric u     rotation 2 of subset
% numeric e     angle 2 of circle arc for subset
% numeric f     fraction 2 of radius for subset from centre
%
% numeric g     whiteness of intersection of 0 subsets
% numeric h     whiteness of intersection of 1 subset only
% numeric i     whiteness of intersection of 2 subsets
%%%%%%%%%%%%%%%%%%%%%%%%%
%       S_subsets       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_subsets(expr c, d, t, a, b, u, e, f, g, h, i) =
begingroup
color S_gg, S_hh, S_ii;
S_gg := (g,g,g);
S_hh := (h,h,h);
S_ii := (i,i,i);

S_subsets_col(c, d, t, a, b, u, e, f, S_gg, S_hh, S_ii);
endgroup
enddef; % End of function S_subsets.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a kind of Venn diagram for 2 sets.
% patA      outline of set A
% patB      outline of set B
% colA      colour of singly covered region
% colB      colour of intersection
%%%%%%%%%%%%%%%%%%%%%%%%%
%       S_venn_AB       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_venn_AB(expr patA, patB, colA, colB) =
begingroup
picture S_pic;

% Shade the translated range-sets.
fill patA withcolor colA;
fill patB withcolor colA;
S_pic := nullpicture;
addto S_pic contour patA withcolor colB;
clip S_pic to patB;
addto currentpicture also S_pic;
endgroup
enddef; % End of function S_venn_AB.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a kind of Venn diagram for 3 sets.
% patA      outline of set A
% patB      outline of set B
% patC      outline of set C
% colA      colour of singly covered region
% colB      colour of intersection of 2 sets
% colC      colour of intersection of 3 sets
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_venn_ABC       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_venn_ABC(expr patA, patB, patC, colA, colB, colC) =
begingroup
picture S_pic;

% Shade the translated range-sets.
fill patA withcolor colA;
fill patB withcolor colA;
fill patC withcolor colA;

% A cap B.
S_pic := nullpicture;
addto S_pic contour patA withcolor colB;
clip S_pic to patB;
addto currentpicture also S_pic;

% A cap C.
S_pic := nullpicture;
addto S_pic contour patA withcolor colB;
clip S_pic to patC;
addto currentpicture also S_pic;

% B cap C.
S_pic := nullpicture;
addto S_pic contour patB withcolor colB;
clip S_pic to patC;
addto currentpicture also S_pic;

% A cap B cap C.
S_pic := nullpicture;
addto S_pic contour patA withcolor colC;
clip S_pic to patB;
clip S_pic to patC;
addto currentpicture also S_pic;
endgroup
enddef; % End of function S_venn_ABC.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw some text along a curve.
% strng     the text to draw
% curv      path along which to draw
% mode:
%   0       left-justified.
%   1       centred.
% fnt       font to use, e.g. "cmr9"
% scal      scale for the font
% dy        upward shift of each character.
%%%%%%%%%%%%%%%%%%%%%%%%%
%    S_textcurve_up     %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_textcurve_up(expr strng, curv, mode, fnt, scal, dy) =
begingroup
pair S_pt[], S_x[];
numeric S_n[];
string S_s[];
numeric S_w[];
picture S_pic[];

S_n0 := length strng;
S_n1 := length curv;            % The parametric length.
S_alen := arclength curv;       % The geometric length.

% Find out what the string looks like.
S_n2 := 0;      % Total width of string.
for i=0 upto S_n0-1:
    S_s[i] := substring (i,i+1) of strng;
    S_pic[i] := S_s[i] infont fnt scaled scal;
    S_w[i] := xpart(lrcorner(S_pic[i])) - xpart(llcorner(S_pic[i]));
    S_n2 := S_n2 + S_w[i];
    endfor;

% Adjust according to the drawing mode.
S_start := 0;
if mode=1: S_start := (S_alen - S_n2)/2; fi

% Draw the string along the curve.
S_n3 := S_start;    % Cumulative geometric width of string.
for i=0 upto S_n0-1:
%    S_pt0 := point ((i*S_n1)/S_n0) of curv;
%    S_pt0 := point ((S_n3*S_n1)/S_n2) of curv;
    S_atim := arctime S_n3 of curv;
    S_atimm := arctime (S_n3 + S_w[i]) of curv;
    S_atimmm := (S_atim + S_atimm)/2;
    S_pt0 := point S_atimmm of curv;
    S_pt1 := direction S_atimmm of curv;
    S_ang := angle S_pt1;
    if S_s[i] <> " ":
        draw (S_pic[i] shifted (-S_w[i]/2,dy)) rotated S_ang shifted S_pt0;
        fi
    S_n3 := S_n3 + S_w[i];
    endfor;
endgroup
enddef; % End of function S_textcurve_up.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw some text along a curve.
% strng     the text to draw
% curv      path along which to draw
% mode:
%   0       left-justified.
%   1       centred.
% fnt       font to use, e.g. "cmr9"
% scal      scale for the font
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_textcurve      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_textcurve(expr strng, curv, mode, fnt, scal) =
S_textcurve_up(strng, curv, mode, fnt, scal, 0pt);
enddef; % End of function S_textcurve_up.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Build the picture ords[nord] from the paths
% ords[0] to ords[nord-1].
% picture ords[];   Previously defined pictures.
% numeric nord;     Positive new ordinal number.
% numeric spx;      Spacing between old pictures.
% numeric spout;    Spacing outside old pictures.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       S_ordset        %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_ordset(text ords)(expr nord, spx, spout) =
begingroup
save i, totalshift, xa, xb, ya, yb,
    ll, lr, ul, ur, pict, pth;
numeric i, totalshift, xa, xb, ya, yb;
pair ll, lr, ul, ur;
picture pict;
path pth;

% Examine the bounding boxes of all previous pictures.
pict := nullpicture;
totalshift := 0;
for i=0 upto nord-1:
    % Find the precise bounding box.
    if i=0:
        pict := ords[i];
    else:
        % Copy picture i to the right of picture i-1.
        xa := xpart(lrcorner ords[i-1]);
        xb := xpart(llcorner ords[i]);
        totalshift := totalshift + xa-xb+spx;
        addto pict also (ords[i] shifted (totalshift,0));
        fi
    endfor;

ll := (llcorner pict) + (-spout,-spout);
lr := (lrcorner pict) + ( spout,-spout);
ur := (urcorner pict) + ( spout, spout);
ul := (ulcorner pict) + (-spout, spout);
pth := ll--lr--ur--ul--cycle;

addto pict doublepath pth withpen currentpen;
ords[nord] := pict;

endgroup
enddef; % End of function S_ordset.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Build the picture ords[nord] from the paths
% ords[0] to ords[nord-1]. Builds vertically.
% picture ords[];   Previously defined pictures.
% numeric nord;     Positive new ordinal number.
% numeric spx;      Spacing between old pictures.
% numeric spout;    Spacing outside old pictures.
%%%%%%%%%%%%%%%%%%%%%%%%%
%       S_ordsetv       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_ordsetv(text ords)(expr nord, spx, spy, spout, nmaxh) =
begingroup
save i, htotalshift, vtotalshift, xa, xb, ya, yb,
    ll, lr, ul, ur, pict, pth;
numeric i, htotalshift, vtotalshift, xa, xb, ya, yb;
pair ll, lr, ul, ur;
picture pict;
path pth;

% Examine the bounding boxes of all previous pictures.
pict := nullpicture;
htotalshift := 0;
vtotalshift := 0;
for i=0 upto nord-1:
    % Find the precise bounding box.
    if i=0:
        pict := ords[i];
    elseif i <= nmaxh:
        % Copy picture i to the right of picture i-1.
        xa := xpart(lrcorner ords[i-1]);
        xb := xpart(llcorner ords[i]);
        htotalshift := htotalshift + xa-xb+spx;
        addto pict also (ords[i] shifted (htotalshift,0));
    else:
        % Copy picture i below picture i-1.
        ya := ypart(llcorner ords[i-1]);
        yb := ypart(ulcorner ords[i]);
        vtotalshift := vtotalshift + yb-ya+spy;
        addto pict also (ords[i] shifted (0,-vtotalshift));
        fi
    endfor;

ll := (llcorner pict) + (-spout,-spout);
lr := (lrcorner pict) + ( spout,-spout);
ur := (urcorner pict) + ( spout, spout);
ul := (ulcorner pict) + (-spout, spout);
pth := ll--lr--ur--ul--cycle;

addto pict doublepath pth withpen currentpen;
ords[nord] := pict;

endgroup
enddef; % End of function S_ordsetv.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Build the picture univ[depth].
% Must be called only after depth 0 has been constructed.
% picture univ[];   Previously defined pictures of universes.
% numeric depth;    Depth of new universe to construct.
% numeric spx;      Spacing between old pictures.
% numeric spout;    Spacing outside old pictures.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_universe       %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_universe(text univ)(expr depth, r, spx, spout, penSET) =
begingroup
save i, totalshift, xa, xb, ya, yb,
    ll, lr, ul, ur, pict, pth;
numeric Umax, i, totalshift, xa, xb, ya, yb, nsets, mask[];
pair ll, lr, ul, ur, labs[];
picture pict, setY, setZ, sets[];
path pth;

% Sanity check.
if depth < 0:
    depth = 0;
    fi
if depth > 4:
    depth = 4;
    fi

% Calculate the total number of sets in this universe.
nsets := 0;
nmask := 0;
for i=1 upto depth:
    nsets := 2**nsets;
    if i < depth:
        nmask := 2**nmask;
        fi
    endfor;

% Initialise the bit pattern (mask).
for i=0 upto nmask-1:
    mask[i] := 0;
    endfor

% The empty set, to seed the process.
pickup pencircle scaled penSET;
pat := (-r,-r)--(r,-r)--(r,r)--(-r,r)--cycle;
setZ := nullpicture;
addto setZ doublepath pat withpen currentpen;

sets[0] := setZ;
pict := setZ;
setY := setZ;

% Examine the bounding boxes of all previous pictures.
totalshiftZ := 0;
totalshift := 0;
for i=1 upto nsets-1:
    % Increment the bit-mask.
    ncarry := 1;
    for j=0 upto nmask-1:
        if ncarry > 0:
            mask[j] := mask[j] + 1;
            ncarry := ncarry - 1;
            fi
        if mask[j] > 1:
            mask[j] := mask[j] - 2;
            ncarry := ncarry + 1;
            fi
        endfor

    % Construct a new set according to the bits set in the mask.
    setZ := nullpicture;
    totalshiftZ := 0;
    jlast := -1;
    for j=0 upto nmask-1:
        if mask[j] > 0:
            xa := 0;
            if jlast >= 0:
                xa := xpart(lrcorner sets[jlast]);
                fi
            xb := xpart(llcorner sets[j]);
            totalshiftZ := totalshiftZ + xa-xb+spx;
            addto setZ also (sets[j] shifted (totalshiftZ,0));
            jlast := j;
            fi
        endfor

    % Put a bounding box around the new set.
    ll := (llcorner setZ) + (-spout,-spout);
    lr := (lrcorner setZ) + ( spout,-spout);
    ur := (urcorner setZ) + ( spout, spout);
    ul := (ulcorner setZ) + (-spout, spout);
    pth := ll--lr--ur--ul--cycle;
    addto setZ doublepath pth withpen currentpen;

    % Append the new set to the set of sets.
    xa := xpart(lrcorner setY);
    xb := xpart(llcorner setZ);
    totalshift := totalshift + xa-xb+spx;
    addto pict also (setZ shifted (totalshift,0));
    setY := setZ;

    % Save the new set if it will be needed later.
    if i < nmask:
        sets[i] := setZ;
        fi
    endfor;

% Put a bounding rectangle around the whole thing.
if depth > 0:
    ll := (llcorner pict) + (-spout,-spout);
    lr := (lrcorner pict) + ( spout,-spout);
    ur := (urcorner pict) + ( spout, spout);
    ul := (ulcorner pict) + (-spout, spout);
    pth := ll--lr--ur--ul--cycle;
    addto pict doublepath pth withpen currentpen;
    fi
univ[depth] := pict;

endgroup
enddef; % End of function S_universe.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a set of axes.
% e is rotation of X axis from normal X axis.
% f is rotation of Y axis from normal X axis.
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_axes_draw      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_axes_draw(expr p, rg, rh, rj, e, f, g) =
    begingroup
    S_rjg := rh*g + rj - rh;

    % X axis.
    drawarrow (p+(-rg,0) rotated e)..(p+(rj,0) rotated e);
    % Y axis.
    drawarrow (p+(0,-rg*g) rotated f)..(p+(0,S_rjg) rotated f);

    draw (p+(0,rh*g) rotated f + (-rg,0) rotated e)
       ..(p+(0,rh*g) rotated f + (rg,0) rotated e); % Y = 1.
    draw (p+(0,-rh*g) rotated f + (-rg,0) rotated e)
       ..(p+(0,-rh*g) rotated f + (rg,0) rotated e); % Y = -1.

    draw (p+(0,-rg*g) rotated f + (rh,0) rotated e)
       ..(p+(0,rg*g) rotated f + (rh,0) rotated e); % X = 1.
    draw (p+(0,-rg*g) rotated f + (-rh,0) rotated e)
       ..(p+(0,rg*g) rotated f + (-rh,0) rotated e); % X = -1.
    endgroup
enddef; % End of function S_axes_draw.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an X at a specified point, in a specified direction.
% pnt       the point
% pntV      the direction (should be non-zero)
% adj       adjustment (shift) of X in the direction specified
% xsize     size of the X
% penX      thickness of the two lines of the X
% col       colour of X
%%%%%%%%%%%%%%%%%
%   S_draw_x    %
%%%%%%%%%%%%%%%%%
def S_draw_x(expr pnt, pntV, adj, xsize, penX, col) =
begingroup
pair S_v[];

% S_v0 := the unit vector in the direction of Xb - Xa.
S_v0 := pntV;
if length(S_v0) <> 0:
    S_v0 := S_v0/length(S_v0);
    fi
S_v3 := S_v0 rotated 45;
S_v4 := S_v0 rotated -45;
S_v5 := pnt + xsize * S_v3;
S_v6 := pnt - xsize * S_v3;
S_v7 := pnt + xsize * S_v4;
S_v8 := pnt - xsize * S_v4;

% Draw the X.
pickup pencircle scaled penX;
draw (S_v5--S_v6) shifted (adj * S_v0);
draw (S_v7--S_v8) shifted (adj * S_v0);

endgroup
enddef; % End of function S_draw_x.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw an arrow with an X on it.
% Xa        first point.
% Xb        second point. (Should be different to the first point.)
% da        space at beginning of arrow
% db        space at end of arrow
% penLN     thickness of arrow line
% xsize     size of the X
% penX      thickness of the two lines of the X
% msk       arrowmask
% col       colour of arrow
% sty       a style specification, such as:
%           "dashed evenly withcolor black", but without the quotes.
%%%%%%%%%%%%%%%%%
%   S_arrow_x   %
%%%%%%%%%%%%%%%%%
def S_arrow_x(expr Xa, Xb, da, db, penLN, xsize, penX, msk, col)(text sty) =
begingroup
pair S_v[];

% Adjustment to get out of the way of the arrowhead.
if (msk = 1):
    S_adjust := -1.5bp;
elseif (msk = 2):
    S_adjust := 1.5bp;
else:
    S_adjust := 0pt;
    fi

% S_v0 := the unit vector in the direction of Xb - Xa.
S_v0 := (Xb)-(Xa);
if length(S_v0) <> 0:
    S_v0 := S_v0/length(S_v0);
    fi
S_v1 := Xa + S_v0 * da;
S_v2 := Xb - S_v1 * db;
S_v3 := S_v0 rotated 45;
S_v4 := S_v0 rotated -45;
S_v5 := 0.5[S_v1,S_v2] + xsize * S_v3;
S_v6 := 0.5[S_v1,S_v2] - xsize * S_v3;
S_v7 := 0.5[S_v1,S_v2] + xsize * S_v4;
S_v8 := 0.5[S_v1,S_v2] - xsize * S_v4;

% Draw the arrow.
pickup pencircle scaled penLN;
S_drawmask(msk) (S_v1--S_v2) sty withcolor col;

% Draw the X.
S_draw_x(0.5[S_v1,S_v2], S_v0, S_adjust, xsize, penX, black);

endgroup
enddef; % End of function S_arrow_x.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% X             anchor point
% ang           angle of tilt
% N             number of parallelism arrow marks
%%%%%%%%%%%%%%%%%%%%%%%%%
%    S_tilt_parallel    %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_tilt_parallel(expr X, ang, N) =
begingroup
numeric S_x, S_y, S_d, S_N;
pair S_v;
path S_pat;

S_x := 4pt;
S_y := 3pt;
S_d := S_x;
S_v := (S_d, 0) rotated ang;
S_N := max(0,N);
S_pat := ((-S_x, S_y)--(0,0)--(-S_x, -S_y)) shifted (S_x/2,0);

pickup pencircle scaled 0.5bp;
for i=0 upto S_N-1:
    draw S_pat rotated ang shifted (X + (i-(S_N-1)/2)*S_v);
    endfor

endgroup
enddef; % End of function S_tilt_parallel.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% X             anchor point
% ang           angle of tilt
%%%%%%%%%%%%%%%%%%%%%%%%%
%      S_tilt_perp      %
%%%%%%%%%%%%%%%%%%%%%%%%%
def S_tilt_perp(expr X, ang) =
begingroup
numeric S_x, S_y;
path S_pat;

S_x := 4pt;
S_y := 4pt;
S_pat := (S_x,0)--(S_x,S_y)--(0,S_y);

pickup pencircle scaled 0.5bp;
draw S_pat rotated ang shifted X;

endgroup
enddef; % End of function S_tilt_perp.
