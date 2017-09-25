% tex/conc/mp/fibmap21.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap21.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Maps for C^0 associated fibre bundles.

input mapmax
verbatimtex
\input akmath
\input dgmpmax
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
wid := 0.55pt;
gap := 3pt;         % Separation of chart arrows.
aa := 0.80a;        % Distance between equivalent fibre bundles.
yyy := qc;          % Distance of labels under the fibre bundles.
cy := 2pt;          % Vertical correction for circles on arrows.
rat := 0.51;
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
label.rt(btex $B$ etex, w0+(qc,0));
label.lft(btex $B$ etex, w1+(-qc,0));
label.rt(btex $E_2$ etex, w2+(qc,0));
label.lft(btex $\tilde E_2$ etex, w3+(-qc,0));
label.rt(btex $F_2$ etex, w4+(qc,0));
label.lft(btex $\tilde F_2$ etex, w5+(-qc,0));
label.rt(btex \strut$G_2$ etex, w6+(qc,0));
label.lft(btex \strut$\tilde G_2{=}G_2$ etex, w7+(-qc,0));

label.lft(btex $B$ etex, w20-(qc,0));
label.lft(btex $E_1$ etex, w22-(qc,0));
label.lft(btex $F_1$ etex, w24-(qc,0));
label.lft(btex $G_1$ etex, w26-(qc,0));

label.rt(btex $B$ etex, w30+(qc,0));
label.rt(btex $\tilde E_1$ etex, w32+(qc,0));
label.rt(btex $\tilde F_1$ etex, w34+(qc,0));
label.rt(btex $\tilde G_1$ etex, w36+(qc,0));

% Some labels at the bottom.
label.bot(btex \strut$\xi_2$ etex, w0+(0,-yyy));
label.bot(btex \strut$\tilde\xi_2$ etex, w1+(0,-yyy));
label.bot(btex \strut$\xi_1$ etex, w20+(0,-yyy));
label.bot(btex \strut$\tilde\xi_1$ etex, w30+(0,-yyy));

label.bot(btex \strut isomorphism etex, 0.5[w20,w0]+(0,-yyy));
label.bot(btex \strut isomorphism etex, 0.5[w1,w30]+(0,-yyy));
label.bot(btex \strut association etex, 0.5[w0,w1]+(0,-yyy));

% Horizontal arrows.
pickup pencircle scaled penLN;
w12 := 0.5[w2,w4];
w13 := 0.5[w3,w5];
S_arrowspaces(w12,w13,qq+7pt,qq+19pt,1,black);
S_labelspaces(w14)(w12,w13,qq+7pt,qq+19pt,0.5);
label.top(btex \strut$h$ etex, w14);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical arrows.
S_arrowspace(w2, w0, qq, 1, black);
label.rt(btex \strut$\pi_2$ etex, 0.5[w0,w2]+(ag,0));

S_arrowspace(w3, w1, qq, 1, black);
label.lft(btex \strut$\tilde\pi_2$ etex, 0.5[w1,w3]+(-ag,0));

S_arrowspace(w4, w2, qq, 2, black);
label.rt(btex \strut$\phi_2$ etex, 0.5[w4,w2]+(ag,0));

S_arrowspace(w5, w3, qq, 2, black);
label.lft(btex \strut$h(\phi_2)$ etex, 0.5[w5,w3]+(-ag,0));
label.rt(btex \strut$\tilde\phi_2$ etex, 0.5[w5,w3]+(ag,0));

S_arrowspace(w6, w4, qq, 1, black);
w10 := rat[w6,w4]+(0,cy);
draw fullcircle scaled dcirc shifted w10;
label.rt(btex \strut$\mu_2$ etex, w10+(dcirc/2,0)+(ag,0));

S_arrowspace(w7, w5, qq, 1, black);
w10 := rat[w7,w5]+(0,cy);
draw fullcircle scaled dcirc shifted w10;
label.lft(btex \strut$\tilde\mu_2$ etex, w10+(-dcirc/2,0)+(-ag,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical arrows on the left.
S_arrowspace(w26, w24, qq, 1, black);
w29 := rat[w26,w24]+(0,cy);
draw fullcircle scaled dcirc shifted w29;
label.lft(btex \strut$\mu_1$ etex, w29+(-dcirc/2,0)+(-ag,0));

S_arrowspace(w24, w22, qq, 2, black);
label.lft(btex \strut$\phi_1$ etex, 0.5[w24,w22]+(-ag,0));

S_arrowspace(w22, w20, qq, 1, black);
label.lft(btex \strut$\pi_1$ etex, 0.5[w20,w22]+(-ag,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical arrows on the right.
S_arrowspace(w36, w34, qq, 1, black);
w39 := rat[w36,w34]+(0,cy);
draw fullcircle scaled dcirc shifted w39;
label.rt(btex \strut$\tilde\mu_1$ etex, w39+(dcirc/2,0)+(ag,0));

S_arrowspace(w34, w32, qq, 2, black);
label.rt(btex \strut$\tilde\phi_1$ etex, 0.5[w34,w32]+(ag,0));

S_arrowspace(w32, w30, qq, 1, black);
label.rt(btex \strut$\tilde\pi_1$ etex, 0.5[w30,w32]+(ag,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows on the outside.
pickup pencircle scaled penLN;
S_arrowspace(w6,w26,qe,3,black);
% label.top(btex \strut$\hat f$ etex, 0.5[w6,w26]);
S_arrowspace(w4,w24,qe,3,black);
% label.top(btex \strut$\check f$ etex, 0.5[w4,w24]);
S_arrowspace(w2,w22,qe,3,black);
% label.top(btex \strut$f$ etex, 0.5[w2,w22]);
S_arrowspace(w0,w20,qe,3,black);
% label.top(btex \strut$\tilde f$ etex, 0.5[w0,w20]);

S_arrowspace(w7,w36,qe,3,black);
% label.top(btex \strut$\hat f$ etex, 0.5[w7,w36]);
S_arrowspace(w5,w34,qe,3,black);
% label.top(btex \strut$\check f$ etex, 0.5[w5,w34]);
S_arrowspace(w3,w32,qe,3,black);
% label.top(btex \strut$f$ etex, 0.5[w3,w32]);
S_arrowspace(w1,w30,qe,3,black);
% label.top(btex \strut$\tilde f$ etex, 0.5[w1,w30]);

endfig;
end
