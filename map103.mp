% tex/conc/mp/map103.mp   2016-12-28   Alan U. Kennington.
% $Id: tex/conc/mp/map103.mp eb6280e6ad 2016-12-28 04:03:08Z Alan U. Kennington $
% Group conjugation interpreted as parallel transport.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair w[];

dz := 3.5cm;
dze := 1.5; % Stretch factor for ellipse.
rz := dz/2;
sp := 0.2cm;

d := 0.92cm;
de := 1.3;
r := d/2;
re := r * de;
ddd := 0.40;

a := dz * dze/2;
b := dz/2;
aa := 2.25a;
ax := a*1.08;
bx := b*1.04;
bxx := 12pt;

% Deviation of the arrows.
za := 0.1a;
zb := 0.1b;
ya := 4pt; % Gaps for the arrows.
yb := 1.7pt;
penLN := 0.5bp;
penPT := 2.5bp;

% Centres of circles.
w0 := (0,0);
w1 := w0+(-ddd*a,-ddd*b);
w2 := w0+(ddd*a,-ddd*b);
w3 := w0+(ddd*a,ddd*b);
w4 := w0+(-ddd*a,ddd*b);

% The circles.
pickup pencircle scaled penLN;
draw fullcircle scaled dz xscaled dze shifted w0;

label.rt(btex $G$ etex, w0+(ax,0));
label.bot(btex pull-back of $h$ from $g$ to $e$ etex, w0+(0,-bx));
% label.bot(btex right conjugate etex, w0+(0,-bx-bxx));
label.top(btex right conjugate $g^{-1}hg$ etex, w0+(0,bx));

% Points inside G.
pickup pencircle scaled penPT;
label.llft(btex \strut$e$ etex, w1);
draw w1;

label.lrt(btex \strut$g$ etex, w2);
draw w2;

label.urt(btex $hg$ etex, w3);
draw w3;

label.ulft(btex \strut$g^{-1}hg$ etex, w4+(7pt,0pt));
draw w4;

% Actions of group elements.
pickup pencircle scaled penLN;
w11 := 0.5[w1,w2]+(0,-za);
w12 := 0.5[w2,w3]+(zb,0);
w13 := 0.5[w3,w4]+(0,za);
w14 := 0.5[w4,w1]+(-zb,0);
drawarrow (w1+(ya,-yb))..w11..(w2+(-ya,-yb));
drawarrow (w2+(yb,ya))..w12..(w3+(yb,-ya));
drawarrow (w3+(-ya,yb))..w13..(w4+(ya,yb));
drawarrow reverse ((w4+(-yb,-ya))..w14..(w1+(-yb,ya))) dashed evenly;
label.bot(btex $g$ etex, w11);
label.rt(btex $h$ etex, w12);
label.top(btex $g^{-1}$ etex, w13);
label.lft(btex $g^{-1}hg$ etex, w14);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
w20 := (-aa,0);
w21 := w20+(-ddd*a,-ddd*b);
w22 := w20+(ddd*a,-ddd*b);
w23 := w20+(ddd*a,ddd*b);
w24 := w20+(-ddd*a,ddd*b);

pickup pencircle scaled penLN;
draw fullcircle scaled dz xscaled dze shifted w20;

label.lft(btex $G$ etex, w20+(-ax,0));
label.bot(btex push-forth of $h$ from $e$ to $g$ etex, w20+(0,-bx));
% label.bot(btex left conjugate etex, w20+(0,-bx-bxx));
label.top(btex left conjugate $ghg^{-1}$ etex, w20+(0,bx));

% Points inside G.
pickup pencircle scaled penPT;
label.llft(btex \strut$e$ etex, w21);
draw w21;

label.lrt(btex \strut$g$ etex, w22);
draw w22;

label.urt(btex $gh$ etex, w23);
draw w23;

label.ulft(btex $h$ etex, w24);
draw w24;

% Actions of group elements.
pickup pencircle scaled penLN;
w31 := 0.5[w21,w22]+(0,-za);
w32 := 0.5[w22,w23]+(zb,0);
w33 := 0.5[w23,w24]+(0,za);
w34 := 0.5[w24,w21]+(-zb,0);
drawarrow reverse ((w21+(ya,-yb))..w31..(w22+(-ya,-yb)));
drawarrow (w22+(yb,ya))..w32..(w23+(yb,-ya)) dashed evenly;
drawarrow reverse ((w23+(-ya,yb))..w33..(w24+(ya,yb)));
drawarrow reverse ((w24+(-yb,-ya))..w34..(w21+(-yb,ya)));
label.bot(btex $g^{-1}$ etex, w31);
label.rt(btex $ghg^{-1}$ etex, w32);
label.top(btex $g$ etex, w33);
label.lft(btex $h$ etex, w34);

endfig;
end
