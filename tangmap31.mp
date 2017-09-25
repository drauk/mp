% tex/conc/mp/tangmap31.mp   2012-5-21   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap31.mp f2adf50b31 2015-05-21 05:58:39Z Alan U. Kennington $
% Regular embedding of a submanifold of a topological manifold.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
color col[];
path pat[];

dA := 1.8cm;
dB := dA + 0.9cm;
rA := dA/2;
rB := dB/2;
q := rA*1.1;
qB := rB*1.1;
qy := q + 10pt;
dS := 0.2;

a := 4.5cm;
b := 2.5cm;

unit := 0.34cm;
np := 3;
nq := 3;
xt := 0.45;
bx := unit * 1.2;

col0 := 0.8 white;
col1 := 0.93 white;
col2 := 0.5 white;
col3 := black;

penARROW := 0.5bp;
penRN := 0.5bp;
penCIRC := 0.5bp;
penPT := 3.0bp;
penLN := 0.5bp;
penSUB := 0.7bp;
penOM := 1.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w1 := w0+(-a/2,0);
w2 := w0+(a/2,0);

% The circles.
pickup pencircle scaled penCIRC;
pat2 := fullcircle scaled dA shifted w1;
pat3 := fullcircle scaled dB shifted w1;
fill pat2 withcolor col1;
draw pat2;
draw pat3;

% Label for the circle.
label.lft(btex $M$ etex, w1+(-rB,0));

% The submanifold.
w30 := point 3.65 of pat3;
w34 := point 0.5 of pat3;
w32 := 0.5[w30,w34];
w31 := 0.5[w30,w32] + (0,dS * length(w32-w30));
w33 := 0.5[w32,w34] + (0,-dS * length(w34-w32));
pat1 := w30..w31..w32..w33..w34;

(tA, tC) = pat1 intersectiontimes (subpath(2,6) of pat2);
(tB, tD) = pat1 intersectiontimes (subpath(0,2) of pat2);
pat4 := subpath(tA,tB) of pat1;
w39 := point (0.6*(tB-tA)) of pat4;

pickup pencircle scaled penSUB;
draw pat1 dashed (evenly scaled 0.7) withcolor col2;
draw pat4 withcolor col3;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside circles.
pickup pencircle scaled penPT;
w22 := w1+(0,-rA);
draw w39;
label.llft(btex $p$ etex, w39);
label.top(btex $S$ etex, w31+(-1pt,0));
label.top(btex $U$ etex, w22);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
w4 := w2 + (0,bx);
pickup pencircle scaled penARROW;
S_arrowspaces(w1, w2, q, qy, 1, black);
w9 := 0.5[w1,w2];
label.bot(btex $\tilde\psi=\phi\circ\psi$ etex, w9);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The Rn set.
pickup pencircle scaled penRN;
S_rn(w2, unit, np, nq, xt, col0);

% Submanifold S viewed in coordinate chart.
pat5 := pat4 shifted (a,0);
pickup pencircle scaled penSUB;
draw pat5 withcolor col3;
w50 := point 0 of pat5;
w51 := point 0 of (reverse pat5);
w52 := (xpart(w50),ypart(w2));
w53 := (xpart(w51),ypart(w2));
w54 := w39 + (a,0);
w55 := w2+((np+xt)*unit + 10pt,-1.5unit);
w56 := (xpart(w54),ypart(w2));
w57 := point 0.3 of pat5;
w58 := (xpart(w57),ypart(w2));

% label.top(btex $a$ etex, w50);
% label.top(btex $b$ etex, w51);

pickup pencircle scaled penOM;
draw w52--w53;

label.rt(btex $\reals^{n-m}$ etex, w2+(0,(nq+1+xt)*unit)+(1pt,0));
label.urt(btex $\reals^m$ etex, w2+((np+1+xt)*unit,0));
label.rt(btex\strut $\Omega\subseteq\reals^m$ etex, w55);
pickup pencircle scaled penARROW;
S_arrowspaces(w55, w53, 0, 3pt, 1, black);
S_arrowspaces(w58, w57, 2pt, 2pt, 1, black);
label.lft(btex $h$ etex, 0.5[w58,w57]);

pickup pencircle scaled penPT;
draw w54;
draw w56;
label.urt(btex $\psi(p)$ etex, w54);
label.lrt(btex\strut $\tilde\psi(p)$ etex, w56+(-3pt,0));

pickup pencircle scaled penARROW;
S_arrowspaces(w39, w54, rB, (np+2)*unit, 1, black);
w60 := (xpart(w9), ypart(0.5[w39,w54]));
label.top(btex $\psi$ etex, w60);

dPHI := 0.85unit;
w61 := w50+(-dPHI,0);
w62 := w52+(-dPHI,0);
S_arrowspaces(w61, w62, 0, 2pt, 1, black);
label.lft(btex $\phi$ etex, 0.5[w61,w62]);

endfig;
end
