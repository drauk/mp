% tex/conc/mp/fibdiag4.mp   2018-2-4   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag4.mp e6195bdce8 2017-01-17 13:47:55Z Alan U. Kennington $
% Spaces and maps for baseless figure/frame bundles.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
\input dgspell
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 2.0cm;
bb := aa;
cc := 3aa+5pt;
q := 0.48cm;
qq := 0.3cm;
qPE := 19pt;
sepA := 7pt;
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
w1 := w0+(0,bb);        % P x E
w2 := w1+(0,bb);        % F
w3 := w1+(-aa,0);       % P
w4 := w1+(aa,0);        % E
w5 := w3+(0,bb);        % G

w10 := (cc,0);          % B
w11 := w10+(0,bb);      % P x E
w12 := w11+(0,bb);      % F
w13 := w11+(-aa,0);     % P
w14 := w11+(aa,0);      % E
w15 := w13+(0,bb);      % G

pat1 := subpath (theta, 8-theta) of fullcircle scaled d;
pat2 := fullcircle scaled cr;

%==============================================================================
% Baseless figure/frame bundle.
% The labels for the spaces.
% label(btex $B$ etex, w0);
label(btex $P\times E$ etex, w1);
label(btex $F$ etex, w2);
label(btex $P$ etex, w3);
label(btex $E$ etex, w4);
label(btex $G$ etex, w5);

% The arrows.
pickup pencircle scaled 0.5bp;
% S_arrowspaces(w1,w0,qq,qq,1,black);
S_arrowspaces(w1,w2,qq,qq,1,black);
S_arrowspaces(w1,w3,qPE,qq,1,black);
S_arrowspaces(w1,w4,qPE,qq,1,black);
S_arrowspaces(w5,w2,qq,qq,1,black);
S_arrowspaces(w5,w3,qq,qq,1,black);
% S_arrowspaces(w3,w0,qq,qq,1,black);
% S_arrowspaces(w4,w0,qq,qq,1,black);
S_arrowspacesstyle(w4,w2,qq,qq,1)(dashed evenly withcolor black);

draw pat2 shifted ratA[w5,w2];
draw pat2 shifted ratA[w5,w3];

drawarrow pat1 rotated 0 shifted (w5+(-d,0));
draw pat2 shifted (w5+(-dd,0));
label.lft(btex $\sigma$ etex, w5+(-1.55d,0));

% The arrow labels.
% label.lft(btex \strut$\pi$ etex, 0.5[w0,w1]);
label.lft(btex \strut$\eta$ etex, 0.5[w1,w2]);
label.bot(btex \strut$\Pi\rlap{${}_1$}$ etex, 0.5[w1,w3]);
label.bot(btex \strut$\Pi\rlap{${}_2$}$ etex, 0.5[w1,w4]);

% label.lft(btex $\mu_G^P$ etex, ratA[w5,w3]+(-0.3cr,-sepC));
label.lft(btex $\mu_G^P$ etex, ratA[w5,w3]+(-0.3cr,0));
% label.top(btex $\mu_G^F$ etex, ratA[w5,w2]+(-sepC,0.3cr));
label.top(btex $\mu_G^F$ etex, ratA[w5,w2]+(0,0.3cr));

% S_tiltlabel_bot_up(btex $q$ etex, 0.5[w3,w0], angle(w0-w3), 0pt);
% S_tiltlabel_bot_up(btex $\pi$ etex, 0.5[w0,w4], angle(w4-w0), 0pt);
% label.llft(btex \strut$q$ etex, 0.5[w0,w3]);
% label.lrt(btex \strut$\pi$ etex, 0.5[w0,w4]);
% label.urt(btex \strut$\phi\in P$ etex, 0.5[w4,w2]);
S_tiltlabel_top_up(btex $\eta(\phi,\cdotsp)$ etex,
 0.5[w2,w4], angle(w4-w2), 0pt);
S_tiltlabel_bot_up(btex $\phi\in P$ etex, 0.5[w2,w4], angle(w4-w2), 0pt);

label.bot(btex baseless figure/frame bundle etex, w0+(0,-sepA));

%==============================================================================
% Fibre bundle.
% The labels for the spaces.
label(btex $B$ etex, w10);
label(btex $P\times E$ etex, w11);
label(btex $F$ etex, w12);
label(btex $P$ etex, w13);
label(btex $E$ etex, w14);
label(btex $G$ etex, w15);

% The arrows.
pickup pencircle scaled 0.5bp;
% S_arrowspaces(w11,w10,qq,qq,1,black);
S_arrowspaces(w11,w12,qq,qq,1,black);
S_arrowspaces(w11,w13,qPE,qq,1,black);
S_arrowspaces(w11,w14,qPE,qq,1,black);
S_arrowspaces(w15,w12,qq,qq,1,black);
S_arrowspaces(w15,w13,qq,qq,1,black);
S_arrowspaces(w13,w10,qq,qq,1,black);
S_arrowspaces(w14,w10,qq,qq,1,black);
S_arrowspacesstyle(w14,w12,qq,qq,1)(dashed evenly withcolor black);

draw pat2 shifted ratA[w15,w12];
draw pat2 shifted ratA[w15,w13];

drawarrow pat1 rotated 0 shifted (w15+(-d,0));
draw pat2 shifted (w15+(-dd,0));
label.lft(btex $\sigma$ etex, w15+(-1.55d,0));

% The arrow labels.
% label.lft(btex \strut$\pi$ etex, 0.5[w10,w11]);
label.lft(btex \strut$\eta$ etex, 0.5[w11,w12]);
label.bot(btex \strut$\Pi\rlap{${}_1$}$ etex, 0.5[w11,w13]);
label.bot(btex \strut$\Pi\rlap{${}_2$}$ etex, 0.5[w11,w14]);

% label.lft(btex $\mu_G^P$ etex, ratA[w15,w13]+(-0.3cr,-sepC));
label.lft(btex $\mu_G^P$ etex, ratA[w15,w13]+(-0.3cr,0));
% label.top(btex $\mu_G^F$ etex, ratA[w15,w12]+(-sepC,0.3cr));
label.top(btex $\mu_G^F$ etex, ratA[w15,w12]+(0,0.3cr));

% S_tiltlabel_bot_up(btex $q$ etex, 0.5[w13,w10], angle(w10-w13), 0pt);
% S_tiltlabel_bot_up(btex $\pi$ etex, 0.5[w10,w14], angle(w14-w10), 0pt);
label.llft(btex \strut$q$ etex, 0.5[w10,w13]);
label.lrt(btex \strut$\pi$ etex, 0.5[w10,w14]);
% label.urt(btex \strut$\phi\in\YY(T(P))$ etex, 0.5[w14,w12]);
S_tiltlabel_top_up(btex $\eta(\phi,\cdotsp)$ etex,
 0.5[w12,w14], angle(w14-w12), 0pt);
S_tiltlabel_bot_up(btex $\phi\in\YY(T(P))$ etex,
 0.5[w12,w14], angle(w14-w12), 1.5pt);

label.bot(btex \fibre//frame bundle etex, w10+(0,-sepA));

endfig;
end
