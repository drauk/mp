% tex/conc/mp/topo5.mp   2014-10-25   Alan U. Kennington.
% $Id: tex/conc/mp/topo5.mp a12e2af3c4 2014-10-25 05:26:04Z Alan U. Kennington $
% Definition of connected set in a topological space.
% Formerly fn29.mp.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[], p[];
path pat;

m := 23;
a := 5cm;
b := 0.07a;
c := a * 1.3;
dd := 2.1cm;
rr := dd/2;
rrd := 1.8rr;
rry := rr + 12pt;
rrz := rr + 24pt;
zz0 := (0,0);
zz1 := zz0+(a,0);
zz10 := zz0 + (rrd,0);
zz11 := zz1 + (rrd,0);
xs := 1.4;
xss := xs * 0.95;

% Pseudo-random number generation. (Very rough!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Generate a slightly random curve.
for i=0 upto m:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    p[i] := (a*(i/m), b*(-1 + 2 * (rand_x/rand_T)));
    endfor
pat :=
for i=0 upto m-1:
    p[i]..
    endfor
    p[m];
pickup pencircle scaled 0.5pt;
mmid := floor(m/2);
draw subpath (0,mmid) of pat;
draw subpath (mmid+1,m) of pat;
draw pat shifted (c,0);

zz20 := (0.215a,0);
zz21 := (0.790a,0);
draw (fullcircle scaled dd) xscaled xss shifted zz20 dashed evenly;
draw (fullcircle scaled dd) xscaled xss shifted zz21 dashed evenly;

zz22 := (0.22a+c,0);
zz23 := (0.78a+c,0);
draw (fullcircle scaled dd) xscaled xs shifted zz22 dashed evenly;
draw (fullcircle scaled dd) xscaled xs shifted zz23 dashed evenly;

% Labels for the set S.
label(btex $S$ etex, zz20+(0,rr/2));
label(btex $S$ etex, zz21+(0,rr/2));
label(btex $S$ etex, zz22+(0,rr/2));
label(btex $S$ etex, zz23+(0,rr/2));

% Labels for the covering sets.
label.top(btex $S\subseteq\Omega_1\bcup\Omega_2$ etex, 0.5[zz20,zz21]+(0,rr));
label.bot(btex $\strut S\bcap\Omega_1\neq\emptyset$ etex, zz20+(0,-rr));
label.bot(btex $\strut S\bcap\Omega_2\neq\emptyset$ etex, zz21+(0,-rr));
label.bot(btex $\strut\Omega_1\bcap\Omega_2\bcap S=\emptyset$ etex,
 0.5[zz20,zz21]+(0,-rry));
label.bot(btex disconnected etex, 0.5[zz20,zz21]+(0,-rrz));

label.top(btex $S\subseteq\Omega_1\bcup\Omega_2$ etex, 0.5[zz22,zz23]+(0,rr));
label.bot(btex $\strut S\bcap\Omega_1\neq\emptyset$ etex, zz22+(0,-rr));
label.bot(btex $\strut S\bcap\Omega_2\neq\emptyset$ etex, zz23+(0,-rr));
label.bot(btex $\strut\Omega_1\bcap\Omega_2\bcap S\neq\emptyset$ etex,
 0.5[zz22,zz23]+(0,-rry));
label.bot(btex connected etex, 0.5[zz22,zz23]+(0,-rrz));

% Labels at the sides.
label(btex $\Omega_1$ etex, zz20+(-rr*xs*0.9,0.9rr));
label(btex $\Omega_2$ etex, zz21+(rr*xs*0.9,0.9rr));

label(btex $\Omega_1$ etex, zz22+(-rr*xs*0.9,0.9rr));
label(btex $\Omega_2$ etex, zz23+(rr*xs*0.9,0.9rr));

endfig;
end
