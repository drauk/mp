% tex/conc/mp/arrow11.mp   2012-1-7   Alan U. Kennington.
% $Id: tex/conc/mp/arrow11.mp 9f3727d49b 2012-01-07 07:18:04Z Alan U. Kennington $
% Universal factorisation map for tensor spaces.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair w[];

a := 2.6cm;
b := 2.0cm;
q := 0.5cm;
qq := 0.38cm;

w0 := (0,0);
w1 := (0,b);
w2 := (a,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}V_\alpha$ etex, w0);
label(btex $\displaystyle\botimesc_{\alpha\in A}V_\alpha$ etex, w1);
label(btex $U$ etex, w2);

% The arrows.
S_arrowspaces(w0,w1,qq*1.2,qq,1,black);
S_arrowspaces(w0,w2,q*1.3,q,1,black);
S_arrowspaces(w1,w2,q*1.3,q,1,black);

% The arrow labels.
label.lft(btex $\mu$ etex, 0.5[w0,w1]);
label.lrt(btex $f$ etex, 0.5[w0,w2]);
label.top(btex $g$ etex, 0.5[w1,w2]);

endfig;
end
