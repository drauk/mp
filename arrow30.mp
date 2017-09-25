% tex/conc/mp/arrow30.mp   2012-4-8   Alan U. Kennington.
% $Id: tex/conc/mp/arrow30.mp 7e9d058561 2012-04-08 12:52:11Z Alan U. Kennington $
% Mixed tensor product space definition.

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
cc := 0.68cm;
ddA := 0.4cm;
ddB := 0.3cm;
ee := 1.4cm;
ffA := 1.15cm;
ffB := 0.6cm;

qqa := 0.38cm;
qqb := 0.25cm;
qqc := 0.20cm;
da := 3.5cm;

penA := 0.5bp;              % Pen scale for markings.
penB := 0.5bp;              % Pen scale for boxes.
sizeA := 3pt;

de := 12pt;
df := de + 12pt;
dg := 13pt;

w0 := (0,0);
w1 := w0 + (0,bb);

w2 := w0 + (da,0);
w3 := w2 + (0,bb);

w10 := 0.5[w0+(cc,-ddA),w1+(cc,ddB)];   % Right of left box.
w11 := 0.5[w2+(-cc,-ddA),w3+(-cc,ddB)]; % Left of right box.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Multilinear maps from the V-spaces to K.
label(btex
 \strut$\displaystyle\mathop{\times}\limits_{\alpha\in A}V_\alpha$ etex, w0);
label(btex \strut$K$ etex, w1);

pickup pencircle scaled penA;
S_arrowspaces(w0, w1, qqa, qqb, 1, black);
S_erd(w0, w1, qqa, qqb, 3, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\mlin((V_\alpha)_{\alpha\in A};K)$ etex, w0+(0,-ddA));
% label.bot(btex \strut over a set etex, w1+(0,-df));

pickup pencircle scaled penB;
pat1 := (w0+(-cc,-ddA))--(w0+(cc,-ddA))--(w1+(cc,ddB))--(w1+(-cc,ddB))--cycle;
draw pat1;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Multilinear maps from the W-spaces to K.
label(btex
 \strut$\displaystyle\mathop{\times}\limits_{\beta\in B}W_\beta$ etex, w2);
label(btex \strut$K$ etex, w3);

pickup pencircle scaled penA;
S_arrowspaces(w2, w3, qqa, qqb, 1, black);
S_erd(w2, w3, qqa, qqb, 3, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\mlin((W_\beta)_{\beta\in B};K)$ etex, w2+(0,-ddA));
% label.bot(btex \strut over a set etex, w1+(0,-df));

pickup pencircle scaled penB;
pat2 := (w2+(-cc,-ddA))--(w2+(cc,-ddA))--(w3+(cc,ddB))--(w3+(-cc,ddB))--cycle;
draw pat2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspaces(w10, w11, qqc, qqc, 1, black);
S_erd(w10, w11, qqc, qqc, 1, 0, black, black, sizeA, sizeA, penA, penA);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penB;
pat3 := (w0+(-ee,-ffA))--(w2+(ee,-ffA))--(w3+(ee,ffB))--(w1+(-ee,ffB))--cycle;
draw pat3;

label.bot(btex
\strut$\Lin(\mlin((V_\alpha)_{\alpha\in A};K),\mlin((W_\beta)_{\beta\in B};K))$
 etex,
 0.5[w0,w2]+(0,-ffA));
label.bot(btex
 \strut$=\botimesr((V_\alpha)_{\alpha\in A};\,(W_\beta)_{\beta\in B})$ etex,
 0.5[w0,w2]+(0,-ffA-dg));

endfig;
end
