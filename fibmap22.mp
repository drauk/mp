% tex/conc/mp/fibmap22.mp   2017-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap22.mp ed282b9812 2017-01-15 12:19:49Z Alan U. Kennington $
% Associated fibre bundle construction, orbit space method.

input mapmax
verbatimtex
\input akmath
\input dgmpmax
\input dgspell
etex

beginfig(1);
pair w[];

d := 0.9cm;
r := d/2;
qc := r + 2.4pt;    % Offset for circle labels.
qq := r + 2.5pt;    % Offset for ends of arrows.
qe := r + 4.0pt;    % Offset for equivalence arrows.
ag := 2pt;          % Extra offset for labels on arrows.
a := 3.3cm;
b := 1.64cm;
dcirc := 4pt;       % Circles on arrows.
penARROW := 0.55pt;
gap := 3pt;         % Separation of chart arrows.
aa := 0.75a;        % Distance between equivalent fibre bundles.
yyy := qc;          % Distance of labels under the fibre bundles.
cy := 2pt;          % Vertical correction for circles on arrows.
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
w6 := w0+(0,3b);
w7 := w0+(a,3b);

% The C^0 equivalent fibre bundle on the left.
w20 := (-aa,0);
w22 := w20+(0,b);
w24 := w20+(0,2b);
w26 := w20+(0,3b);

% The C^0 equivalent fibre bundle on the right.
w30 := (a+aa,0);
w32 := w30+(0,b);
w34 := w30+(0,2b);
w36 := w30+(0,3b);

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

draw fullcircle scaled d shifted w20;
draw fullcircle scaled d shifted w22;
draw fullcircle scaled d shifted w24;
draw fullcircle scaled d shifted w26;

draw fullcircle scaled d shifted w30;
draw fullcircle scaled d shifted w32;
draw fullcircle scaled d shifted w34;
draw fullcircle scaled d shifted w36;

% Labels for the circles.
label.rt(btex $M$ etex, w0+(qc,0));
label.lft(btex $M$ etex, w1+(-qc,0));
label.rt(btex $P$ etex, w2+(qc,0));
label.lft(btex $E$ etex, w3+(-qc,0));
label.rt(btex $G$ etex, w4+(qc,0));
label.lft(btex $F$ etex, w5+(-qc,0));
label.rt(btex $G$ etex, w6+(qc,0));
label.lft(btex $G$ etex, w7+(-qc,0));

label.lft(btex $\reals^{n_M}$ etex, w20-(qc,0));
label.lft(btex $\reals^{n_P}$ etex, w22-(qc,0));
label.lft(btex $\reals^{n_G}$ etex, w24-(qc,0));
label.lft(btex $\reals^{n_G}$ etex, w26-(qc,0));

label.rt(btex $\reals^{n_M}$ etex, w30+(qc,0));
label.rt(btex $\reals^{n_E}$ etex, w32+(qc,0));
label.rt(btex $\reals^{n_F}$ etex, w34+(qc,0));
label.rt(btex $\reals^{n_G}$ etex, w36+(qc,0));

% Some labels at the bottom.
% label.bot(btex \strut$\xi$ etex, w0+(0,-yyy));
% label.bot(btex \strut$\eta$ etex, w1+(0,-yyy));
% label.bot(btex \strut$\xi_1$ etex, w20+(0,-yyy));
% label.bot(btex \strut$\tilde\xi_1$ etex, w30+(0,-yyy));

label.bot(btex \strut principal \fibre/ bundle etex, 0.5[w20,w0]+(0,-yyy));
label.bot(btex \strut associated \fibre/ bundle etex, 0.5[w1,w30]+(0,-yyy));
% label.bot(btex \strut association etex, 0.5[w0,w1]+(0,-yyy));

% Horizontal arrows.
pickup pencircle scaled penARROW;
w12 := 0.5[w2,w4];
w13 := 0.5[w3,w5];
S_arrowspaces(w12,w13,qq+7pt,qq+19pt,1,black);
S_labelspaces(w14)(w12,w13,qq+7pt,qq+19pt,0.5);
label.top(btex \strut$h$ etex, w14);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical arrows.
pickup pencircle scaled penLN;
S_arrowspace(w2, w0, qq, 1, black);
label.rt(btex \strut$\pi_P$ etex, 0.5[w0,w2]+(ag,0));

S_arrowspace(w3, w1, qq, 1, black);
label.lft(btex \strut$\pi_E$ etex, 0.5[w1,w3]+(-ag,0));

S_arrowspace(w4, w2, qq, 2, black);
label.rt(btex \strut$\phi$ etex, 0.5[w4,w2]+(ag,0));

S_arrowspace(w5, w3, qq, 2, black);
label.lft(btex \strut$h(\phi)$ etex, 0.5[w5,w3]+(-ag,0));
label.rt(btex \strut$\tilde\phi$ etex, 0.5[w5,w3]+(ag,0));

S_arrowspace(w6, w4, qq, 1, black);
w10 := 0.5[w6,w4]+(0,cy);
draw fullcircle scaled dcirc shifted w10;
label.rt(btex \strut$\mu_G^G=\sigma_G$ etex, w10+(dcirc/2,0)+(ag,0));

S_arrowspace(w7, w5, qq, 1, black);
w10 := 0.5[w7,w5]+(0,cy);
draw fullcircle scaled dcirc shifted w10;
label.lft(btex \strut$\mu_G^F$ etex, w10+(-dcirc/2,0)+(-ag,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows on the outside.
pickup pencircle scaled penLN;
S_arrowspace(w6,w26,qe,1,black);
label.top(btex \strut$\psi^G_k$ etex, 0.5[w6,w26]);
S_arrowspace(w4,w24,qe,1,black);
label.top(btex \strut$\psi^G_k$ etex, 0.5[w4,w24]);
S_arrowspace(w2,w22,qe,1,black);
label.top(btex \strut$\psi^P_\ell$ etex, 0.5[w2,w22]);
S_arrowspace(w0,w20,qe,1,black);
label.top(btex \strut$\psi^M_i$ etex, 0.5[w0,w20]);

S_arrowspace(w7,w36,qe,1,black);
label.top(btex \strut$\psi^G_k$ etex, 0.5[w7,w36]);
S_arrowspace(w5,w34,qe,1,black);
label.top(btex \strut$\psi^F_j$ etex, 0.5[w5,w34]);
S_arrowspace(w3,w32,qe,1,black);
label.top(btex \strut$\psi^{E,\phi}_{i,j}$ etex, 0.5[w3,w32]);
S_arrowspace(w1,w30,qe,1,black);
label.top(btex \strut$\psi^M_i$ etex, 0.5[w1,w30]);

endfig;
end
