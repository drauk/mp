% tex/conc/mp/vec2.mp   2012-5-3   Alan U. Kennington.
% $Id: tex/conc/mp/vec2.mp e4db343941 2012-05-07 10:52:27Z Alan U. Kennington $
% Visualisation of tangent covector.

% input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[];
color col[];
path pat[];

a := 3.6cm;
unit := 0.9cm;
penPT := 2.5pt;         % Points.
penVEC := 0.5pt;        % Vectors.
penDASH := 0.5pt;       % Dashed lines.
col1 := 0.4 white;

w10 := (unit,0) rotated 120; % Tangent to plane.
w11 := w10 rotated -90; % Normal to plane.
w12 := (xpart(w11),0.18unit);
w13 := 3.2 w11;
len := 2;

v10 := (0,0);

pickup pencircle scaled penDASH;
for i=-2 step 1 until 3:
    w[20+i] := v10 + i*w12 + w10*len;
    w[40+i] := v10 + i*w12 - w10*len;
    draw w[20+i]--w[40+i];
    endfor
label.top(btex $H_{-2}$ etex, w[18]);
label.top(btex $H_{-1}$ etex, w[19]);
label.top(btex $H_0$ etex, w[20]);
label.top(btex $H_1$ etex, w[21]);
label.top(btex $H_2$ etex, w[22]);
label.top(btex $H_3$ etex, w[23]);

label.bot(btex $\scriptstyle t=-2$ etex, w[38]);
label.bot(btex $\scriptstyle t=-1$ etex, w[39]);
label.bot(btex $\scriptstyle t=0$ etex, w[40]);
label.bot(btex $\scriptstyle t=1$ etex, w[41]);
label.bot(btex $\scriptstyle t=2$ etex, w[42]);
label.bot(btex $\scriptstyle t=3$ etex, w[43]);

pickup pencircle scaled penVEC;
for j=-3 step 1 until 3:
    w[30+j] := v10 + w12 + (j*0.5) * w10;
    drawarrow v10--w[30+j] withcolor col1;
    endfor
label.rt(btex $\scriptstyle v\in H_1$ etex, w[29]);
label.lft(btex $p$ etex, v10+(-2pt,-2pt));

pickup pencircle scaled penPT;
draw v10;

pickup pencircle scaled penVEC;
drawarrow v10--(v10+w13);
label.rt(btex $w$ etex, w13);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% label.bot(btex $H_t=\bigl\{p+v;\;\sum_{i=1}^n w^iv_i=t\bigr\}$ etex,
%  0.5[w[39],w[40]]+(0,-17pt));
label.lft(btex $H_t=\bigl\{p+v;\;\sum_{i=1}^n w^iv_i=t\bigr\}$ etex,
 v10-2*(xpart(w11),0)+(0,-25pt));

setbounds currentpicture to pat1;

endfig;
end
