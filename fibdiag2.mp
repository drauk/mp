% tex/conc/mp/fibdiag2.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag2.mp 84e5e9c866 2016-09-03 06:56:37Z Alan U. Kennington $
% Maps for fibrations and ordinary and principal fibre bundles.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 2.0cm;
bb := aa;
cc := 2aa+15pt;
q := 0.48cm;
qq := 0.35cm;
sepA := 10pt;
sepB := 3pt;
sepC := 6pt;
sepD := 0.5pt;
sepG := 7pt;
sepGG := 9pt;
sepT := 5pt;
sepR := 2pt;

ratA := 0.44;
ratB := 0.55;

cr := 4.5pt;
theta := 1;
d := 11pt;
dd := 1.485d;
penLN := 0.5bp;

w0 := (0,0);            % B
w1 := w0+(0,bb);        % E

w10 := w0+(cc-aa,0);    % B
w11 := w10+(0,bb);      % E
w12 := w10+(aa,bb);     % F
w13 := w10+(aa,0);      % B x F
w14 := w10+(aa,2bb);    % G

w20 := w10+(cc,0);      % B
w21 := w20+(0,bb);      % E
w22 := w20+(aa,bb);     % G (fibre)
w23 := w20+(aa,0);      % B x G
w24 := w20+(aa,2bb);    % G (group)

pat1 := subpath (theta, 8-theta) of fullcircle scaled d;
pat2 := fullcircle scaled cr;

%==============================================================================
% Fibration.
% The labels for the spaces.
label(btex $M$ etex, w0);
label(btex $T(M)$ etex, w1);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w1,w0,qq,qq,1,black);

% The arrow labels.
label.lft(btex \strut$\pi$ etex, 0.5[w0,w1]);

label.bot(btex tangent fibration etex, w0+(0,-sepA));

%==============================================================================
% OFB.
% The labels for the spaces.
label(btex $M$ etex, w10);
label(btex $T(M)$ etex, w11);
label(btex $\reals^n$ etex, w12);
label(btex $M\times\reals^n$ etex, w13);
label(btex $\gp{GL}(n)$ etex, w14);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w11,w10,qq,qq,1,black);
S_arrowspaces(w11,w13,qq,q,1,black);
S_arrowspaces(w11,w12,qq+sepT,qq+sepR,1,black);
S_arrowspaces(w14,w12,qq,qq,1,black);

draw fullcircle scaled cr shifted ratA[w14,w12];

% The arrow labels.
label.lft(btex \strut$\pi$ etex, 0.5[w10,w11]);
label.top(btex $\phi$ etex, 0.5[w11,w12]);
S_tiltlabel_top_up(btex $\pi\times\phi$ etex,
 0.5[w11,w13], angle(w13-w11), 0pt);
label.lft(btex $\mu_G^L$ etex, ratA[w14,w12]+(-0.3cr,-sepC));

drawarrow reverse pat1 rotated 180 shifted (w14+(d+sepGG,0));
draw pat2 shifted (w14+(dd+sepGG,0));
label.rt(btex $\sigma_G$ etex, w14+(1.55d+sepGG,0));

label.bot(btex ordinary tangent bundle etex, 0.5[w10,w13]+(0,-sepA));

%==============================================================================
% PFB.
% The labels for the spaces.
label(btex $M$ etex, w20);
label(btex $T(M)$ etex, w21);
label(btex $\gp{GL}(n)$ etex, w22);
label(btex $M\times\gp{GL}(n)$ etex, w23);
label(btex $\gp{GL}(n)$ etex, w24);

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w21,w20,qq,qq,1,black);
S_arrowspaces(w21,w23,qq,q,1,black);
S_arrowspaces(w21,w22,qq+sepT,qq+sepG,1,black);
S_arrowspaces(w24+(-sepB,0),w22+(-sepB,0),qq,qq,1,black);
S_arrowspaces(w24+(sepB,0),w22+(sepB,0),qq,qq,1,black);
S_arrowspaces(w24,w21,qq,qq,1,black);

draw fullcircle scaled cr shifted (ratA[w24,w22]+(-sepB,0));
draw fullcircle scaled cr shifted (ratA[w24,w22]+(sepB,0));
draw fullcircle scaled cr shifted ratA[w24,w21];

% The arrow labels.
label.lft(btex \strut$\pi$ etex, 0.5[w20,w21]);
label.top(btex $\phi$ etex, 0.5[w21,w22]);
S_tiltlabel_top_up(btex $\pi\times\phi$ etex,
 0.5[w21,w23], angle(w23-w21), 0pt);
label.lft(btex \strut$\mu_G^L$ etex, ratA[w24,w22]+(-sepD-sepB,-sepC));
label.rt(btex \strut$\mu_G^R$ etex, ratA[w24,w22]+(sepD+sepB,-sepC));
label.ulft(btex $\mu_G^E$ etex, ratB[w24,w21]);

drawarrow reverse pat1 rotated 180 shifted (w24+(d+sepGG,0));
draw pat2 shifted (w24+(dd+sepGG,0));
label.rt(btex $\sigma_G$ etex, w24+(1.55d+sepGG,0));

label.bot(btex principal tangent bundle etex, 0.5[w20,w23]+(0,-sepA));

endfig;
end
