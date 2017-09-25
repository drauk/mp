% tex/conc/mp/logmap2.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/logmap2.mp eacf44d69b 2015-05-09 12:59:30Z Alan U. Kennington $
% Commutative diagram for socio-mathematical synchronisation.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

d := 1.4cm;
r := d/2;
q := r*1.2;
a := 6.0cm;
b := 2.4cm;
dd := 1mm;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Labels for the circles.
label.lft(btex problem etex, w0-(q,0));
label.rt(btex problem etex, w1+(q,0));
label.bot(btex mind $A$ etex, w0+(0,-q));
label.bot(btex mind $B$ etex, w1+(0,-q));

label.lft(btex answer etex, w2-(q,0));
label.rt(btex answer etex, w3+(q,0));

label.lft(btex problem etex, w4-(q,0));
label.rt(btex problem etex, w5+(q,0));
label.top(btex mind $A$ etex, w4+(0,q));
label.top(btex mind $B$ etex, w5+(0,q));

% Points inside circles.
label(btex $2'+2'$ etex, w0);
label(btex $2''+2''$ etex, w1);

label(btex $4'$ etex, w2);
label(btex $4''$ etex, w3);

label(btex $3'+1'$ etex, w4);
label(btex $3''+1''$ etex, w5);

% Horizontal arrows.
S_arrowspace(w4,w5,q,1,black);
label.top(btex \strut set theory protocol etex, 0.5[w4,w5]);
label.bot(btex \strut $3+1$ etex, 0.5[w4,w5]);

S_arrowspace(w2,w3,q,3,black);
label.top(btex \strut set theory protocol etex, 0.5[w2,w3]);
label.bot(btex \strut $4$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.top(btex \strut set theory protocol etex, 0.5[w0,w1]);
label.bot(btex \strut $2+2$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w2, w0, q, 2, black);
label.lft(btex \strut rule test etex, 0.5[w0,w2] + (-dd,0));

S_arrowspace(w3, w1, q, 2, black);
label.rt(btex \strut rule test etex, 0.5[w1,w3] + (dd,0));

S_arrowspace(w4, w2, q, 1, black);
label.lft(btex \strut construction etex, 0.5[w4,w2] + (-dd,0));

S_arrowspace(w5, w3, q, 1, black);
label.rt(btex \strut construction etex, 0.5[w5,w3] + (dd,0));

endfig;
end
