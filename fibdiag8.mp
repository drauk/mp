% tex/conc/mp/fibdiag8.mp   2017-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag8.mp 09099b7be7 2017-01-15 12:55:05Z Alan U. Kennington $
% Combined topological figure/frame bundles for multiple ordinary bundles.

input mapmax.mp
verbatimtex
% \input akmath
% \input dgmpmax
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 1.8cm;
bb := aa;
cc := 0.9aa;
dd := 1.2aa;
ee := 1.1aa;
ff := 0.6aa;
q := 0.48cm;
qe := 0.3cm;
qq := 0.35cm;
sepA := 7pt;
sepB := 3pt;
sepC := 6pt;
sepD := 0.5pt;
ratA := 0.44;
ratB := 0.75;
ratC := 0.65;
offA := 2pt;
scA := 0.7;
penLN := 0.5bp;
penPT := 2.5bp;

cr := 4.5pt;
theta := 1;
d := 11pt;
dop := 1.485d;

w11 := (0,0);           % B

w20 := w11+(-aa,dd);    % P
w21 := w11+(0,bb);      % E_1
w22 := w21+(ff,0);      % E_2
w23 := w22+(ff,0);      % E_3

w31 := w21+(0,cc);      % F_1
w32 := w31+(ff,0);      % F_2
w33 := w32+(ff,0);      % F_3

w40 := w31+(0,ee);      % G

pat1 := subpath (theta, 8-theta) of fullcircle scaled d;
pat2 := fullcircle scaled cr;

%==============================================================================
% The labels for the spaces.
label(btex $B$ etex, w11);

label(btex $P$ etex, w20);
label(btex $E_1$ etex, w21);
label(btex $E_2$ etex, w22);
label(btex $E_3$ etex, w23);

label(btex $F_1$ etex, w31);
label(btex $F_2$ etex, w32);
label(btex $F_3$ etex, w33);

label(btex $G$ etex, w40);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
pickup pencircle scaled penLN;
S_arrow(w20,w11,qq,qq,1,black,-offA)();
S_arrow(w20,w11,qq,qq,2,black,offA)(dashed evenly scaled scA);

S_arrowspaces(w21,w11,qq,qq,1,black);
S_arrowspaces(w22,w11,qq,qq,1,black);
S_arrowspaces(w23,w11,qq,qq,1,black);

S_arrowspacesstyle(w21,w31,qe,qe,1)(dashed evenly scaled scA withcolor black);
S_arrowspacesstyle(w22,w32,qe,qe,1)(dashed evenly scaled scA withcolor black);
S_arrowspacesstyle(w23,w33,qe,qe,1)(dashed evenly scaled scA withcolor black);

S_arrowspaces(w40,w20,qq,qq,1,black);
S_arrowspaces(w40,w31,qq,qe,1,black);
S_arrowspaces(w40,w32,qq,qe,1,black);
S_arrowspaces(w40,w33,qq,qq,1,black);

draw pat2 shifted ratA[w40,w20];
draw pat2 shifted ratA[w40,w31];
draw pat2 shifted ratA[w40,w32];
draw pat2 shifted ratA[w40,w33];

drawarrow pat1 rotated 0 shifted (w40+(-d,0));
draw pat2 shifted (w40+(-dop,0));
label.lft(btex $\sigma$ etex, w40+(-1.55d,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrow labels.
label.rt(btex \strut$\eta^1_\phi$ etex, 0.5[w21,w31]);
label.rt(btex \strut$\eta^2_\phi$ etex, 0.5[w22,w32]);
label.rt(btex \strut$\eta^3_\phi$ etex, 0.5[w23,w33]);

label.lft(btex $\mu_G^P$ etex, ratA[w40,w20]+(-0.5cr,0));
label.lft(btex $\mu_G^{F_1}$ etex, ratB[w40,w31]+(2pt,0));
label.lft(btex $\mu_G^{F_2}$ etex, ratB[w40,w32]+(1pt,0));
label.urt(btex $\mu_G^{F_3}$ etex, ratC[w40,w33]+(-2pt,0));

label.llft(btex $\pi_P$ etex, 0.5[w11,w20]+(-0.7offA,-0.7offA));
label.urt(btex $\phi$ etex, 0.47[w11,w20]+(0.7offA,0.7offA));
label.rt(btex $\pi_1$ etex, 0.75[w11,w21]+(-1pt,0));
label.rt(btex $\pi_2$ etex, 0.75[w11,w22]);
label.rt(btex $\pi_3$ etex, 0.75[w11,w23]+(2pt,0));

% label.bot(btex combined fibre/frame bundles etex, w11+(0,-sepA));

endfig;
end
