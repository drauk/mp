% tex/conc/mp/arrow18.mp   2011-3-21   Alan U. Kennington.
% $Id: tex/conc/mp/arrow18.mp 95af05ab07 2011-03-21 05:28:27Z Alan U. Kennington $
% Canonical multilinear map domains and ranges.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair w[];

a := 1.4cm;
b := 2.0cm;
aa := 6.5cm;
q := 0.5cm;
qq := 0.42cm;
qx := q*1.7;
qxx := q;
sep := 2pt;
vsep := 1pt;
hsep := 8pt;
lsep := 17pt;
lsepp := 11pt;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w0 := (0,0);
w1 := w0+(-a,b);
w2 := w0+(a,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}V_\alpha$ etex, w0);
% label(btex $\displaystyle\mlin((V_\alpha^*)_{\alpha\in A};K)$ etex,
%  w1+(-hsep,vsep));
% label(btex $\displaystyle\smash{\botimesc_{\alpha\in A}V_\alpha}$ etex,
%  w2+(hsep,0));
label(btex $\displaystyle\mlin((V_\alpha^*)_{\alpha\in A};K)$ etex,
 w1+(-hsep,0));
label(btex $\displaystyle\mlin((V_\alpha)_{\alpha\in A};K)^*$ etex,
 w2+(hsep,0));
label(btex $\displaystyle{}=\botimesc_{\alpha\in A}V_\alpha$ etex,
 w2+(hsep+lsepp,-lsep));

% The arrows.
S_arrowspaces(w0,w1,qq*1.2,q,1,black);
S_arrowspaces(w0,w2,qq*1.2,q,1,black);
% S_arrowspaces(w1,w2,qx,qxx,1,black);

% The arrow labels.
label.lft(btex \strut$\eta^T$ etex, 0.5[w0,w1]+(-sep-2pt,0));
label.rt(btex \strut$\mu$ etex, 0.5[w0,w2]+(sep,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w10 := w0+(aa,0);
w11 := w10+(-a,b);
w12 := w10+(a,b);

% The labels for the spaces.
label(btex $\displaystyle\mtimes_{\alpha\in A}V_\alpha^*$ etex, w10);
% label(btex $\displaystyle\mlin((V_\alpha)_{\alpha\in A};K)$ etex,
%  w11+(-hsep,vsep));
% label(btex $\displaystyle\smash{\botimesc_{\alpha\in A}V_\alpha^*}$ etex,
%  w12+(hsep,0));
label(btex $\displaystyle\mlin((V_\alpha)_{\alpha\in A};K)$ etex,
 w11+(-hsep,0));
label(btex $\displaystyle\mlin((V_\alpha^*)_{\alpha\in A};K)^*$ etex,
 w12+(hsep,0));
label(btex $\displaystyle{}=\botimesc_{\alpha\in A}V_\alpha^*$ etex,
 w12+(hsep+lsepp,-lsep));

% The arrows.
S_arrowspaces(w10,w11,qq*1.2,q,1,black);
S_arrowspaces(w10,w12,qq*1.2,q,1,black);
% S_arrowspaces(w11,w12,qx,qxx,1,black);

% The arrow labels.
label.lft(btex \strut$\eta$ etex, 0.5[w10,w11]+(-sep,0));
label.rt(btex \strut$\mu^*$ etex, 0.5[w10,w12]+(sep,0));

endfig;
end
