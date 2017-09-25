% tex/conc/mp/fnmap5.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fnmap5.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Generalised right inverse function.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[];

d := 1.5cm;
r := d/2;
rr := 1.2r;
gap := 0.15cm;
q := r+gap;
qq := q*1.16;
a := 2.0cm;
b := 2.2cm;
f := 1.6;
dd := gap;
ddd := 1.2gap;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w2 := w0+(-a,b);
w3 := w0+(a,b);

% The circles.
pickup pencircle scaled penLN;
draw (fullcircle scaled d) xscaled f shifted w0;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Labels for the circles.
label.lft(btex $A$ etex, w0+(-r*f-gap,0));
label.lft(btex $B$ etex, w2+(-q,0));
label.rt(btex $C$ etex, w3+(q,0));

% Points inside circles.
pickup pencircle scaled penPT;

v0 := w0+(-3rr/4,0); draw v0;
label.bot(btex \strut$x_1$ etex, v0);
v1 := w0+(-rr/4,0); draw v1;
label.bot(btex \strut$x_2$ etex, v1);
v2 := w0+(rr/4,0); draw v2;
label.bot(btex \strut$x_3$ etex, v2);
v3 := w0+(3rr/4,0); draw v3;
label.bot(btex \strut$x_4$ etex, v3);

v10 := w2+(-r/8,-r/8); draw v10;
label.lft(btex $y$ etex, v10);
v11 := w2+(r/4,r/4); draw v11;
label.ulft(btex $y'$ etex, v11+(2pt,-1.5pt));

v20 := w3;
draw v20;
label.rt(btex $z$ etex, v20);

% Horizontal arrows.
pickup pencircle scaled penLN;
S_arrowspace(w2,w3,q,1,black);
label.top(btex \strut$g\circ f\rlap{${}^{-1}$}$ etex, 0.5[w2,w3]);

% Arrows for f.
for i=0 upto 2:
    v[5+i] := v10+((2i-3)*1.8pt,0)rotated45;
    S_arrowspaces(v[i], v[5+i], dd, ddd, 1, black);
    endfor
S_arrowspaces(v3, v11, dd, ddd, 1, black);
label.llft(btex $f$ etex, 0.54[v0,v5]);

% Arrows for g.
for i=0 upto 3:
    v[5+i] := v20+((2i-3)*1.8pt,0)rotated-45;
    S_arrowspaces(v[i], v[5+i], dd, ddd, 1, black);
    endfor
label.lrt(btex $g$ etex, 0.54[v3,v8]);

endfig;
end
