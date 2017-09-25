% tex/conc/mp/fibre9.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/fibre9.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Fibre space: partition of total space into fibres.

verbatimtex
\input dgspell
etex

beginfig(1);
pair v[];
path pat;

a := 9cm;
b := 2.0cm;
n := 7;             % Number of circles.
d := b/3;
r := d/2;
q := 2mm;
qq := 0;
s := 1.5mm;
e := d*1.0;
sepA := 6pt;

penLN := 0.5bp;
penPT := 2.5bp;

v0 := (0,0);
v1 := v0 + (a,0);

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

label.rt(btex \strut total space etex, v1+(s,b+sepA+12pt));
label.rt(btex \strut partitioned etex, v1+(s,b+sepA));
label.rt(btex \strut into \fibre/ sets etex, v1+(s,b+sepA-12pt));
label.rt(btex \strut projection map etex, v1+(s,b/2));
label.rt(btex \strut base space etex, v1+(s,0));

pickup pencircle scaled penPT;
i := 0;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
label.bot(btex \strut$b_1$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b_1\}\right)$ etex,
 v4+(0,r+qq));

i := 2;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
defaultfont := "cmr10";
label.bot(btex \strut$b_2$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b_2\}\right)$ etex,
 v4+(0,r+qq));

i := n-2;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
defaultfont := "cmr10";
label.bot(btex \strut$b$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b\}\right)$ etex,
 v4+(0,r+qq));

endfig;
end
