% tex/conc/mp/arrow26.mp   2012-1-16   Alan U. Kennington.
% $Id: tex/conc/mp/arrow26.mp b8b3519c8f 2012-01-15 17:53:17Z Alan U. Kennington $
% Sets and operations for affine spaces over modules.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 2.7cm;
bb := 1.6cm;
qq := 0.35cm;
qqx := 0.43cm;
cr := 5pt;          % This is actually a diameter.
theta := 1;
da := 12pt;
rat := 0.46;
db := 4pt;
dc := 1.75da;
dd := 1.485da;
de := 8pt;
df := de + 12pt;
dg := df + 12pt;
dh := 13.5pt;
qqy := qqx + cr/2;
angA := 40;

penA := 0.5bp;

pat1 := subpath (8-theta, theta) of fullcircle scaled da;
pat2 := fullcircle scaled cr;

w0 := (0,0);
w1 := w0 + (0,-bb);
w10 := w1 + (0,-bb);

w2 := w0 + (aa,0);
w3 := w2 + (0,-bb);
w11 := w3 + (0,-bb);

w4 := w2 + (aa,0);
w5 := w4 + (0,-bb);
w12 := w5 + (0,-bb);

w6 := w0 + (-aa,0);
w7 := w6 + (0,-bb);
w13 := w7 + (0,-bb);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Affine space over a module over a set.
label(btex $A$ etex, w0);
label(btex $M$ etex, w1);
label(btex $X$ etex, w10);

pickup pencircle scaled penA;
% \mu_A
S_arrowspaces(w0,w1,qq,qq,1,black);
draw pat2 shifted rat[w0,w1];
label.lft(btex $\mu_A$ etex, rat[w0,w1]+(-db,0));

% \sigma_M
drawarrow reverse pat1 rotated 0 shifted (w1+(-da,0));
draw pat2 shifted (w1+(-dd,0));
label.lft(btex $\sigma_M$ etex, w1+(-dc,0));

% \mu_M
S_arrowspaces(w1,w10,qq,qq,1,black);
draw pat2 shifted rat[w1,w10];
label.lft(btex $\mu_M$ etex, rat[w1,w10]+(-db,0));

% delta_X
drawarrow
 (w10+(0,qqy)rotated -angA)..(rat[w1,w10]+(dh,0))..(w1+(0,-qqx)rotated angA);
draw pat2 shifted (w10+(0,qqx)rotated -angA);
label.rt(btex $\delta_X$ etex, rat[w1,w10]+(dh,0));

label.bot(btex \strut affine space etex, w10+(0,-de));
label.bot(btex \strut over a module etex, w10+(0,-df));
label.bot(btex \strut over a set etex, w10+(0,-dg));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Affine space over a module over a group.
label(btex $G$ etex, w2);
label(btex $M$ etex, w3);
label(btex $X$ etex, w11);

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

% \mu_M
S_arrowspaces(w3,w11,qq,qq,1,black);
draw pat2 shifted rat[w3,w11];
label.lft(btex $\mu_M$ etex, rat[w3,w11]+(-db,0));

% delta_X
drawarrow
 (w11+(0,qqy)rotated -angA)..(rat[w3,w11]+(dh,0))..(w3+(0,-qqx)rotated angA);
draw pat2 shifted (w11+(0,qqx)rotated -angA);
label.rt(btex $\delta_X$ etex, rat[w3,w11]+(dh,0));

label.bot(btex \strut affine space etex, w11+(0,-de));
label.bot(btex \strut over a module etex, w11+(0,-df));
label.bot(btex \strut over a group etex, w11+(0,-dg));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Affine space over a module over a ring.
label(btex $R$ etex, w4);
label(btex $M$ etex, w5);
label(btex $X$ etex, w12);

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

% \mu_M
S_arrowspaces(w5,w12,qq,qq,1,black);
draw pat2 shifted rat[w5,w12];
label.lft(btex $\mu_M$ etex, rat[w5,w12]+(-db,0));

% delta_X
drawarrow
 (w12+(0,qqy)rotated -angA)..(rat[w5,w12]+(dh,0))..(w5+(0,-qqx)rotated angA);
draw pat2 shifted (w12+(0,qqx)rotated -angA);
label.rt(btex $\delta_X$ etex, rat[w5,w12]+(dh,0));

label.bot(btex \strut affine space etex, w12+(0,-de));
label.bot(btex \strut over a module etex, w12+(0,-df));
label.bot(btex \strut over a ring etex, w12+(0,-dg));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Affine space over a group.
label(btex $G$ etex, w7);
label(btex $X$ etex, w13);

pickup pencircle scaled penA;
% \sigma_G
drawarrow reverse pat1 rotated 0 shifted (w7+(-da,0));
draw pat2 shifted (w7+(-dd,0));
label.lft(btex $\sigma_G$ etex, w7+(-dc,0));

% \mu_G
S_arrowspaces(w7,w13,qq,qq,1,black);
draw pat2 shifted rat[w7,w13];
label.lft(btex $\mu_G$ etex, rat[w7,w13]+(-db,0));

% delta_X
drawarrow
 (w13+(0,qqy)rotated -angA)..(rat[w7,w13]+(dh,0))..(w7+(0,-qqx)rotated angA);
draw pat2 shifted (w13+(0,qqx)rotated -angA);
label.rt(btex $\delta_X$ etex, rat[w7,w13]+(dh,0));

label.bot(btex \strut affine space etex, w13+(0,-de));
label.bot(btex \strut over a group etex, w13+(0,-df));
label.bot(btex \strut (or module) etex, w13+(0,-dg));

endfig;
end
