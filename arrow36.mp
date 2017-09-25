% tex/conc/mp/arrow36.mp   2012-4-10   Alan U. Kennington.
% $Id: tex/conc/mp/arrow36.mp 35363b858e 2012-04-10 00:40:28Z Alan U. Kennington $
% Tensor space duals and canonical multilinear maps. Not showing isomorphisms.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 3.0cm;
bb := 1.50cm;

qqa := 0.39cm;
qqb := 0.70cm;
qqc := 0.70cm;

penA := 0.5bp;
sizeA := 3pt;

rat := 0.23;
ratt := 0.27;

dxA := 0.9bb;
ratA := 0.75qqb/bb;

w11 := (0,0);
w12 := w11 + (0,bb);
w13 := w12 + (0,bb);
w14 := w13 + (0,bb);
w19 := 0.5[w11,w13]+(-dxA,0);

w21 := w11 + (aa,0);
w22 := w21 + (0,bb);
w23 := w22 + (0,bb);
w24 := w23 + (0,bb);
w29 := 0.5[w21,w23]+(dxA,0);

%==============================================================================
% Multilinear maps from the V-spaces to K.
label(btex
 \strut$\displaystyle\mathop{\times}\limits_{\alpha\in A}V_\alpha$ etex, w11);
label(btex \strut$\mlin((V_\alpha)_{\alpha\in A})$ etex, w12);
label(btex \strut$\botimesc\limits_{\alpha\in A}V_\alpha$ etex, w13);
label(btex \strut$\bigl(\botimesc\limits_{\alpha\in A}V_\alpha\bigr)^*$ etex,
 w14);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspaces(w11, w12, qqa, qqa, 0, black);
S_erd(w11, w12, qqa, qqa, 3, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
S_arrowspaces(w12, w13, qqa, qqa, 0, black);
S_erd(w12, w13, qqa, qqa, 1, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
S_arrowspaces(w13, w14, qqa, qqa, 0, black);
S_erd(w13, w14, qqa, qqa, 1, 0, black, black, sizeA, sizeA, penA, penA);

%==============================================================================
% Multilinear maps from the W-spaces to K.
label(btex
 \strut$\displaystyle\mathop{\times}\limits_{\alpha\in A}V_\alpha^*$ etex, w21);
label(btex \strut$\mlin((V_\alpha^*)_{\alpha\in A})$ etex, w22);
label(btex \strut$\botimesc\limits_{\alpha\in A}V_\alpha^*$ etex, w23);
label(btex \strut$\bigl(\botimesc\limits_{\alpha\in A}V_\alpha^*\bigr)^*$ etex,
 w24);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspaces(w21, w22, qqa, qqa, 0, black);
S_erd(w21, w22, qqa, qqa, 3, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
S_arrowspaces(w22, w23, qqa, qqa, 0, black);
S_erd(w22, w23, qqa, qqa, 1, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
S_arrowspaces(w23, w24, qqa, qqa, 0, black);
S_erd(w23, w24, qqa, qqa, 1, 0, black, black, sizeA, sizeA, penA, penA);

%==============================================================================
% Cross-arrows.
pickup pencircle scaled penA;
S_arrowspaces(w11, w21, qqb, qqb, 0, black);
S_erd(w11, w21, qqb, qqb, 1, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
S_arrowspaces(w11, w22, qqc, qqc, 1, black);
S_arrowspaces(w21, w12, qqc, qqc, 1, black);

% S_arrowspaces(w12, w23, qqc, qqc, 1, black);
% S_arrowspaces(w22, w13, qqc, qqc, 1, black);

% S_arrowspaces(w13, w24, qqc, qqc, 1, black);
% S_arrowspaces(w23, w14, qqc, qqc, 1, black);

label.top(btex $\eta^T$ etex, rat[w11,w22]);
label.top(btex $\eta$ etex, rat[w21,w12]);

% S_tiltlabel_top_up(btex iso etex, ratt[w12,w23], angle(w23-w12), 0pt);
% S_tiltlabel_top_up(btex iso etex, ratt[w22,w13], angle(w22-w13), 0pt);

% S_tiltlabel_top_up(btex iso etex, ratt[w13,w24], angle(w23-w12), 0pt);
% S_tiltlabel_top_up(btex iso etex, ratt[w23,w14], angle(w22-w13), 0pt);

pickup pencircle scaled penA;
pat1 := w11..w19..w13;
drawarrow (subpath(ratA,2-ratA) of pat1);
label.lft(btex $\mu$ etex, w19);

pat2 := w21..w29..w23;
drawarrow (subpath(ratA,2-ratA) of pat2);
label.rt(btex $\mu^*$ etex, w29);

endfig;
end
