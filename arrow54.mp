% tex/conc/mp/arrow54.mp   2013-9-7   Alan U. Kennington.
% $Id: tex/conc/mp/arrow54.mp c0d7e5ae5c 2013-09-06 16:24:30Z Alan U. Kennington $
% Duality relations between antisymmetric tensor spaces.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

a := 3.0cm;
b := 2.0cm;
q := 0.36cm;
qq := 0.4cm;
qqq := 0.58cm;
qqqq := 1.04cm;
qqqqq := 0.8cm;
penLN := 0.5bp;

w0 := (0,0);
w1 := (0,b);

w2 := (a,0);
w3 := (a,b);

w4 := (2a,0);
w5 := (2a,b);

w6 := (3a,0);
w7 := (3a,b);

w10 := w0 + (-0.5a,0);

% The labels for the spaces.
label(btex \strut$V$ etex, w0);
label(btex \strut$V^*$ etex, w1);
label(btex \strut$V^{**}$ etex, w10);

label(btex \strut$\Lamb mV^*$ etex, w2);
label(btex \strut$\Lamb mV$ etex, w3);

label(btex \strut$\Wedg m V$ etex, w4);
label(btex \strut$\Wedg m V^*$ etex, w5);

label(btex \strut$\bigl(\Wedg m V^*\bigr)^*$ etex, w6);
label(btex \strut$\bigl(\Wedg m V\bigr)^*$ etex, w7);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w0,w1,q,q,1,black);
S_arrowspaces(w1,w10,q,q,1,black);
S_arrowspaces(w0,w10,q,q,3,black);

S_arrowspaces(w0,w3,qq,qqq,1,black);
S_arrowspaces(w1,w2,qq,qqq,1,black);

S_arrowspaces(w2,w5,qqq,qqq,1,black);
S_arrowspaces(w3,w4,qqq,qqq,1,black);

S_arrowspaces(w4,w7,qqq,qqq,1,black);
S_arrowspaces(w5,w6,qqq,qqq,1,black);

% S_arrowspaces(w2,w4,qqq,qqq,3,black);
% S_arrowspaces(w3,w5,qqq,qqq,3,black);

% S_arrowspaces(w4,w6,qqq,qqqqq,3,black);
% S_arrowspaces(w5,w7,qqq,qqqqq,3,black);

% The arrow labels.
label.rt(btex dual etex, 0.5[w0,w1]+(-1.5pt,0));
label.ulft(btex dual etex, 0.5[w1,w10]);
label.bot(btex iso etex, 0.5[w0,w10]);

S_tiltlabel(btex $m$-dual etex, 0.28[w1,w2], angle(w2-w1));
S_tiltlabel_bot(btex $m$-dual etex, 0.28[w0,w3], angle(w3-w0));

S_tiltlabel(btex dual etex, 0.35[w3,w4], angle(w4-w3));
S_tiltlabel_bot(btex dual etex, 0.35[w2,w5], angle(w5-w2));

S_tiltlabel(btex dual etex, 0.35[w5,w6], angle(w6-w5));
S_tiltlabel_bot(btex dual etex, 0.35[w4,w7], angle(w7-w4));

endfig;
end
