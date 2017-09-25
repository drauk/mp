% tex/conc/mp/prodmap1.mp   2013-9-1   Alan U. Kennington.
% $Id: tex/conc/mp/prodmap1.mp aed07a28be 2015-05-09 12:57:51Z Alan U. Kennington $
% Set of maps for homeomorphism for subset for product topology.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[], p, q, v;
path pat;

d := 1.3cm;
r := d/2;
rr := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
a := 3.5cm;
b := 3.5cm;
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
label.lft(btex $B$ etex, w0+(-ll,0));
label.rt(btex $A\times B$ etex, w1+(ll,0));
% label.lft(btex $T_z(P)$ etex, w2+(-r,0)rotated-10);
label.lft(btex $X$ etex, w2+(-ll,0));
label.rt(btex $A$ etex, w3+(ll,0));

% Straight arrows.
p := w2+(w1-w2)/length(w1-w2)*rr;
q := w1+(w2-w1)/length(w1-w2)*rr;
v := 0.5[p,q];
drawarrow p--q;
label.urt(btex $f\times g:X\approx A\times B$ etex, v);

p := w3+(-rr,0);
q := w2+(rr,0);
v := 0.5[p,q];
drawarrow q--p;
label.top(btex $f$ etex, v);

p := w2+(0,-rr);
q := w0+(0,rr);
v := 0.5[p,q];
drawarrow p--q;
label.lft(btex $g$ etex, v);

% Points inside sets.
p := w3 + (-r/4,0);
pickup pencircle scaled penPT;
draw p;
label.rt(btex $a$ etex, p);

% Subset of AxB.
offs := 0.41;
pickup pencircle scaled penLN;
% p := w1 + (r/4,-r/4);
p := w1;
pat := fullcircle scaled (r*0.8) shifted p;
fill pat withcolor 0.9white;
draw pat;

p := w1 + (-1.5r,-r);
q := w1 + (-r*offs,-r*offs);
pickup pencircle scaled penLN;
drawarrow p{dir0}..{dir45}q withcolor0.5white;
label.lft(btex $\{a\}\times B$ etex, p);

% Subset of X.
pickup pencircle scaled penLN;
% p := w2 + (-r/4,r/4);
p := w2;
pat := fullcircle scaled (r*0.8) shifted p;
fill pat withcolor 0.9white;
draw pat;

p := w2 + (-1.5r,-r);
q := w2 + (-r*offs,-r*offs);
pickup pencircle scaled penLN;
drawarrow p{dir0}..{dir45}q withcolor0.5white;
label.lft(btex $f^{-1}\left(\{a\}\right)$ etex, p);

endfig;
end
