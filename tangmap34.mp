% tex/conc/mp/tangmap34.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap34.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Double differential of a map between two manifolds.

input mapmax.mp
input centmax.mp
verbatimtex
\input akmath
\input dgmpmax
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
aa := a;
b := 2.1cm;

penLN := 0.5bp;
penPT := 2.5bp;

sepA := 2pt;

% Chart parameters.
unitX := 0.18cm;
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
midpt := 0.5[w0,w5];

% The charts.
w10 := w0 + (-aa,0);
w11 := w1 + (aa,0);
w12 := w2 + (-aa,0);
w13 := w3 + (aa,0);
w14 := w4 + (-aa,0);
w15 := w5 + (aa,0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Labels for the circles.
label.ulft(btex $M_1$ etex, w0-(qT,0)rotated-45);
label.urt(btex $M_2$ etex, w1+(qT,0)rotated45);
label.ulft(btex $T(M_1)$ etex, w2-(qT,0)rotated-45);
label.urt(btex $T(M_2)$ etex, w3+(qT,0)rotated45);
label.ulft(btex $T(T(M_1))$ etex, w4-(qT,0)rotated-45);
label.urt(btex $T(T(M_2))$ etex, w5+(qT,0)rotated45);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside circles.
w20 := w0+(r/8,0);
w21 := w1+(r/2,0);
w22 := w2+(r/8,0);
w23 := w3+(0.75r,0);
w24 := w4+(r/8,0);
w25 := w5+(0.85r,0);

pickup pencircle scaled penPT;
draw w20;
draw w21;
draw w22;
draw w23;
draw w24;
draw w25;

label.lft(btex $\scriptstyle p$ etex, w20);
label.lft(btex $\scriptstyle \phi(p)$ etex, w21);
label.lft(btex $\scriptstyle z$ etex, w22);
label.lft(btex $\scriptstyle (d\phi)(z)$ etex, w23);
label.lft(btex $\scriptstyle \tilde z$ etex, w24);
label.lft(btex $\scriptstyle (d^2\!\phi)(\tilde z)$ etex, w25);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows for spaces.
pickup pencircle scaled penLN;
S_arrowspace(w4,w5,q,1,black);
label.top(btex \strut$d^2\phi$ etex, 0.5[w4,w5]);

S_arrowspace(w2,w3,q,1,black);
label.top(btex \strut$d\phi$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.top(btex \strut$\phi$ etex, 0.5[w0,w1]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical arrows.
S_arrowspace(w2, w0, q, 1, black);
label.rt(btex \strut$\pi_1$ etex, 0.5[w0,w2]+(0,sepA));

S_arrowspace(w3, w1, q, 1, black);
label.lft(btex \strut$\pi_2$ etex, 0.5[w1,w3]+(0,sepA));

S_arrowspace(w4, w2, q, 1, black);
label.rt(btex \strut$\tilde\pi_1$ etex, 0.5[w4,w2]+(0,sepA));

S_arrowspace(w5, w3, q, 1, black);
label.lft(btex \strut$\tilde\pi_2$ etex, 0.5[w5,w3]+(0,sepA));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The Rn sets.
pickup pencircle scaled penLN;
S_rn(w10, unitX, np, nq, xt, col0);
S_rn(w11, unitX, np, nq, xt, col0);
S_rn(w12, unitX, np, nq, xt, col0);
S_rn(w13, unitX, np, nq, xt, col0);
S_rn(w14, unitX, np, nq, xt, col0);
S_rn(w15, unitX, np, nq, xt, col0);
label.bot(btex $\reals^{n_1}$ etex, w10+(0,-qX));
label.bot(btex $\reals^{n_2}$ etex, w11+(0,-qX));
label.bot(btex $\reals^{2n_1}$ etex, w12+(0,-qX));
label.bot(btex $\reals^{2n_2}$ etex, w13+(0,-qX));
label.bot(btex $\reals^{4n_1}$ etex, w14+(0,-qX));
label.bot(btex $\reals^{4n_2}$ etex, w15+(0,-qX));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows for charts.
pickup pencircle scaled penLN;
S_arrowspaces(w0,w10,qq,qqq,1,black);
S_arrowspaces(w1,w11,qq,qqqq,1,black);
S_arrowspaces(w2,w12,qq,qqq,1,black);
S_arrowspaces(w3,w13,qq,qqqq,1,black);
S_arrowspaces(w4,w14,qq,qqq,1,black);
S_arrowspaces(w5,w15,qq,qqqq,1,black);
label.bot(btex $\psi_1$ etex, 0.5[w0,w10]);
label.bot(btex $\psi_2$ etex, 0.5[w1,w11]);
label.bot(btex $\tilde\psi_1$ etex, 0.5[w2,w12]);
label.bot(btex $\tilde\psi_2$ etex, 0.5[w3,w13]);
label.bot(btex $\skewNEG{3.5}\tilde{\tilde\psi_1}$ etex, 0.5[w4,w14]);
label.bot(btex $\skewNEG{3.5}\tilde{\tilde\psi_2}$ etex, 0.5[w5,w15]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Subtitle.
label.bot(btex $z=\tang{p,v_1,\psi_1}$,
 $\tilde z=\tangtang{p,v_1,\hat w_1,\check w_1\psi_1}$ etex,
 0.5[w0,w1]+(0,-q));

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
