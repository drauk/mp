% tex/conc/mp/arrow35.mp   2012-4-9   Alan U. Kennington.
% $Id: tex/conc/mp/arrow35.mp a1f0e80311 2012-04-09 11:28:48Z Alan U. Kennington $
% Abbreviated diagrams for notations for tensor spaces.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

bb := 1.1cm;
ddB := 0.3cm;
% ffB := 1.15cm;
ffB := bb;

qqa := 0.32cm;
qqb := 0.25cm;
da := 3.0cm;
dyA := 0pt;
dyB := 11pt;
dyD := 5pt;
dyE := 3pt;

penA := 0.5bp;              % Pen scale for markings.
sizeA := 3pt;

w0 := (0,0);
w1 := w0 + (0,bb);

w2 := w0 + (da,0);
w3 := w2 + (0,bb);

w4 := w2 + (da,0);
w5 := w4 + (0,bb);

w10 := w1 + (0,ffB);
w12 := w3 + (0,ffB);
w14 := w5 + (0,ffB);

%==============================================================================
% Multilinear maps from the V-spaces to K.
label(btex
 \strut$\displaystyle\mathop{\times}\limits_{\alpha\in A}V_\alpha$ etex,
 w0+(0,-dyE));
label(btex \strut$\mlin((V_\alpha)_{\alpha\in A})$ etex, w1);

label(btex \strut$\vphantom{\botimesc\limits_{i=1}^m}
 \botimesc\limits_{\alpha\in A}V_\alpha$ etex, w10+(0,dyD));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspaces(w0, w1, qqa, qqa, 0, black);
S_erd(w0, w1, qqa, qqa, 3, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
S_arrowspaces(w1, w10, qqa, qqa, 0, black);
S_erd(w1, w10, qqa, qqa, 1, 0, black, black, sizeA, sizeA, penA, penA);

%==============================================================================
% Multilinear maps from the W-spaces to K.
label(btex \strut$\displaystyle V_1,\dots V_m$ etex, w2+(0,-dyE));

label(btex \strut$\mlin(V_1,\dots V_m)$ etex, w3);

% \vphantom{\botimesc\limits_{\alpha\in A}}
label(btex \strut$\botimesc\limits_{i=1}^mV_m$ etex, w12+(0,dyD));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspaces(w2, w3, qqa, qqa, 0, black);
S_erd(w2, w3, qqa, qqa, 3, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
S_arrowspaces(w3, w12, qqa, qqa, 0, black);
S_erd(w3, w12, qqa, qqa, 1, 0, black, black, sizeA, sizeA, penA, penA);

%==============================================================================
% Multilinear maps from the V-spaces to K.
label(btex \strut$\underbrace{V,\dots V}$ etex, w4+(0,-dyE+dyA));

label(btex $\scriptstyle m$ etex, w4+(0,-dyE-dyB));

label(btex \strut$\mlin_m(V)$ etex, w5);

label(btex \strut$\botimesc^mV$ etex, w14+(0,dyD));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspaces(w4, w5, qqa, qqa, 0, black);
S_erd(w4, w5, qqa, qqa, 3, 0, black, black, sizeA, sizeA, penA, penA);

pickup pencircle scaled penA;
S_arrowspaces(w5, w14, qqa, qqa, 0, black);
S_erd(w5, w14, qqa, qqa, 1, 0, black, black, sizeA, sizeA, penA, penA);

endfig;
end
