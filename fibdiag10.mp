% tex/conc/mp/fibdiag10.mp   2016-9-4   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag10.mp d416b260a2 2016-09-04 03:45:15Z Alan U. Kennington $
% Primal and dual vector bundle association.

input mapmax
input centmax
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
pair w[], midpt;
path pat[];

aa := 1.0cm;
bb := 1.5cm;
cc := 1.2cm;

qq := 0.35cm;
qh := 0.2cm;
qr := 0cm;

ratA := 0.44;
ratB := 1-ratA;
ratC := 0.5;
ratD := 0.5;
ratE := 0.5;

cr := 4.5pt;
pat2 := fullcircle scaled cr;

%==============================================================================
w0 := (0,0);
w11 := w0;              % G
midpt := w11;           % For centring the diagram.

w21 := w11+(-aa,-bb);   % F
w22 := w11+(aa,-bb);    % F^*
w23 := w21+(-cc,0);
w24 := w22+(cc,0);

w31 := w21 + (0,-bb);   % E
w32 := w22 + (0,-bb);   % tilde E
w33 := (xpart(w23), ypart(w31));
w34 := (xpart(w24), ypart(w32));

w41 := 0.5[w31,w32] + (0,-bb); % M
w43 := w41+(-cc,0);

w51 := ratD[w21,w31];
w52 := ratD[w22,w32];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex $G\rlap{${}=\gp{GL}(F)$}$ etex, w11);

label(btex $F$ etex, w21);
label(btex $F\rlap{${}^*$}$ etex, w22);
label.lft(btex $\reals^m$ etex, w23);
label.rt(btex $\reals^m$ etex, w24);

label(btex $\strut E$ etex, w31);
label(btex $\strut\tilde E$ etex, w32);
label.lft(btex $\strut\reals^{n+m}$ etex, w33);
label.rt(btex $\strut\reals^{n+m}$ etex, w34);

label(btex $M$ etex, w41);
label.lft(btex $\reals^n$ etex, w43);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
pickup pencircle scaled 0.5bp;
S_arrowspaces(w11,w21,qq,qq,1,black);
S_arrowspaces(w11,w22,qq,qq,1,black);

S_arrowspaces(w21,w31,qq,qq,2,black);
S_arrowspaces(w22,w32,qq,qq,2,black);

S_arrowspaces(w31,w41,qq,qq,1,black);
S_arrowspaces(w32,w41,qq,qq,1,black);

draw pat2 shifted ratA[w11,w21];
draw pat2 shifted ratA[w11,w22];

S_arrowspaces(w51, w52, qh, qh, 1, black);
label.top(btex $h$ etex, 0.5[w51,w52]);

S_arrowspaces(w21, w23, qq, qr, 1, black);
S_arrowspaces(w22, w24, qq, qr, 1, black);
S_arrowspaces(w31, w33, qq, qr, 1, black);
S_arrowspaces(w32, w34, qq, qr, 1, black);
S_arrowspaces(w41, w43, qq, qr, 1, black);

label.top(btex $\strut\psi_F$ etex, ratE[w21,w23]);
label.top(btex $\strut\psi\rlap{${}_{F^*}$}$ etex, ratE[w22,w24]);
label.bot(btex $\strut\psi_E$ etex, ratE[w31,w33]);
label.bot(btex $\strut\psi\rlap{${}_{\tilde E}$}$ etex, ratE[w32,w34]);
label.bot(btex $\strut\psi_M$ etex, ratE[w41,w43]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrow labels.
label.lft(btex $\mu_G^F$ etex, ratA[w11,w21] + (-0.3cr-1pt,3pt));
label.rt(btex $\mu_G^{F^*}$ etex, ratA[w11,w22] + (0.3cr+1pt,3pt));

label.lft(btex \strut$\phi$ etex, ratB[w21,w31]);
label.rt(btex \strut$\tilde\phi$ etex, ratB[w22,w32]);

label.lft(btex\strut $\pi$ etex, ratC[w31,w41] + (-2pt, 0));
label.rt(btex\strut $\tilde\pi$ etex, ratC[w32,w41] + (2pt, 0));

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
