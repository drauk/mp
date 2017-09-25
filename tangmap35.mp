% tex/conc/mp/tangmap35.mp   2015-11-23   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap35.mp 51e1e6da89 2015-11-23 02:34:44Z Alan U. Kennington $
% Covariant double differential of a map between two manifolds.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];
color col[];

d := 1.25cm;
r := d/2;
q := r+4pt;
qq := q+2pt;
qqq := q+4pt;
qqqq := qq;
qT := r;
a := 3.3cm;
aa := a;
b := 2.1cm;

penLN := 0.5bp;
penPT := 2.5bp;

sepA := 2pt;

% Chart parameters.
unitX := 0.18cm;
np := 2;
nq := 2;
xt := 0.45;
col0 := 0.7 white;
qX := (nq+xt) * unitX;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);

% The charts.
w10 := w0 + (-aa,0);
w11 := w1 + (aa,0);
w12 := w2 + (-aa,0);
w13 := w3 + (aa,0);
w14 := w4 + (-aa,0);
w15 := w5 + (aa,0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

draw fullcircle scaled d shifted w12;
draw fullcircle scaled d shifted w13;

% Labels for the circles.
label.lft(btex $M_1$ etex, w0-(qT,0));
label.rt(btex $M_2$ etex, w1+(qT,0));
label.lft(btex $T(M_1)$ etex, w2-(qT,0));
label.rt(btex $T(M_2)$ etex, w3+(qT,0));
label.lft(btex $T(T(M_1))$ etex, w4-(qT,0));
label.rt(btex $T(T(M_2))$ etex, w5+(qT,0));

label.bot(btex $T^{2,0}(M_1)$ etex, w12+(0,-qT));
label.bot(btex $T(M_2)$ etex, w13+(0,-qT));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside circles.
w20 := w0+(r/8,0);
w21 := w1+(r/2,0);
w22 := w2+(r/8,0);
w23 := w3+(0.75r,0);
w24 := w4+(r/8,0);
w25 := w5+(0.85r,0);

w26 := w12+(0.5r,0);
w27 := w13+(0,-0.25r);

pickup pencircle scaled penPT;
draw w20;
draw w21;
draw w22;
draw w23;
draw w24;
draw w25;

draw w26;
draw w27;

label.lft(btex $\scriptstyle p$ etex, w20);
label.lft(btex $\scriptstyle \phi(p)$ etex, w21);
label.lft(btex $\scriptstyle z$ etex, w22);
label.lft(btex $\scriptstyle (d\phi)(z)$ etex, w23);
label.lft(btex $\scriptstyle \tilde z$ etex, w24);
label.lft(btex $\scriptstyle (d^2\!\phi)(\tilde z)$ etex, w25);

label.lft(btex $\scriptstyle z\otimes V$ etex, w26);
label.top(btex $\scriptstyle D^2\!\phi(z,V)$ etex, w27);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows for spaces.
pickup pencircle scaled penLN;
S_arrowspace(w4,w5,q,1,black);
label.top(btex \strut$d^2\phi$ etex, 0.5[w4,w5]);

S_arrowspace(w2,w3,q,1,black);
label.top(btex \strut$d\phi$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.top(btex \strut$\phi$ etex, 0.5[w0,w1]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical arrows.
pickup pencircle scaled penLN;
S_arrowspace(w2, w0, q, 1, black);
label.rt(btex \strut$\pi_1$ etex, 0.5[w0,w2]+(0,sepA));

S_arrowspace(w3, w1, q, 1, black);
label.lft(btex \strut$\pi_2$ etex, 0.5[w1,w3]+(0,sepA));

S_arrowspace(w4, w2, q, 1, black);
label.rt(btex \strut$\tilde\pi_1$ etex, 0.5[w4,w2]+(0,sepA));

S_arrowspace(w5, w3, q, 1, black);
label.lft(btex \strut$\tilde\pi_2$ etex, 0.5[w5,w3]+(0,sepA));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Diagonal arrows.
pickup pencircle scaled penLN;
S_arrowspace(w4, w12, q, 2, black);
S_tiltlabel_top(btex rise etex, 0.5[w4,w12], angle(w4-w12));

S_arrowspace(w5, w13, q, 1, black);
S_tiltlabel_top(btex fall etex, 0.5[w5,w13], angle(w13-w5));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Curve for covariant second derivative.
angS := 7;
sepS := 2qT;
sepSa := 8.5mm;
w30 := w12 + (0,q) rotated -angS;
w35 := 0.5[w4,w5] + (0,sepS);
w39 := w13 + (0,q) rotated angS;
w32 := 0.5[w30,w35] + (-sepSa,sepSa);
w37 := 0.5[w39,w35] + (sepSa,sepSa);

pickup pencircle scaled penLN;
drawarrow w30..w32...w35...w37..w39;
label.top(btex $D^2\phi$ etex, w35);

endfig;
end
