% tex/conc/mp/fibmap47.mp   2016-12-23   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap47.mp d6c4e93521 2016-12-23 11:08:43Z Alan U. Kennington $
% Identity charts for principal bundles.

input boxmax
input mapmax
input centmax
verbatimtex
% \input akmath
etex

beginfig(1);
pair p[], midpt, v[];
color col[];

xx := 0;
yy := 0;
ww := 2.0cm;                % Width of box.
hh := ww;                   % Height of box.
wwB := 0.5ww;
hhB := wwB;
rCORN := 0.2cm;
dW := 1.0cm;                % Space between boxes.
dH := 1.0cm;                % Space between boxes.
xxB := xx + ww + dW;
yyB := yy - hh - dH;
xxC := xx + ww + dW + (ww-wwB)/2;
yyC := yy - hh - dH - (hh-hhB)/2;
gapA := 3pt;
gapB := 0.5pt;
gapC := 3.5pt;
% gapE := 4pt;
gapE := 0pt;
dBe := -0.25*hh/2;          % e
dBg := 0.65*hh/2;           % g
dC := 0.09ww;               % Down arrow.
dD := dC + gapC;            % Up arrow.
ratD := 0.5;                % X label.
sepA := 12.0bp;             % Line spacing.

penLN := 0.5bp;
penPT := 2.5bp;
penSLICE := penPT;
penARROW := 0.5bp;
penBIGDOT := 4.0bp;
penDASH := 0.6bp;           % Dashed arrow.
col1 := 0.7white;
col2 := 0.5white;           % Dashed arrow.
dZ := (penSLICE - penLN)/2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p10 := (xx,yy);             % M_0. Top left corners of boxes.
p11 := (xx,yyC);            % M_1
p12 := (xxC,yy);            % M_2
p13 := (xxB,yyB);           % M_1 x M_2.
midpt := 0.5[p10, p13 + (ww,hh)];

p15 := p10 + (ww/2,0);      % M_0. Label points for boxes.
p16 := p11 + (0,-hhB/2);    % M_1
p17 := p12 + (wwB/2,0);     % M_2
p18 := p13 + (ww, -hh/2);   % M_1 x M_2
p19 := p11 + (ww/2,-hhB);   % Lower text label.

p20 := p10 + (ww/2, -hh);   % End-points for arrows.
p21 := p11 + (ww/2, 0);
p22 := p10 + (ww, -hh/2);   % End-points for arrows.
p23 := p12 + (0, -hh/2);
p24 := p10 + (ww, -hh);     % End-points for arrows.
p25 := p13;
v1 := ((p25 - p24)*(gapE/2/length(p25-p24))) rotated 90;
p26 := p24 + v1;
p27 := p25 + v1;
p28 := p24 - v1;
p29 := p25 - v1;

p50 := (xx + dD, yy - hh/2);                % X(b)
p52 := p50 + (0, dBe);                      % e
p53 := p50 + (0, dBg);                      % g

p66 := (xpart(p12) + wwB/2, ypart(p52));    % e
p67 := (xpart(p12) + wwB/2, ypart(p53));    % g

p70 := (xpart(p10) + dZ, ypart(p66));
p71 := (xpart(p10) + ww - dZ, ypart(p66));
% p72 := 0.5[p70,p71] + (0,penSLICE/2);
p73 := p71 + (0,-penSLICE/2);

p80 := (xpart(p10) + dC, ypart(p66)) + (0,-penSLICE/2);
p81 := (xpart(p80), ypart(p11));
p82 := (xpart(p10) + dD, ypart(p66)) + (0,-penSLICE/2);
p83 := (xpart(p82), ypart(p11));

p84 := (xx + dD, yyC - hhB/2);
p85 := (xxB + dD, yyB - hh/2 + dBe);
p86 := (xx + dD, ypart(p66));
p87 := (xx - dD, yy - hh/10);
p88 := (xx + dD, ypart(p67));
p89 := (xxB + dD, yyB - hh/2 + dBg);

p90 := p87+(1.5pt,3pt);

%==============================================================================
pickup pencircle scaled penSLICE;
draw p70--p71 withcolor col1;
% label.top(btex $\phi^{-1}(\{e\})$ etex, p72);
label.llft(btex $X(U)$ etex, p73);

pickup pencircle scaled penLN;
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.top(btex $\pi^{-1}(U)\subseteq P$ etex, p15);

B_draw_rect_round(xx, yyC, ww, hhB, rCORN, penLN, black);
label.lft(btex $U\subseteq B$ etex, p16);

B_draw_rect_round(xxC, yy, wwB, hh, rCORN, penLN, black);
label.top(btex $G$ etex, p17);

B_draw_rect_round(xxB, yyB, ww, hh, rCORN, penLN, black);
label.rt(btex $U\times G$ etex, p18);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penPT;
draw p66;
label.rt(btex\strut $e=\phi_X(X(\pi(z)))$ etex, p66);
label.rt(btex\strut $\phantom{e}{}=\phi_X(z_0)$ etex, p66+(0,-sepA));
draw p67;
label.rt(btex\strut $g=\phi_X(z)$ etex, p67);
label.rt(btex\strut $\phantom{g}{}=\phi(z_0)^{-1}\phi(z)$ etex, p67+(0,-sepA));

draw p84;
label.rt(btex\strut $b=\pi(z)$ etex, p84);

draw p85;
label.rt(btex\strut $(b,e)$ etex, p85);
draw p89;
label.rt(btex\strut $(b,g)$ etex, p89);

pickup pencircle scaled penBIGDOT;
draw p86;
pickup pencircle scaled penARROW;
S_arrowspaces(p87, p86, 0, penBIGDOT/2 + 1.5pt, 1, black);
label.lft(btex\strut $z_0=X(\pi(z))$ etex, p90);
label.lft(btex\strut $\rlap{${}=X(b)$}\phantom{{}=X(\pi(z))}$ etex,
 p90+(0,-sepA));

pickup pencircle scaled penPT;
draw p53;
% label.rt(btex\strut $z\in\pi^{-1}(\{b\})$ etex, p53);
label.rt(btex\strut $z\in P_b$ etex, p53);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penDASH;
S_arrow(p86, p53, gapA+penSLICE/2, gapA, 1, col2, 0)(dashed evenly);
S_arrow(p66, p67, gapA+penSLICE/2, gapA, 1, col2, 0)(dashed evenly);
S_arrow(p85, p89, gapA+penSLICE/2, gapA, 1, col2, 0)(dashed evenly);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
S_arrowspace(p20, p21, gapA, 1, black);
label.rt(btex $\pi$ etex, 0.5[p20,p21]);

S_arrowspace(p22, p23, gapA, 1, black);
label.top(btex $\phi_X$ etex, 0.5[p22,p23]);

S_arrowspace(p26, p27, gapB, 1, black);
S_tiltlabel_top_up(btex $\pi\times\phi_X$ etex,
 0.5[p26,p27], angle(p27-p26), 0);
% S_arrowspace(p28, p29, gapB, 1, black);
% S_tiltlabel_bot_up(btex $\pi\times\phi_X$ etex,
%  0.5[p28,p29], angle(p29-p28), 0);

S_arrowspaces(p84, p82, gapA, gapA+penPT/2-1pt, 1, black);
label.lft(btex\strut $X$ etex, ratD[p82,p84]);

% Lower text label.
label.bot(btex\strut Input $X$. Output $\phi_X$. etex, p19+(0,-2pt));

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
