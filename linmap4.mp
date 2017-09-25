% tex/conc/mp/linmap4.mp   2015-5-1   Alan U. Kennington.
% $Id: tex/conc/mp/linmap4.mp 09b78d3d62 2015-05-09 12:19:21Z Alan U. Kennington $
% Transpose map of a linear space monomorphism.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);

pair w[];
path pat;
d := 0.9cm;
r := d/2;
q := r*1.3;
a := 4.5cm;
b := 3.0cm;
sep := 2.5pt;
ang := 155;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);           % Set V.
w1 := w0+(a/2,-b);     % Set K.
w2 := w0+(a,0);        % Set W.

pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
S_subset(w2, d, 1.7, -0.3, 0.84, ang);

% Labels for the circles.
label.lft(btex $V$ etex, w0+((-r,0)rotated-35));
label.lft(btex $K$ etex, w1+(-r,0));
label.urt(btex $W$ etex, w2+((r,0)rotated35));
label.ulft(btex $\phi(V)$ etex, w2+((r*0.85,0)rotated120));
label.rt(btex $W\setminus\phi(V)$ etex, w2+((r+6pt,-4pt)rotated-90));

% The arrows.
S_arrow(w0, w1, q, q, 1, black, sep)();
S_arrow(w0, w1, q, q, 1, black, -sep)();
S_arrow(w0, w2, q, q, 1, black, sep)();
S_arrow(w0, w2, q, q, 2, black, -sep)();
S_arrow(w2, w1, q, q, 1, black, sep)();
S_arrow(w2, w1, q, q, 1, black, -sep)();

% Labels on the arrows V <-> W.
S_tiltlabel_top_up(btex $\phi$ etex, 0.5[w0,w2], angle(w2-w0), sep);
S_tiltlabel_bot_up(btex $\phi\rlap{${}^{-1}$}$ etex,
 0.5[w0,w2], angle(w2-w0), -sep);

% Labels on the arrows V -> K.
S_tiltlabel_top_up(btex $\bar g_f\circ\phi=f$ etex,
 0.5[w0,w1], angle(w1-w0), sep);
S_tiltlabel_bot_up(btex $f\in V^*$ etex,
 0.5[w0,w1], angle(w1-w0), -sep);

% Labels on the arrows W -> K.
S_tiltlabel_top_up(btex $g_f=f\circ\phi^{-1}$ etex,
 0.5[w1,w2], angle(w2-w1), sep);
S_tiltlabel_bot_up(btex $\bar g_f\in W^*$ etex,
 0.5[w1,w2], angle(w2-w1), -sep);

% Map \phi^{-T} from \bar g_f to f.
w8 := (w1-w0) rotated -90;
w9 := (w1-w2) rotated 90;
w10 := 0.38[w0,w1] + (w8 scaled 0.18);
w11 := 0.65[w2,w1] + (w9 scaled 0.18);
w12 := w1 + (0,-r*1.45);
pat := w10{dir angle(w8)}..w12{dir0}..{dir angle(-w9)}w11;
drawarrow reverse pat;
label.lrt(btex $\phi^T$ etex, point 1.7 of pat);

endfig;
end
