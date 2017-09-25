% tex/conc/mp/tangmap45.mp   2017-7-1   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap45.mp e42fe54375 2017-06-30 18:56:08Z Alan U. Kennington $
% Exterior derivative of differential forms on manifolds.

input mapmax
input centmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair v[], w[], midpt;
path pat[];

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 3.0cm;
b := 2.6cm;
qq := 1.4 r;
penLN := 0.5bp;
sepA := 2pt;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);             % M
% w3 := w0+(a,b);
w4 := w0+(-a/2,2b);         % Left space.
w5 := w0+(a/2,2b);          % Right space.
midpt := w2;

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w5;

% Subsets.
S_subset(w2, d, 2.1, -0.5, 0.9, 0);
S_subset(w4, d, 2.1, -0.5, 0.9, 0);
S_subset(w5, d, 2.1, -0.5, 0.9, 0);

% Coordinates for ends of arrows.
v4 := 0.5[w4,w2];
v5 := 0.5[w5,w2];

% The arrows.
S_arrow(w4, w2, qq, qq, 2, black, sepA)();
S_arrow(w4, w2, qq, qq, 1, black, -sepA)();
S_arrow(w5, w2, qq, qq, 1, black, sepA)();
S_arrow(w5, w2, qq, qq, 2, black, -sepA)();

% Labels on the arrows.
% S_tiltlabel_top_up(btex $\pi^{\Lambda,m,W}$ etex, v4, angle(w2-w4), sepA);
% S_tiltlabel_top_up(btex $\pi^{\Lambda,m+1,W}$ etex, v5, angle(w5-w2), sepA);

S_tiltlabel_bot_up(btex $\pi^{\Lambda,m,W}$ etex, v4, angle(w2-w4), -sepA);
S_tiltlabel_bot_up(btex $\pi^{\Lambda,m+1,W}$ etex, v5, angle(w5-w2), -sepA);

label.urt(btex\strut $\omega$ etex, v4+(sepA,0));
label.ulft(btex\strut $d\omega$ etex, v5+(-sepA,0));

% Labels on spaces.
label.lft(btex $\Lamb m(T(M),W)$ etex, w4+(-q,0));
label.rt(btex $\Lamb{m+1}(T(M),W)$ etex, w5+(q,0));
label.rt(btex $U\subseteq M$ etex, w2+(q,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
