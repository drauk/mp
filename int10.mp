% tex/conc/mp/int10.mp   2014-12-19   Alan U. Kennington.
% $Id: tex/conc/mp/int10.mp 80472d58ab 2014-12-19 11:41:35Z Alan U. Kennington $
% Proof that an injective finite set endomorphism is a bijection.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
boolean bo[];
pair w[], zz[];
color col[];

aaW := 14pt;                % Width of each box.
aaH := 14pt;                % Height of each box.
na := 19;                   % Number of boxes in upper row.
nb := na;                   % Number of boxes in middle row.
nc := na;                   % Number of boxes in lower row.
iY := 10;
iZ := 14;
xt := 0pt;                  % Extension for ellipsis.
da := na * aaW + xt;
db := nb * aaW + xt;
dc := nc * aaW + xt;
dyA := aaH + 25pt;
dyB := dyA;

sepA := 3pt;
sepB := 12pt;
sepC := (1/6)*aaH;
sepD := 3pt;
sepE := 3pt;
sepF := 3pt;

penLN := 0.5bp;
penARROW := 0.5bp;

w0 := (0,0);
w1 := w0 + (0,-dyA);
w2 := w1 + (0,-dyB);
col1 := 0.89 white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the upper row.
pickup pencircle scaled penLN;
i := na-1;
fill (w0+(i*aaW,0))--(w0+(i*aaW,aaH))--
     (w0+((i+1)*aaW,aaH))--(w0+((i+1)*aaW,0))--cycle
    withcolor col1;

for i=0 upto na:
    draw (w0+(i*aaW,0))--(w0+(i*aaW,aaH));
    endfor
draw w0--(w0+(da,0));
draw (w0+(0,aaH))--(w0+(da,aaH));

label.rt(btex $N_0$ etex, w0+(da+sepA,0.5aaH));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the middle row.
pickup pencircle scaled penLN;
i := iY;
fill (w1+(i*aaW,0))--(w1+(i*aaW,aaH))--
     (w1+((i+1)*aaW,aaH))--(w1+((i+1)*aaW,0))--cycle
    withcolor col1;
i := iZ;
fill (w1+(i*aaW,0))--(w1+(i*aaW,aaH))--
     (w1+((i+1)*aaW,aaH))--(w1+((i+1)*aaW,0))--cycle
    withcolor col1;

for i=0 upto nb:
    draw (w1+(i*aaW,0))--(w1+(i*aaW,aaH));
    endfor
draw w1--(w1+(db,0));
draw (w1+(0,aaH))--(w1+(db,aaH));

for i=iY upto nb-1:
    draw (w1+(i*aaW,0))--(w1+(i*aaW,aaH));
    endfor

label(btex $y$ etex, w1 + ((iY+0.5)*aaW,0.5aaH));
label.rt(btex $N_0\setminus\{y\}$ etex, w1+(db+sepA,0.5aaH));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the lower row.
pickup pencircle scaled penLN;
i := iZ-1;
fill (w2+(i*aaW,0))--(w2+(i*aaW,aaH))--
     (w2+((i+1)*aaW,aaH))--(w2+((i+1)*aaW,0))--cycle
    withcolor col1;

for i=0 upto nc-1:
    draw (w2+(i*aaW,0))--(w2+(i*aaW,aaH));
    endfor
draw w2--(w2+(dc-aaH,0));
draw (w2+(0,aaH))--(w2+(dc-aaW,aaH));

label(btex $z$ etex, w2 + ((iZ-0.5)*aaW,0.5aaH));
label.rt(btex $(N_0-1)\setminus\{z\}$ etex, w2+(dc+sepA,0.5aaH));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
zz1 := w0 + (-sepD, 0.5aaH + sepC);
zz2 := w1 + (-sepB, 0.5aaH);
zz3 := w2 + (-sepD, 0.5aaH - sepC);

zz10 := w0 + (0,-sepE);
zz12 := w1 + (0,aaH+sepE);
zz11 := 0.5[zz10,zz12] + (-sepF,0);

zz13 := w1 + (0,-sepE);
zz15 := w2 + (0,aaH+sepE);
zz14 := 0.5[zz13,zz15] + (-sepF,0);

pickup pencircle scaled penARROW;
drawarrow zz1..zz2..zz3;
drawarrow zz10..zz11..zz12;
drawarrow zz13..zz14..zz15;
label.lft(btex $g\circ\phi_0$ etex, zz2+(-2pt,0));
label.rt(btex $\phi_0$ etex, zz11+(2pt,0));
label.rt(btex $g$ etex, zz14+(2pt,0));

label.top(btex $y\notin\Range(\phi_0)$ etex, w1 + ((iY+0.5)*aaW,aaH+2pt));
label.bot(btex
 $z=g(\phi_0(N_0-1))\notin\Range\bigl(g\circ\phi_0\restrict{N_0-1}\bigr)$ etex,
 w2 + ((iZ-0.5)*aaW,-2pt));

for i=iY upto nb-2:
    drawarrow (w1+((i+1.5)*aaW,-sepE))--(w2+((i+0.5)*aaW,aaH+sepE));
    endfor
drawarrow (w0+((na-0.5)*aaW,-sepE))--(w1+((iZ+0.5)*aaW,aaH+sepE));

endfig;
end
