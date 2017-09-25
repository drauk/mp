% tex/conc/mp/fn2d3.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d3.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Graph: exponential maps for S^2.

beginfig(1);
pair v[], w[];

pi := 3.14159265358979; % Guess what this is!
unit := 0.64cm;         % Global scale factor.
color col;

% Dimensions of the axes.
np := 3;
aa := (np + 1) * unit;
bb := (np + 1) * unit;
ht := unit/8;
dd := 8.5cm;            % Spacing between graphs.
col := 0.85white;
penLN := 0.5bp;
penPT := 2.5bp;

w0 := (0,0);
w1 := w0+(aa,0);
w2 := w0+(0,bb);
w3 := w0+(-aa,0);
w4 := w0+(0,-bb);

pickup pencircle scaled penLN;
draw fullcircle scaled (0.5pi * unit) shifted w0 withcolor col;
draw fullcircle scaled (pi * unit) shifted w0;
draw fullcircle scaled (1.5pi * unit) shifted w0 withcolor col;
draw fullcircle scaled (2pi * unit) shifted w0 dashed evenly;

% Draw axes with labels.
drawarrow w3--w1;
drawarrow w4--w2;
label.urt(btex $\xi=\psi_1^1(x,y,z)$ etex, w1);
label.urt(btex $\eta=\psi_1^2(x,y,z)$ etex, w2);

% Draw the X-axis notches.
defaultfont := "cmr7";
for i = -np step 1 until np:
    x1 := i * unit;
    if i <> 0:
        draw ((x1,0)--(x1,ht)) shifted w0;
        fi
    if i = -3:
        label.bot(decimal i, w0+(x1+3pt,0));
    elseif i <> 0:
        label.bot(decimal i, w0+(x1,0));
        fi
    endfor

% Draw the Y-axis notches.
defaultfont := "cmr7";
for i = -np step 1 until np:
    y1 := i * unit;
    if i <> 0:
        draw ((0,y1)--(ht,y1)) shifted w0;
        fi
    if i = -3:
        label.rt(decimal i, w0+(ht,y1+3pt));
    elseif i <> 0:
        label.rt(decimal i, w0+(ht,y1));
        fi
    endfor
pickup pencircle scaled penPT;
makelabel(nullpicture, w0);

pickup pencircle scaled penLN;
v1 := w0+((pi*1.05,0) rotated45 * unit);
v2 := v1 + (1,0.5) * unit;
drawarrow v2{dir180}..{dir-135}v1;
label.rt(btex $\displaystyle\theta=-{\pi\over2}$ etex, v2);

v3 := w0+((0.5pi*1.05,0) rotated-45 * unit);
v4 := w0+(((pi*1.05,0) rotated-45 * unit) + (1,0.5) * unit);
drawarrow v4{dir180}..{dir135}v3;
label.rt(btex $\displaystyle\theta=0$ etex, v4);

v3 := w0+((pi*0.05,0) rotated-135 * unit);
v4 := w0+(((pi*1.05,0) rotated-135 * unit) + (-1,0.5) * unit);
drawarrow v4{dir0}..{dir45}v3;
label.lft(btex North etex, v4+(0,10pt));
label.lft(btex Pole etex, v4+(0,0pt));
label.bot(btex $\displaystyle\theta={\pi\over2}$ etex, v4+(0,0pt));

v3 := w0+((pi*0.05,0) rotated135 * unit)+(0,pi/2)*unit;
v4 := w0+(((pi*1.05,0) rotated120 * unit) + (-1,0.5) * unit);
drawarrow v4{dir0}..{dir-45}v3;
label.lft(btex $(0,1,0)$ etex, v4+(0,0pt));

v3 := w0+((pi*0.05,0)rotated45 * unit)+(pi/2,0)*unit;
v4 := w0+(((pi*1.05,0)rotated26 * unit) + (0.5,0) * unit);
drawarrow v4{dir180}..{dir-135}v3;
label.rt(btex $(1,0,0)$ etex, v4+(0,0pt));

%---------------------------------------------------------
% The psi_2 range plot.

w0 := (dd,0);
w1 := w0+(aa,0);
w2 := w0+(0,bb);
w3 := w0+(-aa,0);
w4 := w0+(0,-bb);

draw fullcircle scaled (0.5pi * unit) shifted w0 withcolor col;
draw fullcircle scaled (pi * unit) shifted w0;
draw fullcircle scaled (1.5pi * unit) shifted w0 withcolor col;
draw fullcircle scaled (2pi * unit) shifted w0 dashed evenly;

% Draw axes with labels.
drawarrow w3--w1;
drawarrow w4--w2;
label.urt(btex $\xi=$ etex, w1);
label.bot(btex $\psi_2^1(x,y,z)$ etex, w1+(12pt,-2pt));
label.urt(btex $\eta=\psi_2^2(x,y,z)$ etex, w2);

% Draw the X-axis notches.
defaultfont := "cmr7";
for i = -np step 1 until np:
    x1 := i * unit;
    if i <> 0:
        draw ((x1,0)--(x1,ht)) shifted w0;
        fi
    if i = -3:
        label.bot(decimal i, w0+(x1+3pt,0));
    elseif i <> 0:
        label.bot(decimal i, w0+(x1,0));
        fi
    endfor

% Draw the Y-axis notches.
defaultfont := "cmr7";
for i = -np step 1 until np:
    y1 := i * unit;
    if i <> 0:
        draw ((0,y1)--(ht,y1)) shifted w0;
        fi
    if i = -3:
        label.rt(decimal i, w0+(ht,y1+3pt));
    elseif i <> 0:
        label.rt(decimal i, w0+(ht,y1));
        fi
    endfor
pickup pencircle scaled penPT;
makelabel(nullpicture, w0);

pickup pencircle scaled penLN;
v1 := w0+((pi*1.05,0) rotated45 * unit);
v2 := v1 + (1,0.5) * unit;
drawarrow v2{dir180}..{dir-135}v1;
label.rt(btex $\displaystyle\theta={\pi\over2}$ etex, v2);

v3 := w0+((0.5pi*1.05,0) rotated-45 * unit);
v4 := w0+(((pi*1.05,0) rotated-45 * unit) + (1,0.5) * unit);
drawarrow v4{dir180}..{dir135}v3;
label.rt(btex $\displaystyle\theta=0$ etex, v4);

v3 := w0+((pi*0.05,0) rotated-135 * unit);
v4 := w0+(((pi*1.05,0) rotated-135 * unit) + (-1,0.5) * unit);
drawarrow v4{dir0}..{dir45}v3;
label.lft(btex South etex, v4+(0,10pt));
label.lft(btex Pole etex, v4+(0,0pt));
label.bot(btex $\displaystyle\theta=-{\pi\over2}$ etex, v4+(-6pt,0pt));

v3 := w0+((pi*0.05,0) rotated135 * unit)+(0,pi/2)*unit;
v4 := w0+(((pi*1.05,0) rotated120 * unit) + (-1,0.5) * unit);
drawarrow v4{dir0}..{dir-45}v3;
label.lft(btex $(0,1,0)$ etex, v4+(0,0pt));

v3 := w0+((pi*0.05,0)rotated45 * unit)+(pi/2,0)*unit;
v4 := w0+(((pi*1.05,0)rotated26 * unit) + (0.5,0) * unit);
drawarrow v4{dir180}..{dir-135}v3;
label.rt(btex $(1,0,0)$ etex, v4+(0,0pt));

endfig;
end
