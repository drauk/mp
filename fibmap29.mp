% tex/conc/mp/fibmap29.mp   2017-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap29.mp ed282b9812 2017-01-15 12:19:49Z Alan U. Kennington $
% Maps for the definition of a differentiable principal fibre bundle.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[];
color col[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.2cm;
b := a;
e := 5bp;               % Circle on arrow.
bb := 2.1cm;
dd := 0.1cm;
bls := 13bp;            % Baselineskip.
sep := 3pt;             % Separation between parallel arrows.

unit := 0.2cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;

penLN := 0.5bp;
penPT := 2.5bp;
penRN := 0.4bp;

% Centres of circles.
w0 := (0,0);            % Set P.
w1 := w0+(0,-b);        % Set M.
w2 := w0+(a,0);         % Set G as fibre space.
w3 := w0+(2a,0);        % Set G as structure group.
w4 := w0+(a,-b);        % Set M x G.
w5 := w0+(0,bb);        % Chart space for P.
w6 := w1+(0,-bb);       % Chart space for M.
w7 := w2+(0,bb);        % Chart space for passive G.
w8 := w3+(0,bb);        % Chart space for active G.

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
label.lft(btex $U\subseteq M$ etex, w1-(q,0));
label.bot(btex $G$ etex, w2+(0,-q));
label.bot(btex $G$ etex, w3+(0,-q));
label.rt(btex $U\times G\subseteq M\times G$ etex, w4+(q,0));

pickup pencircle scaled penRN;
S_rn(w5, unit, np, nq, xt, col0);
S_rn(w6, unit, np, nq, xt, col0);
S_rn(w7, unit, np, nq, xt, col0);
S_rn(w8, unit, np, nq, xt, col0);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspace(w0,w1,q,1,black);                      % pi.
S_arrowspace(w0+(0,sep),w2+(0,sep),q,2,black);      % R^P_g.
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
label.top(btex $R^P_g$ etex, v1+(0,e/2));
label.top(btex $L^G_g$ etex, v2+(0,e/2));
% label(btex $\pi\times\phi$ etex rotated-45, 0.5[w0,w4]+(5.5pt,5.5pt));
label(btex $\pi\times\phi$ etex rotated-45, 0.5[w0,w4]+(-5.5pt,-5.5pt));
% label.bot(btex $\pi\times\phi$ etex rotated-45, 0.40[w0,w4]);
label.bot(btex $\phi$ etex, 0.5[w0,w2]+(0,-sep));

label.lft(btex $\reals^m$ etex, w5+(-(np+xt)*unit,0));
label.lft(btex $m=n+q$ etex, w5+(-(np+xt)*unit,-bls));
label.lft(btex $\reals^n$ etex, w6+(-(np+xt)*unit,0));
label.rt(btex $\reals^q$ etex, w7+((np+3xt)*unit,0));
label.rt(btex $\reals^q$ etex, w8+((np+3xt)*unit,0));

S_arrowspaces(w0, w5, r+dd, (np+xt)*unit+dd, 1, black);
S_arrowspaces(w1, w6, r+dd, (np+xt)*unit+3dd, 1, black);
S_arrowspaces(w2, w7, r+dd, (np+xt)*unit+dd, 1, black);
S_arrowspaces(w3, w8, r+dd, (np+xt)*unit+dd, 1, black);

label.lft(btex $\psi_P$ etex, 0.45[w0,w5]);
label.lft(btex $\psi_M$ etex, 0.4[w1,w6]);
label.rt(btex $\psi_{G,1}$ etex, 0.45[w2,w7]);
label.rt(btex $\psi_{G,2}$ etex, 0.45[w3,w8]);

endfig;
end
