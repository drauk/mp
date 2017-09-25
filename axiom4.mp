% tex/conc/mp/axiom4.mp   2016-1-3   Alan U. Kennington.
% $Id: tex/conc/mp/axiom4.mp 8ed0014dd6 2016-01-02 19:13:45Z Alan U. Kennington $
% Axiom of choice. Choice of a point for each set of a disjoint collection.

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
sf := 0.7;

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
w5 := w0+(0.8ddd*a,-1.1ddd*b);
w6 := w0+(2ddd*a,-0.65ddd*b);

% The circles.
pickup pencircle scaled penLN;
% draw fullcircle scaled dz xscaled dze shifted w0;
draw fullcircle scaled d xscaled de shifted w1;
draw fullcircle scaled d xscaled de shifted w2;
draw fullcircle scaled d xscaled de shifted w3;
draw fullcircle scaled (d*sf) xscaled de shifted w4;
draw fullcircle scaled d xscaled de shifted w5;
draw fullcircle scaled d xscaled de shifted w6;

% label.lft(btex $X$ etex, w0+(-a*1.08,0));

% Points inside subsets A_i of X.
w11 := w1 + (0.7re,0r);
label.lft(btex $\scriptstyle z_1\in C$ etex, w11);
pickup pencircle scaled penPT;
draw w11;
label.lft(btex $A_1$ etex, w1+(-0.95re,0));

w12 := w2 + (0re,0.6r);
label.bot(btex $\scriptstyle z_2\in C$ etex, w12);
draw w12;
label.rt(btex $A_2$ etex, w2+(0.92re,0r));

w13 := w3 + (0re,0.6r);
label.bot(btex $\scriptstyle z_3\in C$ etex, w13);
draw w13;
label.top(btex $A_3$ etex, w3+(0re,0.92r));

w14 := w4 + (0re,-0.6r*sf);
label.top(btex $\scriptstyle z_4\in C$ etex, w14);
draw w14;
label.llft(btex $A_4$ etex, w4+(-0.6re*sf,-0.6r*sf));

w15 := w5 + (-0.6re,0r);
label.rt(btex $\scriptstyle z_5\in C$ etex, w15);
draw w15;
label.llft(btex $A_5$ etex, w5+(-0.6re,-0.6r));

w16 := w6 + (-0.2re,0.68r);
label.bot(btex $\scriptstyle z_6\in C$ etex, w16+(0.2r,0));
draw w16;
label.bot(btex $A_6$ etex, w6+(0re,-0.92r));

endfig;
end
