% tex/conc/mp/fibmap3.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap3.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Maps for the definition of a topological principal fibre bundle.

input mapmax

beginfig(1);
pair v[], w[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.5cm;
b := 2.5cm;
e := 5pt;               % Circle on arrow.
sep := 3pt;             % Separation between parallel arrows.
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);            % Set P.
w1 := w0+(0,-b);        % Set B.
w2 := w0+(a,0);         % Set G as fibre space.
w3 := w0+(2a,0);        % Set G as structure group.
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
label.top(btex $G$ etex, w2+(0,q));
label.top(btex $G$ etex, w3+(0,q));
label.rt(btex $U\times G\subseteq B\times G$ etex, w4+(q,0));

% The arrows.
S_arrowspace(w0,w1,q,1,black);                      % pi.
S_arrowspace(w0+(0,sep),w2+(0,sep),q,2,black);      % R_g.
S_arrowspace(w0+(0,-sep),w2+(0,-sep),q,1,black);    % phi.
S_arrowspace(w3,w2,q,1,black);                      % L_g.
S_arrowspace(w0,w4,q,1,black);                      % pi x phi.

% Put a circle on the G->G arrow.
v1 := 0.5[w0,w2]+(0,sep);
v2 := 0.5[w2,w3];
draw fullcircle scaled e shifted v1;
draw fullcircle scaled e shifted v2;

% Labels on the arrows.
label.lft(btex $\pi$ etex, 0.5[w0,w1]);
label.top(btex $R_g$ etex, v1+(0,e/2));
label.top(btex $L_g$ etex, v2+(0,e/2));
label(btex $\pi\times\phi$ etex rotated-45, 0.5[w0,w4]+(5.5pt,5.5pt));
% label.bot(btex $\pi\times\phi$ etex rotated-45, 0.40[w0,w4]);
label.bot(btex $\phi$ etex, 0.5[w0,w2]+(0,-sep));

endfig;
end
