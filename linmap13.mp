% tex/conc/mp/linmap13.mp   2013-9-10   Alan U. Kennington.
% $Id: tex/conc/mp/linmap13.mp 09b78d3d62 2015-05-09 12:19:21Z Alan U. Kennington $
% Maps and spaces for an isomorphism for the dual of antisymmetric multilinear
% functions.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[], p, q, v;
color colU;
path pat;

d := 1.3cm;
r := d/2;
rr := r*1.15;      % Distance for arrows.
ll := r*1.1;       % Distance for labels.
lll := r*1.05;     % Distance for labels.
a := 3.25cm;
b := 2.5cm;
aa := a;
penLN := 0.5bp;
penPT := 2.5bp;
colU := 0.92white;
dU := -1.4pt;

% Centres of circles.
w0 := (0,0);
w1 := w0+(0,b);
w2 := w0+(a,0);
w3 := w1+(a,0);
w4 := w2+(aa,0);
w5 := w3+(aa,0);

% The circles.
pickup pencircle scaled penLN;
fill fullcircle scaled d shifted w0 withcolor colU;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

fill fullcircle scaled d shifted w2 withcolor colU;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Labels for the circles.
label.bot(btex\strut $U=\Lamb mV$ etex, w0+(0,-ll));
label.top(btex\strut $\mlin_m(V)$ etex, w1+(0,lll));
label.bot(btex\strut $\perpsp{U}=\perpspX{(\Lamb mV)}$ etex, w2+(0,-ll));
label.top(btex\strut $\botimesr^mV$ etex, w3+(0,lll));
label.bot(btex\strut $U^*=\Wedg mV$ etex, w4+(0,-ll));
label.top(btex\strut $\botimesr^mV/\perpspX{(\Lamb mV)}$ etex,
 w5+(0,lll));

% Arrows.
S_arrowspace(w0, w1, rr, 1, black);
label.lft(btex $\id_U$ etex, 0.5[w0,w1]);

S_arrowspace(w2, w3, rr, 1, black);
label.rt(btex $\id_{\perpsp{U}}$ etex, 0.5[w2,w3]);

S_arrowspace(w4, w5, rr, 1, black);
label.rt(btex $\psi$ etex, 0.5[w4,w5]);

S_arrowspace(w3, w5, rr, 1, black);
label.top(btex $\theta$ etex, 0.5[w3,w5]);

% S_arrowspace(w0, w3, rr, 1, black);
% label.lrt(btex $\theta\circ\id_U$ etex, 0.5[w0,w3]);

% Points inside sets.
pickup pencircle scaled penPT;
p := w0 + (3pt,0);
draw p;
label.lft(btex $f$ etex, p);

pickup pencircle scaled penPT;
p := w4 + (2pt,0);
draw p;
label.lft(btex $\phi'$ etex, p);

pickup pencircle scaled penPT;
p := w5 + (0,-1pt);
draw p;
label.bot(btex $\perpsp{U}$ etex, p+(0,0));
q := w5 + (-r/2,2pt);
draw q;
label.top(btex\strut $\scriptstyle\phi+\perpsp{U}$ etex, q+(r/4+2pt,-2.5pt));

% Subspace of \mlin_m(V;W).
pickup pencircle scaled penLN;
p := w1;
pat := fullcircle scaled (r*1.0) shifted p;
fill pat withcolor colU;
draw pat;
label(btex\strut $U$ etex, p+(0.5bp,dU));

% Subspace of \mlin_m(V;W)^*.
pickup pencircle scaled penLN;
p := w3;
q := w3+(-0.65r,0);
pat := fullcircle scaled (r*1.0) shifted p;
fill pat withcolor colU;
draw pat;
label(btex $\strut\perpsp{U}$ etex, p+(0.5bp,dU));

pickup pencircle scaled penPT;
draw q;
label.top(btex $\phi$ etex, q+(0,0));

% Indicate dimensionality of linear spaces in the finite-dimensional case.
thet := 50;
thetb := 30;
label.lft(btex\strut $\Comb nm$ etex, w0+(-ll,0)rotated thetb);
label.lft(btex\strut $n^m$ etex, w1+(-ll,0)rotated thet);
label.lft(btex\strut $n^m-\Comb nm$ etex, w2+(-ll,0)rotated thetb);
label.lft(btex\strut $n^m$ etex, w3+(-ll,0)rotated thet);
label.lft(btex\strut $\Comb nm$ etex, w4+(-ll,0)rotated thetb);
label.lft(btex\strut $\Comb nm$ etex, w5+(-ll,0)rotated thet);

endfig;
end
