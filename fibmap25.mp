% tex/conc/mp/fibmap25.mp   2017-1-17   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap25.mp e6195bdce8 2017-01-17 13:47:55Z Alan U. Kennington $
% Transition maps for tangent space of a tangent space.

input mapmax
verbatimtex
\input akmath
% \input dgmpmax
etex

beginfig(1);
pair w[];
path pat[];

d := 1.1cm;
r := d/2;
sepA := r + 1pt;
sepB := r + 3pt;
sepC := 5pt;
sepD := 12pt;
sepE := 5pt;
sepF := 2pt;
a := 2.2cm;
b := a;
scA := 0.7;

penLN := 0.5bp;
penDOT := 2.5bp;

cr := 4.5pt;
theta := 1;
dop := 11pt;
ratA := 0.47;

pat1 := subpath (theta, 8-theta) of fullcircle scaled dop;
pat2 := fullcircle scaled cr;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w12 := w0;                      % B

w21 := w0+(-a,b);               % P
w22 := w0+(0,b);                % P x E
w23 := w0+(a,b);                % E

w31 := w0+(-a,2b);              % G
w32 := w0+(0,2b);               % F

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w12;
draw fullcircle scaled d shifted w21;
draw fullcircle scaled d shifted w22;
draw fullcircle scaled d shifted w23;
draw fullcircle scaled d shifted w31;
draw fullcircle scaled d shifted w32;

% Labels for the circles.
label.rt(btex $B$ etex, w12+(sepA,0));
label.lft(btex $P_b$ etex, w21+(-sepA,0));
label.bot(btex $P_b\times E_b$ etex, w22+(0,-r+2pt));
label.rt(btex $E_b$ etex, w23+(sepA,0));
label.lft(btex $G$ etex, w31+(-sepA,0));
label.rt(btex $F$ etex, w32+(sepA,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside circles.
pickup pencircle scaled penDOT;
w42 := w12+(2pt,0);
draw w42;
label.lft(btex $\scriptstyle\strut b$ etex, w42);

w51 := w21+(10.5pt,-3pt);
draw w51;
label.lft(btex $\scriptstyle\strut\rho\,=$ etex, w51+(-7pt,7.5pt));
label.lft(btex $\scriptstyle\strut\phi(b)$ etex, w51);

w52 := w22+(8.5pt,0);
draw w52;
label.lft(btex $\scriptstyle(\rho,z)$ etex, w52);

w53 := w23+(2pt,0);
draw w53;
label.lft(btex $\scriptstyle z$ etex, w53);

w61 := w31+(2pt,0);
draw w61;
label.lft(btex $\scriptstyle g$ etex, w61);

w62 := w32+(10.5pt,0);
draw w62;
label.lft(btex $\scriptstyle\eta(\rho,z)$ etex, w62);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
pickup pencircle scaled penLN;
% S_arrowspace(w21,w12,sepB,1,black);
S_arrow(w21,w12,sepB,sepB,1,black,-sepF)();
S_arrow(w21,w12,sepB,sepB,2,black,sepF)(dashed evenly scaled scA);
label.llft(btex $\pi_P$ etex, 0.5[w21,w12]+(-0.7sepF,-0.7sepF));
label.urt(btex $\phi$ etex, 0.5[w21,w12]+(0.7sepF-1pt,0.7sepF-1pt));

S_arrowspace(w23,w12,sepB,1,black);
label.lrt(btex $\pi$ etex, 0.5[w23,w12]);

S_arrowspace(w22,w21,sepB,1,black);
label.top(btex $\Pi\rlap{${}_1$}$ etex, 0.5[w22,w21]);

S_arrowspace(w22,w23,sepB,1,black);
% label.top(btex $\Pi\rlap{${}_2$}$ etex, 0.5[w22,w23]);
label.top(btex $\Pi_2$ etex, 0.5[w22,w23]);

draw pat2 shifted ratA[w31,w21];
S_arrowspace(w31,w21,sepB,1,black);
% label.lft(btex $\mu_G^P$ etex, 0.5[w31,w21]);
% label.lft(btex $\mu_G^P$ etex, ratA[w31,w21]+(-0.3cr,0));
label.rt(btex $\mu_G^P$ etex, ratA[w31,w21]+(0.3cr,0));
label.lft(btex\strut free and etex, 0.5[w31,w21]+(-0.5cr-sepC,sepD));
label.lft(btex\strut transitive etex, 0.5[w31,w21]+(-0.5cr-sepC,0));
label.lft(btex\strut \llap{$\imprel{}$}bijective etex,
 0.5[w31,w21]+(-0.5cr-sepC,-sepD));

draw pat2 shifted ratA[w31,w32];
S_arrowspace(w31,w32,sepB,1,black);
% label.top(btex $\mu_G^F$ etex, 0.5[w31,w32]);
% label.top(btex $\mu_G^F$ etex, ratA[w31,w32]+(0,0.3cr));
label.bot(btex $\mu_G^F$ etex, ratA[w31,w32]+(0,-0.3cr));
label.top(btex\strut effective etex, 0.5[w31,w32]+(0,0.5cr+sepE));

S_arrowspace(w22,w32,sepB,1,black);
label.lft(btex $\eta$ etex, 0.5[w22,w32]);

S_arrowspacesstyle(w23,w32,sepB,sepB,1)
 (dashed evenly scaled scA withcolor black);
label.urt(btex $\eta(\rho,\cdotsp)$ etex, 0.5[w23,w32]);
label.urt(btex bijection etex, 0.5[w23,w32]+(0,sepD));

endfig;
end
