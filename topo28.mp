% tex/conc/mp/topo28.mp   2015-5-9   Alan U. Kennington.
% $Id: tex/conc/mp/topo28.mp 20001bea50 2015-05-09 04:57:58Z Alan U. Kennington $
% Topological class T_3.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[], q[], pp[], qq[];
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
rrra := 0.30rr;
rrrb := 0.40rr;
rrrc := 0.50rr;
rrrx := 3.2bp;
sc := 0.5;
scx := 0.36;

penARROW := 0.5bp;
penCURVE := 0.5bp;
penCURVEx := 0.4bp;
penPT := 2.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Pseudo-random number generation. (Very poor!!)
rand_x := 939;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Generate pseudo-random shape.
theta := -160;
for i=0 upto nn-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    p[i] := (rrr + rr*(rand_x/rand_T),0) rotated (360*(i/nn)+theta);
    q[i] := (rrra + rr*(rand_x/rand_T),0) rotated (360*(i/nn)+theta);
    pp[i] := (rrrb + rr*(rand_x/rand_T),0) rotated (360*(i/nn)+theta);
    qq[i] := (rrrc + rr*(rand_x/rand_T),0) rotated (360*(i/nn)+theta);
    endfor
pat1 :=
for i=0 upto nn-1:
    p[i]..
    endfor
    cycle;
pat2 :=
for i=0 upto nn-1:
    q[i]..
    endfor
    cycle;
pat3 :=
for i=0 upto nn-1:
    pp[i]..
    endfor
    cycle;
pat4 :=
for i=0 upto nn-1:
    qq[i]..
    endfor
    cycle;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Curves.
pickup pencircle scaled penCURVE;

fill (pat1 shifted zz11) withcolor col;
draw pat1 shifted zz11;
draw pat2 shifted zz11 dashed (evenly scaled sc);

% External points.
label.lft(btex $K$ etex, zz11+(-10pt,13pt));

zz20 := qq[9] + zz11;
pickup pencircle scaled penPT;
draw zz20;
label.top(btex $x$ etex, zz20+(0pt,rrrx));
pickup pencircle scaled penCURVEx;
draw (fullcircle rotated-90) scaled (2rrrx) shifted zz20
 dashed (evenly scaled scx);
zz30 := zz20 + (rrrx+1pt,0) rotated 20;
zz31 := 8[zz20,zz30];
pickup pencircle scaled penARROW;
drawarrow zz31--zz30;
label.rt(btex $\Omega_1$ etex, zz31);

zz22 := q[5] + zz11;
zz26 := zz22 + (1cm,-0.25cm);

pickup pencircle scaled penARROW;
S_arrowspaces(zz26, zz22, 0, 0.7pt, 1, black);
label.rt(btex $\Omega_2$ etex, zz26);

endfig;
end
