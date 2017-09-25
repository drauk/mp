% tex/conc/mp/linmap1.mp   2010-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/linmap1.mp 09b78d3d62 2015-05-09 12:19:21Z Alan U. Kennington $
% Maps for tensor product dual spaces.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair q[], v[], w[], x[], y[];
path pat[];

d := 1.2cm;
r := d/2;
rr := r*1.2;
rrr := rr*1.6;
a := 2.5cm;
b := 1.9cm;
penPT := 2.5bp;
penLN := 0.5bp;

% Centres of circles.
w0 := (0,0);
w2 := w0+(0,b);
w3 := w0+(3a/2,b);
w4 := w0+(0,2b);
w5 := w0+(3a/2,2b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled d shifted w0;
draw fullcircle scaled d shifted w2;
draw fullcircle scaled d shifted w4;
draw fullcircle scaled d shifted w3;

% Points inside circles.
w10 := w0 + (r/4,0);
w12 := w2 + (r/4,0);
w14 := w4 + (r/4,0);
label.lft(btex $v$ etex, w10);
label.lft(btex $\lambda$ etex, w12);
label.lft(btex $w$ etex, w14);
pickup pencircle scaled penPT;
draw w10;
draw w12;
draw w14;

% Coordinates for ends of arrows.
x1 := w4+(rr*(w3-w4)/abs(w3-w4));
y1 := w3+(rrr*(w4-w3)/abs(w4-w3));
v1 := 0.5[x1,y1];

x2 := w2+rr*(w3-w2)/abs(w3-w2);
y2 := w3+rrr*(w2-w3)/abs(w2-w3);
v2 := 0.5[x2,y2];

x3 := w0+(rr*(w3-w0)/abs(w3-w0));
y3 := w3+(rrr*(w0-w3)/abs(w0-w3));
v3 := 0.5[x3,y3];

% The arrows.
pickup pencircle scaled penLN;
drawarrow x1--y1;
drawarrow x2--y2;
drawarrow x3--y3;

% Labels on the arrows.
label.urt(btex $\displaystyle
 h(\lambda)\in{}\smash{\bigl(\,\botimesc_{\alpha\in A}V_\alpha\bigr)^*}$
 etex, v1);
label.bot(btex $\displaystyle w=\otimesc_{\alpha\in A}v_\alpha$ etex, v2);
label.lrt(btex $\lambda$ etex, v3);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Labels for the circles.
label.lft(btex $\displaystyle\timesc_{\alpha\in A}V_\alpha$ etex, w0-(rr,0));
label.lft(btex $\mlin\bigl((V_\alpha)_{\alpha\in A};K\bigr)$ etex, w2-(rr,0));
label.lft(btex $\displaystyle
 \mlin\bigl((V_\alpha)_{\alpha\in A};K\bigr)^*=\botimesc_{\alpha\in A}V_\alpha$
 etex, w4-(rr,0));
label.rt(btex $K$ etex, w3+(rr,0));

% Some floating labels.
label.lrt(btex $\displaystyle v=(v_\alpha)_{\alpha\in A}$ etex, w0+(r*1.4,0));

% setbounds currentpicture to pat1;

endfig;
end
