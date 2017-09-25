% tex/conc/mp/arrow2.mp   2016-12-23   Alan Kennington.
% $Id: tex/conc/mp/arrow2.mp 3f829ff4e7 2016-12-22 17:47:07Z Alan U. Kennington $
% Differential of a map from one manifold to another.
% Formerly map62.mp.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

a := 2.0cm;
b := 2.0cm;
q := 0.5cm;
qq := 0.38cm;
dd := 1mm;  % Gap between arrows.

w0 := (0,0);
w1 := (-a/2,b);
w2 := (a/2,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}V_\alpha$ etex, w0);
label(btex $W_1$ etex, w1);
label(btex $W_2$ etex, w2);

% The arrows.
S_arrowspaces(w0,w1,q,q,1,black);
S_arrowspaces(w0,w2,q,q,1,black);
S_arrowspace(w1+(0,dd),w2+(0,dd),q,1,black);
S_arrowspace(w1+(0,-dd),w2+(0,-dd),q,2,black);

% The arrow labels.
label.llft(btex $\mu_1$ etex, 0.5[w0,w1]);
label.lrt(btex $\mu_2$ etex, 0.5[w0,w2]);
label.top(btex $g_{21}$ etex, 0.5[w1,w2]+(0,dd));
label.bot(btex $g_{12}$ etex, 0.5[w2,w1]+(0,-dd));

endfig;
end
