% tex/conc/mp/fibdiag7.mp   2018-2-4   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag7.mp 09099b7be7 2017-01-15 12:55:05Z Alan U. Kennington $
% Spaces and maps for combined topological figure/frame bundles.

input mapmax.mp
verbatimtex
% \input akmath
% \input dgmpmax
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 2.0cm;
bb := aa;
cc := 3aa+5pt;
q := 0.48cm;
qq := 0.35cm;
qPE := 19pt;
sepA := 7pt;
sepB := 3pt;
sepC := 6pt;
sepD := 0.5pt;
ratA := 0.44;
ratB := 0.55;
offA := 2pt;
scA := 0.7;

cr := 4.5pt;
theta := 1;
d := 11pt;
dd := 1.485d;

% w0 := (0,0);            % B
% w1 := w0+(0,bb);        % P x E
% w2 := w1+(0,bb);        % F
% w3 := w1+(-aa,0);       % P
% w4 := w1+(aa,0);        % E
% w5 := w3+(0,bb);        % G

w10 := (cc,0);          % B
w11 := w10+(0,bb);      % P x E
w12 := w11+(0,bb);      % F
w13 := w11+(-aa,0);     % P
w14 := w11+(aa,0);      % E
w15 := w13+(0,bb);      % G

pat1 := subpath (theta, 8-theta) of fullcircle scaled d;
pat2 := fullcircle scaled cr;

%==============================================================================
% Combined fibre/frame bundle.
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
% S_arrowspaces(w13,w10,qq,qq,1,black);
S_arrow(w13,w10,qq,qq,1,black,-offA)();
S_arrow(w13,w10,qq,qq,2,black,offA)(dashed evenly scaled scA);
S_arrowspaces(w14,w10,qq,qq,1,black);
S_arrowspacesstyle(w14,w12,qq,qq,1)(dashed evenly scaled scA withcolor black);

draw pat2 shifted ratA[w15,w12];
draw pat2 shifted ratA[w15,w13];

drawarrow pat1 rotated 0 shifted (w15+(-d,0));
draw pat2 shifted (w15+(-dd,0));
label.lft(btex $\sigma$ etex, w15+(-1.55d,0));

% The arrow labels.
% label.lft(btex \strut$\pi$ etex, 0.5[w10,w11]);
label.lft(btex \strut$\eta$ etex, 0.5[w11,w12]);
label.bot(btex $\Pi\rlap{${}_1$}$ etex, 0.5[w11,w13]);
label.bot(btex $\Pi\rlap{${}_2$}$ etex, 0.5[w11,w14]);

% label.lft(btex $\mu_G^P$ etex, ratA[w15,w13]+(-0.3cr,-sepC));
label.lft(btex $\mu_G^P$ etex, ratA[w15,w13]+(-0.3cr,0));
% label.top(btex $\mu_G^F$ etex, ratA[w15,w12]+(-sepC,0.3cr));
label.top(btex $\mu_G^F$ etex, ratA[w15,w12]+(0,0.3cr));

% S_tiltlabel_bot_up(btex $\pi_P$ etex, 0.5[w13,w10], angle(w10-w13), 0pt);
% S_tiltlabel_bot_up(btex $\pi$ etex, 0.5[w10,w14], angle(w14-w10), 0pt);
label.llft(btex $\pi_P$ etex, 0.5[w10,w13]+(-0.7offA,-0.7offA));
label.urt(btex $\phi$ etex, 0.47[w10,w13]+(0.7offA,0.7offA));
label.lrt(btex $\pi$ etex, 0.5[w10,w14]);

% S_tiltlabel_top_up(btex $\eta_\phi$ etex, 0.5[w12,w14], angle(w14-w12), 0pt);
% S_tiltlabel_bot_up(btex $\phi\in\YY(T(P))$ etex,
%  0.5[w12,w14], angle(w14-w12), 0pt);
label.urt(btex $\eta_\phi$ etex, 0.5[w14,w12]);

% label.bot(btex combined fibre/frame bundle etex, w10+(0,-sepA));

endfig;
end
