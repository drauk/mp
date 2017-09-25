% tex/conc/mp/tangmap39.mp   2016-9-8   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap39.mp 2335d6ee3a 2016-09-08 10:12:35Z Alan U. Kennington $
% Drop function for the tangent bundle of a linear space.

input mapmax
input centmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair v[], w[], midpt;
color col[];

d := 1.2cm;
r := d/2;
q := r*1.2;
qx := r*1.42;
a := 3.9cm;
b := 2.5cm;
sepA := 2.5pt;
sepB := 1.5pt;
sepC := 2.5pt;
sepD := 5pt;
sepE := 5.5pt;
sepF := 15pt;

ratA := 0.35;
ratB := 0.5;

unit := 0.25cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;
bx := unit * 1.2;
penRN := 0.5bp;
penCIRC := 0.5bp;
penARROW := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);        % manifold
w1 := w0+(0,b);     % tangent space
w2 := w0+(-a-unit,b/2);  % Left R^n for manifold.
w4 := w0+(a,b/2);   % Right R^n for manifold.
midpt := 0.5[w0,w1];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The circles.
pickup pencircle scaled penCIRC;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

% Labels for the circles.
label.llft(btex $F$ etex, w0+(0,-r)rotated-70);
label.ulft(btex $T_p(F)$ etex, w1+(0,r)rotated80);
label.bot(btex $\reals^n$ etex, w2+(0,-q));
label.bot(btex $\reals^n$ etex, w4+(0,-q));

% Points inside circles.
pickup pencircle scaled penPT;
% draw w0+(r/5,0);
% label.lft(btex $p$ etex, w0+(r/5,0));
draw w0;

% draw w1+(r/5,0);
% label.lft(btex $V$ etex, w1+(r/5,0));
draw w1;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical arrows.
pickup pencircle scaled penARROW;
v10 := w0 + (-sepA,0);
v11 := w0 + (sepA,0);
v12 := w1 + (-sepA,0);
v13 := w1 + (sepA,0);
S_arrowspace(v10, v12, q, 2, black);
S_arrowspace(v11, v13, q, 2, black);
label.lft(btex $\phi_{p,\psi_1}$ etex, 0.5[v10,v12]+(0,sepB));
label.rt(btex $\phi_{p,\psi_2}$ etex, 0.5[v11,v13]+(0,sepB));

w6 := ratA[w2+(unit,0),w0];
w7 := ratA[w2+(unit,0),w1];
w8 := ratA[w4,w0];
w9 := ratA[w4,w1];
w20 := ratB[w2+(unit,0),w0];
w21 := ratB[w2+(unit,0),w1];
w22 := ratB[w4,w0];
w23 := ratB[w4,w1];

S_arrowspace(w6, w7, 0.5unit, 1, black);
label.rt(btex $\Phi$ etex, 0.5[w6,w7]);

S_arrowspace(w8, w9, 0.5unit, 1, black);
label.lft(btex $\Phi$ etex, 0.5[w8,w9]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal (oblique) arrows.
pickup pencircle scaled penARROW;
S_arrowspace(w0, w2+(unit,0), q, 1, black);
S_arrowspace(w0+(0,-sepE), w2+(unit,-sepE), q, 2, black);
label.top(btex $\psi_1$ etex, w20);
label.bot(btex $\psi_1^{-1}$ etex, w20+(0,-sepE));

S_arrowspace(w1, w2+(unit,0), q, 1, black);
label.top(btex\strut $\Phi(\psi_1)$ etex, w21);

S_arrowspace(w0, w4, q, 1, black);
S_arrowspace(w0+(0,-sepE), w4+(0,-sepE), q, 2, black);
label.top(btex $\psi_2$ etex, w22);
label.bot(btex $\psi_2^{-1}$ etex, w22+(0,-sepE));

S_arrowspace(w1, w4, q, 1, black);
label.top(btex\strut $\Phi(\psi_2)$ etex, w23);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The R^n sets.
pickup pencircle scaled penRN;
S_rn(w2, unit, np, nq, xt, col0);
S_rn(w4, unit, np, nq, xt, col0);

% Points in the R^n sets.
pickup pencircle scaled penPT;
draw w2+(unit,2unit);
label.urt(btex $v_1$ etex, w2+(unit,2unit+xt*unit));

draw w4+(2unit,unit);
label.urt(btex $v_2$ etex, w4+(2unit+xt*unit,unit));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
v20 := w0 + (0,-r-sepD);
v21 := w1 + (0,r+sepD);

label.bot(btex $\phi_{p,\psi_1}(V)=\dropf_p(V)=\phi_{p,\psi_2}(V)$ etex, v20);
label.bot(btex
 $\phi_{p,\psi_1}=\psi_1^{-1}\circ\Phi(\psi_1)\restrict{T_p(F)}\qquad
 \phi_{p,\psi_2}=\psi_2^{-1}\circ\Phi(\psi_2)\restrict{T_p(F)}$
 etex, v20+(0,-sepF));
% label.top(btex $\tang{p,v_1,\psi_1}=V=\tang{p,v_2,\psi_2}$ etex, v21);
label.top(btex
 $\llap{$\tang{p,v_1,\psi_1}={}$}V\rlap{${}=\tang{p,v_2,\psi_2}$}$ etex, v21);

S_arrowspaces(v20, w0, 0pt, sepC, 1, black);
S_arrowspaces(v21, w1, 0pt, sepC, 1, black);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
