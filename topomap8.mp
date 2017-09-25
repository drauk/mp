% tex/conc/mp/topomap8.mp   2016-3-9   Alan U. Kennington.
% $Id: tex/conc/mp/topomap8.mp 432677c1fe 2016-03-08 15:47:25Z Alan U. Kennington $
% Re-reparametrisation of curves to use open-interval domains.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

d := 2.0cm;
r := d/2;
a := 6cm;
b := 1.2cm;
c := 0.5cm;
gap := 2.4mm;
gapp := 2pt;
rr := r+gap;
rrr := gap;
spB := 4pt;
spC := 30bp;
spD := 7bp;

w0 := (0,0);        % Centre of circle.
w1 := (-a,b);       % Interval I_1.
w2 := (-a,-b);      % Interval I_2.
w3 := (-a,0);       % Interval I.
w4 := (-a-2c-spC,0); % Interval I.
w11 := w1 + (c,0);
w12 := w2 + (c,0);
w13 := w3 + (c,0);

penARROW := 0.5bp;
penCIRC := 0.5bp;
penCURVE := 1.2bp;
penINT := 1.0bp;

% The circle.
pickup pencircle scaled penCIRC;
draw fullcircle scaled d shifted w0;

% Label for the circle.
label.rt(btex $M$ etex, w0+(r+gapp,0));

% The arrows.
pickup pencircle scaled penARROW;
S_arrowspaces(w11,w0,rrr,rr,1,black);
S_arrowspaces(w12,w0,rrr,rr,1,black);
S_arrowspaces(w13,w0,rrr,rr,1,black);
S_arrowspace(w1,w3,spB,2,black);
S_arrowspace(w2,w3,spB,2,black);
S_arrowspace(w1,w4,spD,2,black);
S_arrowspace(w2,w4,spD,2,black);
S_arrowspace(w4+(c,0),w3+(-c,0),spB,2,black);

% Labels on the arrows.
label.top(btex \strut$\gamma_1$ etex, 0.25[w11,w0]);
label.top(btex \strut$\gamma_2$ etex, 0.25[w12,w0]);
label.urt(btex
 $\gamma_1\circ\tilde\beta_1=\gamma_2\circ\tilde\beta_2$ etex, 0.05[w13,w0]);

label.rt(btex \strut$\tilde\beta_1$ etex, 0.5[w1,w3]+(1pt,0));
label.rt(btex \strut$\tilde\beta_2$ etex, 0.5[w2,w3]+(1pt,0));
label.ulft(btex $\beta_1$ etex, 0.6[w1,w4]+(-1pt,0));
label.llft(btex $\beta_2$ etex, 0.6[w2,w4]+(-1pt,0));
label.top(btex $\beta_0$ etex, 0.5[w4,w3]+(2pt,0));

% The intervals.
pickup pencircle scaled penINT;
draw (w1+(-c,0))--(w1+(c,0));
draw (w2+(-c,0))--(w2+(c,0));
draw (w3+(-c,0))--(w3+(c,0));
draw (w4+(-c,0))--(w4+(c,0));

label.top(btex \strut$I_1$ etex, w1);
label.bot(btex \strut$I_2$ etex, w2);
% label.lft(btex \strut$I$ etex, w3+(-c-gapp,0));
label.top(btex $\tilde I$ etex, w3+(-0.5c,0));
label.lft(btex \strut$I$ etex, w4+(-c-gapp,0));

% The curve's path.
pickup pencircle scaled penCURVE;
draw ((-0.85,-0.1)..(-0.6,-0.15)..(-0.4,0.15)..(0,-0.3)
     ..(0.4,0.2)..(0.85,0.18))
     scaled r withcolor 0.65white;

endfig;
end
