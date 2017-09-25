% tex/conc/mp/topomap6.mp   2016-2-29   Alan U. Kennington.
% $Id: tex/conc/mp/topomap6.mp 3f30ec1e16 2016-02-29 06:28:17Z Alan U. Kennington $
% Reparametrisation of a general curve.

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
spA := 2pt;
spB := 6pt;
spC := 10pt;
ratA := 0.45;

penA := 0.5bp;
penC := 0.5bp;
penINT := 1.0bp;
penCURVE := 1.0bp;

w0 := (0,0);    % Centre of circle.
w1 := (-a,b);   % Interval I.
w2 := (-a,-b);  % Interval J.
w11 := w1 + (c,0);
w12 := w2 + (c,0);

w20 := w1 + (-spA-spC, 0);
w21 := w1 + (spA-spC, 0);
w22 := w1 + (spA+spC, 0);
w23 := 0.5[w21,w22];
w31 := w2 + (-spA, 0);
w32 := w2 + (spA, 0);

% The circle.
pickup pencircle scaled penC;
draw fullcircle scaled d shifted w0;

% Label for the circle.
label.rt(btex $M$ etex, w0+(r+1.5mm,0));

% The arrows.
pickup pencircle scaled penA;
S_arrowspaces(w11,w0,rrr,rr,1,black);
S_arrowspaces(w12,w0,rrr,rr,1,black);
S_arrowspace(w20, w31, spB, 2, black);  % alpha
S_arrowspace(w21, w32, spB, 1, black);  % beta1
S_arrowspace(w22, w32, spB, 1, black);  % beta2

% Labels on the arrows.
S_tiltlabel_top_up(btex \strut$\gamma_1=\gamma_2\circ\beta$ etex,
 0.35[w11,w0], angle(w0-w11), 0pt);
S_tiltlabel_bot_up(btex \strut$\gamma_2=\gamma_1\circ\alpha$ etex,
 0.35[w12,w0], angle(w0-w12), 0pt);
label.lft(btex \strut$\alpha$ etex, ratA[w20,w31]);
label(btex \strut$\beta$ etex, ratA[w23,w32]);

% The intervals.
pickup pencircle scaled penINT;
draw (w1+(-c,0))--(w1+(c,0));
draw (w2+(-c,0))--(w2+(c,0));
label.top(btex \strut$I$ etex, w1);
label.bot(btex \strut$J$ etex, w2);

% The curve's path.
pickup pencircle scaled penCURVE;
draw ((-0.85,-0.1)..(-0.6,-0.15)..(-0.4,0.15)..(0,-0.3)
     ..(0.4,0.2)..(0.85,0.18))
     scaled r withcolor 0.65white;

endfig;
end
