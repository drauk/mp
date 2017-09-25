% tex/conc/mp/arrow28.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/arrow28.mp 394b0ab550 2012-05-08 01:23:36Z Alan U. Kennington $
% Curves into and functions out of a differentiable manifold.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
path pat[];
color col[];

a := 4.0cm;
b := 1.3cm;
bb := 0.9cm;
cc := 24pt;
dd := 0.27;
q := 0.44cm;
qq := 0.28cm;
qa := 7pt;
qb := 0.40cm;
ang := 44;
penARROW := 0.5bp;
penDOTS := 1.0bp;
scB := 0.5;
col1 := 0.5white;

w0 := (0,0);                % M
w1 := (0,b);                % R^n.
w2 := (-a,0.5b);            % R on the left.
w3 := (a,0.5b);             % R on the right.
w4 := w0 + (0,-bb);         % T(M)
w5 := w1 + (0,bb);          % T(R^n)

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex $M$ etex, w0);
label(btex $\reals\rlap{${}^n$}$ etex, w1);
label(btex $\reals$ etex, w2);
label(btex $\reals$ etex, w3);
label(btex \strut$T(M)$ etex, w4);
label(btex \strut$T(\reals^n)$ etex, w5);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The arrows.
pickup pencircle scaled penARROW;
pat2 := w4..(0.5[w4,w5]+(cc,0))..w5;
drawarrow subpath(dd,2-dd) of pat2 dashed evenly withcolor col1;
label.rt(btex \strut$\hat\psi$ etex, (point 1 of pat2) + (0,0));

pickup pencircle scaled penARROW;
S_arrowspaces(w0,w1,qq,qq,1,black);
label.lft(btex \strut$\psi$ etex, 0.5[w0,w1]);

S_arrowspaces(w2,w0,q,qb,1,black);
label.bot(btex $\gamma$ etex, 0.5[w0,w2]);

S_arrowspaces(w2,w1,q,qb,1,black);
S_tiltlabel_top_up(btex $\bar\gamma=\psi\circ\gamma$ etex,
 0.5[w1,w2], angle(w1-w2), 0pt);

S_arrowspaces(w0,w3,qb,q,1,black);
label.bot(btex $\phi$ etex, 0.5[w0,w3]);

S_arrowspaces(w1,w3,qb,q,1,black);
S_tiltlabel_top_up(btex $\bar\phi=\phi\circ\psi^{-1}$ etex,
 0.5[w1,w3], angle(w3-w1), 0pt);

pat1 := (w2+(q,0)rotated-ang){dir -ang}
 ..(w4+(0,-1.2q))..{dir ang}(w3+(-q,0)rotated ang);
drawarrow pat1;
label.bot(btex $\bar\phi\circ\bar\gamma=\phi\circ\gamma$ etex,
 point 1 of pat1);

pickup pencircle scaled penDOTS;
S_arrowspacesstyle(w0, w4, qa, qa, 0)(dashed withdots scaled scB);
S_arrowspacesstyle(w1, w5, qa, qa, 0)(dashed withdots scaled scB);

endfig;
end
