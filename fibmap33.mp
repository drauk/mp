% tex/conc/mp/fibmap33.mp   2016-12-23   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap33.mp 3f829ff4e7 2016-12-22 17:47:07Z Alan U. Kennington $
% Maps and spaces for associated topological fibre bundle collage construction.

input mapmax

beginfig(1);
pair w[];

d := 0.8cm;
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
% draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;
draw fullcircle scaled d shifted w6;

% Labels for the circles.
% label.lft(btex\strut $B$ etex, w0-(q,0));
label.rt(btex\strut $B$ etex, w1+(q,0));
label.lft(btex\strut $E$ etex, w2-(q,0));
label.rt(btex\strut $\tilde E$ etex, w3+(q,0));
label.lft(btex\strut $F$ etex, w4-(q,0));
label.rt(btex\strut $\tilde F$ etex, w5+(q,0));
label.rt(btex\strut $G$ etex, w6+(q,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
pickup pencircle scaled penLN;
w12 := 0.5[w2,w4];
w13 := 0.5[w3,w5];
sepL := qq + 8pt;
sepR := qq + 20pt;
S_arrowspaces(w12,w13,sepL,sepR,1,black);
S_labelspaces(w14)(w12,w13,sepL,sepR,0.5);
label.top(btex\strut $h$ etex, w14);

% Vertical arrows.
S_arrowspace(w2, w1, qq, 1, black);
label.llft(btex\strut $\pi$ etex, 0.6[w1,w2]);

S_arrowspace(w3, w1, qq, 1, black);
label.lrt(btex\strut $\tilde\pi$ etex, 0.6[w1,w3]);

S_arrowspace(w4+(-gap,0), w2+(-gap,0), qq, 2, black);
S_arrowspace(w4+(gap,0), w2+(gap,0), qq, 2, black);
label.lft(btex \strut$\phi_1$ etex, 0.5[w4,w2]+(-gap,0));
label.rt(btex \strut$\phi_2$ etex, 0.5[w4,w2]+(gap,0));

S_arrowspace(w5+(-gap,0), w3+(-gap,0), qq, 2, black);
S_arrowspace(w5+(gap,0), w3+(gap,0), qq, 2, black);
label.lft(btex\strut $h(\phi_1)$ etex, 0.5[w5,w3]+(-gap,0));
label.rt(btex\strut $h(\phi_2)$ etex, 0.5[w5,w3]+(gap,0));
% label.lft(btex\strut $\tilde\phi_1$ etex, 0.5[w5,w3]+(-gap,0));
% label.rt(btex\strut $\tilde\phi_2$ etex, 0.5[w5,w3]+(gap,0));

S_arrowspace(w6, w4, qq, 1, black);
w10 := 0.47[w6,w4];
draw fullcircle scaled dcirc shifted w10;
label.ulft(btex\strut $L_{g_{\phi_2,\phi_1}}(b)$ etex, w10+(-dcirc/2,0));

S_arrowspace(w6, w5, qq, 1, black);
w10 := 0.47[w6,w5];
draw fullcircle scaled dcirc shifted w10;
% label.urt(btex \strut$\tilde\mu$ etex, w10+(dcirc/2,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some points.
pickup pencircle scaled penPT;
w20 := w5 + (r/4,0);
draw w20;
label.lft(btex\strut $y$ etex, w20);

w21 := w1 + (r/4,0);
draw w21;
label.lft(btex\strut $b$ etex, w21);

endfig;
end
