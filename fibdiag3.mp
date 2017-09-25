% tex/conc/mp/fibdiag3.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag3.mp 84e5e9c866 2016-09-03 06:56:37Z Alan U. Kennington $
% Cyclic construction of structure groups and tangent bundles on manifolds.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

a := 1.7cm;
b := a;
q := 0.45cm;
qq := 0.35cm;
cr := 5pt;
theta := 1;
d := 15pt;
dy := 3pt;
penLN := 0.5bp;
rat := 0.46;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w0 := (0,0);                % M

w1 := w0 + (0,b);           % T(M)
w2 := w0 + (a,0);           % R^n
w3 := w0 + (a,b);           % GL(n)

w4 := w3 + (0,b);           % T(GL(n))
w5 := w3 + (a,0);           % R^{n x n}
w6 := w3 + (a,b);           % GL(n x n)

w7 := w6 + (0,b);           % T(GL(n x n))
w8 := w6 + (a,0);           % R^{(n x n) x (n x n)}
w9 := w6 + (a,b);           % GL((n x n) x (n x n))

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex \strut$M$ etex, w0);

label(btex \strut$T(M)$ etex, w1);
label(btex \strut$\reals^n$ etex, w2);
label(btex \strut$\gp{GL}(n)$ etex, w3);

label(btex \strut$T(\gp{GL}(n))$ etex, w4);
label(btex \strut$\reals^{n\times n}$ etex, w5);
label(btex \strut$\gp{GL}(n\times n)$ etex, w6);

label(btex \strut$T(\gp{GL}(n\times n))$ etex, w7);
label(btex \strut$\reals\rlap{${}^{(n\times n)\times(n\times n)}$}$ etex, w8);
label(btex \strut$\gp{GL}\rlap{$((n\times n)\times(n\times n))$}$ etex, w9);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w1,w0,qq,qq,1,black);
S_arrowspaces(w1,w2,q,q,1,black);
S_arrowspaces(w3,w2,qq,qq,1,black);
draw fullcircle scaled cr shifted rat[w3,w2];

S_arrowspaces(w4,w3,qq,qq,1,black);
S_arrowspaces(w4,w5,q,q,1,black);
S_arrowspaces(w6,w5,qq,qq,1,black);
draw fullcircle scaled cr shifted rat[w6,w5];

S_arrowspaces(w7,w6,qq,qq,1,black);
S_arrowspaces(w7,w8,q,q,1,black);
S_arrowspaces(w9,w8,qq,qq,1,black);
draw fullcircle scaled cr shifted rat[w9,w8];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrow labels.
label.lft(btex \strut$\pi_1$ etex, 0.5[w1,w0]);
label.lft(btex \strut$\phi_1$ etex, 0.5[w1,w2]);
label.rt(btex \strut$\sigma_1$ etex, rat[w3,w2]+(0.5cr,0));

label.lft(btex \strut$\pi_2$ etex, 0.5[w4,w3]);
label.lft(btex \strut$\phi_2$ etex, 0.5[w4,w5]);
label.rt(btex \strut$\sigma_2$ etex, rat[w6,w5]+(0.5cr,0));

label.lft(btex \strut$\pi_3$ etex, 0.5[w7,w6]);
label.lft(btex \strut$\phi_3$ etex, 0.5[w7,w8]);
label.rt(btex \strut$\sigma_3$ etex, rat[w9,w8]+(0.5cr,0));

endfig;
end
