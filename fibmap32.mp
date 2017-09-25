% tex/conc/mp/fibmap32.mp   2016-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap32.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Maps for the definition of a topological principal fibre bundle.

input mapmax

beginfig(1);
pair v[], w[];

d := 0.8cm;
r := d/2;
q := r*1.2;
a := 2.15cm;
b := a;
e := 4.5pt;             % Circle on arrow.
sepA := 3pt;            % Separation between parallel arrows with circles.
sepB := 2pt;            % Separation between parallel arrows without circles.
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);            % Set P.
w1 := w0+(0,-b);        % Set B.
w2 := w0+(a,0);         % Set G as fibre space.
w3 := w0+(a,b);         % Set G as structure group.
w4 := w0+(a,-b);        % Set B x G.

pickup pencircle scaled penLN;
S_subset(w0,d,2.5,0.1,0.9,-45);
S_subset(w1,d,2.5,0.1,0.9,45);
S_subset(w4,d,2.5,0.1,0.9,135);

% The circles.
% draw fullcircle scaled d shifted w0;
% draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $\pi^{-1}(U)\subseteq P$ etex, w0-(q,0));
label.lft(btex $U\subseteq B$ etex, w1-(q,0));
label.rt(btex $G$ etex, w2+(q,0));
label.rt(btex $G$ etex, w3+(q,0));
label.rt(btex $U\times G\subseteq B\times G$ etex, w4+(q,0));

% The arrows.
S_arrowspace(w0,w1,q,1,black);                      % pi.
S_arrowspace(w0+(0,-sepB),w2+(0,-sepB),q,1,black);  % phi.
S_arrowspace(w0+(0,sepB),w2+(0,sepB),q,2,black);    % phi inverse.
S_arrowspace(w3+(-sepA,0),w2+(-sepA,0),q,1,black);  % L_g.
S_arrowspace(w3+(sepA,0),w2+(sepA,0),q,1,black);    % R_g.
S_arrowspace(w0,w4,q,1,black);                      % pi x phi.
S_arrowspace(w3,w0,q,1,black);                      % R_g

% Put a circle on the G->G arrow.
v1 := 0.5[w0,w3];
v2 := 0.5[w2,w3]+(-sepA,0);
v3 := 0.5[w2,w3]+(sepA,0);
draw fullcircle scaled e shifted v1;
draw fullcircle scaled e shifted v2;
draw fullcircle scaled e shifted v3;

% Labels on the arrows.
label.lft(btex $\pi$ etex, 0.5[w0,w1]);
label.ulft(btex $R_g$ etex, v1+(-e/3,e/3));
label.lft(btex $L_g$ etex, v2+(-e/2,0));
label.rt(btex $R_g$ etex, v3+(e/2,0));
S_tiltlabel_top_up(btex $\pi\times\phi$ etex, 0.5[w0,w4], angle(w4-w0), -1.5bp);
label.top(btex $\beta_{b,\phi}^{-1}$ etex, 0.5[w0,w2]+(0,sepB));
label.bot(btex $\phi$ etex, 0.5[w0,w2]+(0,-sepB+1.5bp));

endfig;
end
