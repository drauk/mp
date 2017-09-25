% tex/conc/mp/connmap3.mp   2016-7-4   Alan U. Kennington.
% $Id: tex/conc/mp/connmap3.mp 3c0ab0929f 2016-07-04 07:17:59Z Alan U. Kennington $
% Set of maps and sets for a connection.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[], p, q, v;
path pat;

d := 1.3cm;
r := d/2;
rr := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
a := 3.5cm;
b := 2.5cm;
e := 0.25cm;       % Size of circle on arrow.
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
w6 := w0+(1.7a,1.5b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;
draw fullcircle scaled d shifted w6;

% Labels for the circles.
label.lft(btex $T_{\pi(z)}(M)$ etex, w0+(-ll,0));
label.rt(btex $M$ etex, w1+(ll,0));
% label.lft(btex $T_z(P)$ etex, w2+(-r,0)rotated-10);
label.lft(btex $T_z(P)$ etex, w2+(-r,0));
% label.rt(btex $P$ etex, w3+(ll,0)rotated-30);
label.rt(btex $P$ etex, w3+(ll,0));
label.lft(btex $T_{zg}(P)$ etex, w4+(-ll,0));
% label.rt(btex $P$ etex, w5+(ll,0)rotated30);
label.rt(btex $P$ etex, w5+(ll,0));
label.rt(btex $G$ etex, w6+(ll,0));

pickup pencircle scaled penLN;
% Curved arrows.
p := w2+(0,-rr) rotated-45;
q := w0+(0,rr) rotated45;
v := 0.5[p,q]+(-b/6,0);
drawarrow q..v..p;
label.rt(btex $\konZ_z$ etex, v);

p := w4+(0,-rr) rotated-60;
q := w0+(0,rr) rotated60;
v := 0.5[p,q]+(-b*0.55,0);
drawarrow q..v..p;
label.lft(btex $\konZ_{zg}$ etex, v);

p := w4+(0,-rr) rotated70;
q := w0+(0,rr) rotated-70;
v := 0.5[p,q]+(b*0.71,0);
pat := p..v..q;
drawarrow pat withcolor 0.5white;
label.lft(btex $(d\pi)_{zg}$ etex, point 1.2 of pat);

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
label.rt(btex $\pi$ etex, v);

p := w5+(0,-rr);
q := w3+(0,rr);
v := 0.5[p,q];
drawarrow q--p;
label.rt(btex $R_g$ etex, v);

p := w2+(0,-rr);
q := w0+(0,rr);
v := 0.5[p,q];
drawarrow p--q;
label.rt(btex $(d\pi)_z$ etex, v);

p := w4+(0,-rr);
q := w2+(0,rr);
v := 0.5[p,q];
drawarrow q--p;
label.rt(btex $(dR_g)_z$ etex, v);

% Circled arrows.
p := w6+(w5-w6)/length(w5-w6)*rr;
q := w5-(w5-w6)/length(w5-w6)*rr;
v := 0.5[p,q];
drawarrow p--q;
% pickup pencircle scaled 0.7pt;
draw fullcircle scaled e shifted v;
% pickup pencircle;

p := w6+(w3-w6)/length(w3-w6)*rr;
q := w3-(w3-w6)/length(w3-w6)*rr;
v := 0.5[p,q];
drawarrow p--q;
% pickup pencircle scaled 0.7pt;
draw fullcircle scaled e shifted v;
% pickup pencircle;

% Points inside sets.
pickup pencircle scaled penPT;
p := w1 + (0.74r,0);
draw p;
label.lft(btex $\pi(z)$ etex, p);

p := w3 + (r/4,0);
draw p;
label.lft(btex $z$ etex, p);

p := w5 + (r/4,0);
draw p;
label.lft(btex $zg$ etex, p);

p := w6 + (r/4,0);
draw p;
label.lft(btex $g$ etex, p);

p := w0 + (r*0.25,0);
draw p;
label.lft(btex $v$ etex, p);

p := w2 + (r*0.6,0);
draw p;
label.lft(btex $\konZ_z(v)$ etex, p);

p := w4 + (r*0.8,0);
draw p;
label.lft(btex $\konZ_{zg}(v)$ etex, p);

endfig;
end
