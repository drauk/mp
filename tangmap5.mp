% tex/conc/mp/tangmap5.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap5.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Maps for tangent vector.

input mapmax.mp
verbatimtex
\input dgmpmax
etex

beginfig(1);
pair w[];

d := 1.2cm;
r := d/2;
rr := r*1.2;
rrr := rr*2.2;
a := 2.5cm;
b := 1.0cm;

penDOT := 2.5bp;
penLINE := 0.5bp;
penREAL := 0.5bp;

% Centres of circles.
w0 := (0,0);
w3 := w0+(3a/2,b);
w4 := w0+(0,2b);

% The circles.
pickup pencircle scaled penLINE;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w4;

% Points inside circles.
w10 := w0 + (r/4,0);
w14 := w4 + (r/4,0);
label.lft(btex $p$ etex, w10);
label.lft(btex $f$ etex, w14);
pickup pencircle scaled penDOT;
draw w10;
draw w14;

% Labels for the circles.
label.lft(btex $C^1(M)$ etex, w4-(rr,0));
label.lft(btex $M$ etex, w0-(rr,0));

% The arrows.
pickup pencircle scaled penLINE;
S_arrowspaces(w4,w3,rr,rrr,1,black);
S_arrowspaces(w0,w3,rr,rrr,1,black);

% Labels on the arrows.
label.top(btex $\tangop{p,v,\psi}$ etex, 0.4[w4,w3]+(b/10,a/10));
label.lrt(btex \strut$f$ etex, 0.33[w0,w3]);

% The set of reals at w3.
S_reals(w3+(a/6,0), a/2, a/20, pencircle scaled penREAL);

endfig;
end
