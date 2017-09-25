% tex/conc/mp/fibre29.mp   2015-10-9   Alan U. Kennington.
% $Id: tex/conc/mp/fibre29.mp 3cfde14e87 2015-10-09 04:59:27Z Alan U. Kennington $
% Computing Riemann curvature from a horizontal lift function.

input boxmax
input mapmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair p[], v[];
color col[];

xx := 0;
yy := 0;
ww := 4cm;
hh := 3cm;
rCORN := 0.3cm;
dV := 0.6cm;
yyB := yy - hh - dV;

unitRN := 6pt;
np := 3;
nq := 3;
xt := 0.3;
wRN := (np+xt) * unitRN;
wwRN := (np+xt+1) * unitRN;
hRN := (nq+xt) * unitRN;
hhRN := (nq+xt+1) * unitRN;
dRN := wRN + 3cm;
dCa := 3pt;
dCb := 3pt;
sepCORN := rCORN;

penGRID := 0.4bp;
penLN := 0.5bp;
penPT := 2.5bp;
penVEC := 0.5bp;

col1 := 0.5white;
col2 := 0.85white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Top box.
p0 := (xx, yy);
p1 := p0 + (0,-hh);
p2 := p0 + (ww,0);
p3 := p0 + (ww,-hh);
p4 := p0 + (0.5ww,-0.5hh);

% Bottom box.
p10 := (xx, yyB);
p11 := p10 + (0,-hh);
p12 := p10 + (ww,0);
p13 := p10 + (ww,-hh);
p14 := p10 + (0.5ww,-0.5hh);

% Projection map arrow.
p80 := p3 + (-sepCORN,sepCORN);
p81 := p12 + (-sepCORN,-sepCORN);

% R^2.
p20 := 0.5[p1,p10] + (-dRN,0);

% Vectors.
v11 := (0.3ww,-0.1hh);
v12 := (0.4ww,0.3hh);

% Top box.
p30 := p4 + (-0.3ww,-0.1hh);
p31 := p30 + v11;
p32 := p30 + v12;

% Bottom box.
p40 := p30 + (p10 - p0);
p41 := p40 + v11;
p42 := p40 + v12;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.rt(btex $E$ etex, (xx+ww,yy-hh/2));

B_draw_rect_round(xx, yyB, ww, hh, rCORN, penLN, black);
label.rt(btex $M$ etex, (xx+ww,yyB-hh/2));

pickup pencircle scaled penLN;
drawarrow p80--p81;
label.rt(btex $\pi_E$ etex, 0.5[p3,p12]);

% Grids.
gapU := 0.9;
gapV := 0.7;
for i=1 upto np:
    p70 := p30 + (i/(np+gapU)) * v11;
    p71 := p70 + v12;
    drawarrow p70--p71 withcolor col2;
    endfor
for i=1 upto nq:
    p70 := p30 + (i/(nq+gapV)) * v12;
    p71 := p70 + v11;
    drawarrow p70--p71 withcolor col2;
    endfor

for i=1 upto np:
    p70 := p40 + (i/(np+gapU)) * v11;
    p71 := p70 + v12;
    drawarrow p70--p71 withcolor col2;
    endfor
for i=1 upto nq:
    p70 := p40 + (i/(nq+gapV)) * v12;
    p71 := p70 + v11;
    drawarrow p70--p71 withcolor col2;
    endfor

pickup pencircle scaled penVEC;
drawarrow p30--p31 withcolor col1;
drawarrow p30--p32 withcolor col1;
drawarrow p40--p41 withcolor col1;
drawarrow p40--p42 withcolor col1;

label.lft(btex $z$ etex, p30);
label.bot(btex $\konv_u(z)$ etex, p31);
label.top(btex $\konv_v(z)$ etex, p32);

label.lft(btex $p$ etex, p40);
label.bot(btex $u$ etex, p41+(0,-1pt));
label.top(btex $v$ etex, p42+(0,1pt));

pickup pencircle scaled penPT;
draw p30;
draw p40;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the (s,t) variable space for the family of curves.
pickup pencircle scaled penLN;
S_rn(p20, unitRN, np, nq, xt, black);
% label.lft(btex $\reals^2$ etex, p20+(-wRN,0));
label.bot(btex $I\subseteq\reals^2$ etex, p20+(0,-hRN));
label.lrt(btex $s$ etex, p20+(wwRN,0));
label.ulft(btex $t$ etex, p20+(0,hhRN));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some arrows.
p90 := p20 + (wRN,-0.7hRN);
p91 := 0.5[p10,p11];

pickup pencircle scaled penLN;
S_arrowspaces(p90, p91, dCa, dCb, 1, black);
% label.bot(btex\strut $\gamma=\pi_E\circ\hat\gamma$ etex, 0.5[p90,p91]);
S_tiltlabel_bot(btex\strut $\gamma=\pi_E\circ\hat\gamma$ etex,
 0.5[p90,p91], angle(p91-p90));

p95 := p20 + (wRN,0.7hRN);
p96 := 0.5[p1,p0];

pickup pencircle scaled penLN;
S_arrowspaces(p95, p96, dCa, dCb, 1, black);
label.top(btex\strut $\hat\gamma$ etex, 0.5[p95,p96]);
% S_tiltlabel_top(btex\strut $\hat\gamma$ etex, 0.5[p95,p96], angle(p96-p95));

endfig;
end
