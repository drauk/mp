% tex/conc/mp/map86.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/map86.mp c157bf5f68 2012-05-06 17:01:47Z Alan U. Kennington $
% Differential of a map, showing vectors and operators.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair v[], w[];
path pat[];
numeric wid[];

d := 1.0cm;
r := d/2;
q := r*1.2;
a := 3.6cm;
b := 2cm;
dcirc := 4pt;       % Circles on arrows.
penLN := 0.55pt;

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

% Put the \sigma_g loops on top.
pickup pencircle scaled penLN;
pat2 := ((-0.5,0.9)..(0,1.8)..(0.5,0.9)) scaled 1.1r;
drawarrow pat2 shifted w2;
draw fullcircle scaled dcirc shifted (w2+(0,1.8*1.1r));
label.lft(btex $\sigma_1$ etex, w2+(-0.55r,1.3r)*1.2);

pickup pencircle scaled penLN;
pat2 := ((-0.5,0.9)..(0,1.8)..(0.5,0.9)) scaled 1.1r;
drawarrow pat2 shifted w3;
draw fullcircle scaled dcirc shifted (w3+(0,1.8*1.1r));
label.rt(btex $\sigma_2$ etex, w3+(0.55r,1.3r)*1.2);

% Labels for the circles.
label.lft(btex $X_1$ etex, w0+(-q,0));
label.rt(btex $X_2$ etex, w1+(q,0));
label.lft(btex $G_1$ etex, w2+(-q,0));
label.rt(btex $G_2$ etex, w3+(q,0));

% Horizontal arrows.
pickup pencircle scaled penLN;
S_arrowspace(w2,w3,q,1,black);
label.top(btex \strut$\hatphi$ etex, 0.5[w2,w3]);

S_arrowspace(w0,w1,q,1,black);
label.top(btex \strut$\phi$ etex, 0.5[w0,w1]);

% Vertical arrows.
S_arrowspace(w0, w2, q, 2, black);
v0 := 0.5[w2,w0];
draw fullcircle scaled dcirc shifted v0;
label.lft(btex $\mu_1$ etex, v0+(-dcirc/2,0));

S_arrowspace(w1, w3, q, 2, black);
v0 := 0.5[w1,w3];
draw fullcircle scaled dcirc shifted v0;
label.rt(btex $\mu_2$ etex, v0+(dcirc/2,0));

endfig;
end
