% tex/conc/mp/arrow5.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/arrow5.mp b4bb1441b5 2012-04-30 06:32:18Z Alan U. Kennington $
% Transformation of differentials of functions under diffeomorphisms.
% Formerly map114.mp.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

a := 6.0cm;
b := 2.0cm;
q := 0.4cm;
qq := 0.45cm;
dd := 5pt;
ddd := 10pt;

w0 := (0,0);
w1 := (0,b);
w2 := (a,0);
w3 := (a,b);

% The labels for the spaces.
label.lft(btex $\displaystyle f$ etex, w0+(dd,0));
label.lft(btex $\displaystyle W=df(x)$ etex, w1+(ddd,0));

label.rt(btex $\displaystyle f\circ\phi^{-1}=\tilde f$ etex, w2+(-dd,0));
label.rt(btex $\displaystyle d(f\circ\phi^{-1})(\phi(x))=\tilde W$ etex,
 w3+(-ddd,0));

% The arrows.
S_arrowspaces(w0,w1,q,q,1,black);
S_arrowspaces(w2,w3,q,q,1,black);
S_arrowspaces(w0,w2,qq,qq,1,black);
S_arrowspaces(w1,w3,qq,qq,1,black);

% The arrow labels.
label.lft(btex differential etex, 0.5[w0,w1]);
label.rt(btex differential etex, 0.5[w2,w3]);
label.top(btex $\displaystyle W\mapsto\tilde W=(\tilde w^i)_{i=1}^n$ etex,
 0.5[w1,w3]);
label.bot(
 btex $\displaystyle w_i=\tilde w_j\frac{\partial\phi^j(x)}{\partial x^i}$ etex,
 0.5[w1,w3]);
label.bot(btex $\displaystyle \phi$ etex, 0.5[w0,w2]);

endfig;
end
