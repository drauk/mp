% tex/conc/mp/tangmap42.mp   2017-1-17   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap42.mp f61d718769 2017-01-17 12:16:21Z Alan U. Kennington $
% Pull-back differential of a map from one manifold to another, vector-valued.

input mapmax
input boxmax
input centmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[], midpt;

d := 1.2cm;
r := d/2;
q := r*1.2;
yq := q;
yqq := 0.6q;
qt := r + 1bp;
a := 2.7cm;
b := 2.1cm;
bb := 1.9cm;
ratW := 0.5;
rCORN := 0.2cm;
dSQ := 3bp;

penPT := 2.5bp;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);                 % M_1
w2 := w0+(0,b);                 % M_2
w3 := w0+(a,b);
w4 := 0.5[w2,w3]+(0,b);         % W
midpt := 0.5[w0,w3];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The circles.
pickup pencircle scaled penLN;
% draw fullcircle scaled d shifted w0;
% draw fullcircle scaled d shifted w1;
% draw fullcircle scaled d shifted w2;
% draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;

B_draw_rect_round_centre(w0, d, d, rCORN, penLN, black);
B_draw_rect_round_centre(w1, d, d, rCORN, penLN, black);
B_draw_rect_round_centre(w2, d, d, rCORN, penLN, black);
B_draw_rect_round_centre(w3, d, d, rCORN, penLN, black);

% Labels for the "circles".
label.lft(btex $M_1$ etex, w0-(qt,0));
label.rt(btex $M_2$ etex, w1+(qt,0));
label.lft(btex $T_p(M_1)$ etex, w2-(qt,0));
label.rt(btex $T_{\phi(p)}(M_2)$ etex, w3+(qt,0));
label.lft(btex $W$ etex, w4-(qt,0));

% Points inside circles.
pickup pencircle scaled penPT;
draw w0+(r/4,0);
label.lft(btex\strut $p$ etex, w0+(r/4,0));

draw w1+(r/2,0);
label.lft(btex $\phi(p)$ etex, w1+(r/2,0));

draw w2+(r/4,0);
label.lft(btex $V$ etex, w2+(r/4,0));

draw w3;
label.top(btex $(d\phi)_p(V)$ etex, w3+(yq,qt));
pickup pencircle scaled penLN;
S_arrowspaces(w3+(yqq,qt), w3, -2bp, 4bp, 1, black);

pickup pencircle scaled penPT;
draw w4;
label.top(btex $(d\phi)^*_p(f)(V)=f((d\phi)_p(V))$ etex, w4+(0,qt));
pickup pencircle scaled penLN;
S_arrowspaces(w4+(0,qt), w4, -3bp, 4bp, 1, black);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
S_arrowspace(w2, w3, q, 1, black);
label.top(btex \strut$(d\phi)_p$ etex, 0.5[w2,w3]);

S_arrowspace(w0, w1, q, 1, black);
label.top(btex \strut$\phi$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w2, w0, q, 1, black);
label.lft(btex $\pi_1$ etex, 0.5[w0,w2]);

S_arrowspace(w3, w1, q, 1, black);
label.rt(btex $\pi_2$ etex, 0.5[w1,w3]);

% Diagonal arrows.
S_arrowspaces(w2, w4, q+dSQ, q, 1, black);
label.ulft(btex $\smash{(d\phi)^*_p(f)}$ etex, ratW[w2,w4]);

S_arrowspaces(w3, w4, q+dSQ, q, 1, black);
label.urt(btex $\smash{f}$ etex, ratW[w3,w4]);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
