% tex/conc/mp/tangmap38.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap38.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Differentiability test for a tensor field.

input mapmax
input centmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[], midpt;

d := 0.9cm;
r := d/2;
q := r*1.2;
a := 4.0cm;
b := 2.5cm;
sepA := 5pt;
sepB := 10pt;
sepC := 0pt;
sepD := 2.5pt;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(a,0);
w2 := w0+(0,b);
w3 := w0+(a,b);
w4 := w0+(0,2b);
w5 := w0+(a,2b);
midpt := 0.5[w2,w5];        % For centring diagram inside bounding box.

% The circles.
pickup pencircle scaled penLN;
% draw fullcircle scaled d shifted w0;
% draw fullcircle scaled d shifted w1;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w3;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w5;

% Subsets.
% S_subset(w2,d,2.5,0.05,0.9,0);
% S_subset(w3,d,2.5,0.05,0.9,180);
% S_subset(w4,d,2.5,0.05,0.9,0);

% Coordinates for ends of arrows.
x0 := w4+(q,0);
y0 := w5+(-q,0);
v0 := 0.5[x0,y0];

x1 := w4+q*(w3-w4)/abs(w3-w4);
y1 := w3+q*(w4-w3)/abs(w4-w3);
v1 := 0.5[x1,y1];

x2 := w4+q*(w1-w4)/abs(w1-w4);
y2 := w1+q*(w4-w1)/abs(w4-w1);
% v2 := 0.82[x2,y2];
v2 := 0.64[x2,y2];

x3 := w2+(0,-q);
y3 := w0+(0,q);
v3 := 0.5[x3,y3];

x4 := w4+(-sepD,-q);
y4 := w2+(-sepD,q);
v4 := 0.5[x4,y4];

x5 := w2+(q,0);
y5 := w3+(-q,0);
v5 := 0.5[x5,y5];

x6 := w5+(0,-q);
y6 := w3+(0,q);
v6 := 0.5[x6,y6];

x7 := w4+(sepD,-q);
y7 := w2+(sepD,q);
v7 := 0.5[x7,y7];

% The arrows.
drawarrow x0..y0;
drawarrow x4..y4;
drawarrow x5..y5;
drawarrow y6..x6;
drawarrow y7..x7;

% Labels on the arrows.
label.top(btex\strut $\Psi^{r,s}(\psi)\in A_{T^{r,s}(M)}$ etex, v0);
label.lft(btex\strut $\pi^{r,s}$ etex, v4);
label.bot(btex\strut $\psi\in A_M$ etex, v5);
label.rt(btex\strut $\Psi^{r,s}(\psi)\circ Y\circ\psi^{-1}$ etex, v6);
label.rt(btex\strut $Y$ etex, v7);

% Labels for the circles.
label.lft(btex $M$ etex, w2-(q,0));
label.rt(btex $\reals^n$ etex, w3+(q,0));
label.lft(btex $T^{r,s}(M)$ etex, w4-(q,0));
label.rt(btex $\reals^n\times(\reals^n)^r\times(\reals^n)^s$ etex, w5+(q,0));

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
