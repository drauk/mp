% tex/conc/mp/connmap2.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/connmap2.mp 1bcf704d45 2015-05-09 09:51:47Z Alan U. Kennington $
% Set of maps for a connection.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[], p, q, v;

d := 1.3cm;
r := d/2;
rr := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
a := 3.5cm;
b := 2.5cm;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $T_{\pi_P(z)}(M)$ etex, w0+(-ll,0));
label.rt(btex $M$ etex, w1+(ll,0));
% label.lft(btex $T_z(P)$ etex, w2+(-r,0)rotated-10);
label.lft(btex $T_z(P)$ etex, w2+(-ll,0));
label.rt(btex $P$ etex, w3+(ll,0));

% Curved arrows.
p := w2+(0,-rr) rotated-45;
q := w0+(0,rr) rotated45;
v := 0.5[p,q]+(-b/6,0);
drawarrow q..v..p;
label.lft(btex $\konZ_z$ etex, v);

% Straight arrows.
p := w1+(-rr,0);
q := w0+(rr,0);
v := 0.5[p,q];
drawarrow p--q;
label.bot(btex $X$ etex, v);

p := w3+(-rr,0);
q := w2+(rr,0);
v := 0.5[p,q];
drawarrow p--q;
label.top(btex $\lift_\konZ(X)$ etex, v);

p := w3+(0,-rr);
q := w1+(0,rr);
v := 0.5[p,q];
drawarrow p--q;
label.rt(btex $\pi_P$ etex, v);

p := w2+(0,-rr);
q := w0+(0,rr);
v := 0.5[p,q];
drawarrow p--q;
label.rt(btex $(d\pi_P)_z$ etex, v);

% Points inside sets.
pickup pencircle scaled penPT;
p := w1 + (0.74r,0);
draw p;
label.lft(btex $\pi_P(z)$ etex, p);

p := w3 + (r/4,0);
draw p;
label.lft(btex $z$ etex, p);

endfig;
end
