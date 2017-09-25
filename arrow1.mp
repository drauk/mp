% tex/conc/mp/arrow1.mp   2011-12-16   Alan U. Kennington.
% $Id: tex/conc/mp/arrow1.mp 5a5ae53167 2011-12-16 00:21:08Z Alan U. Kennington $
% Differential of a map from one manifold to another.
% Formerly map61.mp.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

a := 2.0cm;
b := 2.0cm;
q := 0.5cm;
qq := 0.38cm;

w0 := (0,0);
w1 := (0,b);
w2 := (a,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}V_\alpha$ etex, w0);
label(btex $W$ etex, w1);
label(btex $U$ etex, w2);

% The arrows.
S_arrowspaces(w0,w1,qq*1.2,qq,1,black);
S_arrowspaces(w0,w2,q*1.3,q,1,black);
S_arrowspace(w1,w2,q,1,black);

% The arrow labels.
label.lft(btex $\mu$ etex, 0.5[w0,w1]);
label.lrt(btex $\nu$ etex, 0.5[w0,w2]);
label.top(btex $g$ etex, 0.5[w1,w2]);

endfig;
end
