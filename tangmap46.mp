% tex/conc/mp/tangmap46.mp   2017-7-1   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap46.mp 6ae8e3cc5a 2017-07-01 08:07:38Z Alan U. Kennington $
% Exterior derivative of differential forms on manifolds without/with short-cut.

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
qq := 1.3 r;
penLN := 0.5bp;
sepA := 2pt;
sepB := 1.6a;               % Distance between the two diagrams.
sepY := r*1.1;
ratA := 0.45;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);             % M
% w3 := w0+(a,b);
w4 := w0+(-a/2,2b);         % Left space.
w5 := w0+(a/2,2b);          % Right space.

w10 := w2 + (sepB,0);
w11 := w10 + (a/2,b);
w12 := w10 + (a,0);
midpt := 0.5[w2,w11];

% Subsets.
S_subset(w2, d, 2.1, -0.5, 0.9, 0);
S_subset(w4, d, 2.1, -0.5, 0.9, 0);
S_subset(w5, d, 2.1, -0.5, 0.9, 0);

S_subset(w10, d, 2.1, -0.5, 0.9, 0);
S_subset(w12, d, 2.1, -0.5, 0.9, 0);

% The circles.
pickup pencircle scaled penLN;
% draw fullcircle scaled d shifted w10;
draw fullcircle scaled d shifted w11;
% draw fullcircle scaled d shifted w12;

% Coordinates for ends of arrows.
v4 := ratA[w2,w4];
v5 := ratA[w2,w5];
v10 := (xpart(ratA[w10,w11]),ypart(v4));
v12 := (xpart(ratA[w12,w11]),ypart(v5));

% The arrows.
pickup pencircle scaled penLN;
S_arrow(w4, w2, qq, qq, 2, black, sepA)();
S_arrow(w4, w2, qq, qq, 1, black, -sepA)();
S_arrow(w5, w2, qq, qq, 1, black, sepA)();
S_arrow(w5, w2, qq, qq, 2, black, -sepA)();

S_arrowspace(w10,w11,qq,1,black);
S_arrowspace(w12,w11,qq,1,black);

% Labels on the arrows.
% S_tiltlabel_top_up(btex $\pi^{\Lambda,m,W}$ etex, v4, angle(w2-w4), sepA);
% S_tiltlabel_top_up(btex $\pi^{\Lambda,m+1,W}$ etex, v5, angle(w5-w2), sepA);

S_tiltlabel_bot_up(btex $\pi^{\Lambda,m,W}$ etex, v4, angle(w2-w4), -sepA);
S_tiltlabel_bot_up(btex $\pi^{\Lambda,m+1,W}$ etex, v5, angle(w5-w2), -sepA);

label.urt(btex\strut $\omega$ etex, v4+(sepA,0));
label.ulft(btex\strut $d\omega$ etex, v5+(-sepA,0));

label.ulft(btex\strut $\omega$ etex, v10);
label.urt(btex\strut $d\omega$ etex, v12);

% Labels on spaces.
label.lft(btex $\Lamb m(T(M),W)$ etex, w4+(-q,0));
label.rt(btex $\Lamb{m+1}(T(M),W)$ etex, w5+(q,0));
label.rt(btex $U\subseteq M$ etex, w2+(q,0));

label.rt(btex $W$ etex, w11+(q,0));
label.lft(btex $T^m(M)$ etex, w10+(-q,0));
label.rt(btex $T^{m+1}(M)$ etex, w12+(q,0));

% Labels on diagrams.
v20 := (xpart(w11),ypart(w10));
label.bot(btex without short-cut etex, w2+(0,-sepY));
label.bot(btex with short-cut etex, v20+(0,-sepY));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
