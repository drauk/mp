% tex/conc/mp/prodmap9.mp   2017-1-20   Alan U. Kennington.
% $Id: tex/conc/mp/prodmap9.mp d62dfb8a4e 2017-01-19 15:13:45Z Alan U. Kennington $
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
dC := 0.25ww;               % Up arrow.
dD := dC + gapC;            % Down arrow.
ratD := 0.7;

penLN := 0.5bp;
penPT := 2.5bp;
penSLICE := penPT;
penARROW := 0.5bp;
col1 := 0.65white;
dZ := (penSLICE - penLN)/2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p10 := (xx,yy);             % M_0. Top left corners of boxes.
p11 := (xx,yyC);            % M_1
p12 := (xxC,yy);            % M_2
p13 := (xxB,yyB);           % M_1 x M_2.
midpt := 0.5[p10,p13] + 0.5(ww,hh);

p15 := p10 + (0,-hh/2);     % M_0. Label points for boxes.
p16 := p11 + (0,-hhB/2);    % M_1
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

p40 := p13 + (0, -hh/2);    % End-points for arrows.
p41 := p11 + (ww, -hhB/2);
p42 := p13 + (ww/2, 0);     % End-points for arrows.
p43 := p12 + (wwB/2, -hh);

p50 := 0.5[p32,p33];                        % Vector on total space.
p52 := p50 + (0, dB);

p66 := (xpart(p12) + wwB/2, ypart(p52));

p70 := (xpart(p10) + dZ, ypart(p66));
p71 := (xpart(p10) + ww - dZ, ypart(p66));
p72 := 0.5[p70,p71] + (0,penSLICE/2);
p73 := (xpart(p13) + dZ, ypart(p66 + p13 - p12));
p74 := (xpart(p13) + ww - dZ, ypart(p66 + p13 - p12));
p75 := 0.5[p73,p74] + (0,penSLICE/2);

p80 := (xpart(p10) + dC, ypart(p66));
p81 := (xpart(p80), ypart(p11));
p82 := (xpart(p10) + dD, ypart(p66));
p83 := (xpart(p82), ypart(p11));

%==============================================================================
pickup pencircle scaled penSLICE;
draw p70--p71 withcolor col1;
label.top(btex $\scriptstyle\phi(M_1\times\{p_2\})$ etex, p72);

draw p73--p74 withcolor col1;
label.top(btex $\scriptstyle M_1\times\{p_2\}$ etex, p75);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.lft(btex $M_0$ etex, p15);

B_draw_rect_round(xx, yyC, ww, hhB, rCORN, penLN, black);
label.lft(btex $M_1$ etex, p16);

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
% S_arrowspace(p20, p21, gapA, 1, black);
% label.rt(btex $\phi_1$ etex, 0.5[p20,p21]);

% S_arrowspace(p22, p23, gapA, 1, black);
% label.top(btex $\phi_2$ etex, 0.5[p22,p23]);

S_arrowspace(p40, p41, gapA, 1, black);
label.bot(btex $\pi_1$ etex, 0.5[p40,p41]);

S_arrowspace(p42, p43, gapA, 1, black);
label.rt(btex\strut $\pi_2$ etex, 0.5[p42,p43]);

S_arrowspace(p26, p27, gapB, 2, black);
label.urt(btex $\phi$ etex, 0.5[p26,p27]);

S_arrowspace(p80, p81, gapA, 2, black);
% label.lft(btex\strut $\phi^1_{p_2}$ etex, ratD[p80,p81]);
label.lft(btex\strut
 $\phi^1_{p_2}=\phi\circ(\pi_1\times\pi_2)^{-1}(\cdotsp,p_2)$ etex,
 ratD[p80,p81]);

% S_arrowspace(p82, p83, gapA, 2, black);
% label.rt(btex\strut $g_1$ etex, ratD[p82,p83]);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
