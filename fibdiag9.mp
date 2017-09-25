% tex/conc/mp/fibdiag9.mp   2017-1-17   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag9.mp e6195bdce8 2017-01-17 13:47:55Z Alan U. Kennington $
% Maps/spaces for topological fibre bundle group/observer/observation/state.

input mapmax
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 1.2cm;
bb := aa;
cc := 4aa+5pt;
q := 0.52cm;
qq := 0.35cm;
sepA := 3pt;
sepB := 10pt;
sepC := 13pt;
penLN := 0.5bp;
penPT := 2.5bp;
ratA := 0.44;

cr := 4.5pt;
theta := 1;
d := 11pt;
dd := 1.485d;

w0 := (0,0);            % E_b
w1 := w0+(-aa,bb);      % P_b
w2 := w0+(aa,bb);       % F
w3 := w0+(0,2aa);       % G

w20 := w0+(cc,0);       % E_b
w21 := w20+(-aa,bb);    % P_b
w22 := w20+(aa,bb);     % F
w23 := w20+(0,2aa);     % G

pat1 := subpath (theta, 8-theta) of fullcircle scaled d;
pat2 := fullcircle scaled cr;

%==============================================================================
% Map eta from observer/observed to observation.
% The labels for the spaces.
label(btex $E_b$ etex, w0);
label(btex \strut$P_b$ etex, w1);
label(btex \strut$F$ etex, w2);
label(btex $G$ etex, w3);

% The arrows.
pickup pencircle scaled penLN;
% S_arrowspaces(w0,w1,qq,qq,1,black);
% S_arrowspaces(w0,w2,qq,qq,1,black);
S_arrowspaces(w3,w1,qq,qq,1,black);
S_arrowspaces(w3,w2,qq,qq,1,black);

draw pat2 shifted ratA[w3,w1];
draw pat2 shifted ratA[w3,w2];

% The arrow labels.
label.ulft(btex $\llap{$\mu_G^P(\cdotsp,g)={}$}R_g$ etex, 0.5[w1,w3]);
label.urt(btex $L_g=\mu_G^F(g,\cdotsp)$ etex, 0.5[w2,w3]+(0,0));

w10 := w2 + (-8pt,0) rotated 20;
pat10 := w0..{dir20}w10;
pat11 := w1..{dir20}w10;

draw subpath (0.21, 1) of pat10;
drawarrow subpath (0.17, 1) of pat11;
label.bot(btex $\eta$ etex, point 0.62 of pat11);

label.bot(btex \strut measurement map etex, w0+(0,-sepB));
label.bot(btex \strut $\eta:P_b\times E_b\to F$ etex, w0+(0,-sepB-sepC));
label.bot(btex \strut $\eta(\rho,z)=L_g\eta(R_g\rho,z)$ etex,
 w0+(0,-sepB-2sepC));

%==============================================================================
% Map eta from observer/observation to observed object.
% The labels for the spaces.
label(btex $E_b$ etex, w20);
label(btex \strut$P_b$ etex, w21);
label(btex \strut$F$ etex, w22);
label(btex $G$ etex, w23);

% The arrows.
pickup pencircle scaled penLN;
% S_arrowspaces(w20,w21,qq,qq,1,black);
% S_arrowspaces(w20,w22,qq,qq,1,black);
S_arrowspaces(w23,w21,qq,qq,1,black);
S_arrowspaces(w23,w22,qq,qq,1,black);

draw pat2 shifted ratA[w23,w21];
draw pat2 shifted ratA[w23,w22];

% The arrow labels.
% label.ulft(btex $\mu_G^P(\cdotsp,g)=R_g$ etex, 0.5[w21,w23]);
label.ulft(btex $R_g$ etex, 0.5[w21,w23]);
% label.urt(btex $L_g=\mu_G^F(g,\cdotsp)$ etex, 0.5[w22,w23]+(0,0));
label.urt(btex $L_g$ etex, 0.5[w22,w23]+(0,0));

w30 := w20 + (0,8pt);
pat10 := w21..{dir-90}w30;
pat11 := w22..{dir-90}w30;

drawarrow subpath (0.2, 1) of pat10;
drawarrow subpath (0.12, 1) of pat11;
label.top(btex $\zeta$ etex, w20+(0,22pt));

label.bot(btex \strut reconstruction map etex, w20+(0,-sepB));
label.bot(btex \strut $\zeta:P_b\times F\to E_b$ etex, w20+(0,-sepB-sepC));
label.bot(btex \strut $\zeta(R_g\rho,f)=\zeta(\rho,L_gf)$ etex,
 w20+(0,-sepB-2sepC));

endfig;
end
