% tex/conc/mp/tangmap24.mp   2017-7-1   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap24.mp e42fe54375 2017-06-30 18:56:08Z Alan U. Kennington $
% Maps between 4 spaces for a tangent bundle.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[];
path pat[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 2.5cm;
b := 2.5cm;
qq := 1.4 r;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
w6 := w0+(2a,1.5b);

bb := 0.03 b;
w7 := w0+(1.5a,1.5b-bb);
w8 := w0+(1.5a,1.5b+bb);

dd := 50;
w10 := w3 + (qq,0) rotated dd;
w11 := w5 + (qq,0) rotated -dd;
w12 := w6 + (-qq,0);
w9 := 0.5[0.5[w7,w8],w12];

pickup pencircle scaled penLN;
drawarrow w10{dir dd}..w7..{dir0}w9--w12;
drawarrow w11{dir -dd}..w8..{dir0}w9--w12;

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w5;
draw fullcircle scaled d shifted w6;

% Subsets.
S_subset(w2, d, 2.1, -0.5, 0.9, 0);
S_subset(w4, d, 2.1, -0.5, 0.9, 0);

% Coordinates for ends of arrows.
v0 := 0.5[w4,w5];
v3 := 0.5[w2,w0];
v4 := 0.5[w4,w2];
v5 := 0.5[w2,w3];

% The arrows.
S_arrowspace(w4,w2,qq,1,black);
S_arrowspace(w4,w5,qq,1,black);
S_arrowspace(w4,w3,qq,1,black);
S_arrowspace(w2,w3,qq,1,black);

% Labels on the arrows.
% label.top(btex $\phi_\psi$ etex, v0);
% label.bot(btex $=\Phi(\psi)$ etex, v0);
label.top(btex $\Phi(\psi)$ etex, v0);
label.lft(btex $\pi$ etex, v4);
label.bot(btex $\psi$ etex, v5);

% Labels for the circles.
label.lft(btex $\Domain(\psi)\subseteq M$ etex, w2-(q,0));
label.lft(btex $\pi^{-1}(\Domain(\psi))\subseteq T(M)$ etex, w4-(q,0));
aaa := 0;
qqq := 0.8 q;
label.rt(btex $\reals^n$ etex, w3+(qqq,0) rotated-aaa);
label.rt(btex $\reals^n$ etex, w5+(qqq,0) rotated aaa);
label.rt(btex $\reals^{2n}$ etex, w6+(qqq,0));
label.lft(btex $Q_{n,n}$ etex, w9+(-12pt,1pt));
% label(btex $\psi\circ\pi$ etex rotated-45, 0.5[w3,w4]+(8pt,0)rotated-135);
label(btex $\psi\circ\pi$ etex rotated-45, 0.5[w3,w4]+(-8pt,0)rotated-135);

% The charts on the tangent bundle total space.
pickup pencircle scaled penLN;
qa := q * 1.3;
v8 := w4 + (q*1.3,0) rotated 41;
v9 := w4 + (q,0) rotated 43;
v10 := w5 + (0,qa);
v11 := w5 + (0,qa) rotated -20;
v12 := w6 + (q,0) rotated 120;
pat1 := v9..v8..v10..v11..v12;
drawarrow pat1;
v13 := point 3.7 of pat1;
% label.urt(btex $Q_{n,n}\circ((\psi\circ\pi)\times\phi_\psi)$ etex, v13);
label.urt(btex $Q_{n,n}\circ((\psi\circ\pi)\times\Phi(\psi))$ etex, v13);

endfig;
end
