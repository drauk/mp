% tex/conc/mp/fn2d4.mp   2013-11-30   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d4.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Graph: exponential maps for S^2.

beginfig(1);
pair v[], w[];
color col;

pi := 3.14159265358979; % Guess what this is!
unit := 1.00cm;         % Global scale factor.

% Dimensions of the axes.
np := 3;
nq := 2;
aa := (np + 1) * unit;
bb := (nq + 1/3) * unit;
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

% Draw axes with labels.
pickup pencircle scaled penLN;
drawarrow w3--w1;
drawarrow w4--w2;
label.rt(btex $\theta_1$ etex, w1);
label.urt(btex $\theta_2$ etex, w2);

% Draw the X-axis notches.
for i = -np step 1 until np:
    x1 := i * unit;
    if i <> 0:
        draw ((x1,0)--(x1,ht)) shifted w0;
        fi
    if i = -3:
        label.bot(decimal i infont "cmr7", w0+(x1+3pt,0));
    elseif i <> 0:
        label.bot(decimal i infont "cmr7", w0+(x1,0));
        fi
    endfor

% Draw the Y-axis notches.
for i = -nq step 1 until nq:
    y1 := i * unit;
    if i <> 0:
        draw ((0,y1)--(ht,y1)) shifted w0;
        fi
    if i <> 0:
        label.rt(decimal i infont "cmr7", w0+(ht,y1+2pt));
        fi
    endfor

% The outline of the range set.
draw (w0+(pi,pi/2)--w0+(-pi,pi/2)--w0+(-pi,-pi/2)--w0+(pi,-pi/2))
 scaled unit dashed evenly;

draw (w0+(pi,pi/2)--w0+(pi,-pi/2)) scaled unit;

% Extra points.
pickup pencircle scaled penPT;
draw w0+(0,pi/2)*unit;
draw w0+(0,-pi/2)*unit;

% Extra labels.
label.ulft(btex $\pi/2$ etex, w0+(0,pi/2)*unit);
label.llft(btex $-\pi/2$ etex, w0+(0,-pi/2)*unit);

% label.urt(btex $\strut\pi$ etex, w0+(pi,0)*unit);
label.urt(btex $\pi$ etex, w0+(pi,0)*unit);
label.ulft(btex $-\pi$ etex, w0+(-pi,0)*unit);

% Adelaide.
% alon := 138.60 * pi / 180;
% alat := -34.89 * pi / 180;
% w5 := (alon, alat) * unit;
% w6 := w5 + (1,-0.5) * unit;
% drawarrow w6{dir180}..{dir180}(w5+(0.1,0)*unit) withcolor0.5white;
% makelabel(nullpicture, w5);
% label.rt(btex Adelaide etex, w6);

% Melbourne
alon := 145.073 * pi / 180;
alat := -37.796 * pi / 180;
w5 := (alon, alat) * unit;
w6 := w5 + (1,-0.5) * unit;
pickup pencircle scaled penLN;
drawarrow w6{dir180}..{dir180}(w5+(0.1,0)*unit) withcolor0.5white;
pickup pencircle scaled penPT;
draw w5;
label.rt(btex Melbourne etex, w6);

% Bologna.
% alon := (11+20/60) * pi / 180;
% alat := (44+29/60) * pi / 180;
% w5 := (alon, alat) * unit;
% w6 := w5 + (1,0.5) * unit;
% drawarrow w6{dir180}..{dir180}(w5+(0.1,0)*unit) withcolor0.5white;
% makelabel(nullpicture, w5);
% label.rt(btex Bologna etex, w6);

% Muenchen.
alon := (11+34/60) * pi / 180;
alat := (48+8/60) * pi / 180;
w5 := (alon, alat) * unit;
w6 := w5 + (1,0.4) * unit;
pickup pencircle scaled penLN;
drawarrow w6{dir180}..{dir180}(w5+(0.1,0)*unit) withcolor0.5white;
pickup pencircle scaled penPT;
draw w5;
label.rt(btex M\"unchen etex, w6);

% Label for North pole.
w5 := (0.1,pi/2+0.1) * unit;
w6 := (1.5,pi/2+0.5) * unit;
pickup pencircle scaled penLN;
drawarrow w6{dir180}..{dir-145}w5;
label.rt(btex North Pole etex, w6);

endfig;
end
