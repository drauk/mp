% tex/conc/mp/arrow10.mp   2015-6-7   Alan U. Kennington.
% $Id: tex/conc/mp/arrow10.mp eda849a8c1 2015-06-08 09:49:14Z Alan U. Kennington $
% Row and column matrix maps.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

a := 2.7cm;
b := 2.0cm;
q := 1.2cm;
qq := 0cm;
hh := 35pt;
dd := 0.50cm;
ddd := 1.395cm;
vv := 12.5pt;

w0 := (0,0);
w1 := (0,b);
w2 := (-a,b);
w3 := (a,b);

% The labels for the spaces.
label(btex $(v_1,v_2,\dots v_n)$ etex, w1);

label.lft(btex $\left[\matrix{v_1\cr v_2\cr \vdots\cr v_n\cr}\right]$ etex, w2);

label.rt(btex $\left[\matrix{v_1&v_2&\ldots&v_n\cr}\right]$ etex, w3);

% The arrows.
S_arrowspaces(w1,w2,q,qq,1,black);
S_arrowspaces(w1,w3,q,qq,1,black);

% The arrow labels.
label.top(btex $\phi\rlap{${}_c$}$ etex, 0.5[w1+(-q,0),w2]);
label.top(btex $\phi_r$ etex, 0.5[w1+(q,0),w3]);

% Labels for the row and column matrices.
label(btex tuple etex, w1+(0,-hh+vv-1.5pt));
label(btex vector etex, w1+(0,-hh));
label(btex in $K^n$ etex, w1+(0,-hh-vv));

label(btex column matrix etex, w2+(-dd,-hh));
label(btex in $M_{n,1}(K)$ etex, w2+(-dd,-hh-vv));

label(btex row matrix etex, w3+(ddd,-hh));
label(btex in $M_{1,n}(K)$ etex, w3+(ddd,-hh-vv));

endfig;
end
