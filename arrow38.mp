% tex/conc/mp/arrow38.mp   2012-4-10   Alan U. Kennington.
% $Id: tex/conc/mp/arrow38.mp e8a9275990 2012-04-10 03:23:37Z Alan U. Kennington $
% Tensor spaces based on a single linear space.

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
qqb := 0.64cm;
qqc := 0.70cm;

penA := 0.5bp;
sizeA := 3pt;

rat := 0.23;
ratt := 0.27;
ratB := 0.72;
ratC := 0.32;
ratD := 0.32;

dxA := 0.8bb;
ratA := 0.85qqb/bb;
% dyA := 4pt;
dyA := 0pt;

dxE := 0.45bb;
ratE := 0.95qqb/aa;

w11 := (0,0);
w12 := w11 + (0,bb);
w13 := w12 + (0,bb);
w14 := w13 + (0,bb);
w19 := 0.5[w11,w13] + (-dxA,0);

w21 := w11 + (aa,0);
w22 := w21 + (0,bb);
w23 := w22 + (0,bb);
w24 := w23 + (0,bb);
w29 := 0.5[w21,w23] + (dxA,0);

w31 := w21 + (aa,0);
w39 := 0.5[w11,w31] + (0,-dxE);

%==============================================================================
% Multilinear maps from the V-spaces to K.
label(btex \strut$V^m$ etex, w11+(0,-dyA));
label(btex \strut$\mlin_m(V)$ etex, w12);
label(btex \strut$\botimesc^mV$ etex, w13);
label(btex \strut$(\botimesc^mV)^*$ etex, w14);

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
label(btex \strut$(V^*)^m$ etex, w21+(0,-dyA));
label(btex \strut$\mlin_m(V^*)$ etex, w22);
label(btex \strut$\botimesc^mV^*$ etex, w23);
label(btex \strut$(\botimesc^mV^*)^*$ etex, w24);

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

S_arrowspaces(w12, w23, qqc, qqc, 2, black);
S_arrowspaces(w22, w13, qqc, qqc, 2, black);

S_arrowspaces(w13, w24, qqc, qqc, 3, black);
S_arrowspaces(w23, w14, qqc, qqc, 3, black);

label.top(btex $\eta^T$ etex, rat[w11,w22]);
label.top(btex $\eta$ etex, rat[w21,w12]);

S_tiltlabel_top_up(btex iso etex, ratB[w12,w23], angle(w23-w12), 0pt);
S_tiltlabel_top_up(btex iso etex, ratB[w22,w13], angle(w22-w13), 0pt);

label.top(btex \strut$\bar\psi$ etex, rat[w12,w23]);
label.top(btex \strut$\psi$ etex, rat[w22,w13]);

S_tiltlabel_top_up(btex iso etex, ratD[w13,w24], angle(w23-w12), 0pt);
S_tiltlabel_top_up(btex iso etex, ratD[w23,w14], angle(w22-w13), 0pt);

pickup pencircle scaled penA;
pat1 := w11..w19..w13;
drawarrow (subpath(ratA,2-ratA) of pat1);
label.lft(btex $\mu$ etex, w19);

pat2 := w21..w29..w23;
drawarrow (subpath(ratA,2-ratA) of pat2);
label.rt(btex $\mu^*$ etex, w29);

%==============================================================================
% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat0 := bbox currentpicture;
% bboxmargin := bbx;

label(btex \strut$(V^{**})^m$ etex, w31+(0,-dyA));

% Side-arrow.
pickup pencircle scaled penA;
S_arrowspaces(w21, w31, qqb, qqb, 0, black);
S_erd(w21, w31, qqb, qqb, 1, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
pat2 := w11..w39..w31;
drawdblarrow (subpath(ratE,2-ratE) of pat2);
% label.top(btex iso etex, w39);
label.bot(btex iso etex, point (ratE + 0.1) of pat2);

% setbounds currentpicture to pat0;

endfig;
end
