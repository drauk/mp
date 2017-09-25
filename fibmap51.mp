% tex/conc/mp/fibmap51.mp   2017-7-4   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap51.mp 5f0861274b 2017-07-04 09:01:25Z Alan U. Kennington $
% Form-style non-topological fibrations.

input boxmax
input mapmax
input centmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair p[], midpt;
color col[];

xx := 0;
yy := 0;
ww := 2.0cm;
hh := 0.8cm;
wwB := ww;
hhB := hh;
rCORN := 0.2cm;
dW := 1.0cm;
dH := dW;
xxB := xx + ww + dW;
yyB := yy - hh - dH;
yyC := yy + hh + dH;
sepA := 2pt;
gapA := 2pt;
sepBx := 18pt;
sepBy := 8pt;
sepC := 8pt;                % Arrow for h_z.
sepD := 5pt;
sepE := 1pt;

penLN := 0.5bp;
penPT := 2.5bp;
penVEC := 0.5bp;
penARROW := 0.5bp;

penSET := 1.2bp;
col1 := 0.5 white;
ratSET := 0.2;

p10 := (xx,yy);             % E. Top left corners of boxes.
p11 := (xx,yyB);            % B
p12 := (xxB,yy);            % E bar.
p13 := (xxB,yyC);           % W.
midpt := 0.5[p10,p11+(ww,hhB)];

p15 := p10 + (0,-hh/2);     % Label points for boxes.
p16 := p11 + (0,-hhB/2);
p17 := p12 + (wwB,-hh/2);
p18 := p13 + (wwB,-hh/2);

p20 := p10 + (ww/2, -hh);   % End-points for arrows.
p21 := p11 + (ww/2, 0);
p22 := p10 + (ww, -hh/2);   % End-points for arrows.
p23 := p12 + (0, -hh/2);
p24 := p12 + (ww/2, 0);     % End-points for arrows.
p25 := p13 + (ww/2, -hh);
p26 := p11 + (ww, 0);       % End-points for arrows.
p27 := p12 + (0, -hh);

% Points.
p30 := p11 + (ww/2, -hhB/2); % p.
p31 := p10 + (ww/2, -hh/2);  % X(p).
p32 := p12 + (wwB/2, -hh/2); % z bar.
p33 := p13 + (wwB/2, -hh/2); % X bar(z bar).

% The short-cut map rho.
p40 := 0.5[p20,p21] + (sepA,0) + (15pt,0);
p41 := 0.5[p24,p25] + (-15pt,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.lft(btex $E$ etex, p15);

B_draw_rect_round(xx, yyB, ww, hhB, rCORN, penLN, black);
label.lft(btex $B$ etex, p16);

B_draw_rect_round(xxB, yy, wwB, hh, rCORN, penLN, black);
label.rt(btex $\bar E$ etex, p17);

B_draw_rect_round(xxB, yyC, wwB, hh, rCORN, penLN, black);
label.rt(btex $W$ etex, p18);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
% S_arrowspace(p20+(-sepA,0), p21+(-sepA,0), gapA, 1, black);
% S_arrowspace(p20+(sepA,0), p21+(sepA,0), gapA, 2, black);
% label.lft(btex $\pi$ etex, 0.5[p20,p21]+(-sepA,0));
% label.rt(btex $X$ etex, 0.5[p20,p21]+(sepA,0));
S_arrowspace(p20, p21, gapA, 1, black);
label.lft(btex $\pi$ etex, 0.5[p20,p21]);

S_arrowspace(p24, p25, gapA, 1, black);
label.lft(btex $z$ etex, 0.5[p24,p25]);

S_arrowspace(p26, p27, gapA, 2, black);
label.rt(btex $\bar\pi$ etex, 0.5[p26,p27]+(2pt,0));

% S_arrowspacesstyle(p40, p41, gapA, gapA, 1)(dashed evenly withcolor col1);
% label.top(btex $\rho$ etex, 0.5[p40,p41]+(0,2pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penPT;
draw p30;
label.lft(btex\strut $p$ etex, p30);
draw p31;
label.lft(btex $z$ etex, p31);
draw p32;
label.rt(btex $\bar z$ etex, p32);
draw p33;
label.rt(btex $z(\bar z)$ etex, p33);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
