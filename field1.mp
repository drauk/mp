% tex/conc/mp/field1.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/field1.mp 0e3af78b4e 2014-04-04 11:24:15Z Alan U. Kennington $
% DG level 0. Points.

verbatimtex
\input akmath
etex

beginfig(1);
numeric rx[], ry[];
pair p[];

m := 100;   % Number of points.
a := 300;
b := 120;
penPT := 2.5bp;

% Pseudo-random number generation. (Very bad!!)
rand_x := 981;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

for i=0 upto m-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    rx[i] := a * (rand_x/rand_T);
    endfor

for i=0 upto m-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    ry[i] := b * (rand_x/rand_T);
    endfor

pickup pencircle scaled penPT;
for i=0 upto m-1:
    p[i] := (rx[i], ry[i]);
    draw p[i];
    endfor

label.lft(btex $0$ etex, p[0]);
label.lft(btex $1$ etex, p[1]);
label.lft(btex $2$ etex, p[2]);
label.lft(btex $3$ etex, p[3]);
label.lft(btex $4$ etex, p[4]);
label.lft(btex $5$ etex, p[5]);
label.lft(btex $6$ etex, p[6]);
label.lft(btex $7$ etex, p[7]);
label.lft(btex $8$ etex, p[8]);
label.lft(btex $9$ etex, p[9]);

endfig;
end
