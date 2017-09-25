% tex/conc/mp/arrow33.mp   2012-4-9   Alan U. Kennington.
% $Id: tex/conc/mp/arrow33.mp a1f0e80311 2012-04-09 11:28:48Z Alan U. Kennington $
% Notations for multilinear function spaces.

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
ee := 1.4cm;
ffA := 1.15cm;
ffB := 0.6cm;

qqa := 0.38cm;
qqb := 0.25cm;
qqc := 0.20cm;
da := 3.0cm;
dyA := 3pt;
dyB := 8pt;

penA := 0.5bp;              % Pen scale for markings.
penB := 0.5bp;              % Pen scale for boxes.
sizeA := 3pt;

de := ddA + 2pt;

w0 := (0,0);
w1 := w0 + (0,bb);

w2 := w0 + (da,0);
w3 := w2 + (0,bb);

w4 := w2 + (da,0);
w5 := w4 + (0,bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Multilinear maps from the V-spaces to K.
label(btex
 \strut$\displaystyle\mathop{\times}\limits_{\alpha\in A}V_\alpha$ etex, w0);
label(btex \strut$K$ etex, w1);

pickup pencircle scaled penA;
S_arrowspaces(w0, w1, qqa, qqb, 1, black);
S_erd(w0, w1, qqa, qqb, 3, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\mlin((V_\alpha)_{\alpha\in A})$ etex, w0+(0,-de));

pickup pencircle scaled penB;
pat1 := (w0+(-cc,-ddA))--(w0+(cc,-ddA))--(w1+(cc,ddB))--(w1+(-cc,ddB))--cycle;
draw pat1;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Multilinear maps from the W-spaces to K.
label(btex
 \strut$\displaystyle V_1\dots V_m$ etex, w2);
label(btex \strut$K$ etex, w3);

pickup pencircle scaled penA;
S_arrowspaces(w2, w3, qqa, qqb, 1, black);
S_erd(w2, w3, qqa, qqb, 3, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\mlin(V_1,\dots V_m)$ etex, w2+(0,-de));

pickup pencircle scaled penB;
pat2 := (w2+(-cc,-ddA))--(w2+(cc,-ddA))--(w3+(cc,ddB))--(w3+(-cc,ddB))--cycle;
draw pat2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Multilinear maps from the V-spaces to K.
label(btex \strut$\underbrace{V\dots V}$ etex, w4+(0,dyA));
% label(btex $m$ etex, w4+(0,-dyB));
label(btex $\scriptstyle m$ etex, w4+(0,-dyB));
label(btex \strut$K$ etex, w5);

pickup pencircle scaled penA;
S_arrowspaces(w4, w5, qqa, qqb, 1, black);
S_erd(w4, w5, qqa, qqb, 3, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\mlin_m(V)$ etex, w4+(0,-de));

pickup pencircle scaled penB;
pat1 := (w4+(-cc,-ddA))--(w4+(cc,-ddA))--(w5+(cc,ddB))--(w5+(-cc,ddB))--cycle;
draw pat1;

endfig;
end
