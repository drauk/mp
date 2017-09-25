% tex/conc/mp/fibre28.mp   2015-10-6   Alan U. Kennington.
% $Id: tex/conc/mp/fibre28.mp 59b5c5f8a0 2015-10-06 03:12:13Z Alan U. Kennington $
% Estimating Riemann curvature by parallel transport around a loop.

input boxmax
input mapmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair p[];
color col[];

xx := 0;
yy := 0;
ww := 6cm;
hh := 4cm;
rr := 0.3cm;
dd := 0.4cm;
yyB := yy - hh - dd;

unitRN := 10pt;
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
sepC := 3pt;

penCURVE := 0.5bp;
penLN := 0.5bp;
penPT := 2.5bp;
penVEC := 0.5bp;

col1 := 0.5white;

p0 := (xx, yy);
p1 := p0 + (0,-hh);
p2 := p0 + (ww,0);
p3 := p0 + (ww,-hh);
p4 := p0 + (0.5ww,-0.5hh);

p10 := (xx, yyB);
p11 := p10 + (0,-hh);
p12 := p10 + (ww,0);
p13 := p10 + (ww,-hh);
p14 := p10 + (0.5ww,-0.5hh);

p20 := 0.5[p1,p10] + (-dRN,0);

p30 := p14 + (-0.3ww,-0.35hh);
p31 := p14 + (0.28ww,-0.1hh);
p32 := p14 + (0.2ww,0.4hh);
p33 := p14 + (-0.3ww,0.4hh);

p40 := 0.5[p30,p31]+(0,6pt);
p41 := 0.5[p31,p32]+(-2pt,0);
p42 := 0.5[p32,p33]+(0,6pt);
p43 := 0.5[p33,p30]+(4pt,0);

p50 := p4 + (-0.3ww,-0.35hh);
p51 := p4 + (0.25ww,-0.1hh);
p52 := p4 + (0.26ww,0.32hh);
p53 := p4 + (-0.3ww,0.4hh);
p54 := p52 + (-4pt,4pt);

p60 := 0.5[p50,p51]+(0,6pt);
p61 := 0.5[p51,p52]+(-2pt,0);
p62 := 0.5[p54,p53]+(0,6pt);
p63 := 0.5[p53,p50]+(4pt,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw_rect_round(xx, yy, ww, hh, rr, penLN, black);
label.rt(btex $\Omega_F\subseteq\reals^m$ etex, (xx+ww,yy-hh/2));

B_draw_rect_round(xx, yyB, ww, hh, rr, penLN, black);
label.rt(btex $\Omega_M\subseteq\reals^n$ etex, (xx+ww,yyB-hh/2));

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
label.bot(btex\strut $\gamma$ etex, 0.5[p90,p91]);

p95 := p20 + (wRN,0.7hRN);
p96 := 0.5[p1,p0];
p97 := p95 + (0,sepC);
p98 := p96 + (0,sepC);
p99 := p95 + (0,-sepC);
p100 := p96 + (0,-sepC);

pickup pencircle scaled penLN;
S_arrowspaces(p97, p98, dCa, dCb, 1, black);
S_arrowspaces(p99, p100, dCa, dCb, 1, black);
label.top(btex\strut $Q$ etex, 0.5[p97,p98]);
label.bot(btex\strut $P$ etex, 0.5[p99,p100]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Gamma curve in R^n.
pickup pencircle scaled penCURVE;
drawarrow p30..p40..p31 withcolor col1;
drawarrow p31..p41..p32 withcolor col1;
drawarrow p32..p42..p33 withcolor col1;
drawarrow p33..p43..p30 withcolor col1;

pickup pencircle scaled penPT;
draw p30;
draw p31;
draw p32;
draw p33;

label.bot(btex $p=\gamma(0,0)$ etex, p30);
label.lrt(btex\strut $\tilde p=\gamma(s,0)$ etex, p31+(-12pt,0));
label.rt(btex $\gamma(s,t)$ etex, p32);
label.lft(btex $\gamma(0,t)$ etex, p33);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Lifted curve in R^m.
pickup pencircle scaled penCURVE;
drawarrow p50..p60..p51 withcolor col1;
drawarrow p51..p61..p52 withcolor col1;
drawarrow p54..p62..p53 withcolor col1;
drawarrow p53..p63..p50 withcolor col1;

pickup pencircle scaled penPT;
draw p50;
draw p51;
draw p52;
draw p53;
draw p54;

label.bot(btex $z=P(0,0)\rlap{${}=Q(0,0)$}$ etex, p50);
label.lrt(btex\strut $\tilde z=P(s,0)$ etex, p51+(-12pt,0));
label.rt(btex $P(s,t)$ etex, p52);
label.top(btex $Q(s,t)$ etex, p54);
label.lft(btex $Q(0,t)$ etex, p53);

endfig;
end
