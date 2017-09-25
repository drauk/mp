% tex/conc/mp/arrow23.mp   2017-1-17   Alan U. Kennington.
% $Id: tex/conc/mp/arrow23.mp e6195bdce8 2017-01-17 13:47:55Z Alan U. Kennington $
% Spaces and maps for function order definition for linear spaces.

input mapmax
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

w0 := (0,0);                % V
w1 := w0 + (0,b);           % K
w2 := w0 + (a,b);           % S = \reals
w3 := w0 + (-a,0);          % X

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The labels for the spaces.
label(btex $V$ etex, w0);
label(btex $\llap{$\lambda\in{}$}K$ etex, w1);
label(btex $\reals$ etex, w2);
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
label.lrt(btex $\Vert\cdotsp\Vert$ etex, 0.56[w0,w2]+(0,0));
label.top(btex $\vert\cdotsp\vert$ etex, 0.45[w1,w2]);
label.top(btex \strut$f$ etex, 0.5[w3,w0]+(0,dy));
label.bot(btex \strut$g$ etex, 0.5[w3,w0]+(0,-dy));

endfig;
end
