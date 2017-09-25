% tex/conc/mp/fnmap6.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fnmap6.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Set map between power sets.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

d := 1.1cm;
r := d/2;
q := r*1.2;
a := 4.5cm;
b := 1.6cm;

ecc := 1.6;
dd := d * ecc;
rr := dd/2;
qq := rr * 1.18;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d xscaled ecc shifted w0;
draw fullcircle scaled d xscaled ecc shifted w1;
draw fullcircle scaled d xscaled ecc shifted w2;
draw fullcircle scaled d xscaled ecc shifted w3;

% Labels for the circles.
label.lft(btex $X$ etex, w0-(qq,0));
label.rt(btex $Y$ etex, w1+(qq,0));
label.lft(btex $\powerset(X)$ etex, w2-(qq,0));
label.rt(btex $\powerset(Y)$ etex, w3+(qq,0));

% Points inside circles.
pickup pencircle scaled penPT;
w10 := w0+(r/8,0);
draw w10;
label.lft(btex $x$ etex, w10);

w10 := w1+(r/2,0);
draw w10;
label.lft(btex $f(x)$ etex, w10);

w10 := w2+(0,0);
% draw w10;
label(btex $A$ etex, w10);

w10 := w3+(0,-2pt);
% draw w10;
label(btex $\scriptstyle \{f(x);\,x\in A\}$ etex, w10);
label(btex $\scriptstyle \bar f(A)=$ etex, w10+(0,9pt));

% Horizontal arrows.
pickup pencircle scaled penLN;

S_arrowspace(w2,w3,qq,1,black);
label.top(btex \strut$\bar f$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,qq,1,black);
label.top(btex \strut$f$ etex, 0.5[w0,w1]);

endfig;
end
