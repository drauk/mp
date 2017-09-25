% tex/conc/mp/axiom9.mp   2016-1-3   Alan U. Kennington.
% $Id: tex/conc/mp/axiom9.mp 4f179e532f 2016-01-02 14:57:12Z Alan U. Kennington $
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

% Special A_3.
dAc := d * 2.0;
dec := de * 1.3;

a := dz * dze/2;
b := dz/2;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(-ddd*a*0.5,ddd*b*0.5);
w2 := w0+(ddd*a*0.8,ddd*b*0.85);
w3 := 0.5[w1,w2];
w4 := w0+(-ddd*a,-ddd*b);
w5 := w0+(ddd*a,-ddd*b);
w6 := w0+(0.2ddd*a,-0.8ddd*b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled dz xscaled dze shifted w0;
draw fullcircle scaled d xscaled de shifted w1;
draw fullcircle scaled d xscaled de shifted w2;
draw fullcircle scaled dAc xscaled dec shifted w3;
draw fullcircle scaled d xscaled de shifted w4;
draw fullcircle scaled d xscaled de shifted w5;
draw fullcircle scaled d xscaled de shifted w6;

label.lft(btex $X$ etex, w0+(-a*1.08,0));

% Points inside subsets A_i of X.
w11 := w1 + (0.7re,0r);
label.lft(btex $\scriptstyle C\cap A_1$ etex, w11);
pickup pencircle scaled penPT;
draw w11;
label.top(btex $A_1$ etex, w1+(0.4re,0.9r));

w12 := w2 + (0re,0.6r);
label.bot(btex $\scriptstyle C\cap A_2$ etex, w12);
draw w12;
label.llft(btex $A_2$ etex, w2+(-0.4re,-0.7r));

w13 := w3 + (0re,0.6r);
% label.bot(btex $\scriptstyle C\cap A_3$ etex, w13);
% draw w13;
label.lft(btex $A_3$ etex, w3+(-dAc*dec/2,0*dAc/2));

w14 := w4 + (0re,-0.6r);
label.top(btex $\scriptstyle C\cap A_4$ etex, w14);
draw w14;
label.ulft(btex $A_4$ etex, w4+(-0.4re,0.8r));

w15 := w5 + (0.2re,0.3r);
label.bot(btex $\scriptstyle C\cap A_5$ etex, w15);
draw w15;
label.urt(btex $A_5$ etex, w5+(0.6re,0.6r));

w16 := w6 + (-0.1re,0.4r);
label.bot(btex $\scriptstyle C\cap A_6$ etex, w16+(0,-0.1r));
draw w16;
label.bot(btex $A_6$ etex, w6+(-0.2re,-0.92r));

endfig;
end
