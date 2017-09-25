% tex/conc/mp/arrow14.mp   2012-1-7   Alan U. Kennington.
% $Id: tex/conc/mp/arrow14.mp 9f3727d49b 2012-01-07 07:18:04Z Alan U. Kennington $
% Application of universal factorisation dual map.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

a := 2.8cm;
b := 2.0cm;
q := 0.55cm;
qq := 0.40cm;

w0 := (0,0);
w1 := (0,b);
w2 := (a,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}\!V_\alpha^*$ etex, w0);
label(btex $\displaystyle\botimesc_{\alpha\in A}V_\alpha^*$ etex, w1);
label(btex $\mlin((V_\alpha)_{\alpha\in A};K)$ etex, w2+(16pt,0));

% The arrows.
S_arrowspaces(w0,w1,qq*1.2,qq,1,black);
S_arrowspaces(w0,w2,q*1.5,q*1.15,1,black);
qa := q*1.3;
qb := q*1.6;
S_arrowspaces(w1,w2,qa,qb,1,black);

% The arrow labels.
label.lft(btex $\mu^*$ etex, 0.5[w0,w1]);
label.lrt(btex $\eta$ etex, 0.5[w0,w2]);
label.top(btex $\bar\psi$ etex, 0.5[w1,w2]+(0.5(qa-qb),0));

endfig;
end
