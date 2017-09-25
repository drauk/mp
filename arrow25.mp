% tex/conc/mp/arrow25.mp   2012-1-16   Alan U. Kennington.
% $Id: tex/conc/mp/arrow25.mp 5798333f5f 2012-01-15 15:40:09Z Alan U. Kennington $
% Sets and operations for modules.

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
% Module over a set.
label(btex $A$ etex, w0);
label(btex $M$ etex, w1);

pickup pencircle scaled penA;
% \mu_A
S_arrowspaces(w0,w1,qq,qq,1,black);
draw pat2 shifted rat[w0,w1];
label.lft(btex $\mu_A$ etex, rat[w0,w1]+(-db,0));

% \sigma_M
drawarrow reverse pat1 rotated 0 shifted (w1+(-da,0));
draw pat2 shifted (w1+(-dd,0));
label.lft(btex $\sigma_M$ etex, w1+(-dc,0));

label.bot(btex \strut module etex, w1+(0,-de));
label.bot(btex \strut over a set etex, w1+(0,-df));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Module over a group.
label(btex $G$ etex, w2);
label(btex $M$ etex, w3);

pickup pencircle scaled penA;
% \mu_G
S_arrowspaces(w2,w3,qq,qq,1,black);
draw pat2 shifted rat[w2,w3];
label.lft(btex $\mu_G$ etex, rat[w2,w3]+(-db,0));

% \sigma_G
drawarrow reverse pat1 rotated 0 shifted (w2+(-da,0));
draw pat2 shifted (w2+(-dd,0));
label.lft(btex $\sigma_G$ etex, w2+(-dc,0));

% \sigma_M
drawarrow reverse pat1 rotated 0 shifted (w3+(-da,0));
draw pat2 shifted (w3+(-dd,0));
label.lft(btex $\sigma_M$ etex, w3+(-dc,0));

label.bot(btex \strut module etex, w3+(0,-de));
label.bot(btex \strut over a group etex, w3+(0,-df));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Module over a ring.
label(btex $R$ etex, w4);
label(btex $M$ etex, w5);

pickup pencircle scaled penA;
% \mu_R
S_arrowspaces(w4,w5,qq,qq,1,black);
draw pat2 shifted rat[w4,w5];
label.lft(btex $\mu_R$ etex, rat[w4,w5]+(-db,0));

% \tau_R
drawarrow pat1 rotated 180 shifted (w4+(da,0));
draw pat2 shifted (w4+(dd,0));
label.rt(btex $\tau_R$ etex, w4+(dc,0));

% \sigma_R
drawarrow reverse pat1 rotated 0 shifted (w4+(-da,0));
draw pat2 shifted (w4+(-dd,0));
label.lft(btex $\sigma_R$ etex, w4+(-dc,0));

% \sigma_M
drawarrow reverse pat1 rotated 0 shifted (w5+(-da,0));
draw pat2 shifted (w5+(-dd,0));
label.lft(btex $\sigma_M$ etex, w5+(-dc,0));

label.bot(btex \strut module etex, w5+(0,-de));
label.bot(btex \strut over a ring etex, w5+(0,-df));

endfig;
end
