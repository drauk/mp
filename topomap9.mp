% tex/conc/mp/topomap9.mp   2016-3-9   Alan U. Kennington.
% $Id: tex/conc/mp/topomap9.mp 89240f8032 2016-03-09 13:23:09Z Alan U. Kennington $
% Method of proof of transitivity of the path-equivalence relation.

input mapmax.mp
verbatimtex
\input akmath

% Slightly smaller font for mathematics.
\font\smallrm cmr9
\font\smallmi cmmi9
\font\smallsy cmsy9
\font\ssmallsy cmsy6
% \def\fontB{\scriptstyle}
% \def\fontB{}
\def\fontB{%
 \textfont0=\smallrm
 \textfont1=\smallmi
 \textfont2=\smallsy
 \scriptfont2=\ssmallsy
 }
etex

beginfig(1);
pair w[];

d := 2.0cm;
r := d/2;
a := 6cm;
b := 0.9cm;
c := 0.6cm;
gap := 2.4mm;
gapp := 2pt;
rr := r+gap;
rrr := gap+1bp;
spB := 4pt;
spC := 36bp;
spD := 7bp;

w0 := (0,0);        % Centre of circle.
w1 := (-a,b);       % Interval J_1.
w2 := (-a,-b);      % Interval J_2.
w3 := (-a,0);       % Interval I.
w4 := (-a-2c-spC,0); % Interval I.
w5 := (-a,2b);      % Interval I_1.
w6 := (-a,-2b);     % Interval I_2.

w11 := w1 + (c,0);
w12 := w2 + (c,0);
w13 := w3 + (c,0);
w15 := w5 + (c,0);
w16 := w6 + (c,0);

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
S_arrowspaces(w15,w0,rrr,rr,1,black);
S_arrowspaces(w16,w0,rrr,rr,1,black);

S_arrowspace(w1,w3,spB,1,black);
S_arrowspace(w2,w3,spB,1,black);
S_arrowspace(w1,w5,spB,1,black);
S_arrowspace(w2,w6,spB,1,black);
S_arrowspace(w1+(-c,0),w4,spD,2,black);
S_arrowspace(w2+(-c,0),w4,spD,2,black);
S_arrowspace(w4+(c,0),w3+(-c,0),spB,1,black);

% Labels on the arrows.
label.top(btex $\gamma_1$ etex, 0.25[w15,w0]);
label.top(btex $\gamma_2$ etex, 0.25[w13,w0]);
label.top(btex $\gamma_3$ etex, 0.25[w16,w0]);
S_tiltlabel_top_up(btex
 $\fontB\gamma_1\circ\beta_{1,1}=\gamma_2\circ\beta_{1,2}$ etex,
 0.3[w11,w0], angle(w0-w11), -2bp);
S_tiltlabel_top_up(btex
 $\fontB\gamma_2\circ\beta_{2,2}=\gamma_3\circ\beta_{2,3}$ etex,
 0.3[w12,w0], angle(w0-w12), -2bp);

label.rt(btex \strut$\beta_{1,1}$ etex, 0.5[w1,w5]+(0pt,0));
label.rt(btex \strut$\beta_{1,2}$ etex, 0.5[w1,w3]+(0pt,0));
label.rt(btex \strut$\beta_{2,2}$ etex, 0.5[w2,w3]+(0pt,0));
label.rt(btex \strut$\beta_{2,3}$ etex, 0.5[w2,w6]+(0pt,0));
label.ulft(btex $\beta_1$ etex, 0.6[w1,w4]+(-1pt,0));
label.llft(btex $\beta_2$ etex, 0.6[w2,w4]+(-1pt,0));
label.top(btex $\beta$ etex, 0.5[w4,w3]+(2pt,0));

% The intervals.
pickup pencircle scaled penINT;
draw (w1+(-c,0))--(w1+(c,0));
draw (w2+(-c,0))--(w2+(c,0));
draw (w3+(-c,0))--(w3+(c,0));
draw (w4+(-c,0))--(w4+(c,0));
draw (w5+(-c,0))--(w5+(c,0));
draw (w6+(-c,0))--(w6+(c,0));

label.top(btex $J_1$ etex, w1+(-0.5c,0));
label.top(btex $J_2$ etex, w2+(-0.5c,0));
label.top(btex $I_2$ etex, w3+(-0.5c,0));
label.lft(btex \strut$J$ etex, w4+(-c-gapp,0));
label.top(btex $I_1$ etex, w5+(-0.5c,0));
label.top(btex $I_3$ etex, w6+(-0.5c,0));

% The curve's path.
pickup pencircle scaled penCURVE;
draw ((-0.85,-0.1)..(-0.6,-0.15)..(-0.4,0.15)..(0,-0.3)
     ..(0.4,0.2)..(0.85,0.18))
     scaled r withcolor 0.65white;

endfig;
end
