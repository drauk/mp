% tex/conc/mp/fibmap30.mp   2014-4-5   Alan U. Kennington.
% $Id: tex/conc/mp/fibmap30.mp ff78261815 2015-05-09 08:15:17Z Alan U. Kennington $
% Differentiable fibre bundle maps for a tangent bundle.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[];
color col[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.2cm;
b := a;
e := 5bp;          % Circle on arrow.
bb := 2.1cm;
dd := 0.1cm;
bls := 13bp;            % Baselineskip.

unit := 0.2cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;

penLN := 0.5bp;
penPT := 2.5bp;
penRN := 0.4bp;

% Centres of circles.
w0 := (0,0);            % Set E.
w1 := w0+(0,-b);        % Set B.
w2 := w0+(a,0);         % Set F.
w3 := w0+(2a,0);        % Set G.
w4 := w0+(a,-b);        % Set B x F.
w5 := w0+(0,bb);        % Chart space for E.
w6 := w1+(0,-bb);       % Chart space for B.
w7 := w2+(0,bb);        % Chart space for F.
w8 := w3+(0,bb);        % Chart space for G.

pickup pencircle scaled penLN;
S_subset(w0,d,1.7,-0.3,0.9,-45);
S_subset(w1,d,1.7,-0.3,0.9,45);
S_subset(w4,d,1.7,-0.3,0.9,135);

% The circles.
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $\llap{$\Domain(\phi)$}=\pi^{-1}(U)$ etex, w0+(-q,bls/2));
label.lft(btex $\rlap{$\subseteq T(M)$}\phantom{=\pi^{-1}(U)}$ etex,
 w0+(-q,-bls/2));
label.lft(btex $U\subseteq M$ etex, w1-(q,0));
label.bot(btex $\reals^n$ etex, w2-(0,q));
label.bot(btex $\gp{GL}(n)$ etex, w3-(0,q));
label.rt(btex $U\times\reals^n\subseteq M\times\reals^n$ etex, w4+(q,0));

pickup pencircle scaled penRN;
S_rn(w5, unit, np, nq, xt, col0);
S_rn(w6, unit, np, nq, xt, col0);
S_rn(w7, unit, np, nq, xt, col0);
S_rn(w8, unit, np, nq, xt, col0);

% Coordinates for ends of arrows.
x0 := w0+(0,-q);
y0 := w1+(0,q);
v0 := 0.5[x0,y0];

x1 := w0+(q,0);
y1 := w2+(-q,0);
v1 := 0.5[x1,y1];

x2 := w3+(-q,0);
y2 := w2+(q,0);
v2 := 0.5[x2,y2];

x3 := w0+q*((w4-w0)/length(w4-w0));
y3 := w4-q*((w4-w0)/length(w4-w0));
v3 := 0.65[x3,y3];

% The arrows.
pickup pencircle scaled penLN;
drawarrow x0--y0;
drawarrow x1--y1;
drawarrow x2--y2;
drawarrow x3--y3;

% Put a circle on the G->F arrow.
draw fullcircle scaled e shifted v2;

% Labels on the arrows.
label.lft(btex $\pi$ etex, v0);
label.top(btex $\phi$ etex, v1);
label.top(btex $\bar\mu^{\reals^n}_{\gp{\sevenrm GL}(n)}$ etex, v2+(0,e/2));
label.top(btex $\pi\times\phi$ etex rotated-45, v3+(-1pt,-1pt));

label.lft(btex $\reals^{2n}$ etex, w5+(-(np+xt)*unit,0));
% label.lft(btex $m=n+p$ etex, w5+(-(np+xt)*unit,-bls));
label.lft(btex $\reals^n$ etex, w6+(-(np+xt)*unit,0));
label.rt(btex $\reals^n$ etex, w7+((np+3xt)*unit,0));
label.rt(btex $\reals^{n\times n}$ etex, w8+((np+3xt)*unit,0));

S_arrowspaces(w0, w5, r+dd, (np+xt)*unit+dd, 1, black);
S_arrowspaces(w1, w6, r+dd, (np+xt)*unit+3dd, 1, black);
S_arrowspaces(w2, w7, r+dd, (np+xt)*unit+dd, 1, black);
S_arrowspaces(w3, w8, r+dd, (np+xt)*unit+dd, 1, black);

label.lft(btex $\psi_{T(M)}$ etex, 0.45[w0,w5]);
label.lft(btex $\psi_{M}$ etex, 0.4[w1,w6]);
label.lft(btex $\psi_{\reals^n}$ etex, 0.45[w2,w7]);
label.rt(btex $\psi_{\gp{\sevenrm GL}(n)}$ etex, 0.45[w3,w8]);

endfig;
end
