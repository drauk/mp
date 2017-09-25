% tex/conc/mp/fibmap42.mp   2016-12-5   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap42.mp 142a9c7bf2 2016-12-05 11:53:44Z Alan U. Kennington $
% Differential of left action map by a principal bundle element.

input boxmax
input mapmax
input centmax
verbatimtex
% \input akmath
% \input dgmpmax
etex

beginfig(1);
pair p[], midpt;
color col[];

xx := 0;
yy := 0;
ww := 2.0cm;                % Width of box.
hh := ww;                   % Height of box.
wwB := 0.5ww;
hhB := wwB;
rCORN := 0.2cm;
dW := 2.4cm;                % Space between boxes.
dH := 0.9cm;                % Space between boxes.
xxB := xx + ww + dW;
yyB := yy - hh - dH;
yyC := yy + hh + dH;
sepA := 3pt;
sepB := 12pt;               % Top text.
sepC := 2pt;                % Arrow for R^P_g.
gapA := 2pt;
gapB := 2pt;
dB := 0.5*hh/2;
dPa := 0.25*hh/2;           % Centre of circular arrow.

penLN := 0.5bp;
penPT := 2.5bp;
penVEC := 0.5bp;
penARROW := 0.5bp;
col1 := 0.5white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
p10 := (xx,yy);             % Top left corners of boxes.
p11 := (xx,yyB);            % M
p12 := (xxB,yy);            % G
p13 := (xx,yyC);            % T_z(P)
p14 := (xxB,yyC);           % T_e(G)
midpt := 0.5[p10,p11+(ww,hhB)];

p15 := p10 + (0,0);         % Label points for boxes.
p16 := p11 + (0,-hhB/2);    % M
p17 := p12 + (wwB,0);       % G
p18 := p10 + (0, -hh/2);    % P arrow.
p19 := p12 + (wwB, -hh/2);  % G arrow.

p20 := p10 + (ww/2, -hh);   % End-points for arrows.
p21 := p11 + (ww/2, 0);
p22 := p10 + (ww, -hh/2);   % End-points for arrows.
p23 := p12 + (0, -hh/2);
p24 := p10 + (ww/2, 0);     % End-points for arrows.
p25 := p13 + (ww/2, -hh);
p26 := p12 + (wwB/2, 0);    % End-points for arrows.
p27 := p14 + (wwB/2, -hh);
p28 := p13 + (ww, -hh/2);   % End-points for arrows.
p29 := p14 + (0, -hh/2);

p32 := p10 + (ww/2,0);                      % Vertical set.
p33 := p10 + (ww/2,-hh);
p34 := p10 + (ww/2,-hh/2);
p35 := p11 + (ww/2,-hh/4);

p40 := p18 + (-sepC, dPa);  % R^P_g arrow.
p41 := p19 + (sepC, dPa);   % R^G_g arrow.

p50 := 0.5[p32,p33];                        % Vector on total space.
p51 := p34;
p52 := p50 + (0, dB);
p53 := p51 + (0, dB);
p54 := p13 + (ww/2, -hh/2);
p55 := p14 + (wwB/2, -hh/2);

p65 := (xpart(p12) + wwB/2, ypart(p50));
p66 := (xpart(p12) + wwB/2, ypart(p52));

p73 := p13 + (0,-hh/2);     % T_z(P)
p74 := p14 + (wwB,-hh/2);   % T_e(G)

p80 := p54 + (p53 - p51);   % u
p81 := p55 + (p66 - p65);   % u

%==============================================================================
pickup pencircle scaled penARROW;
drawarrow reverse subpath (2,6) of fullcircle scaled (2dPa) shifted p40;
label.lft(btex\strut $R^P_g$ etex, p40+(-0.5dPa - 2pt,0));
drawarrow subpath (6,10) of fullcircle scaled (2dPa) shifted p41;
label.rt(btex\strut $R^G_g$ etex, p41+(0.5dPa + 2pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.lft(btex\strut $P$ etex, p15);

B_draw_rect_round(xx, yyB, ww, hhB, rCORN, penLN, black);
label.lft(btex $M$ etex, p16);

B_draw_rect_round(xxB, yy, wwB, hh, rCORN, penLN, black);
label.rt(btex\strut $G$ etex, p17);

B_draw_rect_round(xx, yyC, ww, hh, rCORN, penLN, black);
label.lft(btex $T_z(P)$ etex, p73);

B_draw_rect_round(xxB, yyC, wwB, hh, rCORN, penLN, black);
label.rt(btex $T_e(G)$ etex, p74);

% Top text.
% label.top(btex $L^P_z(g)=zg=R^P_g(z)$ etex, p15+(0,sepB));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penPT;
draw p65;
label.rt(btex $e$ etex, p65);
draw p66;
label.rt(btex $g$ etex, p66);
draw p51;
label.lft(btex $z$ etex, p51);
draw p53;
label.lft(btex $zg$ etex, p53);
draw p35;
label.lft(btex\strut $\pi(z)$ etex, p35);
label.rt(btex\strut $\pi(zg)$ etex, p35);

draw p54;
label.lft(btex $0$ etex, p54);
draw p55;
label.rt(btex $0$ etex, p55);
draw p80;
label.lft(btex $\lambda_z(u)$ etex, p80);
draw p81;
label.rt(btex $u$ etex, p81);

pickup pencircle scaled penARROW;
S_arrowspace(p51, p53, gapB, 1, col1);
S_arrowspace(p65, p66, gapB, 1, col1);
S_arrowspace(p54, p80, gapB, 1, col1);
S_arrowspace(p55, p81, gapB, 1, col1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
S_arrowspace(p20, p21, gapA, 1, black);
label.lft(btex $\pi$ etex, 0.5[p20,p21]);
S_arrowspace(p24, p25, gapA, 2, black);
label.rt(btex $\pi_{T(P)}$ etex, 0.5[p24,p25]);
S_arrowspace(p26, p27, gapA, 2, black);
label.lft(btex $\pi_{T(G)}$ etex, 0.5[p26,p27]);

S_arrowspace(p22+(0,sepA), p23+(0,sepA), gapA, 2, black);
S_arrowspace(p22+(0,-sepA), p23+(0,-sepA), gapA, 1, black);
label.top(btex $L^P_z$ etex, 0.5[p22,p23]+(0,sepA));
label.bot(btex\strut $\phi\in A_P^G$ etex, 0.5[p22,p23]+(0,-sepA));

S_arrowspace(p28+(0,sepA), p29+(0,sepA), gapA, 2, black);
S_arrowspace(p28+(0,-sepA), p29+(0,-sepA), gapA, 1, black);
label.top(btex $\lambda_z=(dL^P_z)_e$ etex, 0.5[p28,p29]+(0,sepA));
label.bot(btex\strut $(d\phi)_z$ etex, 0.5[p28,p29]+(0,-sepA));

% C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
