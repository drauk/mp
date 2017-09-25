% tex/conc/mp/linmap2.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/linmap2.mp 09b78d3d62 2015-05-09 12:19:21Z Alan U. Kennington $
% Conversion of linear map to matrix multiplication.

verbatimtex
\input akmath
etex

beginfig(1);
pair w[], p, q, v;
path pat;
d := 1.72cm;
r := d/2;
rr := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
lll := r;
a := d + 4.1cm;
b := d + 1.4cm;

hh := 11pt;
hhh := 0.5hh;
ww := 2pt;
tha := 2.5bp;
thaa := 2.5bp;
thb := 0.5bp;
penLN := 0.5bp;

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
label.lft(btex $V$ etex, w0+(-ll,0));
label.bot(btex linear space etex, w0+(0,-lll));

label.rt(btex $W$ etex, w1+(ll,0));
label.bot(btex linear space etex, w1+(0,-lll));

label.lft(btex $K^n$ etex, w2+(-ll,0));
label.top(btex tuple space etex, w2+(0,lll));

label.rt(btex $K^m$ etex, w3+(ll,0));
label.top(btex tuple space etex, w3+(0,lll));

% Straight arrows.
p := w1+(-rr,0);
q := w0+(rr,0);
v := 0.5[p,q];
drawarrow q--p;
label.top(btex $\phi:V\to W$ etex, v);
label.bot(btex \strut linear map etex, v);

p := w3+(-rr,0);
q := w2+(rr,0);
v := 0.5[p,q];
drawarrow q--p;
label.bot(btex $w_i=\sum_{j=1}^n \alpha_{ij}v_j$ etex, v);
label.top(btex \strut matrix multiplication etex, v);

p := w3+(0,-rr);
q := w1+(0,rr);
v := 0.5[p,q];
drawarrow q--p;
label.lft(btex $\kappa_W:W\to K^m$ etex, v);
label.rt(btex component etex, v+(ww,hhh));
label.rt(btex map etex, v+(ww,-hhh));

p := w2+(0,-rr);
q := w0+(0,rr);
v := 0.5[p,q];
drawarrow q--p;
label.rt(btex $\kappa_V:V\to K^n$ etex, v);
label.lft(btex component etex, v+(-ww,hhh));
label.lft(btex map etex, v+(-ww,-hhh));

% Points inside sets.
p := w0 + (0,0);
pickup pencircle scaled tha;
draw p;
pickup pencircle scaled thb;
drawarrow p--p+(0.7r,0)rotated10;
drawarrow p--p+(0.9r,0)rotated40;
drawarrow p--p+(0.6r,0)rotated75;
drawarrow p--p+(0.7r,0)rotated135;
label.bot(btex \strut$(e_j)_{j=1}^n$ etex, p);

p := w2 + (0,-0.35r);
pickup pencircle scaled thaa;
draw p;
label.top(btex \strut$(v_j)_{j=1}^n$ etex, p);

p := w1 + (0,0);
pickup pencircle scaled tha;
draw p;
pickup pencircle scaled thb;
drawarrow p--p+(0.7r,0)rotated30;
drawarrow p--p+(0.9r,0)rotated50;
drawarrow p--p+(0.6r,0)rotated75;
drawarrow p--p+(0.7r,0)rotated115;
drawarrow p--p+(0.9r,0)rotated165;
label.bot(btex \strut$(f_i)_{i=1}^m$ etex, p);

p := w3 + (0,-0.35r);
pickup pencircle scaled thaa;
draw p;
label.top(btex \strut$(w_i)_{i=1}^m$ etex, p);

endfig;
end
