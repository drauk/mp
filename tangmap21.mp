% tex/conc/mp/tangmap21.mp   2016-9-6   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap21.mp 68a510b666 2016-09-06 10:08:17Z Alan U. Kennington $
% Abstract tangent space definition.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[];
color col[];

d := 1.4cm;
r := d/2;
q := r*1.2;
qx := r*1.42;
a := 3.9cm;
b := 2.5cm;

unit := 0.25cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;
bx := unit * 1.2;
penRN := 0.5bp;
penCIRC := 0.5bp;
penARROW := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);       % manifold
w1 := w0+(0,b);    % tangent space
w2 := w0+(-a-unit,0);   % Left R^n for manifold.
w3 := w1+(-a-unit,0);   % Left R^n for tangent space.
w4 := w0+(a,0);    % Right R^n for manifold.
w5 := w1+(a,0);    % Right R^n for tangent space.

% The circles.
pickup pencircle scaled penCIRC;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

% Labels for the circles.
label.bot(btex $M$ etex, w0+(0,-q));
label.top(btex ${\cal T}$ etex, w1+(0,q));
label.lft(btex $\reals^n$ etex, w2+(-q,0)+(unit,0));
label.lft(btex $T_{\psi_1(p)}(\reals^n)\equiv\reals^n$ etex,
 w3+(-q,0)+(unit,0));
label.rt(btex $\reals^n$ etex, w4+(q,0));
label.rt(btex $\reals^n\equiv T_{\psi_2(p)}(\reals^n)$ etex, w5+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;
draw w0+(r/5,0);
label.lft(btex $p$ etex, w0+(r/5,0));

draw w1+(r/5,0);
label.lft(btex $V$ etex, w1+(r/5,0));

% Vertical arrows.
pickup pencircle scaled penARROW;
S_arrowspace(w0, w1, q, 2, black);
label.lft(btex $\pi$ etex, 0.5[w0,w1]);

w6 := 0.5[w2+(unit,0),w0];
w7 := 0.5[w3+(unit,0),w1];
w8 := 0.5[w4,w0];
w9 := 0.5[w5,w1];

S_arrowspace(w6, w7, unit, 1, black);
label.lft(btex $\Phi$ etex, 0.5[w6,w7]);

S_arrowspace(w8, w9, unit, 1, black);
label.rt(btex $\Phi$ etex, 0.5[w8,w9]);

% Horizontal arrows.
S_arrowspace(w0, w2+(unit,0), q, 1, black);
label.bot(btex $\psi_1$ etex, w6);

S_arrowspace(w1, w3+(unit,0), q, 1, black);
label.top(btex $\Phi(\psi_1)$ etex, w7);

S_arrowspace(w0, w4, q, 1, black);
label.bot(btex $\psi_2$ etex, 0.5[w4,w0]);

S_arrowspace(w1, w5, q, 1, black);
label.top(btex $\Phi(\psi_2)$ etex, 0.5[w5,w1]);

% The R^n sets.
pickup pencircle scaled penRN;
S_rn(w2, unit, np, nq, xt, col0);
S_rn(w3, unit, np, nq, xt, col0);
S_rn(w4, unit, np, nq, xt, col0);
S_rn(w5, unit, np, nq, xt, col0);

% The transition maps.
pickup pencircle scaled penARROW;

w10 := (w0+(0,-2q));
drawarrow (w2+(2unit,-q))..w10..(w4+(-2unit,-q));
label.bot(btex $\psi_2\circ\psi_1^{-1}$ etex, w10);

w12 := (w1+(0,2q));
drawarrow (w3+(2unit,q))..w12..(w5+(-2unit,q));
label.top(
    btex $\Phi(\psi_2)\circ(\Phi(\psi_1)\restrict{\pi^{-1}(\{p\})})^{-1}$ etex,
    w12);

% Points in the R^n sets.
pickup pencircle scaled penPT;
draw w2+(2unit,2unit);
label.rt(btex $x_1$ etex, w2+(2unit+xt*unit,2unit+xt*unit));

draw w3+(2unit,unit);
label.urt(btex $v_1$ etex, w3+(2unit+xt*unit,unit));

draw w4+(2unit,2unit);
label.rt(btex $x_2$ etex, w4+(2unit+xt*unit,2unit+xt*unit));

draw w5+(unit,2unit);
label.urt(btex $v_2$ etex, w5+(unit,2unit+xt*unit));

endfig;
end
