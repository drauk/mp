% tex/conc/mp/topomap1.mp   2016-3-23   Alan U. Kennington.
% $Id: tex/conc/mp/topomap1.mp ec478f018e 2016-03-23 06:29:27Z Alan U. Kennington $
% Reparametrisation of rectifiable curve.

input mapmax.mp

beginfig(1);
pair w[];

d := 2.0cm;
r := d/2;
a := 4.5cm;
b := 0.8cm;
c := 1.0cm;
gap := 2.4mm;
rr := r+gap;
rrr := gap;
spB := 4pt;

penA := 0.5bp;
penC := 0.5bp;
penINT := 1.0bp;
penCURVE := 1.0bp;

w0 := (0,0);    % Centre of circle.
w1 := (-a,b);   % Interval I.
w2 := (-a,-b);  % Interval J.
w11 := w1 + (c,0);
w12 := w2 + (c,0);

% The circle.
pickup pencircle scaled penC;
draw fullcircle scaled d shifted w0;

% Label for the circle.
label.rt(btex $M$ etex, w0+(r+1.5mm,0));

% The arrows.
pickup pencircle scaled penA;
S_arrowspaces(w11,w0,rrr,rr,1,black);
S_arrowspaces(w12,w0,rrr,rr,1,black);
S_arrowspace(w1,w2,spB,2,black);

% Labels on the arrows.
label.top(btex \strut$\gamma_1$ etex, 0.4[w11,w0]);
label.bot(btex \strut$\gamma_1\circ\beta_1$ etex, 0.4[w12,w0]+(0,-3pt));
label.lft(btex \strut$\beta_1$ etex, 0.5[w1,w2]+(-2pt,0));

% The intervals.
pickup pencircle scaled penINT;
draw (w1+(-c,0))--(w1+(c,0));
draw (w2+(-c,0))--(w2+(c,0));
label.top(btex \strut$I_1$ etex, w1);
label.bot(btex \strut$I$ etex, w2);

% The curve's path.
pickup pencircle scaled penCURVE;
draw ((-0.85,-0.1)..(-0.6,-0.15)..(-0.4,0.15)..(0,-0.3)
     ..(0.4,0.2)..(0.85,0.18))
     scaled r withcolor 0.65white;

endfig;
end
