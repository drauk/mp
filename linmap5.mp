% tex/conc/mp/linmap5.mp   2012-4-12   Alan U. Kennington.
% $Id: tex/conc/mp/linmap5.mp 09b78d3d62 2015-05-09 12:19:21Z Alan U. Kennington $
% Component maps for linear spaces.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);

pair w[], p, q, v;
path pat[];
d := 1.2cm;
r := d/2;
rr := r*1.2;       % Distance for arrows.
ll := r*1.1;       % Distance for labels.
a := 4.8cm;
sep := 3.6pt;
gapA := 14pt;
gapB := 13pt;
penA := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);

% The circles.
pickup pencircle scaled penA;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w1;

% Straight arrows.
S_arrow(w0, w1, rr, rr, 1, black, sep)();
S_arrow(w0, w1, rr, rr, 2, black, -sep)();

S_tiltlabel_top_up(btex \strut $\phi_B$ etex, 0.5[w0,w1],
 angle(w1-w0), sep);
S_tiltlabel_bot_up(btex \strut $\kappa_B=\phi_B^{-1}$ etex,
 0.5[w0,w1], angle(w1-w0), -sep);

S_tiltlabel_top_up(btex \strut linear combination map etex,
 0.5[w0,w1], angle(w1-w0), sep+gapA-2pt);
S_tiltlabel_bot_up(btex \strut vector component map etex,
 0.5[w0,w1], angle(w1-w0), -sep-gapA);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Labels for the circles.
label.lft(btex \strut$\Fin(B,K)$ etex, w0+(-ll,gapB/2));
label.lft(btex \strut or $K^n$ etex, w0+(-ll-10pt,-gapB/2));
label.rt(btex $V$ etex, w1+(ll,0));

setbounds currentpicture to pat1;

endfig;
end
