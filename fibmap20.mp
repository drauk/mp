% tex/conc/mp/fibmap20.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap20.mp ff78261815 2015-05-09 08:15:17Z Alan U. Kennington $
% Maps for fibre bundle association.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

d := 0.9cm;
r := d/2;
q := r + 5pt;
qq := r + 3.5pt;
a := 3.3cm;
b := 1.78cm;
dcirc := 4pt;       % Circles on arrows.
gap := 3pt;         % Separation of chart arrows.
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
label.lft(btex $B$ etex, w0-(q,0));
label.rt(btex $B$ etex, w1+(q,0));
label.lft(btex $E$ etex, w2-(q,0));
label.rt(btex $\tilde E$ etex, w3+(q,0));
label.lft(btex $F$ etex, w4-(q,0));
label.rt(btex $\tilde F$ etex, w5+(q,0));
label.lft(btex $G$ etex, w6-(q,0));
label.rt(btex $G$ etex, w7+(q,0));

% Horizontal arrows.
pickup pencircle scaled penLN;
w12 := 0.5[w2,w4];
w13 := 0.5[w3,w5];
S_arrowspaces(w12,w13,qq+10pt,qq+20pt,1,black);
S_labelspaces(w14)(w12,w13,qq+10pt,qq+20pt,0.5);
label.top(btex \strut$h$ etex, w14);

% Vertical arrows.
S_arrowspace(w2, w0, qq, 1, black);
label.lft(btex \strut$\pi$ etex, 0.5[w0,w2]);

S_arrowspace(w3, w1, qq, 1, black);
label.rt(btex \strut$\tilde\pi$ etex, 0.5[w1,w3]);

S_arrowspace(w4+(-gap,0), w2+(-gap,0), qq, 2, black);
S_arrowspace(w4+(gap,0), w2+(gap,0), qq, 2, black);
label.lft(btex \strut$\phi_1$ etex, 0.5[w4,w2]+(-gap,0));
label.rt(btex \strut$\phi_2$ etex, 0.5[w4,w2]+(gap,0));

S_arrowspace(w5+(-gap,0), w3+(-gap,0), qq, 2, black);
S_arrowspace(w5+(gap,0), w3+(gap,0), qq, 2, black);
label.lft(btex \strut$h(\phi_1)$ etex, 0.5[w5,w3]+(-gap,0));
label.rt(btex \strut$h(\phi_2)$ etex, 0.5[w5,w3]+(gap,0));

S_arrowspace(w6, w4, qq, 1, black);
w10 := 0.47[w6,w4];
draw fullcircle scaled dcirc shifted w10;
label.lft(btex \strut$\mu$ etex, w10+(-dcirc/2,0));

S_arrowspace(w7, w5, qq, 1, black);
w10 := 0.47[w7,w5];
draw fullcircle scaled dcirc shifted w10;
label.rt(btex \strut$\tilde\mu$ etex, w10+(dcirc/2,0));

endfig;
end
