% tex/conc/mp/connmap15.mp   2016-9-8   Alan U. Kennington.
% $Id: tex/conc/mp/connmap15.mp 2335d6ee3a 2016-09-08 10:12:35Z Alan U. Kennington $
% Affine connection on a vector bundle.

input mapmax.mp
input centmax.mp
verbatimtex
\input akmath
\input dgmpmax
% \def\PTstyle{\scriptstyle}
\def\PTstyle{}
etex

beginfig(1);
pair w[], midpt;
color col[];

d := 1.25cm;
r := d/2;
q := r+4pt;
qq := q+2pt;
qqq := q+4pt;
qqqq := qq;
qT := r;
a := 3.3cm;
aa := 3.9cm;
b := 2.1cm;
sepB := 2.5pt;

penLN := 0.5bp;
penPT := 2.5bp;

sepA := 2pt;

% Chart parameters.
unitX := 0.19cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;
qX := (nq+xt) * unitX;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
w6 := w0+(0,3b);
w7 := w0+(a,3b);
midpt := 0.5[w0,w7];

% The charts.
w10 := w0 + (-aa,0);
w11 := w1 + (aa,0);
w12 := w2 + (-aa,0);
w13 := w3 + (aa,0);
w14 := w4 + (-aa,0);
w15 := w5 + (aa,0);
w16 := w6 + (-aa,0);
w17 := w7 + (aa,0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;
draw fullcircle scaled d shifted w6;
draw fullcircle scaled d shifted w7;

% Labels for the circles.
label.ulft(btex $M$ etex, w0-(qT,0)rotated-45);
label.urt(btex $T_p(M)$ etex, w1+(qT,0)rotated45);
label.ulft(btex $E$ etex, w2-(qT,0)rotated-45);
label.urt(btex $T_z(E)$ etex, w3+(qT,0)rotated45);
label.ulft(btex $F$ etex, w4-(qT,0)rotated-45);
label.urt(btex $T_{\phi(z)}(F)$ etex, w5+(qT,0)rotated45);
label.ulft(btex $G=\gp{GL}(F)$ etex, w6-(qT,0)rotated-45);
label.urt(btex $T_e(\gp{GL}(F))$ etex, w7+(qT,0)rotated45);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside circles.
w20 := w0+(r/8,0);
w21 := w1+(r/8,0);
w22 := w2+(r/8,0);
w23 := w3+(0.7r,0);
w24 := w4+(r/2,0);
% w25 := w5+(0.85r,0);
w25 := w5+(0,0);
w26 := w6+(r/8,0);
w27 := w7+(r/8,0);

pickup pencircle scaled penPT;
draw w20;
draw w21;
draw w22;
draw w23;
draw w24;
draw w25;
draw w26;
draw w27;

label.lft(btex $\PTstyle p$ etex, w20);
label.lft(btex $\PTstyle V$ etex, w21);
label.lft(btex $\PTstyle z$ etex, w22);
label.lft(btex $\PTstyle \konv_V(z)$ etex, w23);
label.lft(btex $\PTstyle \phi(z)$ etex, w24);
% label.lft(btex $\PTstyle (d\phi)_z(\konv_V(z))$ etex, w25);
label.lft(btex $\PTstyle e$ etex, w26);
label.lft(btex $\PTstyle u$ etex, w27);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows for spaces.
pickup pencircle scaled penLN;
S_arrowspace(w6,w7,q,2,black);
label.top(btex \strut$\pi_G$ etex, 0.5[w6,w7]);

S_arrowspace(w4+(0,sepB),w5+(0,sepB),q,2,black);
S_arrowspace(w4+(0,-sepB),w5+(0,-sepB),q,2,black);
label.top(btex \strut$\pi_F$ etex, 0.5[w4,w5]+(0,sepB));
label.bot(btex $\dropf$ etex, 0.5[w4,w5]+(0,-sepB));

% S_arrowspace(w2,w3,q,2,black);
% label.top(btex \strut$\pi_E$ etex, 0.5[w2,w3]);

S_arrowspace(w2+(0,sepB),w3+(0,sepB),q,2,black);
S_arrowspace(w2+(0,-sepB),w3+(0,-sepB),q,1,black);
label.top(btex \strut$\pi_E$ etex, 0.5[w2,w3]+(0,sepB));
label.bot(btex \strut$\konv_V$ etex, 0.5[w2,w3]+(0,-sepB));

S_arrowspace(w0,w1,q,2,black);
label.top(btex \strut$\pi_M$ etex, 0.5[w0,w1]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical arrows.
S_arrowspace(w2, w0, q, 1, black);
label.rt(btex \strut$\pi$ etex, 0.5[w0,w2]+(0,sepA));

S_arrowspace(w3, w1, q, 1, black);
label.lft(btex \strut$(d\pi)_z$ etex, 0.5[w1,w3]+(0,sepA));

S_arrowspace(w4, w2, q, 2, black);
label.rt(btex \strut$\phi$ etex, 0.5[w4,w2]+(0,-sepA));

S_arrowspace(w5, w3, q, 2, black);
label.lft(btex \strut$(d\phi)_z$ etex, 0.5[w5,w3]+(0,-sepA));

S_arrowspace(w6, w4, q, 1, black);
label.rt(btex \strut$R_{\phi(z)}$ etex, 0.5[w4,w6]+(0,sepA));

S_arrowspace(w7, w5, q, 1, black);
label.lft(btex \strut$(dR_{\phi(z)})_e$ etex, 0.5[w5,w7]+(0,sepA));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The Rn sets.
pickup pencircle scaled penLN;
S_rn(w10, unitX, np, nq, xt, col0);
S_rn(w11, unitX, np, nq, xt, col0);
S_rn(w12, unitX, np, nq, xt, col0);
S_rn(w13, unitX, np, nq, xt, col0);
S_rn(w14, unitX, np, nq, xt, col0);
S_rn(w15, unitX, np, nq, xt, col0);
S_rn(w16, unitX, np, nq, xt, col0);
S_rn(w17, unitX, np, nq, xt, col0);
label.bot(btex $\reals^n$ etex, w10+(0,-qX));
label.bot(btex $\reals^n\times\reals^n$ etex, w11+(0,-qX));
label.bot(btex $\reals^n\times\reals^m$ etex, w12+(0,-qX));
label.bot(btex $(\reals^n\times\reals^m)\times(\reals^n\times\reals^m)$ etex,
 w13+(0,-qX));
label.bot(btex $\reals^m$ etex, w14+(0,-qX));
label.bot(btex $\reals^m\times\reals^m$ etex, w15+(0,-qX));
label.bot(btex $\reals^{m\times m}$ etex, w16+(0,-qX));
label.bot(btex $\reals^{m\times m}\times\reals^{m\times m}$ etex, w17+(0,-qX));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows for charts.
pickup pencircle scaled penLN;
S_arrowspaces(w0,w10,qq,qqq,1,black);
S_arrowspaces(w1,w11,qq,qqqq,1,black);
S_arrowspaces(w2,w12,qq,qqq,1,black);
S_arrowspaces(w3,w13,qq,qqqq,1,black);
S_arrowspaces(w4,w14,qq,qqq,1,black);
S_arrowspaces(w5,w15,qq,qqqq,1,black);
S_arrowspaces(w6,w16,qq,qqq,1,black);
S_arrowspaces(w7,w17,qq,qqqq,1,black);
label.bot(btex $\psi_M$ etex, 0.5[w0,w10]);
label.bot(btex $\psi_{T(M)}=\Psi(\psi_M)$ etex, 0.5[w1,w11]);
label.bot(btex $\psi_E$ etex, 0.5[w2,w12]);
label.bot(btex $\psi_{T(E)}=\Psi(\psi_E)$ etex, 0.5[w3,w13]);
label.bot(btex $\psi_F=\kappa_B$ etex, 0.5[w4,w14]);
label.bot(btex $\psi_{T(F)}=\Psi(\psi_F)$ etex, 0.5[w5,w15]);
label.bot(btex $\psi_G=\kappa_{B,B}$ etex, 0.5[w6,w16]);
label.bot(btex $\psi_{T(G)}=\Psi(\psi_G)$ etex, 0.5[w7,w17]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Subtitle.
w30 := 0.5[w0,w1]+(0,-q);
w31 := w30 + 0.5*(0.5a-q,0);
w32 := w31 + (0,1.5b);
w38 := w5 + (r,0) rotated 210;
w39 := w25 + (3.5pt,0) rotated 210;

label.bot(btex $(d\phi)_z(\konv_V(z))=(dR_{\phi(z)})_e(u)$ etex, w30);
drawarrow w31--w32{dir90}..w38{dir30}..w39 dashed (evenly scaled 0.7);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
