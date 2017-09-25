% tex/conc/mp/topomap10.mp   2016-3-12   Alan U. Kennington.
% $Id: tex/conc/mp/topomap10.mp 3abc5f9476 2016-03-12 10:56:37Z Alan U. Kennington $
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
w4 := (-a-2c-spC,0); % Interval I_0.
w11 := w1 + (c,0);
w12 := w2 + (c,0);
w13 := w3 + (c,0);

penARROW := 0.5bp;
penCIRC := 0.5bp;
penCURVE := 1.2bp;
penINT := 1.0bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
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
S_arrowspace(w1,w4,spD,2,black);
S_arrowspace(w2,w4,spD,2,black);
S_arrowspace(w4+(c,0),w3+(-c,0),spB,1,black);

% Labels on the arrows.
S_tiltlabel_top_up(btex $\gamma_1=\gamma\circ\beta_1$ etex,
 0.3[w11,w0], angle(w0-w11), 0bp);
S_tiltlabel_top_up(btex $\gamma_2=\gamma\circ\beta_2$ etex,
 0.3[w12,w0], angle(w0-w12), 0bp);
label.top(btex \strut$\gamma$ etex, 0.25[w13,w0]);

label.rt(btex \strut$\beta_1$ etex, 0.5[w1,w3]+(1pt,0));
label.rt(btex \strut$\beta_2$ etex, 0.5[w2,w3]+(1pt,0));
label.ulft(btex $\beta_{0,1}$ etex, 0.5[w1,w4]+(2pt,0));
label.llft(btex $\beta_{0,2}$ etex, 0.5[w2,w4]+(2pt,1pt));
label.top(btex $\beta_0$ etex, 0.5[w4,w3]+(0pt,0));

% The intervals.
pickup pencircle scaled penINT;
draw (w1+(-c,0))--(w1+(c,0));
draw (w2+(-c,0))--(w2+(c,0));
draw (w3+(-c,0))--(w3+(c,0));
draw (w4+(-c,0))--(w4+(c,0));

label.top(btex \strut$I_1$ etex, w1);
label.bot(btex \strut$I_2$ etex, w2);
label.top(btex \strut$I$ etex, w3+(-0.7c,0));
label.lft(btex \strut$I_0$ etex, w4+(-c-gapp,0));

% The curve's path.
pickup pencircle scaled penCURVE;
draw ((-0.85,-0.1)..(-0.6,-0.15)..(-0.4,0.15)..(0,-0.3)
     ..(0.4,0.2)..(0.85,0.18))
     scaled r withcolor 0.65white;

% Arrow from I_0 to M.
pickup pencircle scaled penARROW;
angA := 40;
w20 := w4 + (-0.6c,-5pt);
w21 := w4 + (0,-0.7b);
w22 := w2 + (c+20pt,-22pt);
w23 := w0 + (-rr,0) rotated angA;
drawarrow w20..w21..w22{dir0}..{dir angA}w23;
label.top(btex $\gamma_0$ etex, w22);

endfig;
end
