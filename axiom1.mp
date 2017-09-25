% tex/conc/mp/axiom1.mp   2012-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/axiom1.mp 6addbdeaf4 2015-05-09 10:22:50Z Alan U. Kennington $
% ZF set theory axiom of regularity.

input mapmax.mp

beginfig(1);
pair v[], w[], x[], y[];

d := 0.8cm;
r := d/2;
q := r*1.15;
a := 1.25cm;
b := 2.5cm;
e := 0.25cm;           % Circle on arrow.
sp := r/2;             % Ellipsis parameters.
spp := r/4;
penLN := 0.5bp;
penPT := 2.5bp;
penDOT := 1.2pt;

% Centres of circles.
w0 := (0,0);           % Set z0.
w1 := w0+(-a,0);       % Set z1.
w2 := w0+(-2a,0);      % Set z2.
w3 := w0+(-3a,0);      % Set z3.
w4 := w0+(-4a,0);      % Set z4.
w5 := w0+(-5a,0);      % Set z5.

pickup pencircle scaled penLN;

% The circles.
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Labels for the circles.
label.bot(btex $z_0$ etex, w0+(0,-q));
label.bot(btex $z_1$ etex, w1+(0,-q));
label.bot(btex $z_2$ etex, w2+(0,-q));
label.bot(btex $z_3$ etex, w3+(0,-q));
label.bot(btex $z_4$ etex, w4+(0,-q));
label.bot(btex $z_5$ etex, w5+(0,-q));

% Coordinates for ends of arrows.
x1 := w0+(-r/2,0);
y1 := w1+(q,0);

x2 := w1+(-r/2,0);
y2 := w2+(q,0);

x3 := w2+(-r/2,0);
y3 := w3+(q,0);

x4 := w3+(-r/2,0);
y4 := w4+(q,0);

x5 := w4+(-r/2,0);
y5 := w5+(q,0);

x6 := w5+(-r/2,0);
y6 := w5+(-a,0)+(q,0);

% The arrows.
drawarrow x1..y1;
drawarrow x2..y2;
drawarrow x3..y3;
drawarrow x4..y4;
drawarrow x5..y5;
drawarrow x6..y6;

label.urt(btex $\scriptstyle z_1$ etex, x1);
label.urt(btex $\scriptstyle z_2$ etex, x2);
label.urt(btex $\scriptstyle z_3$ etex, x3);
label.urt(btex $\scriptstyle z_4$ etex, x4);
label.urt(btex $\scriptstyle z_5$ etex, x5);
label.urt(btex $\scriptstyle z_6$ etex, x6);

pickup pencircle scaled penPT;
draw x1;
draw x2;
draw x3;
draw x4;
draw x5;
draw x6;

% Ellipsis to the left.
pickup pencircle scaled penDOT;
draw y6+(-sp,0);
draw y6+(-sp-spp,0);
draw y6+(-sp-2spp,0);
draw y6+(-sp-3spp,0);

endfig;
end
