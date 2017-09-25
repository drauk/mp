% tex/conc/mp/tangmap19.mp   2012-7-19   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap19.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Action of a diffeomorphism on differential operators.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair v[], w[], x[], y[];

d := 1.05cm;
r := d/2;
q := r*1.2;
a := 4.5cm;
b := 1.6cm;
penPT := 2.5bp;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Labels for the circles.
label.lft(btex $\Omega$ etex, w0-(q,0));
label.rt(btex $\tilde\Omega$ etex, w1+(q,0));
label.lft(btex $C^{s+2}(\Omega)$ etex, w2-(q,0));
label.rt(btex $C^{s+2}(\tilde\Omega)$ etex, w3+(q,0));
label.lft(btex $\ddd^s_{n,2}(\Omega)$ etex, w4-(q,0));
label.rt(btex $\ddd^s_{n,2}(\tilde\Omega)$ etex, w5+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;
w10 := w0+(r/8,0);
draw w10;
label.lft(btex $\scriptstyle x$ etex, w10);

w10 := w1+(r/2,0);
draw w10;
label.lft(btex $\scriptstyle \phi(x)$ etex, w10);

w10 := w2+(r/2,0);
draw w10;
label.lft(btex $\scriptstyle f\circ\phi$ etex, w10);

w10 := w3+(r/8,0);
draw w10;
label.lft(btex $\scriptstyle f$ etex, w10);

w10 := w4+(r/2,0);
draw w10;
label.lft(btex $\scriptstyle L^s_{a,b}$ etex, w10);

w10 := w5+(r/2,0);
draw w10;
label.lft(btex $\scriptstyle L^s_{\tilde a,\tilde b}$ etex, w10);

% Horizontal arrows.
pickup pencircle scaled penLN;
S_arrowspace(w4,w5,q,1,black);
label.top(btex \strut$\hat T^{s+2}_\phi$ etex, 0.5[w4,w5]);
label.bot(btex \strut$\scriptstyle \hat T^{s+2}_\phi( L^s_{a,b}) \;=\;
L^s_{\tilde a,\tilde b}$ etex, 0.5[w4,w5]);

S_arrowspace(w2,w3,q,2,black);
label.top(btex \strut$T^{s+2}_\phi$ etex, 0.5[w2,w3]);
label.bot(btex \strut$\scriptstyle f\circ\phi \;=\; T^{s+2}_\phi(f)$ etex,
0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.top(btex \strut$\phi$ etex, 0.5[w0,w1]);

endfig;
end
