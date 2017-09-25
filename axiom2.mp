% tex/conc/mp/axiom2.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/axiom2.mp 6addbdeaf4 2015-05-09 10:22:50Z Alan U. Kennington $
% Axiom of choice. Choice of function values from a relation.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

dz := 2.5cm;
rz := dz/2;
rrz := rz*1.2;
sp := 0.2cm;

d := 0.53cm;
r := d/2;
rr := r*1.3;

a := 4.5cm;
b := 2rr;
penLN := 0.5bp;
penPT := 2.5bp;
penX := 0.7bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,2b);
w2 := w0+(a,b);
w3 := w0+(a,0);
w4 := w0+(a,-b);
w5 := w0+(a,-2b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled dz shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Points inside set X.
w11 := w0 + (rz/4,rz/4);
w12 := w0 + (rz/4,-rz/4);
label.lft(btex $x_1$ etex, w11);
label.lft(btex $x_2$ etex, w12);
pickup pencircle scaled penPT;
draw w11;
draw w12;

% Labels for the circles.
label.lft(btex $X$ etex, w0+(-rrz,0));
label.rt(btex $y_{1,1}$ etex, w1+(rr,0));
label.rt(btex $y_{1,2}=f(x_1)$ etex, w2+(rr,0));
label.rt(btex $y_{1,3}$ etex, w3+(rr,0));
label.rt(btex $y_{2,1}=f(x_2)$ etex, w4+(rr,0));
label.rt(btex $y_{2,2}$ etex, w5+(rr,0));

% The arrows.
pickup pencircle scaled penLN;
S_arrowspaces(w11,w1,sp,rr,1,black);
S_arrowspaces(w11,w2,sp,rr,1,black);
S_arrowspaces(w11,w3,sp,rr,1,black);
S_arrowspaces(w12,w4,sp,rr,1,black);
S_arrowspaces(w12,w5,sp,rr,1,black);

% Labels on some arrows.
% label.top(btex $(x_1,y_{1,1})\in P$ etex, 0.5[w11,w1]);
S_tiltlabel_top(btex $(x_1,y_{1,1})\in P$ etex, 0.5[w11,w1], angle(w1-w11));
% label.bot(btex $(x_2,y_{2,2})\in P$ etex, 0.5[w12,w5]);
S_tiltlabel_bot(btex $(x_2,y_{2,2})\in P$ etex, 0.5[w12,w5], angle(w5-w12));

% Some Xs to mark the choices.
pickup pencircle scaled penX;
draw (w2+(-r/2,r/2))..(w2+(r/2,-r/2));
draw (w2+(-r/2,-r/2))..(w2+(r/2,r/2));
draw (w4+(-r/2,r/2))..(w4+(r/2,-r/2));
draw (w4+(-r/2,-r/2))..(w4+(r/2,r/2));

% Labels on the arrows.
% label.top(btex $\tangop{p,v,\psi}$ etex, 0.4[w4,w3]+(b/10,a/10));
% label.lrt(btex \strut$P$ etex, 0.33[w0,w3]);

endfig;
end
