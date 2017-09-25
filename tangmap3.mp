% tex/conc/mp/tangmap3.mp   2015-5-1   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap3.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Maps for differential of a real-valued function. Vectors and operators.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

d := 1.2cm;
r := d/2;
rr := r*1.2;
rrr := rr*2.2;
a := 2.25cm;
b := 1.9cm;
penLN := 0.5bp;
penPT := 2.5bp;
penLNA := 0.5bp;

% Centres of circles.
w0 := (0,0);
w2 := w0+(0,b);
w3 := w2+(3a/2,0);
w4 := w0+(0,2b);
w5 := w3+(a/6,0);       % Origin of real line.

% Circles on the right.
w7 := w0+2(w5-w2);
w8 := w7+(0,b);
w9 := w7+(0,2b);
w6 := w8+(w2-w3);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w4;

% Right-hand circles.
draw fullcircle scaled d shifted w7;
draw fullcircle scaled d shifted w8;
draw fullcircle scaled d shifted w9;

% Points inside circles.
w10 := w0 + (r/4,0);
w12 := w2 + (r/4,0);
w14 := w4 + (r/4,0);
label.lft(btex $p$ etex, w10);
label.lft(btex $f$ etex, w12);
label.lft(btex $V$ etex, w14);
pickup pencircle scaled penPT;
draw w10;
draw w12;
draw w14;

% Points inside right-hand circles.
w10 := w7 + (r/4,0);
w12 := w8 + (r/4,0);
w14 := w9 + (r/4,0);
label.lft(btex $p$ etex, w10);
label.lft(btex $f$ etex, w12);
label.lft(btex $L$ etex, w14);
pickup pencircle scaled penPT;
draw w10;
draw w12;
draw w14;

% Labels for the circles.
label.lft(btex $M$ etex, w0-(rr,0));
label.lft(btex $C^1(M)$ etex, w2-(rr,0));
label.lft(btex $T_p(M)$ etex, w4-(rr,0));

% Labels for the circles on the right.
label.rt(btex $M$ etex, w7+(rr,0));
label.rt(btex $C^1(M)$ etex, w8+(rr,0));
label.rt(btex $\overcirc T_p(M)$ etex, w9+(rr,0));

% The arrows on the left.
pickup pencircle scaled penLN;
S_arrowspaces(w0,w3,rr,rrr,1,black);
S_arrowspaces(w2,w3,rr,rrr,1,black);
S_arrowspaces(w4,w3,rr,rrr,1,black);

% Labels on the arrows.
label.urt(btex \strut$(df)_p$ etex, 0.3[w4,w3]);
label.top(btex \strut$\partial_V$ etex, 0.35[w2,w3]);
label.lrt(btex \strut$f$ etex, 0.35[w0,w3]);

% The arrows on the right.
S_arrowspaces(w7,w6,rr,rrr,1,black);
S_arrowspaces(w8,w6,rr,rrr,1,black);
S_arrowspaces(w9,w6,rr,rrr,1,black);

% Labels on the arrows on the right.
label.ulft(btex \strut$(df)_p$ etex, 0.3[w9,w6]);
label.top(btex \strut$L$ etex, 0.35[w8,w6]);
label.llft(btex \strut$f$ etex, 0.35[w7,w6]);

% The set of reals at w3.
S_reals(w3+(a/6,0), a/2, a/20, pencircle scaled penLN);

% The arrow for \partial.
pickup pencircle scaled penLNA;
Dx := 0.4r;
S_arrowspace(w4+(0,Dx),w9+(0,Dx),rr,1,black);
label.top(btex $\partial$ etex, 0.5[w4,w9]+(0,Dx));

endfig;
end
