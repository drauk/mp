% tex/conc/mp/tangmap22.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap22.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Tangent space meta definition.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[];
color col[];

d := 1.75cm;
r := d/2;
q := r*1.2;
qq := r*1.14;
qx := r*1.42;
a := 4.2cm;
b := d*1.6;

penLINE := 0.5bp;
penGRID := 0.5bp;
% penDOT := 3.2pt;   % Dot size.
penDOT := 2.5bp;   % Dot size.

unit := 0.25cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;
bx := unit * 1.2;

% Centres of circles.
w0 := (0,0);       % manifold
w1 := w0+(0,b);    % tangent space
w2 := w0+(-a-unit,0);   % Left R^n for manifold.
w3 := w1+(-a-unit,0);   % Left R^n for tangent space.
w4 := w0+(a,0);    % Right R^n for manifold.
w5 := w1+(a,0);    % Right R^n for tangent space.
w10 := w0 + (-0.46r,0.18r); % Point p.

% The circles.
pickup pencircle scaled penLINE;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

% Labels for the circles.
label.lft(btex $M$ etex, w0+(-q,0));
label.lft(btex ${\cal T}$ etex, w1+(-q,0));
label.rt(btex $\reals^n$ etex, w4+(q,0));
label.rt(btex $\reals^n\equiv T_{\psi(p)}(\reals^n)$ etex, w5+(q,0));

% Points inside circles.
pickup pencircle scaled penDOT;
draw w10;
label.llft(btex $p$\rlap{${}=\pi(V)$} etex, w10);

draw w1+(r/5,0);
label.lft(btex $V$ etex, w1+(r/5,0));

% Vertical arrows.
pickup pencircle scaled penLINE;
S_arrowspace(w0, w1, qq, 2, black);
label.lft(btex $\pi$ etex, 0.5[w0,w1]);

w6 := 0.5[w2+(unit,0),w0];
w7 := 0.5[w3+(unit,0),w1];
w8 := 0.5[w4,w0];
w9 := 0.5[w5,w1];

S_arrowspace(w8, w9, unit, 1, black);
label.rt(btex $\Phi$ etex, 0.5[w8,w9]);

% Horizontal arrows.
S_arrowspace(w0, w4, q, 1, black);
label.bot(btex $\psi\in A_M$ etex, 0.5[w4,w0]);

S_arrowspace(w1, w5, q, 1, black);
label.top(btex $\Phi(\psi)\in\hat A_{\cal T}$ etex, 0.5[w5,w1]);

% The R^n sets.
pickup pencircle scaled penGRID;
S_rn(w4, unit, np, nq, xt, col0);
S_rn(w5, unit, np, nq, xt, col0);

% Points in the R^n sets.
pickup pencircle scaled penDOT;
draw w4+(2unit,2unit);
label.rt(btex $x=\psi(p)$ etex, w4+(2unit+xt*unit, 2unit+xt*unit));

draw w5+(unit,2unit);
label.urt(btex $v=\Phi(\psi)(V)$ etex, w5+(unit, 2unit+xt*unit));

endfig;
end
