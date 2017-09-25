% tex/conc/mp/axiom3.mp   2016-1-5   Alan U. Kennington.
% $Id: tex/conc/mp/axiom3.mp 5e8a0d2fb2 2016-01-05 07:18:55Z Alan U. Kennington $
% Axiom of choice. Choice of a point for each subset of a set.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

dz := 3.5cm;
dze := 1.5; % Stretch factor for ellipse.
rz := dz/2;
sp := 0.2cm;

d := 0.92cm;
de := 1.3;
r := d/2;
re := r * de;
ddd := 0.47;

a := dz * dze/2;
b := dz/2;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(-ddd*a,ddd*b);
w2 := w0+(ddd*a,ddd*b);
w3 := w0+(0,0);
w4 := w0+(-ddd*a,-ddd*b);
w5 := w0+(ddd*a,-ddd*b);
w6 := w0+(0.2ddd*a,-0.8ddd*b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled dz xscaled dze shifted w0;
draw fullcircle scaled d xscaled de shifted w1;
draw fullcircle scaled d xscaled de shifted w2;
draw fullcircle scaled d xscaled de shifted w3;
draw fullcircle scaled d xscaled de shifted w4;
draw fullcircle scaled d xscaled de shifted w5;
draw fullcircle scaled d xscaled de shifted w6;

label.lft(btex $X$ etex, w0+(-a*1.08,0));

% Points inside subsets A_i of X.
w11 := w1 + (0.7re,0r);
label.lft(btex $\scriptstyle f(A_1)$ etex, w11);
pickup pencircle scaled penPT;
draw w11;
label.llft(btex $A_1$ etex, w1+(-0.6re,-0.6r));

w12 := w2 + (0re,0.6r);
label.bot(btex $\scriptstyle f(A_2)$ etex, w12);
draw w12;
label.lrt(btex $A_2$ etex, w2+(0.6re,-0.6r));

w13 := w3 + (0re,0.6r);
label.bot(btex $\scriptstyle f(A_3)$ etex, w13);
draw w13;
label.top(btex $A_3$ etex, w3+(0re,0.92r));

w14 := w4 + (0re,-0.6r);
label.top(btex $\scriptstyle f(A_4)$ etex, w14);
draw w14;
label.ulft(btex $A_4$ etex, w4+(-0.6re,0.6r));

w15 := w5 + (0re,0.3r);
label.bot(btex $\scriptstyle f(A_5)$ etex, w15);
draw w15;
label.urt(btex $A_5$ etex, w5+(0.6re,0.6r));

w16 := w6 + (-0.2re,0.68r);
label.bot(btex $\scriptstyle f(A_6)$ etex, w16+(0,-0.2r));
draw w16;
label.bot(btex $A_6$ etex, w6+(0re,-0.92r));

endfig;
end
