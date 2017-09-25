% tex/conc/mp/connmap6.mp   2016-11-28   Alan U. Kennington.
% $Id: tex/conc/mp/connmap6.mp 24b5f1fec8 2016-11-28 04:01:20Z Alan U. Kennington $
% OFB connection.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

d := 1.3cm;
r := d/2;
q := r*1.2;
b := 2.4cm;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w2 := w0+(0,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w2;

% Labels for the circles.
label.lft(btex $M$ etex, w0-(q,0));
label.lft(btex $E$ etex, w2-(q,0));

% Vertical arrows.
pickup pencircle scaled penLN;
S_arrowspace(w0, w2, q, 2, black);
label.lft(btex \strut$\pi$ etex, 0.5[w2,w0]);

% Points inside circles.
pickup pencircle scaled penPT;
w10 := w0 + (4pt,0);
draw w10;
label.lft(btex \strut$p$ etex, w10);

w11 := w2 + (4pt,7pt);
draw w11;
label.lft(btex \strut$z_1$ etex, w11);

w12 := w2 + (4pt,-7pt);
draw w12;
label.lft(btex \strut$z_2$ etex, w12);

% Vectors.
c := b*0.7;
d := -c*0.45;
e := c*0.125;
w21 := w11 + (c,e);
w24 := w12 + (c,-e*2.6);
w22 := w10 + (c,0);

pickup pencircle scaled penLN;
drawarrow w11--w21;
drawarrow w12--w24;

pickup pencircle scaled penLN;
S_arrowspace(w10,w22,2pt,1,0.4white);

% Labels on arrows.
draw (thelabel.urt(btex \strut$\konv_V(z_1)\in T_{z_1}(E)$ etex, (0,0)))
 rotated (angle(w21-w11)) shifted (0.33[w11,w21]);

draw (thelabel.urt(btex \strut$\konv_V(z_2)\in T_{z_2}(E)$ etex, (0,0)))
 rotated (angle(w24-w12)) shifted (0.33[w12,w24]);

label.lrt(btex $V\in T_p(M)$ etex, 0.33[w10,w22]+(0,-3pt));

endfig;
end
