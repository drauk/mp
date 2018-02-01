% tex/conc/mp/tangmap20.mp   2018-1-26   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap20.mp e9ad6d6cf6 2015-05-09 11:39:53Z Alan U. Kennington $
% Transition maps for tangent space of a tangent space.

input mapmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[];

d := 1.3cm;
r := d/2;
q := r * 1.1;
qq := r * 1.25;
a := 3.3cm;
b := 2.25cm;

penA := 0.5bp;
penB := 0.5bp;
penDOT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
w6 := w0+(-a,0);
w7 := w0+(-a,b);
w8 := w0+(-a,2b);

% The circles.
pickup pencircle scaled penA;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;

draw fullcircle scaled d shifted w6;
draw fullcircle scaled d shifted w7;

% Labels for the circles.
label.bot(btex $M$ etex, w0+(0,-q));
label.bot(btex $T(M)$ etex, w2+(0,-q));
label.top(btex $T_z(T(M))$ etex, w4+(0,q));
label.bot(btex $\reals^n$ etex, w1+(0,-q));
label.bot(btex $\reals^{2n}$ etex, w3+(0,-q));
label.bot(btex $\reals^n$ etex, w6+(0,-q));
label.bot(btex $\reals^{2n}$ etex, w7+(0,-q));

label.top(btex $\scriptstyle z\,=\,\tang{p,v_1,\psi_1}$ etex, w2+(0,r+10pt));
label.top(btex $\scriptstyle \phantom{z}\,=\,\tang{p,v_2,\psi_2}$ etex,
 w2+(0,r));
label.top(btex $\scriptstyle x_2\,=\,\psi_2(p)$ etex, w3+(0,r));
label.top(btex $\scriptstyle x_1\,=\,\psi_1(p)$ etex, w7+(0,r));

% Points inside circles.
pickup pencircle scaled penDOT;
draw w0+(r/8,0);
label.lft(btex $\scriptstyle p$ etex, w0+(r/8,0));

draw w1+(r/8,0);
label.lft(btex $\scriptstyle x_2$ etex, w1+(r/8,0));

draw w2+(r/8,0);
label.lft(btex $\scriptstyle z$ etex, w2+(r/8,0));

draw w3+(0.7r,0);
label.lft(btex $\scriptstyle(x_2,v_2)$ etex, w3+(0.7r,0));

draw w4+(0,0);
% label.lft(btex $\scriptstyle z$ etex, w4+(r/8,0));

draw w6+(r/8,0);
label.lft(btex $\scriptstyle x_1$ etex, w6+(r/8,0));

draw w7+(0.7r,0);
label.lft(btex $\scriptstyle(x_1,v_1)$ etex, w7+(0.7r,0));

% Horizontal arrows.
pickup pencircle scaled penA;
S_arrowspace(w2,w3,qq,1,black);
label.top(btex \strut$\psi^{(1)}_2$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,qq,1,black);
label.top(btex \strut$\psi_2$ etex, 0.5[w0,w1]);

S_arrowspace(w2,w7,qq,1,black);
label.top(btex \strut$\psi^{(1)}_1$ etex, 0.5[w2,w7]);

S_arrowspace(w0,w6,qq,1,black);
label.top(btex \strut$\psi_1$ etex, 0.5[w0,w6]);

% Special arrow and label.
w10 := w4+(1.0cm,0.0cm);
pickup pencircle scaled penB;
S_arrowspaces(w10,w4,0,0.2cm,1,black);
% label.rt(btex $\scriptstyle \phantom{=}\,\tang{z,w_1,\psi^{(1)}_1}$ etex,
%  w10+(0,5pt));
% label.rt(btex $\scriptstyle =\,\tang{z,w_2,\psi^{(1)}_2}$ etex,
%  w10+(0,-5pt));
label.rt(btex
$\tang{z,w_1,\psi^{(1)}_1}=\tang{z,w_2,\psi^{(1)}_2}$ etex, w10);

endfig;
end
