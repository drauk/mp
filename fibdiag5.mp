% tex/conc/mp/fibdiag5.mp   2017-1-18   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag5.mp e6195bdce8 2017-01-17 13:47:55Z Alan U. Kennington $
% Spaces and maps for baseless figure bundles. Multiple ordinary bundles.

input mapmax
verbatimtex
\input akmath
% \input dgmpmax
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 1.6cm;
bb := aa;
cc := 3aa+15pt;
q := 0.48cm;
qq := 0.35cm;
qF := 0.26cm;
qP := 0.30cm;
ratA := 0.44;
% ratB := 1 - ratA;
ratB := 0.48;

sepA := 9pt;
sepB := 3pt;
sepC := 6pt;
% sepP := 15pt;
sepP := 0pt;
sepT := 12pt;

cr := 4.5pt;
theta := 1;
d := 11pt;
dd := 1.485d;

pat1 := subpath (theta, 8-theta) of fullcircle scaled d;
pat2 := fullcircle scaled cr;

%==============================================================================
% Version 1.
w0 := (0,0);
w11 := w0;              % G acting on P.

w21 := w11+(-aa,-bb);   % P x E.
w22 := w11+(0,-bb);     % P x E.
w23 := w11+(aa,-bb);    % P x E.

w31 := w21 + (0,-bb);   % F.
w32 := w22 + (0,-bb);   % F.
w33 := w23 + (0,-bb);   % F.

w41 := w32 + (0,-bb);   % G acting on F.

w51 := w21 + (-sepP,0); % P
w52 := w22 + (-sepP,0); % P
w53 := w23 + (-sepP,0); % P

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex $G$ etex, w11);

label(btex $P\times E_1$ etex, w21);
label(btex $P\times E_2$ etex, w22);
label(btex $P\times E_3$ etex, w23);

label(btex $F_1$ etex, w31);
label(btex $F_2$ etex, w32);
label(btex $F_3$ etex, w33);

label(btex $G$ etex, w41);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
pickup pencircle scaled 0.5bp;
S_arrowspaces(w11,w51,qq,q,1,black);
S_arrowspaces(w11,w52,qq,qq,1,black);
S_arrowspaces(w11,w53,qq,q,1,black);

S_arrowspaces(w21,w31,qq,qq,1,black);
S_arrowspaces(w22,w32,qq,qq,1,black);
S_arrowspaces(w23,w33,qq,qq,1,black);

S_arrowspaces(w31,w41,qq,qq,2,black);
S_arrowspaces(w32,w41,qF,qq,2,black);
S_arrowspaces(w33,w41,qq,qq,2,black);

draw pat2 shifted ratA[w11,w51];
draw pat2 shifted ratA[w11,w52];
draw pat2 shifted ratA[w11,w53];

draw pat2 shifted ratB[w31,w41];
draw pat2 shifted ratB[w32,w41];
draw pat2 shifted ratB[w33,w41];

drawarrow pat1 rotated 0 shifted (w11+(-d,0));
draw pat2 shifted (w11+(-dd,0));
label.lft(btex $\sigma$ etex, w11+(-1.55d,0));

