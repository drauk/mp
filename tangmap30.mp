% tex/conc/mp/tangmap30.mp   2012-5-11   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap30.mp 5d4f33b79b 2015-05-11 13:20:03Z Alan U. Kennington $
% Maps and spaces for a continuous embedding of a topological manifold.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
color col[];
path pat[];

dA := 1.6cm;
dB := dA + 1.0cm;
rA := dA/2;
rB := dB/2;
q := rA*1.1;
qB := rB*1.1;
qy := q + 2pt;
a := 3.9cm;
b := 2.5cm;

unit := 0.25cm;
np := 2;
nq := 2;
xt := 0.45;
bx := unit * 1.2;

col0 := 0.7 white;
col1 := 0.93 white;

penRN := 0.5bp;
penCIRC := 0.5bp;
penPT := 3.0bp;
penLN := 0.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(a/2,b);
w3 := w0+(a,b);

% The circles.
pickup pencircle scaled penCIRC;
pat1 := fullcircle scaled dA shifted w0;
pat2 := fullcircle scaled dA shifted w1;
pat3 := fullcircle scaled dB shifted w1;
fill pat1 withcolor col1;
fill pat2 withcolor col1;
draw pat1;
draw pat2;
draw pat3;

% Labels for the circles.
label.lft(btex $M_1$ etex, w0-(rA,0));
label.rt(btex $M_2$ etex, w1+(rB,0));
% label.lft(btex $\reals^{n_1}$ etex, w2+(-q,0)+(unit,0));
label.urt(btex $\reals^{n_1}$ etex, w2+(q,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside circles.
pickup pencircle scaled penPT;
w20 := w0+(0.60rA,0);
draw w20;
label.lft(btex\strut $f^{-1}(p)$ etex, w20);

w21 := w1+(0.1rA,0.1rA);
w22 := w1+(0,-0.5rA);
draw w21;
label.lft(btex\strut $p$ etex, w21);
label(btex\strut $f(M_1)$ etex, w22);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
w4 := w2 + (0,bx);
pickup pencircle scaled penLN;
S_arrowspace(w0, w1, q, 1, black);
label.bot(btex \strut$f$ etex, 0.4[w0,w1]);

% Vertical arrows.
S_arrowspaces(w0, w2, q, qy, 1, black);
label.ulft(btex $\psi$ etex, 0.5[w2,w0]);

S_arrowspaces(w1, w2, q, qy, 1, black);
label.urt(btex $\hat\psi$ etex, 0.5[w2,w1]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The Rn set.
pickup pencircle scaled penRN;
S_rn(w2, unit, np, nq, xt, col0);

endfig;
end
