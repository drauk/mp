% tex/conc/mp/prodmap8.mp   2017-1-26   Alan U. Kennington.
% $Id: tex/conc/mp/prodmap8.mp 9a07691bf9 2017-01-26 05:37:13Z Alan U. Kennington $
% Diffeomorphism between slice of set diffeomorphic to product of sets.

input boxmax
input mapmax
input centmax
verbatimtex
\input akmath
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
gapA := 2pt;
gapB := 0.5pt;
gapC := 3pt;
gapE := 4pt;
dB := 0.35*hh/2;
dC := 0.20ww;               % Down arrow.
dD := dC + gapC;            % Up arrow.
ratD := 0.65;

spRN := 4.5pt;
spRNy := 2.5pt;
unit := 0.2cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;

penLN := 0.5bp;
penPT := 2.5bp;
penSLICE := penPT;
penARROW := 0.5bp;
penRN := 0.4bp;

col1 := 0.65white;
dZ := (penSLICE - penLN)/2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p10 := (xx,yy);             % M_0. Top left corners of boxes.
p11 := (xx,yyC);            % M_1
p12 := (xxC,yy);            % M_2
p13 := (xxB,yyB);           % M_1 x M_2.
p14 := p11 + (-ww,-hhB/2); % R^{n_1}
midpt := 0.5[p10,p13] + 0.5(ww,hh);

p15 := p10 + (0,-hh/2);     % M_0. Label points for boxes.
% p16 := p11 + (0,-hhB/2);    % M_1
p16 := p11 + (ww/2,-hhB);   % M_1
p17 := p12 + (wwB,-hh/2);   % M_2
p18 := p13 + (ww, -hh/2);   % M_1 x M_2

p20 := p10 + (ww/2, -hh);   % End-points for arrows.
p21 := p11 + (ww/2, 0);
p22 := p10 + (ww, -hh/2);   % End-points for arrows.
p23 := p12 + (0, -hh/2);
p24 := p10 + (ww, -hh);     % End-points for arrows.
p25 := p13;
% v1 := ((p25 - p24)*(gapE/2/length(p25-p24))) rotated 90;
v1 := (0,0);
p26 := p24 + v1;
p27 := p25 + v1;
p28 := p24 - v1;
p29 := p25 - v1;

p32 := p10 + (ww/2,0);                      % Vertical set.
p33 := p10 + (ww/2,-hh);

p50 := 0.5[p32,p33];                        % Vector on total space.
p52 := p50 + (0, dB);

p66 := (xpart(p12) + wwB/2, ypart(p52));

p70 := (xpart(p10) + dZ, ypart(p66));
p71 := (xpart(p10) + ww - dZ, ypart(p66));
p72 := 0.5[p70,p71] + (0,penSLICE/2);
p73 := (xpart(p10), ypart(p66));
p74 := p73 + (-20bp, 10bp);

p80 := (xpart(p10) + dC, ypart(p66));
p81 := (xpart(p80), ypart(p11));
p82 := (xpart(p10) + dD, ypart(p66));
p83 := (xpart(p82), ypart(p11));

p90 := p11 + (0,-hhB/2);
p91 := p14 + ((np+1+xt)*unit+spRN,0);

%==============================================================================
pickup pencircle scaled penSLICE;
draw p70--p71 withcolor col1;
label.top(btex $\phi_2^{-1}(\{p_2\})$ etex, p72);

pickup pencircle scaled penLN;
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.lft(btex $M_0$ etex, p15);

B_draw_rect_round(xx, yyC, ww, hhB, rCORN, penLN, black);
% label.lft(btex $M_1$ etex, p16);
label.bot(btex\strut $M_1$ etex, p16);

B_draw_rect_round(xxC, yy, wwB, hh, rCORN, penLN, black);
label.rt(btex $M_2$ etex, p17);

B_draw_rect_round(xxB, yyB, ww, hh, rCORN, penLN, black);
label.rt(btex $M_1\times M_2$ etex, p18);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penPT;
draw p66;
label.rt(btex\strut $p_2$ etex, p66);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
S_arrowspace(p20, p21, gapA, 1, black);
label.rt(btex $\phi_1$ etex, 0.5[p20,p21]);

S_arrowspace(p22, p23, gapA, 1, black);
label.top(btex $\phi_2$ etex, 0.5[p22,p23]);

S_arrowspace(p26, p27, gapB, 1, black);
S_tiltlabel_top_up(btex $\phi_1\times\phi_2$ etex,
 0.5[p26,p27], angle(p27-p26), 0);
% S_arrowspace(p28, p29, gapB, 2, black);
% % S_tiltlabel_bot_up(btex $\phi$ etex, 0.5[p28,p29], angle(p29-p28), 0);
% label.llft(btex $\phi$ etex, 0.5[p28,p29]+(1bp,1bp));

S_arrowspace(p80, p81, gapA, 1, black);
label.lft(btex\strut $\phi_1\bigr\vert_{\phi_2^{-1}(\{p_2\})}$ etex,
 ratD[p80,p81]+(1bp,0));
% S_arrowspace(p82, p83, gapA, 2, black);
% label.rt(btex\strut $g_1$ etex, ratD[p82,p83]);

S_arrowspaces(p74, p73, 0, gapA, 1, black);
label.lft(btex\strut $M_1^{p_2}$ etex, p74+(2bp,2bp));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penRN;
S_rn(p14, unit, np, nq, xt, col0);
label.bot(btex $\reals^{n_1}$ etex, p14+(0,-(np+xt)*unit-spRNy));

S_arrowspaces(p90, p91, gapA, 0, 1, black);
label.top(btex $\psi$ etex, 0.5[p90,p91]);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