drawarrow pat1 rotated 0 shifted (w41+(-d,0));
draw pat2 shifted (w41+(-dd,0));
label.lft(btex $\sigma$ etex, w41+(-1.55d,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrow labels.
label.lft(btex $\mu_G^P$ etex, ratA[w11,w51]+(-0.3cr-1pt,3pt));
label.lft(btex $\mu_G^P$ etex, ratA[w11,w52]+(-0.3cr+1pt,-2pt));
label.rt(btex $\mu_G^P$ etex, ratA[w11,w53]+(-0.3cr+3pt,3pt));

label.lft(btex \strut$\eta_1$ etex, ratA[w21,w31]);
label.lft(btex \strut$\eta_2$ etex, ratA[w22,w32]);
label.lft(btex \strut$\eta_3$ etex, ratA[w23,w33]);

label.lft(btex $\mu_G^{F_1}$ etex, ratB[w31,w41]+(-0.3cr-0pt,-4pt));
label.lft(btex $\mu_G^{F_2}$ etex, ratB[w32,w41]+(-0.3cr+2pt,2pt));
label.rt(btex $\mu_G^{F_3}$ etex, ratB[w33,w41]+(-0.3cr+1pt,-4pt));

label.bot(btex baseless figure bundles etex, w41+(0,-sepA));
label.bot(btex observation maps $\eta_k$ etex, w41+(0,-sepA-sepT));

%==============================================================================
% Version 2.
% sepP := 15pt;
% sepE := 10pt;
sepP := 0pt;
sepE := 23pt;

w0 := w0 + (cc,0);
w11 := w0;              % G acting on P.

w21 := w11+(-aa,-bb);   % P x E.
w22 := w11+(0,-bb);     % P x E.
w23 := w11+(aa,-bb);    % P x E.

w31 := w21 + (0,-bb);   % F.
w32 := w22 + (0,-bb);   % F.
w33 := w23 + (0,-bb);   % F.

w41 := w32 + (0,-bb);   % G acting on F.

w51 := w21 + (-sepP,0); % P.
w52 := w22 + (-sepP,0); % P.
w53 := w23 + (-sepP,0); % P.

w61 := w21 + (sepE,0);  % E.
w62 := w22 + (sepE,0);  % E.
w63 := w23 + (sepE,0);  % E.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex $G$ etex, w11);

% label(btex $P\times E_1$ etex, w21);
% label(btex $P\times E_2$ etex, w22);
% label(btex $P\times E_3$ etex, w23);
label(btex $P\rlap{${}\times E_1$}$ etex, w21);
label(btex $P\rlap{${}\times E_2$}$ etex, w22);
label(btex $P\rlap{${}\times E_3$}$ etex, w23);

label(btex $F_1$ etex, w31);
label(btex $F_2$ etex, w32);
label(btex $F_3$ etex, w33);

label(btex $G$ etex, w41);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
pickup pencircle scaled 0.5bp;
S_arrowspaces(w11,w51,qq,qP,1,black);
S_arrowspaces(w11,w52,qq,qP,1,black);
S_arrowspaces(w11,w53,qq,qP,1,black);

S_arrowspaces(w61,w31,qq,qq,1,black);
S_arrowspaces(w62,w32,qq,qq,1,black);
S_arrowspaces(w63,w33,qq,qq,1,black);

S_arrowspaces(w31,w41,qq,qq,2,black);
S_arrowspaces(w32,w41,qF,qq,2,black);
S_arrowspaces(w33,w41,qq,qq,2,black);

draw pat2 shifted ratA[w11,w51];
draw pat2 shifted ratA[w11,w52];
draw pat2 shifted ratA[w11,w53];

draw pat2 shifted ratB[w31,w41];
draw pat2 shifted ratB[w32,w41];
draw pat2 shifted ratB[w33,w41];

drawarrow pat1 rotated 0 shifted (w11+(-d,0));
draw pat2 shifted (w11+(-dd,0));
label.lft(btex $\sigma$ etex, w11+(-1.55d,0));

drawarrow pat1 rotated 0 shifted (w41+(-d,0));
draw pat2 shifted (w41+(-dd,0));
label.lft(btex $\sigma$ etex, w41+(-1.55d,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrow labels.
label.lft(btex $\mu_G^P$ etex, ratA[w11,w51]+(-0.3cr-1pt,3pt));
label.lft(btex $\mu_G^P$ etex, ratA[w11,w52]+(-0.3cr+1pt,-2pt));
label.rt(btex $\mu_G^P$ etex, ratA[w11,w53]+(-0.3cr+3pt,3pt));

label.lft(btex \strut$\eta_1(\phi,\cdotsp)$ etex, ratA[w61,w31]);
label.lft(btex \strut$\eta_2(\phi,\cdotsp)$ etex, ratA[w62,w32]);
label.lft(btex \strut$\eta_3(\phi,\cdotsp)$ etex, ratA[w63,w33]);

label.lft(btex $\mu_G^{F_1}$ etex, ratB[w31,w41]+(-0.3cr-0pt,-4pt));
label.lft(btex $\mu_G^{F_2}$ etex, ratB[w32,w41]+(-0.3cr+2pt,2pt));
label.rt(btex $\mu_G^{F_3}$ etex, ratB[w33,w41]+(-0.3cr+1pt,-4pt));

label.bot(btex baseless figure bundles etex, w41+(0,-sepA));
label.bot(btex charts $\eta_k(\phi,\cdotsp)$ for frames $\phi$ etex,
 w41+(0,-sepA-sepT));

endfig;
end
