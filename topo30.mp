% tex/conc/mp/topo30.mp   2012-6-22   Alan U. Kennington.
% $Id: tex/conc/mp/topo30.mp 563c7409fe 2012-06-22 13:24:09Z Alan U. Kennington $
% T_6 topological space separation class. Existence of continuous function.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], pA[], pB[], pC[], pD[];
path pat[];
color col;

a := 0cm;
dd := 2.3cm;
rr := dd/2;
xs := 1.5;
rrd := 1.74rr*xs;
rry := rr + 14pt;
rryy := rr;
zz0 := (0,0);
zz1 := zz0+(a,0);
zz10 := zz0 + (rrd,0);
zz11 := zz1 + (rrd,0);
nn := 13;
col := 0.9white;
rrr := 0.11rr;
rrra := 0.40rr;
rrrb := 0.60rr;
rrrc := 0.80rr;
penARROW := 0.5bp;
penCURVE := 0.5bp;
penPT := 2.5bp;

% Pseudo-random number generation. (Very poor!!)
% rand_x := 939;
% rand_x := 935;
rand_x := 932;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Generate pseudo-random shape.
theta := -160;
for i=0 upto nn-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    pA[i] := (rrr + rr*(rand_x/rand_T),0) rotated (360*(i/nn)+theta);
    pB[i] := (rrra + rr*(rand_x/rand_T),0) rotated (360*(i/nn)+theta);
    pC[i] := (rrrb + rr*(rand_x/rand_T),0) rotated (360*(i/nn)+theta);
    pD[i] := (rrrc + rr*(rand_x/rand_T),0) rotated (360*(i/nn)+theta);
    endfor
pat1 :=
for i=0 upto nn-1:
    pA[i]..
    endfor
    cycle;
pat2 :=
for i=0 upto nn-1:
    pB[i]..
    endfor
    cycle;
pat3 :=
for i=0 upto nn-1:
    pC[i]..
    endfor
    cycle;
pat4 :=
for i=0 upto nn-1:
    pD[i]..
    endfor
    cycle;

% Curves.
pickup pencircle scaled penCURVE;

sc := 0.5;
fill (pat1 shifted zz11) withcolor col;
draw pat1 shifted zz11;
draw pat2 shifted zz11 dashed (evenly scaled sc);
draw pat3 shifted zz11 dashed (evenly scaled sc);
draw pat4 shifted zz11 dashed (evenly scaled sc);

% Label on set.
label.lft(btex $K$ etex, zz11+(7pt,10pt));

zz21 := (point 3.65 of pat1) + zz11;
zz22 := pB[5] + zz11;
zz23 := (point 6.7 of pat3) + zz11;
zz24 := pD[7] + zz11;

zz25 := zz21 + (1cm,-0.5cm);
zz26 := zz22 + (1cm,-0.25cm);
zz27 := zz23 + (1cm,-0.1cm);
zz28 := zz24 + (0.75cm,0.2cm);
pickup pencircle scaled penARROW;
S_arrowspaces(zz25, zz21, 0, 0.6pt, 1, black);
S_arrowspaces(zz26, zz22, 0, 0.6pt, 1, black);
S_arrowspaces(zz27, zz23, 0, 0.6pt, 1, black);
S_arrowspaces(zz28, zz24, 0, 0.6pt, 1, black);
label.rt(btex $f(x)=0$ etex, zz25);
label.rt(btex $f(x)=0.3$ etex, zz26);
label.rt(btex $f(x)=0.7$ etex, zz27);
label.rt(btex $f(x)=1$ etex, zz28);

endfig;
end
