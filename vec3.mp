% tex/conc/mp/vec3.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/vec3.mp e4db343941 2012-05-07 10:52:27Z Alan U. Kennington $
% Visualisation of tangent vector and covector.

verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], da;
color col[];
path pat[];

a := 3.6cm;
unit := 0.9cm;
penPT := 2.5pt;     % Points.
penVEC := 0.5bp;    % Vectors.
penDASH := 0.4pt;   % Dashed lines.
penPVEC := 0.8bp;   % Vector at point on curve.
col1 := 0.4 white;
col2 := 0.75 white;
da := (-6unit,0);   % Displacement between diagrams.

w10 := (unit,0) rotated 120; % Tangent to plane.
w11 := w10 rotated -90; % Normal to plane.
w12 := (xpart(w11),0.18unit);
w13 := 2.2 w11;
len := 2;

v10 := (0,0);

pickup pencircle scaled penDASH;
v4 := -0.3w11;
for i=-2 step 1 until 2:
    w[20+i] := v10 + i*w12 + w10*len;
    w[40+i] := v10 + i*w12 - w10*len;
    draw w[20+i]--w[40+i] dashed evenly withcolor col1;
    draw (w[20+i]+v4)..(v10+i*w12)..(w[40+i]+v4);
    endfor

label.bot(btex $\scriptstyle t=-2$ etex, w[38]+v4);
label.bot(btex $\scriptstyle t=-1$ etex, w[39]+v4);
label.bot(btex $\scriptstyle t=0$ etex, w[40]+v4);
label.bot(btex $\scriptstyle t=1$ etex, w[41]+v4);
label.bot(btex $\scriptstyle t=2$ etex, w[42]+v4);
% label.bot(btex $\scriptstyle t=3$ etex, w[43]+v4);
label.llft(btex $t=f(x)$ etex, v10-2w12);

pickup pencircle scaled penVEC;
for j=-3 step 1 until 3:
    w[30+j] := v10 + w12 + (j*0.5) * w10;
%    drawarrow v10--w[30+j] withcolor col1;
    endfor
label.lft(btex $p$ etex, v10+(-2pt,-2pt));

pickup pencircle scaled penPT;
draw v10;

pickup pencircle scaled penVEC;
drawarrow v10--(v10+w13);
label.rt(btex $w$ etex, w13);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Visualisation of tangent vector.
v20 := da;
v21 := v20+(-2unit,-1.5unit);
v22 := v20+(-unit,-0.5unit);
v23 := v20+(unit,0.7unit);
v24 := v20+(2unit,1.6unit);

pickup pencircle scaled penVEC;
pat2 := v21..v22{dir30}..v20{dir20}..v23..v24;
drawarrow pat2 withcolor col1;

v29 := direction 2 of pat2;
v28 := v20 + 1.4v29;
pickup pencircle scaled penPVEC;
draw (v20-2.5v29)--(v20+3.0v29) withcolor col2;
pickup pencircle scaled penVEC;
drawarrow v20--v28;

label.bot(btex $p$ etex, v20+(0,-2pt));
label.bot(btex $v$ etex, v28+(0,-2pt));
% label.top(btex $x=\gamma(t)$ etex, v24);
label.lrt(btex $x=\gamma(t)$ etex, point 0.3 of pat2);

pickup pencircle scaled penPT;
draw v20;

t := 0.85;
for i:=-2 step 1 until 2:
    draw point (2+i*t) of pat2;
    endfor

label.ulft(btex $t=-2$ etex, point 2-2t of pat2);
label.ulft(btex $t=-1$ etex, point 2-t of pat2);
label.ulft(btex $t=0$ etex, point 2 of pat2);
label.ulft(btex $t=1$ etex, point 2+t of pat2);
label.lft(btex $t=2$ etex, (point 2+2t of pat2)+(-2pt,2pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
v30 := (0,-3unit);
label(btex $v=\gamma'(0)$ etex, v20+v30);
label(btex $w=df(p)$ etex, v10+v30+(unit,0));

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% label.lft(btex $H_t=\bigl\{p+v;\;\sum_{i=1}^n w^iv_i=t\bigr\}$ etex,
%  v10-2*(xpart(w11),0)+(0,-25pt));

setbounds currentpicture to pat1;

endfig;
end
