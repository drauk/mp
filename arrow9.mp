% tex/conc/mp/arrow9.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/arrow9.mp 616b73e4f9 2012-05-07 06:57:18Z Alan U. Kennington $
% Relations between general tensor spaces.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

a := 3.2cm;
b := 2.0cm;
q := 0.36cm;
qq := 0.48cm;
qqq := 0.87cm;
qqqq := 1.28cm;
qqqqq := 1.0cm;
penLN := 0.5bp;

w0 := (0,0);
w1 := (0,b);

w2 := (a,0);
w3 := (a,b);

w4 := (2a,0);
w5 := (2a,b);

w6 := (3a,0);
w7 := (3a,b);

% w10 := w0 + (-0.5a,0);

% The labels for the spaces.
label(btex \strut$(V_\alpha)_{\alpha\in A}$ etex, w0);
label(btex \strut$(V_\alpha^*)_{\alpha\in A}$ etex, w1);
% label(btex \strut$V^{**}$ etex, w10);

label(btex \strut$\mlin((V_\alpha^*)_{\alpha\in A};K)$ etex, w2);
label(btex \strut$\mlin((V_\alpha)_{\alpha\in A};K)$ etex, w3);

label(btex \strut$\botimesc_{\alpha\in A} V_\alpha$ etex, w4);
label(btex \strut$\botimesc_{\alpha\in A} V_\alpha^*$ etex, w5);

label(btex \strut$(\botimesc_{\alpha\in A} V_\alpha^*)^*$ etex, w6);
label(btex \strut$(\botimesc_{\alpha\in A} V_\alpha)^*$ etex, w7);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w0,w1,q,q,1,black);
% S_arrowspaces(w1,w10,q,q,1,black);
% S_arrowspaces(w0,w10,q,q,3,black);

S_arrowspaces(w0,w3,qq,qq,1,black);
S_arrowspaces(w1,w2,qq,qq,1,black);

S_arrowspaces(w2,w5,qq,qq,1,black);
S_arrowspaces(w3,w4,qq,qq,1,black);

S_arrowspaces(w4,w7,qq,qq,1,black);
S_arrowspaces(w5,w6,qq,qq,1,black);

S_arrowspaces(w2,w4,qqqq,qqq,3,black);
S_arrowspaces(w3,w5,qqqq,qqq,3,black);

S_arrowspaces(w4,w6,qqq,qqqqq,3,black);
S_arrowspaces(w5,w7,qqq,qqqqq,3,black);

% The arrow labels.
label.lft(btex dual etex, 0.5[w0,w1]);
% label.ulft(btex dual etex, 0.5[w1,w10]);
% label.bot(btex iso etex, 0.5[w0,w10]);

S_tiltlabel(btex $m$-dual etex, 0.34[w1,w2], angle(w2-w1));
S_tiltlabel_bot(btex $m$-dual etex, 0.34[w0,w3], angle(w3-w0));

S_tiltlabel(btex dual etex, 0.38[w3,w4], angle(w4-w3));
S_tiltlabel_bot(btex dual etex, 0.38[w2,w5], angle(w5-w2));

S_tiltlabel(btex dual etex, 0.38[w5,w6], angle(w6-w5));
S_tiltlabel_bot(btex dual etex, 0.38[w4,w7], angle(w7-w4));

label.bot(btex iso etex, 0.5[w2,w4]+((qqqq-qqq)/2,0));
label.top(btex iso etex, 0.5[w3,w5]+((qqqq-qqq)/2,0));

label.bot(btex iso etex, 0.5[w4,w6]+((qqq-qqqqq)/2,0));
label.top(btex iso etex, 0.5[w5,w7]+((qqq-qqqqq)/2,0));

endfig;
end
