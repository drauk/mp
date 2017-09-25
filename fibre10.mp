% tex/conc/mp/fibre10.mp   2016-5-13   Alan U. Kennington.
% $Id: tex/conc/mp/fibre10.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Fibre space: partition of total space into fibres.

verbatimtex
\input dgspell
etex

beginfig(1);
pair v[];
path pat;

a := 11cm;
b := 2.5cm;
n := 7;             % Number of circles.
d := 1.2cm;
r := d/2;
q := 2mm;
qq := 0;
s := 1.5mm;
e := d*1.0;
penLN := 0.5bp;
penPT := 2.5bp;

v0 := (0,0);
v1 := v0 + (a,0);

% The base space.
pickup pencircle scaled penLN;
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

% label.rt(btex total space etex, v1+(s,b+6pt));
% label.rt(btex partitioned into \fibre/s etex, v1+(s,b-6pt));
% label.rt(btex projection map etex, v1+(s,b/2));
% label.rt(btex base space etex, v1+(s,0));

i := 0;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
pickup pencircle scaled penPT;
draw v5;
label.bot(btex \strut$b_1$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b_1\}\right)$ etex,
 v4+(0,r+qq));
v6 := v4+(r*0.7,0);
draw v6;
label.lft(btex $\scriptstyle\psi_f(b_1)$ etex, v6);

i := 2;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
label.bot(btex \strut$b_2$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b_2\}\right)$ etex,
 v4+(0,r+qq));
v6 := v4+(r*0.7,0);
draw v6;
label.lft(btex $\scriptstyle\psi_f(b_2)$ etex, v6);

i := n-2;
v4 := (i/(n-1))[v2, v3];
v5 := v4 + (0,-b);
draw v5;
label.bot(btex \strut$b$ etex, v5+(0,-qq));
label.top(btex \strut$\scriptstyle\pi^{-1}\left(\{b\}\right)$ etex,
 v4+(0,r+qq));
v6 := v4+(r*0.2,0);
draw v6;
label.lft(btex $\scriptstyle f$ etex, v6);

endfig;
end
