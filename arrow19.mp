% tex/conc/mp/arrow19.mp   2011-3-24   Alan U. Kennington.
% $Id: tex/conc/mp/arrow19.mp 983e94dd2f 2011-03-23 14:05:53Z Alan U. Kennington $
% Canonical multilinear map domains and ranges. Plus isomorphisms.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair w[];

a := 1.4cm;
b := 2.0cm;
aa := 6.8cm;

q := 0.5cm;
qq := 0.42cm;
qx := 1.0cm;

sep := 2pt;
vsep := 1pt;
hsep := 14pt;
lsep := 17pt;
lsepp := 11pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w0 := (0,0);
w1 := w0+(-a,b);
w2 := w0+(a,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}V_\alpha$ etex, w0);
label(btex $\displaystyle\mlin((V_\alpha^*)_{\alpha\in A};K)$ etex,
 w1+(-hsep,0));
label(btex $\displaystyle\mlin((V_\alpha)_{\alpha\in A};K)^*$ etex,
 w2+(hsep,0));
label(btex $\displaystyle{}=\botimesc_{\alpha\in A}V_\alpha$ etex,
 w2+(hsep+lsepp,-lsep));

% The arrows.
S_arrowspaces(w0,w1,qq*1.2,q,1,black);
S_arrowspaces(w0,w2,qq*1.2,q,1,black);
S_arrowspaces(w1,w2,qx,qx,2,black);

% The arrow labels.
label.lft(btex \strut$\eta^T$ etex, 0.5[w0,w1]+(-sep-2pt,0));
label.rt(btex \strut$\mu$ etex, 0.5[w0,w2]+(sep,0));
label.top(btex \strut$\psi$ etex, 0.5[w1,w2]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w10 := w0+(aa,0);
w11 := w10+(-a,b);
w12 := w10+(a,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}V_\alpha^*$ etex, w10);
label(btex $\displaystyle\mlin((V_\alpha)_{\alpha\in A};K)$ etex,
 w11+(-hsep,0));
label(btex $\displaystyle\mlin((V_\alpha^*)_{\alpha\in A};K)^*$ etex,
 w12+(hsep,0));
label(btex $\displaystyle{}=\botimesc_{\alpha\in A}V_\alpha^*$ etex,
 w12+(hsep+lsepp,-lsep));

% The arrows.
S_arrowspaces(w10,w11,qq*1.2,q,1,black);
S_arrowspaces(w10,w12,qq*1.2,q,1,black);
S_arrowspaces(w11,w12,qx,qx,2,black);

% The arrow labels.
label.lft(btex \strut$\eta$ etex, 0.5[w10,w11]+(-sep,0));
label.rt(btex \strut$\mu^*$ etex, 0.5[w10,w12]+(sep,0));
label.top(btex \strut$\bar\psi$ etex, 0.5[w11,w12]);

endfig;
end
