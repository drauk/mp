% tex/conc/mp/chart12.mp   2007-4-22   Alan Kennington.
% $Id: tex/conc/mp/chart12.mp bb10f2ed2a 2015-04-30 18:09:37Z Alan U. Kennington $
% Rectifiable curves are not well-defined in topological manifolds.
% Formerly map80.mp.

input mapmax.mp
verbatimtex \input akmath etex

beginfig(1);
pair w[];
color col[];

d := 2.0cm;
r := d/2;
a := 4.0cm;
b := 0.6cm;
c := 1.0cm;     % Half-width of interval.
gap := 2.4mm;
gapp := 1.5mm;
rr := r+gap;
rrr := 1.5gap;

% The R^n sets.
aa := 3.8cm;
bb := 1.1cm;
np := 2;
nq := 2;
xt := 0.60;
col0 := 0.7 white;
unit := 0.25cm;
q := (nq+xt) * unit;
rrrr := q*1.3;
penCURVE := 1.0bp;
penTHICK := 1.5bp;
penCIRC := 0.5bp;
penARROW := 0.5bp;
penINT := 1.0bp;
penRN := 0.5bp;

w0 := (0,0);    % Centre of circle.
w1 := (-a,0);   % Interval I.
w6 := (aa,bb);   % Sets R^n.
w7 := (aa,-bb);
w11 := w1 + (c,0);

% The circle.
pickup pencircle scaled penCIRC;
draw fullcircle scaled d shifted w0;

% Label for the circle.
label.bot(btex $M$ etex, w0+(0,-(r+gapp)));

% The arrows.
pickup pencircle scaled penARROW;
S_arrowspaces(w11,w0,rrr,rr,1,black);
S_arrowspaces(w0,w6,rr,rrrr,1,black);
S_arrowspaces(w0,w7,rr,rrrr,1,black);

% Labels on the arrows.
S_labelspaces(w12)(w11,w0,rrr,rr,0.5);
S_labelspaces(w16)(w0,w6,rr,rrrr,0.5);
S_labelspaces(w17)(w0,w7,rr,rrrr,0.5);
label.top(btex \strut$\gamma$ etex, w12);
label.top(btex \strut$\psi_0$ etex, w16);
label.bot(btex \strut$\psi_h$ etex, w17);

% The interval.
pickup pencircle scaled penINT;
draw (w1+(-c,0))--(w1+(c,0));
label.bot(btex \strut$I$ etex, w1+(0,-gapp));

% The curve.
pickup pencircle scaled penCURVE;
draw (((-0.85,0)--(0.85,0)) scaled r) shifted w0 withcolor 0.65white;
label.top(btex $\gamma(I)$ etex, w0);

% The R^n sets.
pickup pencircle scaled penRN;
S_rn(w6, unit, np, nq, xt, col0);
S_rn(w7, unit, np, nq, xt, col0);
label.bot(btex $\reals^2$ etex, w7+(0,-q));
label.bot(btex $\reals^2$ etex, w6+(0,-q));

% The ``rectifiable'' curve.
pickup pencircle scaled penTHICK;
draw (((-0.85,0)--(0.85,0))
     scaled q) shifted (w6) withcolor 0.65white;

% The ``nowhere-differentiable'' curve.
pickup pencircle scaled penCURVE;
draw (((-0.85,0.2){down}..(-0.6,-0.15)..(-0.4,0.15){dir80}
     --(-0.27,-0.5)--(-0.13,0.5)--(0,-0.3){dir70}
     ..(0.4,0.2)..(0.65,-0.35)...(0.85,0.18){up})
     scaled q) shifted (w7) withcolor 0.65white;

endfig;
end
