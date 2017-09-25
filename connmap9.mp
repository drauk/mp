% tex/conc/mp/connmap9.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/connmap9.mp 1bcf704d45 2015-05-09 09:51:47Z Alan U. Kennington $
% Flow of a vector V for a vector field X.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

dd := 1.4cm;
r := dd/2;
q := r*1.2;
b := 2.6cm;
ang := 15;      % V_1, V_2 angles.
penLN := 0.5bp;
penPT := 2.5bp;

w20 := (6.7cm,0); % Separation between two diagrams.

% Centres of circles.
w0 := (0,0);
w2 := w0+(0,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled dd shifted w0;
draw fullcircle scaled dd shifted w2;

% Labels for the circles.
label.lft(btex $M$ etex, w0-(q,0));
label.lft(btex $T(M)$ etex, w2-(q,0));

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
label.lft(btex \strut$V_1$ etex, w11);

w12 := w2 + (4pt,-7pt);
draw w12;
label.lft(btex \strut$V_2$ etex, w12);

% Vectors.
c := b*0.7;
cc := c*0.78;
d := -c*0.45;
e := c*0.125;
w21 := w11 + (c,e);
w24 := w12 + (c,-e*2.6);
w22 := w10 + (cc,0)rotated-ang;
w25 := w10 + (cc,0)rotated ang;
w26 := w10 + (c,0);

pickup pencircle scaled penLN;
drawarrow w11--w21;
drawarrow w12--w24;

pickup pencircle scaled penLN;
S_arrowspace(w10,w22,2pt,1,0.4white);
S_arrowspace(w10,w25,2pt,1,0.4white);
S_arrowspace(w10,w26,2pt,1,0.4white);

% Labels on arrows.
draw (thelabel.urt(btex \strut$\konv_X(V_1)\in T_{V_1}(T(M))$ etex, (0,0)))
 rotated (angle(w21-w11)) shifted (0.33[w11,w21]);

draw (thelabel.urt(btex \strut$\konv_X(V_2)\in T_{V_2}(T(M))$ etex, (0,0)))
 rotated (angle(w24-w12)) shifted (0.33[w12,w24]);

label.urt(btex $V_1\in T_p(M)$ etex, 0.6[w10,w25]+(0,4pt));
label.lrt(btex $V_2\in T_p(M)$ etex, 0.6[w10,w22]+(0,-4pt));
label.rt(btex $X(p)\in T_p(M)$ etex, w26);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The diagram on the right for partial_VX.

% Centres of circles.
w0 := w0 + w20;
w2 := w0+(0,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled dd shifted w0;
draw fullcircle scaled dd shifted w2;

% Labels for the circles.
label.lft(btex $M$ etex, w0-(q,0));
label.lft(btex $T(M)$ etex, w2-(q,0));

% Vertical arrows.
pickup pencircle scaled penLN;
S_arrowspace(w0, w2, q, 2, black);
label.lft(btex \strut$\pi$ etex, 0.5[w2,w0]);

% Points inside circles.
pickup pencircle scaled penPT;
w10 := w0 + (4pt,0);
draw w10;
label.lft(btex \strut$p$ etex, w10);

w11 := w2 + (4pt,-3pt);
draw w11;
label.ulft(btex $X(p)$ etex, w11+(2pt,0));

% Vectors.
c := b*0.7;
cc := c*0.78;
d := -c*0.45;
e := c*0.125;
% w21 := w11 + (c,e);
% w24 := w11 + (c,-e*2.6);
w22 := w10 + (cc,0)rotated-ang;
w25 := w10 + (cc,0)rotated ang;
w26 := w10 + (c,0);
w21 := w11 + w25 - w10;
w24 := w11 + w22 - w10;

pickup pencircle scaled penLN;
drawarrow w11--w21;
drawarrow w11--w24;

pickup pencircle scaled penLN;
S_arrowspace(w10,w22,2pt,1,0.4white);
S_arrowspace(w10,w25,2pt,1,0.4white);
S_arrowspace(w10,w26,2pt,1,0.4white);

% Labels on arrows.
draw (thelabel.urt(btex
 \strut$\partial_{V_1}X\in T_{X(p)}(T(M))$ etex, (0,0)))
 rotated (angle(w21-w11)) shifted (0.47[w11,w21]);

draw (thelabel.lrt(btex
 \strut$\partial_{V_2}X\in T_{X(p)}(T(M))$ etex, (0,0)))
 rotated (angle(w24-w11)) shifted (0.47[w11,w24]);

label.urt(btex $V_1\in T_p(M)$ etex, 0.6[w10,w25]+(0,4pt));
label.lrt(btex $V_2\in T_p(M)$ etex, 0.6[w10,w22]+(0,-4pt));
label.rt(btex $X(p)\in T_p(M)$ etex, w26);

endfig;
end
