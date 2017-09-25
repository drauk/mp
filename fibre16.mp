% tex/conc/mp/fibre16.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibre16.mp defbd13703 2012-05-07 12:05:29Z Alan U. Kennington $
% Fibre space: partition of total space into fibres.
% Formerly map76.mp.

beginfig(1);
pair v[];
path pat;

a := 11cm;
b := 2.0cm;
n := 7;             % Number of circles.
d := 1.2cm;
r := d/2;
q := 2mm;
qq := 0;
s := 1.5mm;
e := d*1.0;
v0 := (0,0);
v1 := v0 + (a,0);

penLN := 0.5bp;
penPT := 2.5bp;
penCURVE := 1.5bp;

pickup pencircle scaled penLN;

% The base space.
draw v0--v1;

v2 := v0 + (e, b);
v3 := v1 + (-e, b);
for i=0 upto n-1:
    v4 := (i/(n-1))[v2, v3];
    v5 := v4 + (0,-b);
    draw fullcircle scaled d shifted v4;
    drawarrow (v4+(0,-r-q))--(v5+(0,q));
    endfor

label.lft(btex $E$ etex, v0+(-s,b));
label.lft(btex $\pi$ etex, v0+(-s,b/2));
label.lft(btex $B$ etex, v0+(-s,0));

for i=0 upto n-1:
    v4 := (i/(n-1))[v2, v3];
    ii := 2(i+1)/n - 1;
    v[20+i] := v4+(0,r*(0.6-ii*ii*0.6));
    endfor
pickup pencircle scaled penCURVE;
pat := for i=0 upto n-2:
    v[20+i]..
    endfor
    v[20+n-1];
draw pat withcolor 0.7white;

pickup pencircle scaled penPT;
for i=0 upto n-1:
    draw v[20+i];
    endfor

pickup pencircle scaled penPT;
i := 0;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
label.bot(btex \strut$b_1$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b_1\}\right)$ etex,
 v4+(0,r+qq));
v6 := v[20+i];
label.bot(btex \strut$\scriptstyle\psi_f(b_1)$ etex, v6);

i := 2;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
label.bot(btex \strut$b_2$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b_2\}\right)$ etex,
 v4+(0,r+qq));
v6 := v[20+i];
label.bot(btex \strut$\scriptstyle\psi_f(b_2)$ etex, v6);

i := n-2;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
label.bot(btex \strut$b$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b\}\right)$ etex,
 v4+(0,r+qq));
v6 := v[20+i];
label.bot(btex \strut$\scriptstyle f$ etex, v6);

endfig;
end
