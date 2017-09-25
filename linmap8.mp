% tex/conc/mp/linmap8.mp   2017-1-1   Alan U. Kennington.
% $Id: tex/conc/mp/linmap8.mp 34fa032111 2017-01-01 06:00:32Z Alan U. Kennington $
% Component transition maps for a linear map.

input mapmax
input centmax
verbatimtex
\input akmath
\input dgmpmax
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
pair w[], p, q, v, midpt;
path pat[];

aa := 5.5cm;
bb := 1.5cm;
d := 1.4cm;
r := d/2;
rA := r*1.3;       % Distance for arrows.
rB := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
sep := 3.6pt;
gapA := 13pt;
gapB := 12.5pt;
gapC := 13pt;
penA := 0.5bp;
rat := 0.5;
xA := 3.5cm;

% Centres of circles.
w0 := (0,0);
w1 := w0+(aa,0);
w2 := w0+(0,2bb);
w3 := w1+(0,2bb);
midpt := 0.5[w0,w3];

% The circles.
pickup pencircle scaled penA;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;

% Straight arrows.
S_arrow(w0, w1, rA, rA, 1, black, sep)();
S_arrow(w0, w1, rA, rA, 2, black, -sep)();

S_arrow(w2, w3, rA, rA, 1, black, -sep)();
S_arrow(w2, w3, rA, rA, 2, black, sep)();

S_arrow(w0, w2, rB, rB, 1, black, sep)();
S_arrow(w0, w2, rB, rB, 2, black, -sep)();

S_arrow(w1, w3, rB, rB, 1, black, sep)();
S_arrow(w1, w3, rB, rB, 2, black, -sep)();

label.top(btex \strut$\phi_{B_1}$ etex, rat[w0,w1]+(0,sep));
label.bot(btex \strut$\phi_{B_2}$ etex, rat[w2,w3]+(0,-sep));
label.lft(btex \strut$\Psi_{B_1,B_2}$ etex, 0.5[w0,w2]+(-sep,0));
label.rt(btex \strut$\Psi_{B_2,B_1}$ etex, 0.5[w0,w2]+(sep,0));
label.lft(btex \strut$\psi$ etex, 0.5[w1,w3]+(-sep,0));
label.rt(btex \strut$\psi^{-1}$ etex, 0.5[w1,w3]+(sep,0));

S_tiltlabel_bot_up(btex \strut $\kappa_{B_1}=\phi_{B_1}^{-1}$ etex,
 0.5[w0,w1], angle(w1-w0), -sep);
S_tiltlabel_top_up(btex \strut $\kappa_{B_2}=\phi_{B_2}^{-1}$ etex,
 0.5[w2,w3], angle(w3-w2), sep);

S_tiltlabel_top_up(btex \strut linear combination map etex,
 0.5[w0,w1], angle(w1-w0), sep+gapA-2pt);
S_tiltlabel_bot_up(btex \strut vector component map etex,
 0.5[w0,w1], angle(w1-w0), -sep-gapA);

S_tiltlabel_top_up(btex \strut vector component map etex,
 0.5[w2,w3], angle(w3-w2), sep+gapA);
S_tiltlabel_bot_up(btex \strut linear combination map etex,
 0.5[w2,w3], angle(w3-w2), -sep-gapA);

label.rt(btex \strut linear-map etex, 0.5[w0,w2]+(-xA,gapB));
label.rt(btex \strut component etex, 0.5[w0,w2]+(-xA,0));
label.rt(btex \strut maps etex, 0.5[w0,w2]+(-xA,-gapB));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the circles.
label.lft(btex \strut$\Fin(B_1,K)$ etex, w0+(-ll,gapC/2));
label.lft(btex \strut or $\Fin(I_1,K)$ etex, w0+(-ll,-gapC/2));

label.rt(btex $V_1$ etex, w1+(ll,0));
label.rt(btex $V_2$ etex, w3+(ll,0));

label.lft(btex \strut$\Fin(B_2,K)$ etex, w2+(-ll,gapC/2));
label.lft(btex \strut or $\Fin(I_2,K)$ etex, w2+(-ll,-gapC/2));

% Centre the current picture bounding box.
C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
