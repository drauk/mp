% tex/conc/mp/connmap11.mp   2015-10-11   Alan U. Kennington.
% $Id: tex/conc/mp/connmap11.mp bc60f926fc 2015-10-11 02:16:15Z Alan U. Kennington $
% Right action of structure group on a principal fibre bundle.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[], p, q, v, qq;
path pat;

d := 1.95cm;
r := d/2;
rr := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
a := 4.5cm;
b := 2.5cm;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

% Labels for the circles.
label.bot(btex $T(P)$ etex, w0+(0,-ll));
label.bot(btex $P$ etex, w1+(0,-ll));

% Straight arrows.
p := w0+(rr,0);
q := w1+(-rr,0);
v := 0.5[p,q];
drawarrow reverse (p--q);
label.bot(btex $\lift_\konZ(X)$ etex, v);

% Points inside sets.
pickup pencircle scaled penPT;
p := w0 + (-0.47r,0.2r);
draw p;
label.bot(btex $\konZ_{zg}(v)$ etex, p);

q := w0 + (0.5r,0.2r);
draw q;
label.bot(btex $\konZ_z(v)$ etex, q);

qq := w0+(0,1.3r);
pickup pencircle scaled penLN;
drawarrow reverse ((p+(-0.1r,0.1r))..qq..(q+(0.1r,0.1r)));
label.top(btex $(dR_g)_z$ etex, qq);

pickup pencircle scaled penPT;
p := w1 + (-0.5r,0);
draw p;
label.bot(btex $zg$ etex, p);

q := w1 + (0.5r,0);
draw q;
label.bot(btex $z$ etex, q);

qq := w1+(0,1.3r);
pickup pencircle scaled penLN;
drawarrow reverse ((p+(-0.1r,0.1r))..qq..(q+(0.1r,0.1r)));
label.top(btex $R_g$ etex, qq);

endfig;
end
