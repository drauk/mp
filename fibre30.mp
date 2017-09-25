% tex/conc/mp/fibre30.mp   2015-10-9   Alan U. Kennington.
% $Id: tex/conc/mp/fibre30.mp bf992fa0f7 2015-10-09 10:30:49Z Alan U. Kennington $
% Riemann curvature is a kind of "exterior derivative".

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
dV := 0.8cm;
xxB := xx + ww + dV;
% yyB := yy - hh - dV;

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
ratX := 0.5;
ratY := 0.6;

penGRID := 0.4bp;
penLN := 0.5bp;
penPT := 2.5bp;
penVEC := 0.5bp;

col1 := 0.25white;
col2 := 0.75white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Left box.
p0 := (xx, yy);
p1 := p0 + (0,-hh);
p2 := p0 + (ww,0);
p3 := p0 + (ww,-hh);
p4 := p0 + (0.5ww,-0.5hh);

% Middle box.
p10 := (xxB, yy);
p11 := p10 + (0,-hh);
p12 := p10 + (ww,0);
p13 := p10 + (ww,-hh);
p14 := p10 + (0.5ww,-0.5hh);

% Right box.
p20 := (2xxB, yy);
p21 := p20 + (0,-hh);
p22 := p20 + (ww,0);
p23 := p20 + (ww,-hh);
p24 := p20 + (0.5ww,-0.5hh);

% Vectors.
v11 := (ratX * ww,0);
v12 := (0,ratY * hh);

% Left box.
p30 := p4 + (-0.5 * ratX * ww,-0.5 * ratY * hh);
p31 := p30 + v11;
p32 := p30 + v12;
p33 := p30 + v11 + v12;

% Middle box.
p40 := p30 + (p10 - p0);
p41 := p40 + v11;
p42 := p40 + v12;
p43 := p40 + v11 + v12;

% Right box.
p50 := p40 + (p10 - p0);
p51 := p50 + v11;
p52 := p50 + v12;
p53 := p50 + v11 + v12;

% Arithmetic.
p80 := 0.5[p4,p14];
p81 := 0.5[p14,p24];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw_rect_round(xx, yy, ww, hh, rCORN, penLN, black);
label.bot(btex $\partial_{\konv_u(z)}\konv_V(z)$ etex, (xx+ww/2,yy-hh));

B_draw_rect_round(xxB, yy, ww, hh, rCORN, penLN, black);
label.bot(btex $\partial_{\konv_v(z)}\konv_U(z)$ etex, (xxB+ww/2,yy-hh));

B_draw_rect_round(2xxB, yy, ww, hh, rCORN, penLN, black);
label.bot(btex $\partial_{\konv_u(z)}\konv_V(z)-\partial_{\konv_v(z)}\konv_U(z)$
etex, (2xxB+ww/2,yy-hh));

% Arithmetic.
label(btex ${}-{}$ etex, p80);
label(btex ${}={}$ etex, p81);

% Grids.
gapU := 7pt;
gapV := gapU;
for i=0 upto nq:
    p70 := (i/nq)[p30+(0,gapV),p32+(0,-gapV)];
    p71 := p70 + v11;
    drawarrow p70--p71 withcolor col2;
    endfor

for i=0 upto np:
    p70 := (i/np)[p40+(gapU,0),p41+(-gapU,0)];
    p71 := p70 + v12;
    drawarrow p70--p71 withcolor col2;
    endfor

gapA := 2pt;
gapB := 1pt;
pickup pencircle scaled penVEC;
drawarrow p31--p33 withcolor col1;
drawarrow p32--(p30+(0,gapA)) withcolor col1;

drawarrow p42--p43 withcolor col1;
drawarrow p41--(p40+(gapA,0)) withcolor col1;

drawarrow p51--(p53+(0,-gapB)) withcolor col1;
drawarrow p52--(p50+(0,gapA)) withcolor col1;
drawarrow p53--(p52+(gapB,0)) withcolor col1;
drawarrow p50--(p51+(-gapB,0)) withcolor col1;

% label.top(btex ${}-{}$ etex, p32);
% label.top(btex ${}+{}$ etex, p33);
% label.rt(btex ${}-{}$ etex, p41);
% label.rt(btex ${}+{}$ etex, p43);

% Left box.
label.llft(btex $z$ etex, p30);
label.bot(btex $\konv_u(z)$ etex, 0.5[p30,p31]);
label.lft(btex $\konv_v(z)$ etex, 0.5[p30,p32]);
label.top(btex $\konv_u(z)$ etex, 0.5[p32,p33]);
label.rt(btex $\konv_V(z)$ etex, 0.5[p31,p33]);

label.rt(btex $-$ etex, 0.5[p30,p32]);
label.lft(btex $+$ etex, 0.5[p31,p33]);

% Middle box.
label.llft(btex $z$ etex, p40);
label.bot(btex $\konv_u(z)$ etex, 0.5[p40,p41]);
label.lft(btex $\konv_v(z)$ etex, 0.5[p40,p42]);
label.top(btex $\konv_U(z)$ etex, 0.5[p42,p43]);
label.rt(btex $\konv_v(z)$ etex, 0.5[p41,p43]);

label.top(btex $-$ etex, 0.5[p40,p41]);
label.bot(btex $+$ etex, 0.5[p42,p43]);

% Right box.
label.llft(btex $z$ etex, p50);
label.bot(btex $\konv_u(z)$ etex, 0.5[p50,p51]);
label.lft(btex $\konv_v(z)$ etex, 0.5[p50,p52]);
label.top(btex $\konv_U(z)$ etex, 0.5[p52,p53]);
label.rt(btex $\konv_V(z)$ etex, 0.5[p51,p53]);

label.top(btex $+$ etex, 0.5[p50,p51]);
label.rt(btex $-$ etex, 0.5[p50,p52]);
label.bot(btex $-$ etex, 0.5[p52,p53]);
label.lft(btex $+$ etex, 0.5[p51,p53]);

pickup pencircle scaled penPT;
draw p30;
draw p40;
draw p50;

endfig;
end
