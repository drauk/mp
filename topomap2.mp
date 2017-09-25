% tex/conc/mp/topomap2.mp   2016-3-12   Alan U. Kennington.
% $Id: tex/conc/mp/topomap2.mp be9949e3a7 2016-03-11 15:15:47Z Alan U. Kennington $
% Reparametrisation of curves.

input mapmax.mp

beginfig(1);
pair w[];

d := 2.0cm;
r := d/2;
a := 4.5cm;
b := 1.2cm;
c := 1.0cm;
gap := 2.4mm;
gapp := 4pt;
rr := r+gap;
rrr := gap;
spB := 4pt;

w0 := (0,0);    % Centre of circle.
w1 := (-a,b);   % Interval I_1.
w2 := (-a,-b);  % Interval I_2.
w3 := (-a,0);   % Interval I.
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
S_arrowspace(w1,w3,spB,1,black);
S_arrowspace(w2,w3,spB,1,black);

% Labels on the arrows.
label.top(btex \strut$\gamma_1$ etex, 0.25[w11,w0]);
label.top(btex \strut$\gamma_2$ etex, 0.25[w12,w0]);
label.top(btex \strut$\rlap{$\gamma$}\phantom{\gamma_3}$ etex, 0.25[w13,w0]);
label.lft(btex \strut$\beta_1$ etex, 0.5[w1,w3]+(-2pt,0));
label.lft(btex \strut$\beta_2$ etex, 0.5[w2,w3]+(-2pt,0));

% The intervals.
pickup pencircle scaled penINT;
draw (w1+(-c,0))--(w1+(c,0));
draw (w2+(-c,0))--(w2+(c,0));
draw (w3+(-c,0))--(w3+(c,0));
% label.top(btex \strut$I_1$ etex, w1);
% label.bot(btex \strut$I_2$ etex, w2);
label.lft(btex \strut$I_1$ etex, w1+(-c-gapp,0));
label.lft(btex \strut$I_2$ etex, w2+(-c-gapp,0));
label.lft(btex \strut$I\phantom{{}_2}$ etex, w3+(-c-gapp,0));

% The curve's path.
pickup pencircle scaled penCURVE;
draw ((-0.85,-0.1)..(-0.6,-0.15)..(-0.4,0.15)..(0,-0.3)
     ..(0.4,0.2)..(0.85,0.18))
     scaled r withcolor 0.65white;

endfig;
end
