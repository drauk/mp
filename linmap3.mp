% tex/conc/mp/linmap3.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/linmap3.mp 09b78d3d62 2015-05-09 12:19:21Z Alan U. Kennington $
% Conversion of bilinear map to matrix multiplication.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[], p, pp, q, v;
path pat;
d := 1.78cm;
r := d/2;
rr := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
lll := r;
a := d + 4.1cm;
b := d + 1.4cm;

hh := 11pt;
hhh := 0.5hh;
ww := 2pt;
penPT := 2.5pt;
penPTA := 2.5pt;
penARROW := 0.5pt;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,b/2);
w2 := w0+(0,b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;

% Labels for the circles.
label.lft(btex $V\times V$ etex, w0+(-ll,0));
label.bot(btex linear space etex, w0+(0,-lll));

label.rt(btex $K$ etex, w1+(ll,0));
label.bot(btex field etex, w1+(0,-lll));

label.lft(btex $K^n\times K^n$ etex, w2+(-ll,0));
label.top(btex tuple space etex, w2+(0,lll));

% Straight arrows.
p := w1+(-rr,0);
q := w0+(rr,0);
v := 0.5[p,q];
S_arrowspaces(w0,w1,rr,rr,1,black);
S_tiltlabel_bot(btex $\beta:V\times V\to K$ etex, 0.5[w0,w1], angle(w1-w0))
S_tiltlabel_top(btex \strut bilinear map etex, 0.5[w0,w1], angle(w1-w0))

p := w1+(-rr,0);
q := w2+(rr,0);
v := 0.5[p,q];
S_arrowspaces(w2,w1,rr,rr,1,black);
S_tiltlabel_bot(btex bilinear form etex, 0.5[w2,w1], angle(w1-w2))
S_tiltlabel_top(btex $\sum_{i,j=1}^n b_{ij}v_iw_j$ etex,
 0.5[w2,w1], angle(w1-w2))

p := w2+(0,-rr);
q := w0+(0,rr);
v := 0.5[p,q];
drawarrow q--p;
label.rt(btex $\kappa_V:V\to K^n$ etex, v);
label.lft(btex component etex, v+(-ww,hhh));
label.lft(btex map etex, v+(-ww,-hhh));

% Points inside sets.
p := w0 + (0,-0.2r);
pickup pencircle scaled penPT;
draw p;
pickup pencircle scaled penARROW;
w10 := p+(0.7r,0)rotated10;
w11 := p+(0.8r,0)rotated135;
drawarrow p--w10;
drawarrow p--w11;
label.top(btex $w$ etex, w10);
label.urt(btex $v$ etex, w11);

p := w2 + (-0.10r,0.10r);
pp := w2 + (0.10r,-0.10r);
pickup pencircle scaled penPTA;
draw p;
draw pp;
label.top(btex \strut$(v_i)_{i=1}^n$ etex, p);
label.bot(btex \strut$(w_j)_{j=1}^m$ etex, pp);

p := w1 + (0,-0.2r);
pickup pencircle scaled penPT;
draw p;
label.top(btex \strut$\beta(v,w)$ etex, p);

endfig;
end
