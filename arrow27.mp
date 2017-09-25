% tex/conc/mp/arrow27.mp   2014-5-29   Alan U. Kennington.
% $Id: tex/conc/mp/arrow27.mp 122b700626 2014-05-29 11:36:12Z Alan U. Kennington $
% Sets and operations for affine spaces over modules, showing lines.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 3.0cm;
bb := 1.6cm;
qq := 0.35cm;
qqx := 0.43cm;
cr := 5pt;          % This is actually a diameter.
theta := 1;
da := 12pt;
ratA := 0.46;
ratB := 0.3;
ratC := 0.7;
ratD := 0.46;
db := 4pt;
dc := 1.75da;
dd := 1.485da;
de := 8pt;
df := de + 12pt;
dg := df + 12pt;
dh := 11pt;
dhx := dh-1.5pt;
di := 13.5pt;
dj := 28.5pt;
qqy := qqx + cr/2;
qqz := qq-2pt;
qqw := qq;
angA := 32;
angB := 90;
angC := 35;
scA := 0.7;

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
draw pat2 shifted ratA[w0,w1];
label.lft(btex $\mu_A$ etex, ratA[w0,w1]+(-db,0));

% \sigma_M
drawarrow reverse pat1 rotated 0 shifted (w1+(-da,0));
draw pat2 shifted (w1+(-dd,0));
label.lft(btex $\sigma_M$ etex, w1+(-dc,0));

% \mu_M
S_arrowspaces(w1,w10,qq,qq,1,black);
draw pat2 shifted ratA[w1,w10];
label.lft(btex $\mu_M$ etex, ratA[w1,w10]+(-db,0));

% delta_X
drawarrow
 (w10+(0,qqy)rotated -angA)..(ratD[w1,w10]+(dh,0))..(w1+(0,-qqw)rotated angA);
draw pat2 shifted (w10+(0,qqx)rotated -angA);
label.rt(btex $\delta_X$ etex, ratD[w1,w10]+(dhx,0));

% Line map.
drawarrow
 (w0+(0,-qqz)rotated angC)..(ratB[w0,w10]+(di,0))
 ..(ratC[w0,w10]+(dj,0))..{dir180}(w10+(0,qqz)rotated -angB)
 dashed evenly scaled scA;
label.rt(btex $L_{p,m}$ etex, ratB[w0,w10]+(di,0));

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
draw pat2 shifted ratA[w2,w3];
label.lft(btex $\mu_G$ etex, ratA[w2,w3]+(-db,0));

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
draw pat2 shifted ratA[w3,w11];
label.lft(btex $\mu_M$ etex, ratA[w3,w11]+(-db,0));

% delta_X
drawarrow
 (w11+(0,qqy)rotated -angA)..(ratD[w3,w11]+(dh,0))..(w3+(0,-qqw)rotated angA);
draw pat2 shifted (w11+(0,qqx)rotated -angA);
label.rt(btex $\delta_X$ etex, ratD[w3,w11]+(dhx,0));

% Line map.
drawarrow
 (w2+(0,-qqz)rotated angC)..(ratB[w2,w11]+(di,0))
 ..(ratC[w2,w11]+(dj,0))..{dir180}(w11+(0,qqz)rotated -angB)
 dashed evenly scaled scA;
label.rt(btex $L_{p,m}$ etex, ratB[w2,w11]+(di,0));

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
draw pat2 shifted ratA[w4,w5];
label.lft(btex $\mu_R$ etex, ratA[w4,w5]+(-db,0));

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
draw pat2 shifted ratA[w5,w12];
label.lft(btex $\mu_M$ etex, ratA[w5,w12]+(-db,0));

% delta_X
drawarrow
 (w12+(0,qqy)rotated -angA)..(ratD[w5,w12]+(dh,0))..(w5+(0,-qqw)rotated angA);
draw pat2 shifted (w12+(0,qqx)rotated -angA);
label.rt(btex $\delta_X$ etex, ratD[w5,w12]+(dhx,0));

% Line map.
drawarrow
 (w4+(0,-qqz)rotated angC)..(ratB[w4,w12]+(di,0))
 ..(ratC[w4,w12]+(dj,0))..{dir180}(w12+(0,qqz)rotated -angB)
 dashed evenly scaled scA;
label.rt(btex $L_{p,m}$ etex, ratB[w4,w12]+(di,0));

label.bot(btex \strut affine space etex, w12+(0,-de));
label.bot(btex \strut over a module etex, w12+(0,-df));
label.bot(btex \strut over a ring etex, w12+(0,-dg));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Affine space over a group.
label(btex $\ints$ etex, w6);
label(btex $G$ etex, w7);
label(btex $X$ etex, w13);

pickup pencircle scaled penA;
% \tau_Z
drawarrow pat1 rotated 180 shifted (w6+(da,0));
draw pat2 shifted (w6+(dd,0));
label.rt(btex $\tau_{\ints}$ etex, w6+(dc,0));

% \sigma_Z
drawarrow reverse pat1 rotated 0 shifted (w6+(-da,0));
draw pat2 shifted (w6+(-dd,0));
label.lft(btex $\sigma_{\ints}$ etex, w6+(-dc,0));

% \sigma_G
drawarrow reverse pat1 rotated 0 shifted (w7+(-da,0));
draw pat2 shifted (w7+(-dd,0));
label.lft(btex $\sigma_G$ etex, w7+(-dc,0));

% \mu_G
S_arrowspaces(w7,w13,qq,qq,1,black);
draw pat2 shifted ratA[w7,w13];
label.lft(btex $\mu_G$ etex, ratA[w7,w13]+(-db,0));

% delta_X
drawarrow
 (w13+(0,qqy)rotated -angA)..(ratD[w7,w13]+(dh,0))..(w7+(0,-qqw)rotated angA);
draw pat2 shifted (w13+(0,qqx)rotated -angA);
label.rt(btex $\delta_X$ etex, ratD[w7,w13]+(dhx,0));

% Line map.
drawarrow
 (w6+(0,-qqz)rotated angC)..(ratB[w6,w13]+(di,0))
 ..(ratC[w6,w13]+(dj,0))..{dir180}(w13+(0,qqz)rotated -angB)
 dashed evenly scaled scA;
label.rt(btex $L_{p,g}$ etex, ratB[w6,w13]+(di,0));

label.bot(btex \strut affine space etex, w13+(0,-de));
label.bot(btex \strut over a group etex, w13+(0,-df));
label.bot(btex \strut (or module) etex, w13+(0,-dg));

endfig;
end
