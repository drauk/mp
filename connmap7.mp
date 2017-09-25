% tex/conc/mp/connmap7.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/connmap7.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Maps for connection on OFB.

input mapmax
input centmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[], midpt;

d := 1.05cm;
r := d/2;
q := r*1.2;
a := 3.3cm;
b := 1.85cm;
sepA := 2.5pt;

penLN := 0.5bp;
penPT := 2.5bp;

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
label.lft(btex $M$ etex, w0-(q,0));
label.rt(btex $T_p(M)$ etex, w1+(q,0));
label.lft(btex $E_p$ etex, w2-(q,0));
label.rt(btex $T_z(E)$ etex, w3+(q,0));
label.lft(btex $F$ etex, w4-(q,0));
label.rt(btex $T_{\phi(z)}(F)$ etex, w5+(q,0));
label.lft(btex $G$ etex, w6-(q,0));
label.rt(btex $T_e(G)$ etex, w7+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;
draw w0+(r/8,0);
label.lft(btex $\scriptstyle p$ etex, w0+(r/8,0));

draw w1+(r/8,0);
label.lft(btex $\scriptstyle V$ etex, w1+(r/8,0));

draw w2+(r/8,0);
label.lft(btex $\scriptstyle z$ etex, w2+(r/8,0));

draw w3+(0.7r,0);
label.lft(btex $\scriptstyle \konv_V(z)$ etex, w3+(0.7r,0));

draw w4+(r/2,0);
label.lft(btex $\scriptstyle \phi(z)$ etex, w4+(r/2,0));

w10 := 0.66[w2,w5];
draw w5+(0,0);
label(btex $\scriptstyle (d\phi)_z(\konv_V(z))$ etex, w10);

pickup pencircle scaled penLN;
S_arrowspaces(w10,w5,10pt,4pt,1,0.5white);

pickup pencircle scaled penPT;
draw w6+(r/8,0);
label.lft(btex $\scriptstyle e$ etex, w6+(r/8,0));

draw w7+(r/8,0);
label.lft(btex $\scriptstyle u$ etex, w7+(r/8,0));

% Horizontal arrows.
pickup pencircle scaled penLN;
S_arrowspace(w6,w7,q,2,black);
label.top(btex \strut$\pi_{T(G)}$ etex, 0.5[w6,w7]);

S_arrowspace(w4,w5,q,2,black);
label.top(btex \strut$\pi_{T(F)}$ etex, 0.5[w4,w5]);

S_arrowspace(w2+(0,sepA),w3+(0,sepA),q,2,black);
S_arrowspace(w2+(0,-sepA),w3+(0,-sepA),q,1,black);
label.top(btex \strut$\pi_{T(E)}$ etex, 0.5[w2,w3]+(0,sepA));
label.bot(btex \strut$\konv_V$ etex, 0.5[w2,w3]+(0,-sepA));

S_arrowspace(w0,w1,q,2,black);
label.top(btex \strut$\pi_{T(M)}$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w2, w0, q, 1, black);
label.lft(btex \strut$\pi_E$ etex, 0.5[w0,w2]);

S_arrowspace(w3, w1, q, 1, black);
label.rt(btex \strut$(d\pi_E)_z$ etex, 0.5[w1,w3]);

S_arrowspace(w4, w2, q, 2, black);
label.lft(btex \strut$\phi$ etex, 0.5[w4,w2]);

S_arrowspace(w5, w3, q, 2, black);
label.rt(btex \strut$(d\phi)_z$ etex, 0.5[w5,w3]);

S_arrowspace(w6, w4, q, 1, black);
label.lft(btex \strut$R_{\phi(z)}$ etex, 0.5[w6,w4]);

S_arrowspace(w7, w5, q, 1, black);
label.rt(btex \strut$(dR_{\phi(z)})$ etex, 0.5[w7,w5]);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
