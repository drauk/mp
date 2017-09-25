% tex/conc/mp/fibmap34.mp   2017-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap34.mp 09099b7be7 2017-01-15 12:55:05Z Alan U. Kennington $
% Maps/spaces for associated topological fibre bundle orbit-space construction.

input mapmax

beginfig(1);
pair w[];

d := 1.0cm;
r := d/2;
q := r + 1pt;
qq := r + 3.0bp;
a := 3.1cm;
b := 1.78cm;
dcirc := 4.5pt;     % Circles on arrows.
gap := 3pt;         % Separation of chart arrows.

penLN := 0.5bp;
penPT := 2.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w1 := w0+(a/2,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
w6 := w0+(a/2,3b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;
draw fullcircle scaled d shifted w6;

% Labels for the circles.
label.rt(btex\strut $B$ etex, w1+(q,0));
label.lft(btex\strut $P$ etex, w2-(q,0));
label.rt(btex\strut $E$ etex, w3+(q,0));
label.lft(btex\strut $G$ etex, w4-(q,0));
label.rt(btex\strut $F$ etex, w5+(q,0));
label.rt(btex\strut $G$ etex, w6+(q,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
pickup pencircle scaled penLN;
w12 := 0.5[w2,w4];
w13 := 0.5[w3,w5];
sepL := qq + 10pt;
sepR := qq + 17pt;
S_arrowspaces(w12,w13,sepL,sepR,1,black);
S_labelspaces(w14)(w12,w13,sepL,sepR,0.5);
label.top(btex\strut $h$ etex, w14);

% Vertical arrows.
S_arrowspace(w2, w1, qq, 1, black);
% label.llft(btex\strut $\pi_P$ etex, 0.6[w1,w2]);
label.urt(btex\strut $\pi_P$ etex, 0.5[w1,w2]);

S_arrowspace(w3, w1, qq, 1, black);
% label.lrt(btex\strut $\pi$ etex, 0.6[w1,w3]);
label.ulft(btex\strut $\pi$ etex, 0.5[w1,w3]);

% S_arrowspace(w4+(-gap,0), w2+(-gap,0), qq, 2, black);
% S_arrowspace(w4+(gap,0), w2+(gap,0), qq, 2, black);
% label.lft(btex \strut$\phi_1$ etex, 0.5[w4,w2]+(-gap,0));
% label.rt(btex \strut$\phi_2$ etex, 0.5[w4,w2]+(gap,0));
S_arrowspace(w4, w2, qq, 2, black);
label.rt(btex\strut $\phi$ etex, 0.5[w4,w2]);

% S_arrowspace(w5+(-gap,0), w3+(-gap,0), qq, 2, black);
% S_arrowspace(w5+(gap,0), w3+(gap,0), qq, 2, black);
% label.lft(btex\strut $h(\phi_1)$ etex, 0.5[w5,w3]+(-gap,0));
% label.rt(btex\strut $h(\phi_2)$ etex, 0.5[w5,w3]+(gap,0));
S_arrowspace(w5, w3, qq, 2, black);
label.lft(btex\strut $h(\phi)$ etex, 0.5[w5,w3]);

S_arrowspace(w6, w4, qq, 1, black);
w10 := 0.47[w6,w4];
draw fullcircle scaled dcirc shifted w10;
% label.ulft(btex\strut $L_{g_{\phi_2,\phi_1}}(b)$ etex, w10+(-dcirc/2,0));

S_arrowspace(w6, w5, qq, 1, black);
w10 := 0.47[w6,w5];
draw fullcircle scaled dcirc shifted w10;
% label.urt(btex \strut$\tilde\mu$ etex, w10+(dcirc/2,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some points.
w20 := w5 + (-1bp,2.5bp);
pickup pencircle scaled penPT;
draw w20;
label.lft(btex\strut $y$ etex, w20+(1bp,0));

w21 := w2 + (r/4,0);
pickup pencircle scaled penPT;
draw w21;
label.lft(btex\strut $z$ etex, w21);

w22 := w3 + (0,0);
w23 := w22 + (10bp,-20bp);
pickup pencircle scaled penPT;
draw w22;
pickup pencircle scaled penLN;
S_arrowspaces(w23, w22, 0pt, 4pt, 1, black);
label.bot(btex $[(z,y)]$ etex, w23);

w30 := w4 + (0,0);
w31 := w30 + (-10bp,20bp);
w32 := w6 + (0,0);
w33 := w32 + (-20bp,-10bp);
w34 := 0.5[w30,w32] + 0.35*((w6-w4) rotated 90);
pickup pencircle scaled penPT;
draw w30;
draw w32;
% label.lft(btex\strut $\phi(z)$ etex, w30);
pickup pencircle scaled penLN;
S_arrowspaces(w34, w30, 10pt, 4pt, 1, black);
% label.top(btex $\phi(z)$ etex, w31);
S_arrowspaces(w34, w32, 12pt, 4pt, 1, black);
% label.lft(btex $\phi(z)$ etex, w33);
label(btex $\phi(z)$ etex, w34+(1bp,-2bp));

w40 := w5 + (r/3,-3bp);
w41 := w40 + (10bp,20bp);
pickup pencircle scaled penPT;
draw w40;
pickup pencircle scaled penLN;
S_arrowspaces(w41, w40, 0pt, 3pt, 1, black);
label.top(btex $\phi(z)y$ etex, w41);

w50 := w1 + (0.75r,0);
pickup pencircle scaled penPT;
draw w50;
label.lft(btex $\scriptstyle \pi_P(z)$ etex, w50+(1bp,0));

endfig;
end
