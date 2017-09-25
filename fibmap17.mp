% tex/conc/mp/fibmap17.mp   2017-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap17.mp 09099b7be7 2017-01-15 12:55:05Z Alan U. Kennington $
% Maps for the definitions of species of fibre bundles.

input mapmax
verbatimtex
\input dgspell
etex

beginfig(1);
pair v[], w[];

d := 0.8cm;
r := d/2;
q := r*1.1;
qq := r*1.3;
a := 2.05cm;
b := a;
e := 4.5bp;             % Circle on arrow.
sep := 4pt;             % Separation between parallel arrows.
dsep := 4.6cm;
vSep := 1.6b;

penA := 0.5bp;

% Inter-diagram separation vectors.
v10 := (0,0);               % Principal fibre bundle.
v11 := (-dsep,0);           % Ordinary fibre bundle.
v12 := v11+(-dsep+5pt,0);   % Fibre bundle.
v13 := (a/2,-vSep);         % Relative location of label at bottom.
v14 := v12+(-dsep+a+20pt,0); % Fibration.

% Centres of circles.
w0 := v10;             % Set P.
w1 := w0+(0,-b);       % Set B.
w2 := w0+(a,0);        % Set G as fibre space (passive).
w3 := w0+(a,b);        % Set G as structure group (active).
w4 := w0+(a,-b);       % Set B x G.

pickup pencircle scaled penA;
S_subset(w0,d,1.9,-0.4,0.9,-45);
S_subset(w1,d,1.9,-0.4,0.9,45);
S_subset(w4,d,1.9,-0.4,0.9,135);

% The circles.
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.top(btex $\pi^{-1}(U)\subseteq P$ etex, w0+(-1.3q,q));
label.bot(btex $U\subseteq B$ etex, w1+(0,-q));
label.rt(btex $G$ etex, w2+(q,0));
label.rt(btex $G$ etex, w3+(q,0));
label.bot(btex $U\times G\subseteq B\times G$ etex, w4+(0,-q));

% The arrows.
S_arrowspace(w0,w1,qq,1,black);                      % pi.
S_arrowspace(w0,w2,qq,1,black);                      % phi.
S_arrowspace(w3,w2,qq,1,black);                      % L_g.
S_arrowspace(w0,w4,qq,1,black);                      % pi x phi.
S_arrowspace(w0+(0,sep)rotated45,w3+(0,sep)rotated45,qq,2,black);   % R_g.
S_arrowspace(w0+(0,-sep)rotated45,w3+(0,-sep)rotated45,qq,2,black); % L_g,phi.

% Put a circle on the G->G arrow.
v2 := 0.5[w2,w3];
v3 := 0.5[w0,w3]+(0,sep)rotated45;
v4 := 0.5[w0,w3]+(0,-sep)rotated45;
draw fullcircle scaled e shifted v2;
draw fullcircle scaled e shifted v3;
draw fullcircle scaled e shifted v4;

% Labels on the arrows.
label.lft(btex $\pi$ etex, 0.5[w0,w1]);
label.ulft(btex $R_g$ etex, v3+(0,e/2)rotated45);
label.bot(btex $L_{g,\phi}$ etex, v4+(0,-e/2)rotated45+(2sep,0));
label.rt(btex $L_g$ etex, v2+(e/2,0));
label(btex $\pi\times\phi$ etex rotated-45, 0.5[w0,w4]-(5.5pt,5.5pt));
label.bot(btex $\phi$ etex, 0.5[w0,w2]);

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
% The ordinary fibre bundle.
w0 := v11;
w1 := w0+(0,-b);       % Set B.
w2 := w0+(a,0);        % Set G as fibre space (passive).
w3 := w0+(a,b);        % Set G as structure group (active).
w4 := w0+(a,-b);       % Set B x G.

pickup pencircle scaled penA;
S_subset(w0,d,1.9,-0.4,0.9,-45);
S_subset(w1,d,1.9,-0.4,0.9,45);
S_subset(w4,d,1.9,-0.4,0.9,135);

% The circles.
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.top(btex $\pi^{-1}(U)\subseteq E$ etex, w0+(-q,q));
label.bot(btex $U\subseteq B$ etex, w1+(0,-q));
label.rt(btex $F$ etex, w2+(q,0));
label.rt(btex $G$ etex, w3+(q,0));
label.bot(btex $U\times F\subseteq B\times F$ etex, w4+(0,-q));

% The arrows.
S_arrowspace(w0,w1,qq,1,black);                      % pi.
S_arrowspace(w0,w2,qq,1,black);                      % phi.
S_arrowspace(w3,w2,qq,1,black);                      % L_g.
S_arrowspace(w0,w4,qq,1,black);                      % pi x phi.
S_arrowspace(w0,w3,qq,2,black);                      % L_g,phi.

% Put a circle on the G->G arrow.
v2 := 0.5[w2,w3];
v4 := 0.5[w0,w3];
draw fullcircle scaled e shifted v2;
draw fullcircle scaled e shifted v4;

% Labels on the arrows.
label.lft(btex $\pi$ etex, 0.5[w0,w1]);
label.bot(btex $L_{g,\phi}$ etex, v4+(0,-e/2)rotated45+(2sep,0));
label.rt(btex $L_g$ etex, v2+(e/2,0));
label(btex $\pi\times\phi$ etex rotated-45, 0.5[w0,w4]-(5.5pt,5.5pt));
label.bot(btex $\phi$ etex, 0.5[w0,w2]);

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
% The fibre bundle.
w0 := v12;
w1 := w0+(0,-b);       % Set B.
w2 := w0+(a,0);        % Set G as fibre space (passive).
w4 := w0+(a,-b);       % Set B x G.

pickup pencircle scaled penA;
S_subset(w0,d,1.9,-0.4,0.9,-45);
S_subset(w1,d,1.9,-0.4,0.9,45);
S_subset(w4,d,1.9,-0.4,0.9,135);

% The circles.
draw fullcircle scaled d shifted w2;

% Labels for the circles.
label.top(btex $\pi^{-1}(U)\subseteq E$ etex, w0+(0,q));
label.bot(btex $U\subseteq B$ etex, w1+(0,-q));
label.top(btex $F$ etex, w2+(0,q));
label.bot(btex $U\times F\subseteq B\times F$ etex, w4+(0,-q));

% The arrows.
S_arrowspace(w0,w1,qq,1,black);                      % pi.
S_arrowspace(w0,w2,qq,1,black);                      % phi.
S_arrowspace(w0,w4,qq,1,black);                      % pi x phi.

% Labels on the arrows.
label.lft(btex $\pi$ etex, 0.5[w0,w1]);
label(btex $\pi\times\phi$ etex rotated-45, 0.5[w0,w4]+(5.5pt,5.5pt));
label.top(btex $\phi$ etex, 0.5[w0,w2]);

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
% The fibration.
w0 := v14;
w1 := w0+(0,-b);       % Set B.

% The circles.
pickup pencircle scaled penA;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

% Labels for the circles.
label.top(btex $E$ etex, w0+(0,q));
label.bot(btex $B$ etex, w1+(0,-q));

% The arrows.
S_arrowspace(w0,w1,qq,1,black);                      % pi.

% Labels on the arrows.
label.lft(btex $\pi$ etex, 0.5[w0,w1]);

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
% Labels for the 3 diagrams
label(btex principal $G$-bundle etex, v10+v13);
label(btex $(G,F)$ \fibre/ bundle etex, v11+v13);
label(btex $F$-fibration etex, v12+v13);
label(btex fibration etex, v14+(0,-vSep));

endfig;
end
