% tex/conc/mp/fn2d1.mp   2015-8-9   Alan Kennington.
% $Id: tex/conc/mp/fn2d1.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Graph: exponential map for s^2.

beginfig(1);

pair v[];
pi := 3.14159265358979; % Guess what this is!
unit := 0.65cm;         % Global scale factor.

% Dimensions of the axes.
np := 3;
aa := (np + 1) * unit;
bb := (np + 1) * unit;
z0 = (0,0);
z1 = (aa,0);
z2 = (0,bb);
z3 = (-aa,0);
z4 = (0,-bb);
ht := unit/8;

% Draw axes with labels.
drawarrow z3--z1;
drawarrow z4--z2;
label.urt(btex $\psi_1^1$ etex, z1);
label.urt(btex $\psi_1^2$ etex, z2);

% Draw the X-axis notches.
defaultfont := "cmr7";
for i = -np step 1 until np:
    x1 := i * unit;
    if i <> 0:
        draw (x1,0)--(x1,ht);
        label.bot(decimal i, (x1,0));
        fi
    endfor

% Draw the Y-axis notches.
defaultfont := "cmr7";
for i = -np step 1 until np:
    y1 := i * unit;
    if i <> 0:
        draw (0,y1)--(ht,y1);
        label.rt(decimal i, (ht,y1));
        fi
    endfor

draw fullcircle scaled (pi * unit) shifted z0;
draw fullcircle scaled (2pi * unit) shifted z0 dashed evenly;

v1 := (pi*1.05,0) rotated45 * unit;
v2 := v1 + (1,0.5) * unit;
drawarrow v2{dir180}..{dir-135}v1;
label.rt(btex $\displaystyle\theta=-{\pi\over2}$ etex, v2);

v3 := (0.5pi*1.05,0) rotated-45 * unit;
v4 := ((pi*1.05,0) rotated-45 * unit) + (1,0.5) * unit;
drawarrow v4{dir180}..{dir135}v3;
label.rt(btex $\displaystyle\theta=0$ etex, v4);

v3 := (pi*0.05,0) rotated135 * unit;
v4 := ((pi*1.05,0) rotated135 * unit) + (-1,0.5) * unit;
drawarrow v4{dir0}..{dir-45}v3;
label.lft(btex $\displaystyle\theta={\pi\over2}$ etex, v4);

endfig;
end
