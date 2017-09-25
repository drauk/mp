% tex/conc/mp/arrow22.mp   2011-12-21   Alan U. Kennington.
% $Id: tex/conc/mp/arrow22.mp afecea57af 2011-12-21 03:47:00Z Alan U. Kennington $
% Spaces and maps for function order definition for module over a ring.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

a := 2.0cm;
b := 2.0cm;
q := 0.5cm;
qq := 0.38cm;
cr := 5pt;
theta := 1;
d := 15pt;
dy := 3pt;

w0 := (0,0);                % M
w1 := w0 + (0,b);           % R
w2 := w0 + (a,b);           % S
w3 := w0 + (-a,0);          % X

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex $M$ etex, w0);
label(btex $\llap{$\lambda\in{}$}R$ etex, w1);
label(btex $S$ etex, w2);
label(btex $\llap{$a\in{}$}X$ etex, w3);

% The arrows.
pickup pencircle scaled 0.5bp;
S_arrowspaces(w0,w1,qq,qq,2,black);
S_arrowspaces(w0,w2,q,q,1,black);
S_arrowspaces(w1,w2,qq,q,1,black);
S_arrowspaces(w3+(0,dy),w0+(0,dy),qq,qq,1,black);
S_arrowspaces(w3+(0,-dy),w0+(0,-dy),qq,qq,1,black);

draw fullcircle scaled cr shifted 0.56[w0,w1];

% The arrow labels.
label.lft(btex $L_\lambda$ etex, 0.56[w0,w1]+(-4pt,0));
label.lrt(btex $\psi$ etex, 0.56[w0,w2]+(0,0));
label.top(btex $\phi$ etex, 0.45[w1,w2]);
label.top(btex \strut$f$ etex, 0.5[w3,w0]+(0,dy));
label.bot(btex \strut$g$ etex, 0.5[w3,w0]+(0,-dy));

endfig;
end
