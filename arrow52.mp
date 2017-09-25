% tex/conc/mp/arrow52.mp   2013-7-16   Alan U. Kennington.
% $Id: tex/conc/mp/arrow52.mp 90752b5328 2013-07-16 09:27:32Z Alan U. Kennington $
% Isomorphism between left actions on points and right actions on the group.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 2.5cm;
bb := 1.6cm;
qq := 0.38cm;
cr := 5pt;
theta := 1;
da := 12pt;
rat := 0.45;
db := 4pt;
dc := 1.75da;
dd := 1.485da;
de := 8pt;
df := de + 12pt;

penA := 0.5bp;

w0 := (0,0);
w1 := w0 + (0,-bb);

w2 := w0 + (aa,0);
w3 := w2 + (0,-bb);

w4 := w2 + (aa,0);
w5 := w4 + (0,-bb);

pat1 := subpath (8-theta, theta) of fullcircle scaled da;
pat2 := fullcircle scaled cr;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Module over a ring.
label(btex $G$ etex, w4);
label(btex $X$ etex, w5);

pickup pencircle scaled penA;
% \mu
S_arrowspaces(w4,w5,qq,qq,1,black);
draw pat2 shifted rat[w4,w5];
label.lft(btex $\strut\mu$ etex, rat[w4,w5]+(-db,0));

% \sigma
drawarrow pat1 rotated -90 shifted (w4+(0,da));
draw pat2 shifted (w4+(0,dd));
label.top(btex $\sigma$ etex, w4+(0,dc));

% L
drawarrow pat1 rotated 180 shifted (w4+(da,0));
% draw pat2 shifted (w4+(dd,0));
label.rt(btex $\strut R^G_{g^{-1}}$ etex, w4+(dc,0));

% L
drawarrow reverse pat1 rotated 0 shifted (w4+(-da,0));
% draw pat2 shifted (w4+(-dd,0));
label.lft(btex $\strut R^G_g$ etex, w4+(-dc,0));

% \sigma
drawarrow reverse pat1 rotated 0 shifted (w5+(-da,0));
% draw pat2 shifted (w5+(-dd,0));
label.lft(btex $L^X_g$ etex, w5+(-dc,0));

% label.bot(btex \strut module etex, w5+(0,-de));
% label.bot(btex \strut over a ring etex, w5+(0,-df));

endfig;
end
