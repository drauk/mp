% tex/conc/mp/arrow12.mp   2011-2-12   Alan U. Kennington.
% $Id: tex/conc/mp/arrow12.mp cf484498e8 2011-02-11 13:56:37Z Alan U. Kennington $
% Curves into and functions out of a differentiable manifold.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair w[];

a := 3.0cm;
b := 1.8cm;
q := 0.44cm;
qq := 0.35cm;
ang := 60;

w0 := (0,0);
w1 := (0,b);
w2 := (-a,b);
w3 := (a,b);

% The labels for the spaces.
label(btex $M$ etex, w0);
label(btex $\reals^n$ etex, w1);
label(btex $\reals$ etex, w2);
label(btex $\reals$ etex, w3);

% The arrows.
S_arrowspaces(w0,w1,qq,qq,1,black);
label.rt(btex $\psi$ etex, 0.5[w0,w1]);

S_arrowspaces(w2,w0,q,q,1,black);
label.llft(btex $\gamma$ etex, 0.5[w0,w2]);

S_arrowspaces(w2,w1,q,q,1,black);
label.top(btex $\bar\gamma=\psi\circ\gamma$ etex, 0.5[w1,w2]);

S_arrowspaces(w0,w3,q,q,1,black);
label.lrt(btex $\phi$ etex, 0.5[w0,w3]);

S_arrowspaces(w1,w3,q,q,1,black);
label.top(btex $\bar\phi=\phi\circ\psi^{-1}$ etex, 0.5[w1,w3]);

drawarrow (w2+(q,0)rotated-ang){dir -ang}
 ..(w0+(0,-q))..{dir ang}(w3+(-q,0)rotated ang);
label.bot(btex $\bar\phi\circ\bar\gamma=\phi\circ\gamma$ etex, w0+(0,-q));

endfig;
end
