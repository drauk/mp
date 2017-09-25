% tex/conc/mp/arrow3.mp   2007-7-9   Alan Kennington.
% $Id: tex/conc/mp/arrow3.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Map between tensor product spaces.
% Formerly map63.mp.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair w[];

a := 3.0cm;
b := 2.0cm;
q := 0.5cm;
qq := 0.8cm;

w0 := (0,0);
w1 := (0,b);
w2 := (a,0);
w3 := (a,b);

% The labels for the spaces.
label(btex $\displaystyle\timesc_{\alpha\in A}V_\alpha$ etex, w0);
label(btex $\displaystyle\botimesc_{\alpha\in A}V_\alpha$ etex, w1);
label(btex $\displaystyle\timesc_{\alpha\in A}V'_\alpha$ etex, w2);
label(btex $\displaystyle\botimesc_{\alpha\in A}V'_\alpha$ etex, w3);

% The arrows.
S_arrowspaces(w0,w1,q,q,1,black);
S_arrowspaces(w2,w3,q,q,1,black);
S_arrowspaces(w0,w2,qq,qq,1,black);
S_arrowspaces(w1,w3,qq,qq,1,black);

% The arrow labels.
label.lft(btex \strut$\mu$ etex, 0.5[w0,w1]);
label.rt(btex \strut$\mu'$ etex, 0.5[w2,w3]);
label.top(btex $\displaystyle\otimesc_{\alpha\in A}f_\alpha$ etex, 0.5[w1,w3]);
label.bot(btex $\displaystyle\timesc_{\alpha\in A}f_\alpha$ etex, 0.5[w0,w2]);

endfig;
end
