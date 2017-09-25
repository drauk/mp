% tex/conc/mp/connmap13.mp   2014-4-5   Alan U. Kennington.
% $Id: tex/conc/mp/connmap13.mp 1bcf704d45 2015-05-09 09:51:47Z Alan U. Kennington $
% Difficulty of defining torsion for an abstract affine connection.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];
color col[];

d := 1.3cm;
dd := 1.5cm;
r := d/2;
rr := dd/2;
q := r + 0.12cm;
qq := rr + 0.12cm;

aa := 3.6cm;
bb := 2.4cm;
dy := 4bp;
scD := 0.7;
gapA := 3bp;
gapB := 7bp;
col0 := 0.4white;

penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := (aa,0);
w2 := w0+(0,bb);
w3 := w1+(0,bb);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled dd shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled dd shifted w3;

% Labels for the circles.
label.lft(btex $M$ etex, w0+(-q,0));
label.rt(btex $T(M)$ etex, w1+(qq,0));
label.lft(btex $T(M)$ etex, w2+(-q,0));
label.rt(btex $T(T(M))$ etex, w3+(qq,0));

% Vertical arrows.
pickup pencircle scaled penLN;
S_arrowspace(w2, w0, q, 1, black);
S_arrowspace(w3, w1, qq, 1, black);
label.lft(btex \strut$\pi$ etex, 0.5[w2,w0]);
label.rt(btex \strut$d\pi$ etex, 0.5[w3,w1]);

% Points inside circles.
pickup pencircle scaled penPT;
w10 := w0 + (4pt,0);
draw w10;
label.lft(btex \strut$p$ etex, w10);

w11 := w2 + (4pt,7pt);
draw w11;
label.lft(btex \strut$z$ etex, w11);

w12 := w2 + (4pt,-7pt);
draw w12;
label.lft(btex \strut$V$ etex, w12);

w13 := w3 + (-8pt,10pt);
draw w13;
label.rt(btex \strut$\scriptstyle\konv_V(z)$ etex, w13);

w14 := w3 + (-8pt,-8pt);
draw w14;
label.rt(btex \strut$\scriptstyle\konv_z(V)$ etex, w14);

w15 := w1 + (-4pt,7pt);
draw w15;
label.rt(btex \strut$V$ etex, w15);

w16 := w1 + (-4pt,-7pt);
draw w16;
label.rt(btex \strut$z$ etex, w16);

% Vectors.
c := bb*0.7;
d := -c*0.45;
e := c*0.125;
w21 := w11 + (c,e);
w24 := w12 + (c,-e*2.6);
w22 := w10 + (c,dy);
w23 := w10 + (c,-dy);

pickup pencircle scaled penLN;
S_arrowspace(w11,w13,gapA,1, col0);
S_arrowspacesstyle(w12,w14,gapA,gapA,1)(dashed evenly scaled scD
 withcolor col0);

S_arrowspace(w10,w15,gapA,1, col0);
S_arrowspacesstyle(w10,w16,gapA,gapA,1)(dashed evenly scaled scD
 withcolor col0);

% Labels on arrows.
pickup pencircle scaled penLN;
label.top(btex \strut$\konv_V(z)\in T_z(T(M))$ etex, 0.5[w11,w13]+(0,gapB));
label.bot(btex \strut$\konv_z(V)\in T_V(T(M))$ etex, 0.5[w12,w14]+(0,-gapB));

label.top(btex $V\in T_p(M)$ etex, 0.5[w10,w15]+(0,3pt));
label.bot(btex $z\in T_p(M)$ etex, 0.5[w10,w16]+(0,-3pt));

endfig;
end
