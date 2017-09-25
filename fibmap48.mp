% tex/conc/mp/fibmap48.mp   2017-2-3   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap48.mp 07142e450e 2017-02-03 13:01:15Z Alan U. Kennington $
% Connection form localisation via local principal bundle cross-sections.

input boxmax
input mapmax
input centmax
verbatimtex
% \input akmath
\input dgmpmax
etex

beginfig(1);
pair p[], midpt;
color col[];

xx := 0;
yy := 0;
ww := 4.0cm;
hh := 2.0cm;
wwB := 0.65hh;
hhB := 0.5hh;
rCORN := 0.2cm;
dW := 1.2cm;
dH := dW;
xxB := xx + ww + dW;
yyB := yy - hh - dH;
sepA := 2pt;
gapA := 2pt;
sepBx := 15pt;
sepBy := 4pt;
sepC := hh/4;

penLN := 0.5bp;
penPT := 3.0bp;
penARROW := 0.5bp;

penSET := 0.7bp;
col1 := 0.8 white;
ratSET := 0.37;
penVEC := 1.05 * penSET;
penDASH := 1.5 * penVEC;
dA := 0.6*ww/2;
dB := 0.6*hh/2;

p10 := (xx,yy);             % Top left corners of boxes.
p11 := (xx,yyB);            % M
p12 := (xxB,yy);            % G
% midpt := 0.5[p10,p11+(ww,hhB)];
midpt := 0.5[p10,p12+(wwB,0)];

% p15 := p10 + (0,-hh/3);     % Label points for boxes.
p15 := p10 + (0,-hh/2);     % Label points for boxes.
p16 := p11 + (0,-hhB/2);
% p17 := p12 + (wwB,-hh/3);
p17 := p12 + (wwB,-hh/2);

p20 := p10 + (ww/2, -hh);   % End-points for arrows.
p21 := p11 + (ww/2, 0);
p22 := p10 + (ww, -hh/2);   % End-points for arrows.
p23 := p12 + (0, -hh/2);

p30 := p12 + (wwB/2,0);                     % Vertical set.
p31 := p12 + (wwB/2,-hh);
p32 := p10 + (ww/2,0);                      % Vertical set.
p33 := p10 + (ww/2,-hh);

p50 := 0.5[p32,p33];                        % Vector on total space.
p51 := p50 + (dA, ratSET * dA);
p52 := p50 + (0, dB);
p53 := p51 + (0, dB);
p54 := p10 + (ww/2+dA, -hh); % End-points for arrows.
p55 := p11 + (ww/2+dA, 0);

p60 := (xpart(p50), ypart(p11) - hhB/2);
p61 := (xpart(p51), ypart(p11) - hhB/2);

p65 := (xpart(p12) + wwB/2, ypart(p50));
p66 := (xpart(p12) + wwB/2, ypart(p52));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penVEC;
drawarrow p50--p51;
% drawarrow p50--p52;
% drawarrow p50--p53;

pickup pencircle scaled penPT;
draw p50;

label.top(btex $X_*(V)$ etex, p51);
label.llft(btex $X(p)$ etex, p50+(0,-1pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penVEC;
drawarrow p60--p61;

pickup pencircle scaled penPT;
draw p60;

label.llft(btex $p$ etex, p60+(-1pt,0));
label.rt(btex $V$ etex, p61);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penVEC;
drawarrow p65--p66;

pickup pencircle scaled penPT;
draw p65;

label.llft(btex $e$ etex, p65);

pickup pencircle scaled penARROW;
drawarrow (p30+(-sepBx,sepBy)){dir270}..{dir0}(0.35[p30,p31]+(-2pt,0));
label.top(btex $A_X^\omega(V)=\omega(X_*(V))$ etex, p30+(0,3pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.lft(btex $P$ etex, p15);

B_draw_rect_round(xx, yyB, ww, hhB, rCORN, penLN, black);
label.lft(btex $M$ etex, p16);

B_draw_rect_round(xxB, yy, wwB, hh, rCORN, penLN, black);
label.rt(btex $G$ etex, p17);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
S_arrowspace(p20+(-sepA,0), p21+(-sepA,0), gapA, 2, black);
S_arrowspace(p20+(sepA,0), p21+(sepA,0), gapA, 1, black);
label.lft(btex\strut $X$ etex, 0.5[p20,p21]+(-sepA,0));
label.rt(btex\strut $\pi$ etex, 0.5[p20,p21]+(sepA,0));

S_arrowspace(p54+(-sepA,0), p55+(-sepA,0), gapA, 1, black);
S_arrowspace(p54+(sepA,0), p55+(sepA,0), gapA, 2, black);
label.lft(btex\strut $\pi_*$ etex, 0.5[p54,p55]+(-sepA,0));
label.rt(btex\strut $X_*$ etex, 0.5[p54,p55]+(sepA,0));

S_arrowspace(p22, p23, gapA, 1, black);
label.top(btex $\omega$ etex, 0.5[p22,p23]);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
