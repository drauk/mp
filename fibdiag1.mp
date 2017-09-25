% tex/conc/mp/fibdiag1.mp   2016-12-22   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag1.mp 6e0064f122 2016-12-22 08:45:54Z Alan U. Kennington $
% Maps for non-topological fibrations, and ordinary and principal fibre bundles.

input mapmax.mp
verbatimtex
\input akmath
\input dgspell
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 2.0cm;
bb := aa;
cc := 2aa;
q := 0.48cm;
qq := 0.35cm;
sepA := 10pt;
sepB := 3pt;
sepC := 6pt;
sepD := 0.5pt;
ratA := 0.44;
ratB := 0.55;

cr := 4.5pt;
theta := 1;
d := 11pt;
dd := 1.485d;

w0 := (0,0);            % B
w1 := w0+(0,bb);        % E
w2 := w0+(aa,bb);       % F
w3 := w0+(aa,0);        % B x F

w10 := w0+(cc,0);       % B
w11 := w10+(0,bb);      % E
w12 := w10+(aa,bb);     % F
w13 := w10+(aa,0);      % B x F
w14 := w10+(aa,2bb);    % G

w20 := w10+(cc,0);      % B
w21 := w20+(0,bb);      % E
w22 := w20+(aa,bb);     % G (fibre)
w23 := w20+(aa,0);      % B x G
w24 := w20+(aa,2bb);    % G (group)

w30 := w0 + (-cc+aa,0); % B
w31 := w30+(0,bb);      % E

penLN := 0.5bp;

pat1 := subpath (theta, 8-theta) of fullcircle scaled d;
pat2 := fullcircle scaled cr;

%==============================================================================
% Fibration.
% The labels for the spaces.
label(btex $B$ etex, w0);
label(btex $E$ etex, w1);
label(btex $F$ etex, w2);
label(btex $B\times F$ etex, w3);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w1,w0,qq,qq,1,black);
S_arrowspaces(w1,w3,qq,q,1,black);
S_arrowspaces(w1,w2,qq,qq,1,black);

% The arrow labels.
label.lft(btex \strut$\pi$ etex, 0.5[w0,w1]);
label.top(btex $\phi$ etex, 0.5[w1,w2]);
S_tiltlabel_top_up(btex $\pi\times\phi$ etex, 0.5[w1,w3], angle(w3-w1), 0pt);

label.bot(btex $F$-fibration etex, 0.5[w0,w3]+(0,-sepA));

%==============================================================================
% OFB.
% The labels for the spaces.
label(btex $B$ etex, w10);
label(btex $E$ etex, w11);
label(btex $F$ etex, w12);
label(btex $B\times F$ etex, w13);
label(btex $G$ etex, w14);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w11,w10,qq,qq,1,black);
S_arrowspaces(w11,w13,qq,q,1,black);
S_arrowspaces(w11,w12,qq,qq,1,black);
S_arrowspaces(w14,w12,qq,qq,1,black);

draw fullcircle scaled cr shifted ratA[w14,w12];

% The arrow labels.
label.lft(btex \strut$\pi$ etex, 0.5[w10,w11]);
label.top(btex $\phi\in A_E^F$ etex, 0.5[w11,w12]);
S_tiltlabel_top_up(btex $\pi\times\phi$ etex,
 0.5[w11,w13], angle(w13-w11), 0pt);
% label.lft(btex $\mu_G^L$ etex, ratA[w14,w12]+(-0.3cr,-sepC));
label.lft(btex $\mu_G^L$ etex, ratA[w14,w12]+(-0.3cr,0));

% NOTE: The little circle is missing!
drawarrow reverse pat1 rotated 180 shifted (w14+(d,0));
draw pat2 shifted (w14+(dd,0));
label.rt(btex $\sigma$ etex, w14+(1.55d,0));

label.bot(btex $(G,F)$ \fibre/ bundle etex, 0.5[w10,w13]+(0,-sepA));

%==============================================================================
% PFB.
% The labels for the spaces.
label(btex $B$ etex, w20);
label(btex $P$ etex, w21);
label(btex $G$ etex, w22);
label(btex $B\times G$ etex, w23);
label(btex $G$ etex, w24);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w21,w20,qq,qq,1,black);
S_arrowspaces(w21,w23,qq,q,1,black);
S_arrowspaces(w21,w22,qq,qq,1,black);
S_arrowspaces(w24+(-sepB,0),w22+(-sepB,0),qq,qq,1,black);
S_arrowspaces(w24+(sepB,0),w22+(sepB,0),qq,qq,1,black);
S_arrowspaces(w24,w21,qq,qq,1,black);

draw fullcircle scaled cr shifted (ratA[w24,w22]+(-sepB,0));
draw fullcircle scaled cr shifted (ratA[w24,w22]+(sepB,0));
draw fullcircle scaled cr shifted ratA[w24,w21];

% The arrow labels.
label.lft(btex \strut$\pi$ etex, 0.5[w20,w21]);
label.top(btex $\phi{\in}A_P^G$ etex, 0.5[w21,w22]);
S_tiltlabel_top_up(btex $\pi\times\phi$ etex,
 0.5[w21,w23], angle(w23-w21), 0pt);
label.lft(btex \strut$\mu_G^L$ etex, ratA[w24,w22]+(-sepD-sepB,-sepC));
label.rt(btex \strut$\mu_G^R$ etex, ratA[w24,w22]+(sepD+sepB,-sepC));
label.ulft(btex $\mu_G^P$ etex, ratB[w24,w21]);

% NOTE: The little circle is missing!
drawarrow reverse pat1 rotated 180 shifted (w24+(d,0));
draw pat2 shifted (w24+(dd,0));
label.rt(btex $\sigma$ etex, w24+(1.55d,0));

label.bot(btex principal $G$-bundle etex, 0.5[w20,w23]+(0,-sepA));

%==============================================================================
% Fibration.
% The labels for the spaces.
label(btex $B$ etex, w30);
label(btex $E$ etex, w31);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w31,w30,qq,qq,1,black);

% The arrow labels.
label.lft(btex \strut$\pi$ etex, 0.5[w30,w31]);

label.bot(btex fibration etex, w30+(0,-sepA));

endfig;
end
