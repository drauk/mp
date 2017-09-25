% tex/conc/mp/arrow39.mp   2012-4-10   Alan U. Kennington.
% $Id: tex/conc/mp/arrow39.mp 2f7041302a 2012-04-10 12:40:46Z Alan U. Kennington $
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
bb := 1.5cm;
cc := 1.00cm;
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
S_erd(w2, w3, qqa, qqb, 1, 0, black, black, sizeA, sizeA, penA, penA);

label.bot(btex \strut$\vphantom{\Wedg2 T_p(M)}\Aut(T_p(M))$ etex, w2+(0,-ddA));

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

label.bot(btex\strut$\Lin\bigl(\Wedg2 T_p(M),\Aut(T_p(M))\bigr)$ etex,
 0.5[w0,w2]+(0,-ffA));

endfig;
end
