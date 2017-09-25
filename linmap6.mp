% tex/conc/mp/linmap6.mp   2012-4-12   Alan U. Kennington.
% $Id: tex/conc/mp/linmap6.mp 09b78d3d62 2015-05-09 12:19:21Z Alan U. Kennington $
% Transition between component maps for linear spaces.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
beginfig(1);
pair w[], p, q, v;
path pat[];

aa := 5.2cm;
bb := 1.5cm;
d := 1.4cm;
r := d/2;
rA := r*1.3;       % Distance for arrows.
rB := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
sep := 3.6pt;
gapA := 14pt;
gapB := 12.5pt;
gapC := 13pt;
penA := 0.5bp;
rat := 0.45;
xA := 3.3cm;

% Centres of circles.
w0 := (0,0);
w1 := w0+(aa,bb);
w2 := (0,2bb);

% The circles.
pickup pencircle scaled penA;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;

% Straight arrows.
S_arrow(w0, w1, rA, rA, 1, black, sep)();
S_arrow(w0, w1, rA, rA, 2, black, -sep)();

S_arrow(w2, w1, rA, rA, 1, black, -sep)();
S_arrow(w2, w1, rA, rA, 2, black, sep)();

S_arrow(w0, w2, rB, rB, 1, black, sep)();
S_arrow(w0, w2, rB, rB, 2, black, -sep)();

label.top(btex \strut$\phi_{B_1}$ etex, rat[w0,w1]+(0,sep));
label.bot(btex \strut$\phi_{B_2}$ etex, rat[w2,w1]+(0,-sep));
label.lft(btex \strut$\Psi_{B_1,B_2}$ etex, 0.5[w0,w2]+(-sep,0));
label.rt(btex \strut$\Psi_{B_2,B_1}$ etex, 0.5[w0,w2]+(sep,0));

% S_tiltlabel_top_up(btex \strut $\phi_B$ etex, 0.5[w0,w1], angle(w1-w0), sep);
S_tiltlabel_bot_up(btex \strut $\kappa_{B_1}=\phi_{B_1}^{-1}$ etex,
 0.5[w0,w1], angle(w1-w0), -sep);
S_tiltlabel_top_up(btex \strut $\kappa_{B_2}=\phi_{B_2}^{-1}$ etex,
 0.5[w2,w1], angle(w1-w2), sep);

% label.rt(btex linear combination maps etex, 0.5[w0,w2]+(-20pt,0));
S_tiltlabel_bot_up(btex \strut vector component map etex,
 0.5[w0,w1], angle(w1-w0), -sep-gapA);
S_tiltlabel_top_up(btex \strut vector component map etex,
 0.5[w2,w1], angle(w1-w2), sep+gapA);

label.rt(btex \strut component etex, 0.5[w0,w2]+(-xA,gapB));
label.rt(btex \strut transition etex, 0.5[w0,w2]+(-xA,0));
label.rt(btex \strut maps etex, 0.5[w0,w2]+(-xA,-gapB));

%==============================================================================
% Save the current picture bounding box.
% bbx := bboxmargin;
% bboxmargin := 0;
% pat1 := bbox currentpicture;
% bboxmargin := bbx;

% Labels for the circles.
label.lft(btex \strut$\Fin(B_1,K)$ etex, w0+(-ll,gapC/2));
label.lft(btex \strut or $K^n$ etex, w0+(-ll-10pt,-gapC/2));

label.rt(btex $V$ etex, w1+(ll,0));

label.lft(btex \strut$\Fin(B_2,K)$ etex, w2+(-ll,gapC/2));
label.lft(btex \strut or $K^n$ etex, w2+(-ll-10pt,-gapC/2));

% setbounds currentpicture to pat1;

endfig;
end
