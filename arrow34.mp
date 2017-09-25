% tex/conc/mp/arrow34.mp   2012-4-9   Alan U. Kennington.
% $Id: tex/conc/mp/arrow34.mp a1f0e80311 2012-04-09 11:28:48Z Alan U. Kennington $
% Notations for tensor spaces.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 3.3cm;
bb := 1.2cm;
cc := 0.80cm;
ddA := 0.4cm;
ddB := 0.3cm;
ee := 1.3cm;
ffA := 1.15cm;
% ffB := 0.6cm;
ffB := 1.15cm;

qqa := 0.38cm;
qqb := 0.25cm;
qqc := 0.20cm;
da := 4.5cm;
dyA := 3pt;
dyB := 8pt;
dyC := 9pt;

penA := 0.5bp;              % Pen scale for markings.
penB := 0.5bp;              % Pen scale for boxes.
sizeA := 3pt;

de := ddA + 2pt;
dg := ffA + 28pt;

w0 := (0,0);
w1 := w0 + (0,bb);

w2 := w0 + (da,0);
w3 := w2 + (0,bb);

w4 := w2 + (da,0);
w5 := w4 + (0,bb);

w10 := w1 + (0,ffB);
w11 := w10 + (0,dyC);
w12 := w3 + (0,ffB);
w13 := w12 + (0,dyC);
w14 := w5 + (0,ffB);
w15 := w14 + (0,dyC);

%==============================================================================
% Multilinear maps from the V-spaces to K.
label(btex
 \strut$\displaystyle\mathop{\times}\limits_{\alpha\in A}V_\alpha$ etex, w0);
label(btex \strut$K$ etex, w1);

pickup pencircle scaled penA;
S_arrowspaces(w0, w1, qqa, qqb, 1, black);
S_erd(w0, w1, qqa, qqb, 3, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penB;
pat1 := (w0+(-cc,-ddA))--(w0+(cc,-ddA))--(w1+(cc,ddB))--(w1+(-cc,ddB))--cycle;
draw pat1;

label.bot(btex \strut$\mlin((V_\alpha)_{\alpha\in A})$ etex, w0+(0,-de));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label(btex \strut$K$ etex, w10);

pickup pencircle scaled penA;
S_arrowspaces(w1, w10, qqa, qqb, 1, black);
S_erd(w1, w10, qqa, qqb, 1, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penB;
pat4 := (w0+(-ee,-ffA))--(w0+(ee,-ffA))--(w11+(ee,0))--(w11+(-ee,0))--cycle;
draw pat4;

label.top(btex \strut$\botimesc\limits_{\alpha\in A}V_\alpha
 =\mlin((V_\alpha)_{\alpha\in A})^*$ etex, w0+(0,-dg));

%==============================================================================
% Multilinear maps from the W-spaces to K.
label(btex
 \strut$\displaystyle V_1\dots V_m$ etex, w2);
label(btex \strut$K$ etex, w3);

pickup pencircle scaled penA;
S_arrowspaces(w2, w3, qqa, qqb, 1, black);
S_erd(w2, w3, qqa, qqb, 3, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penB;
pat2 := (w2+(-cc,-ddA))--(w2+(cc,-ddA))--(w3+(cc,ddB))--(w3+(-cc,ddB))--cycle;
draw pat2;

label.bot(btex \strut$\mlin(V_1,\dots V_m)$ etex, w2+(0,-de));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label(btex \strut$K$ etex, w12);

pickup pencircle scaled penA;
S_arrowspaces(w3, w12, qqa, qqb, 1, black);
S_erd(w3, w12, qqa, qqb, 1, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penB;
pat5 := (w2+(-ee,-ffA))--(w2+(ee,-ffA))--(w13+(ee,0))--(w13+(-ee,0))--cycle;
draw pat5;

label.top(btex \strut$\vphantom{\botimesc\limits_{\alpha\in A}}
 \botimesc\limits_{i=1}^mV_m=\mlin((V_i)_{i=1}^m)^*$ etex, w2+(0,-dg));

%==============================================================================
% Multilinear maps from the V-spaces to K.
label(btex \strut$\underbrace{V\dots V}$ etex, w4+(0,dyA));
% label(btex $m$ etex, w4+(0,-dyB));
label(btex $\scriptstyle m$ etex, w4+(0,-dyB));
label(btex \strut$K$ etex, w5);

pickup pencircle scaled penA;
S_arrowspaces(w4, w5, qqa, qqb, 1, black);
S_erd(w4, w5, qqa, qqb, 3, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penB;
pat3 := (w4+(-cc,-ddA))--(w4+(cc,-ddA))--(w5+(cc,ddB))--(w5+(-cc,ddB))--cycle;
draw pat3;

label.bot(btex \strut$\mlin_m(V)$ etex, w4+(0,-de));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label(btex \strut$K$ etex, w14);

pickup pencircle scaled penA;
S_arrowspaces(w5, w14, qqa, qqb, 1, black);
S_erd(w5, w14, qqa, qqb, 1, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penB;
pat6 := (w4+(-ee,-ffA))--(w4+(ee,-ffA))--(w15+(ee,0))--(w15+(-ee,0))--cycle;
draw pat6;

label.top(btex \strut$\vphantom{\botimesc\limits_{\alpha\in A}}
 \botimesc^mV=\mlin_m(V)^*$ etex, w4+(0,-dg));

endfig;
end
