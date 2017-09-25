% tex/conc/mp/arrow4.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/arrow4.mp b4bb1441b5 2012-04-30 06:32:18Z Alan U. Kennington $
% Transformation of tangent vectors to curves for diffeomorphisms.
% Formerly map113.mp.

input mapmax.mp
verbatimtex
\input akmath
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
label.lft(btex $\displaystyle \gamma$ etex, w0+(dd,0));
label.lft(btex $\displaystyle V=\gamma'(t)$ etex, w1+(ddd,0));
label.rt(btex $\displaystyle \phi\circ\gamma=\tilde\gamma$ etex, w2+(-dd,0));
label.rt(btex $\displaystyle (\phi\circ\gamma)'(t)=\tilde V$ etex, w3+(-ddd,0));

% The arrows.
S_arrowspaces(w0,w1,q,q,1,black);
S_arrowspaces(w2,w3,q,q,1,black);
S_arrowspaces(w0,w2,qq,qq,1,black);
S_arrowspaces(w1,w3,qq,qq,1,black);

% The arrow labels.
label.lft(btex derivative etex, 0.5[w0,w1]);
label.rt(btex derivative etex, 0.5[w2,w3]);
label.top(btex $\displaystyle V\mapsto\tilde V=(\tilde v^i)_{i=1}^n$ etex,
 0.5[w1,w3]);
label.bot(btex $\displaystyle
 \tilde v^i=\frac{\partial\phi^i(x)}{\partial x^j}\restrict{x=\gamma(t)}v^j$
 etex,
 0.5[w1,w3]);
label.bot(btex $\displaystyle \phi$ etex, 0.5[w0,w2]);

endfig;
end
