% tex/conc/mp/arrow41.mp   2012-4-10   Alan U. Kennington.
% $Id: tex/conc/mp/arrow41.mp 52844f162b 2012-04-10 14:23:02Z Alan U. Kennington $
% Riemann curvature tensor spaces/maps for an affine connection.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 3.3cm;
bb := 1.4cm;
cc := 1.00cm;
ddA := 0.4cm;
ddB := 0.3cm;
ee := 1.4cm;
ffA := 1.15cm;
ffB := 0.6cm;
gg := 0.95cm;

qqa := 0.38cm;
qqb := 0.25cm;
qqc := 0.20cm;
qqd := 22pt;
da := 3.3cm;

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

db := (xpart(w2) - xpart(w0)) + ee + gg + 20pt;

w20 := w0 + (db,0);
w21 := w20 + (0,bb);

w22 := w20 + (da,0);
w23 := w22 + (0,bb);

w30 := 0.5[w20+(cc,-ddA),w21+(cc,ddB)];   % Right of left box.
w31 := 0.5[w22+(-cc,-ddA),w23+(-cc,ddB)]; % Left of right box.
w32 := 0.5[w20+(0,-ddA),w21+(0,ddB)];     % Middle of left box.

%==============================================================================
% Multilinear maps from the V-spaces to K.
label(btex \strut$\mlin_2^-(T_p(M))$ etex, w0);
label(btex \strut$\reals$ etex, w1);

pickup pencircle scaled penA;
S_arrowspaces(w0, w1, qqa, qqb, 1, black);
S_erd(w0, w1, qqa, qqb, 1, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\Wedg2 T_p(M)$ etex, w0+(0,-ddA));

pickup pencircle scaled penB;
pat1 := (w0+(-cc,-ddA))--(w0+(cc,-ddA))--(w1+(cc,ddB))--(w1+(-cc,ddB))--cycle;
draw pat1;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Multilinear maps from the W-spaces to K.
label(btex \strut$T_p(M)$ etex, w2);
label(btex \strut$T_p(M)$ etex, w3);

pickup pencircle scaled penA;
S_arrowspaces(w2, w3, qqa, qqb, 1, black);
S_erd(w2, w3, qqa, qqb, 21, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\vphantom{\Wedg2 T_p(M)}\gp{SO}(T_p(M))$ etex,
 w2+(0,-ddA));

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

label.bot(btex\strut$\Lin\bigl(\Wedg2 T_p(M),\gp{SO}(T_p(M))\bigr)$ etex,
 0.5[w0,w2]+(0,-ffA));

%==============================================================================
% Multilinear maps from the V-spaces to K.
label(btex \strut$T_p(M)^2$ etex, w32);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Multilinear maps from the W-spaces to K.
label(btex \strut$T_p(M)$ etex, w22);
label(btex \strut$T_p(M)$ etex, w23);

pickup pencircle scaled penA;
S_arrowspaces(w22, w23, qqa, qqb, 1, black);
S_erd(w22, w23, qqa, qqb, 21, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\vphantom{\Wedg2 T_p(M)}\gp{SO}(T_p(M))$ etex,
 w22+(0,-ddA));

pickup pencircle scaled penB;
pat2 :=
 (w22+(-cc,-ddA))--(w22+(cc,-ddA))--(w23+(cc,ddB))--(w23+(-cc,ddB))--cycle;
draw pat2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penA;
S_arrowspaces(w32, w31, qqd, qqc, 1, black);
S_erd(w32, w31, qqd, qqc, 12, 0, black, black, sizeA, sizeA, penA, penA);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penB;
pat3 :=
 (w20+(-gg,-ffA))--(w22+(ee,-ffA))--(w23+(ee,ffB))--(w21+(-gg,ffB))--cycle;
draw pat3;

label.bot(
 btex\strut$\vphantom{\Wedg2 T_p(M)}\Lamb2(T_p(M),\gp{SO}(T_p(M)))$ etex,
 0.5[w20,w22]+(0.5(ee-gg),-ffA));

endfig;
end
