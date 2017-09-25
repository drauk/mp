% tex/conc/mp/arrow20.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/arrow20.mp 616b73e4f9 2012-05-07 06:57:18Z Alan U. Kennington $
% Tensor space duals, including canonical multilinear maps.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
path pat[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
a := 3.2cm;
b := 2.0cm;
penLN := 0.5bp;

% There's probably a better way to get these dimensions automatically!
% Actually this can be done automatically using my boxmax.mp macros.
q := 0.36cm;
qq := 0.48cm;
qqx := 0.60cm;
qqxx := 0.80cm;
qqxxx := 1.30cm;
qqq := 0.87cm;
qqqq := 1.28cm;
qqqqq := 1.0cm;
ang := 30;          % Exit angle for long-distance curves.
dy := 7.0mm;        % Maximum deviation for long-distance curves.
dr := 7.0mm;        % Exit radius for long-distance curves.

w0 := (0,0);
w1 := (0,b);

w2 := (a,0);
w3 := (a,b);

w4 := (2a,0);
w5 := (2a,b);

w6 := (3a,0);
w7 := (3a,b);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex \strut$\mtimes_{\alpha\in A}V_\alpha$ etex, w0);
label(btex \strut$\mtimes_{\alpha\in A}V_\alpha^*$ etex, w1);

label(btex \strut$\mlin((V_\alpha^*)_{\alpha\in A};K)$ etex, w2);
label(btex \strut$\mlin((V_\alpha)_{\alpha\in A};K)$ etex, w3);

label(btex \strut$\botimesc_{\alpha\in A} V_\alpha$ etex, w4);
label(btex \strut$\botimesc_{\alpha\in A} V_\alpha^*$ etex, w5);

label(btex \strut$(\botimesc_{\alpha\in A} V_\alpha^*)^*$ etex, w6);
label(btex \strut$(\botimesc_{\alpha\in A} V_\alpha)^*$ etex, w7);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w0,w1,q,q,1,black);

S_arrowspaces(w0,w2,qqxx,qqxxx,1,black);
S_arrowspaces(w1,w3,qqxx,qqxxx,1,black);

S_arrowspaces(w0,w3,qqx,qqx,1,black);
S_arrowspaces(w1,w2,qqx,qqx,1,black);

S_arrowspaces(w2,w5,qq,qq,1,black);
S_arrowspaces(w3,w4,qq,qq,1,black);

S_arrowspaces(w4,w7,qq,qq,1,black);
S_arrowspaces(w5,w6,qq,qq,1,black);

% S_arrowspaces(w2,w4,qqqq,qqq,2,black);
% S_arrowspaces(w3,w5,qqqq,qqq,2,black);

% S_arrowspaces(w4,w6,qqq,qqqqq,3,black);
% S_arrowspaces(w5,w7,qqq,qqqqq,3,black);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrow labels.
label.lft(btex dual etex, 0.5[w0,w1]);

S_tiltlabel(btex $m$-dual etex, 0.34[w1,w2], angle(w2-w1));
S_tiltlabel_bot(btex $m$-dual etex, 0.34[w0,w3], angle(w3-w0));

S_tiltlabel(btex dual etex, 0.38[w3,w4], angle(w4-w3));
S_tiltlabel_bot(btex dual etex, 0.38[w2,w5], angle(w5-w2));

S_tiltlabel(btex dual etex, 0.38[w5,w6], angle(w6-w5));
S_tiltlabel_bot(btex dual etex, 0.38[w4,w7], angle(w7-w4));

label.bot(btex $\eta\rlap{${}^T$}$ etex, 0.5[w0,w2]+((qqxx-qqxxx)/2,0));
label.top(btex $\eta$ etex, 0.5[w1,w3]+((qqxx-qqxxx)/2,0));

% label.top(btex $\bar\psi$ etex, 0.5[w2,w4]+((qqqq-qqq)/2,0));
% label.bot(btex iso etex, 0.5[w2,w4]+((qqqq-qqq)/2,0));
% label.top(btex iso etex, 0.5[w3,w5]+((qqqq-qqq)/2,0));
% label.bot(btex $\psi$ etex, 0.5[w3,w5]+((qqqq-qqq)/2,0));

% label.bot(btex iso etex, 0.5[w4,w6]+((qqq-qqqqq)/2,0));
% label.top(btex iso etex, 0.5[w5,w7]+((qqq-qqqqq)/2,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Long-distance maps.
pickup pencircle scaled penLN;
w10 := 0.5[w0,w4]+(0,-dy);
w11 := 0.5[w1,w5]+(0,dy);
pat0 := (w0+(dr,0)rotated -ang){dir -ang}...w10
 ...{dir ang}(w4+(-dr,0)rotated ang);
pat1 := (w1+(dr,0)rotated ang){dir ang}...w11
 ...{dir -ang}(w5+(-dr,0)rotated -ang);

drawarrow pat0;
drawarrow pat1;

rat := 0.20;
label.bot(btex $\mu$ etex, point rat of pat0);
label.top(btex $\mu\rlap{${}^*$}$ etex, point rat of pat1);

endfig;
end
