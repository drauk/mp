% tex/conc/mp/tangmap48.mp   2017-7-5   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap48.mp 166f5f5557 2017-07-05 11:23:03Z Alan U. Kennington $
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
a := 2.6cm;
b := 2.2cm;
qq := 1.3 r;
penLN := 0.5bp;
sepA := 2pt;
sepB := 1.6a;               % Distance between the two diagrams.
sepY := r*1.1;
ratA := 0.5;

% Centres of circles.
w0 := (0,0);                % Nothing
% w1 := w0+(a,0);             % Nothing
w2 := w0+(0,b);             % M.
% w3 := w0+(a,b);
w4 := w0+(0,2b);            % Total space.

w10 := w4 + (sepB,0);       % Short-cut total space.
w11 := w10 + (0,b);         % W.
midpt := 0.5[w2,w10];

% Subsets.
S_subset(w2, d, 2.1, -0.5, 0.9, 0);
S_subset(w4, d, 2.1, -0.5, 0.9, 0);
S_subset(w10, d, 2.1, -0.5, 0.9, 0);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w11;

% Coordinates for ends of arrows.
v4 := ratA[w2,w4];
% v10 := (xpart(ratA[w10,w11]),ypart(w2));
v10 := ratA[w10,w11];

% The arrows.
pickup pencircle scaled penLN;
S_arrow(w4, w2, qq, qq, 2, black, sepA)();
S_arrow(w4, w2, qq, qq, 1, black, -sepA)();

S_arrowspace(w10,w11,qq,1,black);
S_arrowspace(w2,w10,qq,2,black);

% S_tiltlabel_bot_up(btex $\pi^{\Lambda,m,W}$ etex, v4, angle(w2-w4), -sepA);
label.lft(btex $\pi^{\Lambda,m,W}$ etex, v4+(-sepA,0));

label.rt(btex\strut $\omega$ etex, v4+(sepA,0));

label.lft(btex\strut $\bar\omega$ etex, v10);
label.ulft(btex $\pi^m$ etex, 0.5[w2,w10]);

% Labels on spaces.
label.lft(btex $\Lamb m(T(M),W)$ etex, w4+(-q,0));
label.rt(btex $U\subseteq M$ etex, w2+(q,0));
label.lft(btex $M$ etex, w2+(-q,0));

label.rt(btex $W$ etex, w11+(q,0));
label.lft(btex $T^m(M)$ etex, w10+(-q,0));
label.rt(btex $T^m(U)$ etex, w10+(q,0));

% Labels on diagrams.
v20 := (xpart(w11),ypart(w2));
label.bot(btex without short-cut etex, w2+(0,-sepY));
label.bot(btex with short-cut etex, v20+(0,-sepY));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
