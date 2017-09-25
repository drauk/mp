% tex/conc/mp/tangmap27.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap27.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Invariance of tangent vector under a pseudogroup of diffeomorphisms.

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
label.lft(btex $\curves_1(\reals^n)$ etex, w0+(-ll,0));
label.rt(btex $\curves_1(\reals^n)$ etex, w1+(ll,0));
% label.lft(btex $T_{\gamma(0)}(\reals^n)$ etex, w2+(-ll,0));
% label.rt(btex $T_{\tilde\gamma(0)}(\reals^n)$ etex, w3+(ll,0));
label.lft(btex $T(\reals^n)$ etex, w2+(-ll,0));
label.rt(btex $T(\reals^n)$ etex, w3+(ll,0));

% Straight arrows.
pickup pencircle scaled penLN;
p := w1+(-rr,0);
q := w0+(rr,0);
v := 0.5[p,q];
drawarrow q--p;
label.bot(btex $\phi$ etex, v);

p := w3+(-rr,0);
q := w2+(rr,0);
v := 0.5[p,q];
drawarrow q--p;
label.top(btex $\phi_*$ etex, v);

p := w3+(0,-rr);
q := w1+(0,rr);
v := 0.5[p,q];
drawarrow q--p;
label.rt(btex $\displaystyle\frac{\partial}{\partial t}\restrict{t=0}$ etex, v);

p := w2+(0,-rr);
q := w0+(0,rr);
v := 0.5[p,q];
drawarrow q--p;
label.lft(btex $\displaystyle\frac{\partial}{\partial t}\restrict{t=0}$ etex,
 v);

% Points inside sets.
pickup pencircle scaled penPT;

p := w0 + (0.1r,0);
draw p;
label.lft(btex $\gamma$ etex, p);

p := w2 + (0.65r,0);
draw p;
label.lft(btex $\gamma'(0)$ etex, p);

p := w1 + (0.1r,0);
draw p;
label.lft(btex $\tilde\gamma$ etex, p);

p := w3 + (0.65r,0);
draw p;
label.lft(btex $\tilde\gamma'(0)$ etex, p);

endfig;
end
