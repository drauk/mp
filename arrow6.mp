% tex/conc/mp/arrow6.mp   2007-2-9   Alan Kennington.
% $Id: tex/conc/mp/arrow6.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Metadefinition of tensors.
% Formerly map116.mp.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair w[];

a := 2.0cm;
b := 2.0cm;
q := 0.5cm;
qq := 0.38cm;

w0 := (0,0);
w1 := (0,b);
w2 := (-a,b);
w3 := (a,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}V_\alpha$ etex, w0);
label(btex $W$ etex, w1);
label(btex $U_1$ etex, w2);
label(btex $U_2$ etex, w3);

% The arrows.
S_arrowspaces(w0,w1,qq*1.2,qq,1,black);

S_arrowspaces(w0,w2,q*1.3,q,1,black);
S_arrowspace(w1,w2,q,1,black);

S_arrowspaces(w0,w3,q*1.3,q,1,black);
S_arrowspace(w1,w3,q,1,black);

% The arrow labels.
label.lft(btex $\mu$ etex, 0.5[w0,w1]);

label.llft(btex $\nu_1$ etex, 0.5[w0,w2]);
label.top(btex $g_1$ etex, 0.5[w1,w2]);

label.lrt(btex $\nu_2$ etex, 0.5[w0,w3]);
label.top(btex $g_2$ etex, 0.5[w1,w3]);

endfig;
end
