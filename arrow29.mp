% tex/conc/mp/arrow29.mp   2012-4-2   Alan U. Kennington.
% $Id: tex/conc/mp/arrow29.mp 592234290e 2012-04-02 10:13:07Z Alan U. Kennington $
% Sets and operations for single-set algebraic structures and modules.

input mapmax.mp
verbatimtex
\input akmath
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
path pat[];
pair w[];

aa := 3.3cm;
bb := 1.6cm;
by := 2bb - 20pt;
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

w6 := w4 + (aa,0);
w7 := w6 + (0,-bb);

w10 := w0 + (0.5aa,by);
w11 := w10 + (0,-bb);

w12 := w10 + (aa,0);
w13 := w12 + (0,-bb);

w14 := w12 + (aa,0);
w15 := w14 + (0,-bb);

pat1 := subpath (8-theta, theta) of fullcircle scaled da;
pat2 := fullcircle scaled cr;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Group.
label(btex $G$ etex, w10);

label.top(btex \strut group, monoid, etex, w10+(0,df));
label.top(btex \strut semigroup etex, w10+(0,de));

pickup pencircle scaled penA;
drawarrow reverse pat1 rotated 0 shifted (w10+(-da,0));
draw pat2 shifted (w10+(-dd,0));
label.lft(btex \strut$\sigma$ etex, w10+(-dc,0));

% label.bot(btex \strut group, monoid, etex, w11+(0,-de));
% label.bot(btex \strut semigroup etex, w11+(0,-df));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Ring.
label(btex $R$ etex, w12);

label.top(btex \strut ring, field etex, w12+(0,df));

pickup pencircle scaled penA;
drawarrow reverse pat1 rotated 0 shifted (w12+(-da,0));
draw pat2 shifted (w12+(-dd,0));
label.lft(btex \strut$\sigma$ etex, w12+(-dc,0));

drawarrow pat1 rotated 180 shifted (w12+(da,0));
draw pat2 shifted (w12+(dd,0));
label.rt(btex $\tau$ etex, w12+(dc,0));

% label.bot(btex \strut ring, field etex, w13+(0,-de));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Transformation group.
label(btex $G$ etex, w14);
label(btex $M$ etex, w15);

label.top(btex \strut transformation etex, w14+(0,df));
label.top(btex \strut group/semigroup etex, w14+(0,de));

pickup pencircle scaled penA;
S_arrowspaces(w14,w15,qq,qq,1,black);
draw pat2 shifted rat[w14,w15];
label.lft(btex \strut$\mu$ etex, rat[w14,w15]+(-db,0));

drawarrow reverse pat1 rotated 0 shifted (w14+(-da,0));
draw pat2 shifted (w14+(-dd,0));
label.lft(btex \strut$\sigma$ etex, w14+(-dc,0));

% label.bot(btex \strut transformation etex, w15+(0,-de));
% label.bot(btex \strut group etex, w15+(0,-df));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Module over a set.
label(btex $A$ etex, w0);
label(btex $M$ etex, w1);

pickup pencircle scaled penA;
S_arrowspaces(w0,w1,qq,qq,1,black);
draw pat2 shifted rat[w0,w1];
label.lft(btex \strut$\mu$ etex, rat[w0,w1]+(-db,0));

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
S_arrowspaces(w2,w3,qq,qq,1,black);
draw pat2 shifted rat[w2,w3];
label.lft(btex \strut$\mu$ etex, rat[w2,w3]+(-db,0));

drawarrow reverse pat1 rotated 0 shifted (w2+(-da,0));
draw pat2 shifted (w2+(-dd,0));
label.lft(btex $\sigma_G$ etex, w2+(-dc,0));

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
S_arrowspaces(w4,w5,qq,qq,1,black);
draw pat2 shifted rat[w4,w5];
label.lft(btex \strut$\mu$ etex, rat[w4,w5]+(-db,0));

drawarrow pat1 rotated 180 shifted (w4+(da,0));
draw pat2 shifted (w4+(dd,0));
label.rt(btex $\tau_R$ etex, w4+(dc,0));

drawarrow reverse pat1 rotated 0 shifted (w4+(-da,0));
draw pat2 shifted (w4+(-dd,0));
label.lft(btex $\sigma_R$ etex, w4+(-dc,0));

drawarrow reverse pat1 rotated 0 shifted (w5+(-da,0));
draw pat2 shifted (w5+(-dd,0));
label.lft(btex $\sigma_M$ etex, w5+(-dc,0));

label.bot(btex \strut module over a ring, etex, w5+(0,-de));
label.bot(btex \strut linear space etex, w5+(0,-df));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Algebra
label(btex $K$ etex, w6);
label(btex $A$ etex, w7);

pickup pencircle scaled penA;
S_arrowspaces(w6,w7,qq,qq,1,black);
draw pat2 shifted rat[w6,w7];
label.lft(btex \strut$\mu$ etex, rat[w6,w7]+(-db,0));

drawarrow pat1 rotated 180 shifted (w6+(da,0));
draw pat2 shifted (w6+(dd,0));
label.rt(btex $\tau_K$ etex, w6+(dc,0));

drawarrow reverse pat1 rotated 0 shifted (w6+(-da,0));
draw pat2 shifted (w6+(-dd,0));
label.lft(btex $\sigma_K$ etex, w6+(-dc,0));

drawarrow reverse pat1 rotated 0 shifted (w7+(-da,0));
draw pat2 shifted (w7+(-dd,0));
label.lft(btex $\sigma_A$ etex, w7+(-dc,0));

drawarrow pat1 rotated 180 shifted (w7+(da,0));
draw pat2 shifted (w7+(dd,0));
label.rt(btex $\tau_A$ etex, w7+(dc,0));

label.bot(btex \strut associative algebra, etex, w7+(0,-de));
label.bot(btex \strut Lie algebra etex, w7+(0,-df));

endfig;
end
