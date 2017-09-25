% tex/conc/mp/fibdiag6.mp   2017-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag6.mp ed282b9812 2017-01-15 12:19:49Z Alan U. Kennington $
% Maps/spaces for induced map of projection map of differentiable fibre bundles.

input mapmax
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 1.8cm;
bb := aa;
cc := 2aa+5pt;
q := 0.52cm;
qq := 0.35cm;
sepA := 3pt;

cr := 4.5pt;
theta := 1;
d := 11pt;
dd := 1.485d;

w0 := (0,0);            % M
w1 := w0+(0,bb);        % E
w2 := w0+(aa,bb);       % T(E)
w3 := w0+(aa,0);        % T(M)

%==============================================================================
% Fibration.
% The labels for the spaces.
label(btex $M$ etex, w0);
label(btex $E$ etex, w1);
label(btex $T(E)$ etex, w2);
label(btex $T(M)$ etex, w3);

% The arrows.
pickup pencircle scaled 0.5bp;
S_arrowspaces(w1,w0,qq,qq,1,black);
S_arrowspaces(w2,w3,qq,qq,1,black);
S_arrowspaces(w1,w2,qq,q,2,black);
S_arrowspaces(w0,w3,qq,q,2,black);

% The arrow labels.
label.lft(btex \strut$\pi$ etex, 0.5[w0,w1]+(0,sepA));
label.rt(btex \strut$\pi_*$ etex, 0.5[w3,w2]+(0,sepA));
label.top(btex $\strut\pi_E$ etex, 0.5[w1,w2]);
label.bot(btex $\strut\pi_M$ etex, 0.5[w0,w3]);

endfig;
end
