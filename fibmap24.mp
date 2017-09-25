% tex/conc/mp/fibmap24.mp   2012-5-12   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap24.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Chart styles for the definition of a groupless fibre bundle with fibre F.

input mapmax

beginfig(1);
pair v[], w[], x[], y[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.5cm;
b := 2.5cm;
e := 0.25cm;           % Circle on arrow.
penLN := 0.5bp;
sepA := 2pt;

% Centres of circles.
w0 := (0,0);           % Set E.
w1 := w0+(0,-b);       % Set B.
w2 := w0+(a,0);        % Set F.
w4 := w0+(a,-b);       % Set B x F.

pickup pencircle scaled penLN;
S_subset(w0,d,1.7,-0.3,0.9,-45);
S_subset(w1,d,1.7,-0.3,0.9,45);
S_subset(w4,d,1.7,-0.3,0.9,135);

% The circles.
draw fullcircle scaled d shifted w2;

% Labels for the circles.
label.lft(btex $W=\pi^{-1}(U)\subseteq E$ etex, w0-(q,0));
label.lft(btex $U\subseteq B$ etex, w1-(q,0));
label.rt(btex $F$ etex, w2+(q,0));
label.rt(btex $U\times F\subseteq B\times F$ etex, w4+(q,0));

% The arrows.
S_arrow(w0, w4, q, q, 1, black, sepA)();
S_arrow(w0, w4, q, q, 2, black, -sepA)();
S_arrowspaces(w0, w1, q, q, 1, black);
S_arrowspaces(w0, w2, q, q, 1, black);
S_arrowspaces(w4, w1, q, q, 1, black);
S_arrowspaces(w4, w2, q, q, 1, black);

% Labels on the arrows.
label.lft(btex $\pi$ etex, 0.5[w0,w1]);
label.top(btex $\phi$ etex, 0.5[w0,w2]);
label.bot(btex $\textstyle\Pi\rlap{${}_1$}$ etex, 0.5[w4,w1]);
label.rt(btex $\textstyle\Pi_2$ etex, 0.5[w4,w2]);

S_tiltlabel_top_up(btex $\psi=\pi\times\phi$ etex,
 0.5[w0,w4], angle(w4-w0), sepA);
S_tiltlabel_bot_up(btex $\rho=\psi\rlap{${}^{-1}$}$ etex,
 0.5[w0,w4], angle(w4-w0), -sepA);

endfig;
end
