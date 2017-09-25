% tex/conc/mp/fibmap38.mp   2016-12-5   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap38.mp f53e5ae734 2016-12-05 05:51:33Z Alan U. Kennington $
% Horizontal lift/component/subspace, connection form and infinitesimal group
% action on a principal bundle.

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
hh := ww;
wwB := 0.5ww;
hhB := wwB;
rCORN := 0.2cm;
dW := 1.2cm;
dH := dW;
xxB := xx + ww + dW;
yyB := yy - hh - dH;
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

p10 := (xx,yy);             % Top left corners of boxes.
p11 := (xx,yyB);
p12 := (xxB,yy);
midpt := 0.5[p10,p11+(ww,hhB)];

p15 := p10 + (0,-hh/4);     % Label points for boxes.
p16 := p11 + (0,-hhB/2);
p17 := p12 + (wwB,-hh/4);

p20 := p10 + (ww/2, -hh);   % End-points for arrows.
p21 := p11 + (ww/2, 0);
p22 := p10 + (ww, -hh/2);   % End-points for arrows.
p23 := p12 + (0, -hh/2);

p30 := p10 + (0, -hh/2 - ratSET * ww/2);    % Horizontal set.
p31 := p10 + (ww, -hh/2 + ratSET * ww/2);
p32 := p10 + (ww/2,0);                      % Vertical set.
p33 := p10 + (ww/2,-hh);
% p34 := p11 + (0, -hh/2);                    % Horizontal set in base space.
% p35 := p11 + (ww, -hh/2);

p40 := p10 + (ww - sepC, sepE);
p41 := p10 + (ww + sepD, sepD);
p42 := p10 + (ww + sepE, -sepC);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penSET;
draw p30--p31 withcolor col1;
draw p32--p33 withcolor col1;
label.ulft(btex $Q_z$ etex, p31);
label.top(btex $T_{z,0}(P)$ etex, p32);
pickup pencircle scaled penARROW;
drawarrow (p32+(-sepBx,sepBy)){dir225}..{dir0}(0.25[p32,p33]+(-1.5pt,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
drawarrow p40{dir90}..p41..{dir180}p42;
label.urt(btex $h_z$ etex, p41+(-1.5pt,-1.5pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.lft(btex $T_z(P)$ etex, p15);

B_draw_rect_round(xx, yyB, ww, hhB, rCORN, penLN, black);
label.lft(btex $T_p(M)$ etex, p16);

B_draw_rect_round(xxB, yy, wwB, hh, rCORN, penLN, black);
label.rt(btex $T_e(G)$ etex, p17);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
S_arrowspace(p20+(-sepA,0), p21+(-sepA,0), gapA, 1, black);
S_arrowspace(p20+(sepA,0), p21+(sepA,0), gapA, 2, black);
label.lft(btex $(d\pi)_z$ etex, 0.5[p20,p21]+(-sepA,0));
label.rt(btex $\konZ_z$ etex, 0.5[p20,p21]+(sepA,0));

S_arrowspace(p22+(0,sepA), p23+(0,sepA), gapA, 1, black);
S_arrowspace(p22+(0,-sepA), p23+(0,-sepA), gapA, 2, black);
label.top(btex $\omega_z$ etex, 0.5[p22,p23]+(0,sepA));
label.bot(btex $\lambda_z$ etex, 0.5[p22,p23]+(0,-sepA));

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
