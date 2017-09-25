% tex/conc/mp/real19.mp   2014-11-10   Alan U. Kennington.
% $Id: tex/conc/mp/real19.mp f479007c71 2014-11-10 03:20:44Z Alan U. Kennington $
% Showing uneven distribution of rational numbers with denominator <= 25.

verbatimtex
\input akmath
etex

beginfig(1);
boolean ratfound;
numeric rats[];
pair aa[], zz[];
color col[];

unit := 13cm;
aa := 1unit;
aaX := 15pt;
ht := 2mm;

penLN := 0.4bp;
penPT := 2.5bp;

col1 := 0.5white;

zz0 := (0,0);
zz1 := zz0 + (aa,0);
zz2 := zz0 + (-aaX,0);
zz3 := zz1 + (aaX,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Schedule of points to centre cover-intervals on.
aa0 := (0,1);
aa1 := (1,1);
rats[0] := 0;
rats[1] := 1;

Nmax := 1;
Qmax := 25;
for Q=1 upto Qmax:
    for P=1 upto Q-1:
        rat := P/Q;
        % Search the current table to see if the ratio is in there already.
        ratfound := false;
        for i=0 upto Nmax:
            if rats[i] = rat:
                ratfound := true;
                fi
            exitif ratfound;
            endfor
        if not ratfound:
            Nmax := Nmax + 1;
            aa[Nmax] := (P,Q);
            rats[Nmax] := rat;
            fi
        endfor
    endfor

pickup pencircle scaled penLN;
drawarrow zz2--zz3 withcolor col1;

pickup pencircle scaled penPT;
draw zz0;
draw zz1;

for i=0 upto Nmax:
    a := xpart(aa[i]);
    b := ypart(aa[i]);
    c := a/b;
    zz10 := zz0 + (c,0)*unit;
    pickup pencircle scaled penLN;
    draw (zz10+(0,ht))--(zz10+(0,-ht));
    if b <= 9:
        label.top(decimal a infont "cmr8", zz10+(0,ht));
        label.bot(decimal b infont "cmr8", zz10+(0,-ht));
        fi
    endfor

zz21 := zz0 + (-12pt,3pt);
zz22 := zz0 + (-12pt,-3pt);
label.top(btex $p$ etex, zz21);
label.bot(btex $q$ etex, zz22);

endfig;
end
