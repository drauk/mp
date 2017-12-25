% tex/conc/mp/log49.mp   2017-12-25   Alan U. Kennington.
% $Id: tex/conc/mp/log49.mp 2f2a127ff9 2015-01-29 07:27:00Z Alan U. Kennington $
% Eight independent definitions for a finite set.

verbatimtex
\font\smallrm cmr9
etex

beginfig(1);
pair w[], zz[], zMid;
color colA, colB;

aa := 9.5cm;                % Width of each row.
bb := 14.5pt;               % Height of each row.
cc := 3pt;                  % Space between rows.

xMid := 0.5 * aa;
xStep := 15pt;
nRows := 8;
xI := xMid - 0.5*(nRows - 1) * xStep;
% dText := 0.1 * xI;
dText := bb;
colA := 0.92 white;
colB := 0.5 white;

penLN := 0.5bp;
penDASH := 0.9bp;

zz0 := (0,0);   % Top left.
zz1 := zz0;
zz4 := zz0;
for i=0 upto nRows-1:
    pickup pencircle scaled penLN;
    zz2 := zz1 + (xI + i * xStep, 0);
    if i = 4:
        zz3 := zz1 + (xI, 0);
        fill zz3--zz2--(zz2+(0,-bb))--(zz3+(0,-bb))--cycle
            withcolor colA;
%        draw zz3--(zz3+(0,-bb));
        zz4 := 0.5[zz3,zz2] + (0,-bb/2);
%        zz5 := zz3;
        zz5 := zz3 + (0, -bb);
        zz6 := zz0 + (xI, -bb);
        fi
    draw zz1--(zz1+(aa,0))--(zz1+(aa,-bb))--(zz1+(0,-bb))--cycle;
    draw zz2--(zz2+(0,-bb));
    zz[11+i] := zz1+(dText,-bb/2);
    zz[21+i] := zz1+(aa-dText,-bb/2);
    zz1 := zz1 + (0,-bb-cc);
    endfor

label.rt(btex\strut\smallrm I-finite etex, zz11);
label.rt(btex\strut\smallrm Ia-finite etex, zz12);
label.rt(btex\strut\smallrm II-finite etex, zz13);
label.rt(btex\strut\smallrm III-finite etex, zz14);
label.rt(btex\strut\smallrm IV-finite etex, zz15);
label.rt(btex\strut\smallrm V-finite etex, zz16);
label.rt(btex\strut\smallrm VI-finite etex, zz17);
label.rt(btex\strut\smallrm VII-finite etex, zz18);

label.lft(btex\strut\smallrm I-infinite etex, zz21);
label.lft(btex\strut\smallrm Ia-infinite etex, zz22);
label.lft(btex\strut\smallrm II-infinite etex, zz23);
label.lft(btex\strut\smallrm III-infinite etex, zz24);
label.lft(btex\strut\smallrm IV-infinite etex, zz25);
label.lft(btex\strut\smallrm V-infinite etex, zz26);
label.lft(btex\strut\smallrm VI-infinite etex, zz27);
label.lft(btex\strut\smallrm VII-infinite etex, zz28);

label(btex\strut\smallrm mediate etex, zz4);
pickup pencircle scaled penDASH;
draw zz5--zz6 dashed (evenly scaled 0.75) withcolor colB;

endfig;
end
