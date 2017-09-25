% tex/conc/mp/topo3.mp   2007-5-3   Alan Kennington.
% $Id: tex/conc/mp/topo3.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Normal space.
% Formerly fn26.mp.

verbatimtex \input akmath etex

beginfig(1);
pair zz[], p[];
path pat[];
color col;

a := 0cm;
dd := 2.3cm;
rr := dd/2;
xs := 1.2;
rrd := 2.1rr*xs;
rry := rr + 14pt;
rryy := rr;
zz0 := (0,0);
zz1 := zz0+(a,0);
zz10 := zz0 + (rrd,0);
zz11 := zz1 + (rrd,0);
nn := 13;
col := 0.9white;
rrr := 0.1rr;

% Pseudo-random number generation. (Very poor!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Generate pseudo-random shapes.
for i=0 upto nn-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    p[i] := (rr*(rand_x/rand_T),0) rotated (360*(i/nn)-130);
    endfor
pat0 :=
for i=0 upto nn-1:
    p[i]..
    endfor
    cycle;

for i=0 upto nn-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    p[i] := (rrr+rr*(rand_x/rand_T),0) rotated (360*(i/nn)-80);
    endfor
pat1 :=
for i=0 upto nn-1:
    p[i]..
    endfor
    cycle;

% Two circles.
pickup pencircle scaled 0.5pt;

fill (pat0 shifted zz1) withcolor col;
fill (pat1 shifted zz11) withcolor col;
draw pat0 shifted zz1;
draw pat1 shifted zz11;
draw (fullcircle scaled dd) xscaled xs shifted zz1 dashed evenly;
draw (fullcircle scaled dd) xscaled xs shifted zz11 dashed evenly;

% Centres of balls.
pickup pencircle scaled 3pt;
label.rt(btex $K_1$ etex, zz1+(-2pt,0pt));

% External points.
label.bot(btex $K_2$ etex, zz11+(2pt,-2pt));

% Labels under the balls.
label.bot(btex $\strut K_1\subseteq\Omega_1$ etex, zz1+(0,-rr));
label.bot(btex $\strut K_2\subseteq\Omega_2$ etex, zz11+(0,-rr));

label.bot(btex $\Omega_1\bcap\Omega_2=\emptyset$ etex, 0.5[zz1,zz11]+(0,-rry));

% Labels at the sides.
label.lft(btex $\Omega_1$ etex, zz1+(-rr*xs,0));
label.rt(btex $\Omega_2$ etex, zz11+(rr*xs,0));

endfig;
end
