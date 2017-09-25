% tex/conc/mp/misc14.mp   2012-3-15   Alan U. Kennington.
% $Id: tex/conc/mp/misc14.mp b74e15e676 2012-03-14 13:53:42Z Alan U. Kennington $
% Proof of the Schr\"oder-Bernstein theorem.

beginfig(1);
pair    p[], q[];
path    pat[];

ww := 2.0cm;
hh := 0.7cm;
aa := ww + 2.5cm;
dd := 18pt;
ee := 3.2pt;
ff := 4pt;
nbox := 6;

p0 := (0,0);
p1 := p0 + (ww,0);
p2 := p1 + (0,-hh);
p3 := p2 + (-ww,0);

p10 := p0 + (aa,0);
p11 := p1 + (aa,0);

q1 := 0.5[p0,p2];
q11 := q1 + (aa,0);

penpt := 3.0pt;
penln := 0.5bp;

pat1 := p0--p1--p2--p3--cycle;

pickup pencircle scaled penln;
for i=0 upto nbox-1:
    draw pat1 shifted (0,-i*hh);
    draw pat1 shifted (aa,-i*hh);
    endfor

label.lft(btex $X$ etex, p0);
label.lft(btex $g(Y)$ etex, p0+(0,-hh));
label.lft(btex $g(f(X))$ etex, p0+(0,-2hh));
label.lft(btex $g(f(g(Y)))$ etex, p0+(0,-3hh));
label.lft(btex $g(f(g(f(X))))$ etex, p0+(0,-4hh));
label.lft(btex $g(f(g(f(g(Y)))))$ etex, p0+(0,-5hh));
label.lft(btex $g(f(g(f(g(f(X))))))$ etex, p0+(0,-6hh));

label.rt(btex $A_0$ etex, p1);
label.rt(btex $B_0$ etex, p1+(0,-hh));
label.rt(btex $A_1$ etex, p1+(0,-2hh));
label.rt(btex $B_1$ etex, p1+(0,-3hh));
label.rt(btex $A_2$ etex, p1+(0,-4hh));
label.rt(btex $B_2$ etex, p1+(0,-5hh));
label.rt(btex $A_3$ etex, p1+(0,-6hh));

label.lft(btex $C_0$ etex, p10);
label.lft(btex $D_0$ etex, p10+(0,-hh));
label.lft(btex $C_1$ etex, p10+(0,-2hh));
label.lft(btex $D_1$ etex, p10+(0,-3hh));
label.lft(btex $C_2$ etex, p10+(0,-4hh));
label.lft(btex $D_2$ etex, p10+(0,-5hh));
label.lft(btex $C_3$ etex, p10+(0,-6hh));

label.rt(btex $Y$ etex, p11);
label.rt(btex $f(X)$ etex, p11+(0,-hh));
label.rt(btex $f(g(Y))$ etex, p11+(0,-2hh));
label.rt(btex $f(g(f(X)))$ etex, p11+(0,-3hh));
label.rt(btex $f(g(f(g(Y))))$ etex, p11+(0,-4hh));
label.rt(btex $f(g(f(g(f(X)))))$ etex, p11+(0,-5hh));
label.rt(btex $f(g(f(g(f(g(Y))))))$ etex, p11+(0,-6hh));

label(btex $X_0$ etex, q1+(0,-hh));
label(btex $X_1$ etex, q1+(0,-3hh));
label(btex $X_2$ etex, q1+(0,-5hh));

drawarrow (p1+(dd,-ee))--(p10+(-dd,ee-hh));
drawarrow (p1+(dd,-ee-hh))--(p10+(-dd,ee-2hh));
drawarrow (p1+(dd,-ee-2hh))--(p10+(-dd,ee-3hh));
drawarrow (p1+(dd,-ee-3hh))--(p10+(-dd,ee-4hh));
drawarrow (p1+(dd,-ee-4hh))--(p10+(-dd,ee-5hh));
drawarrow (p1+(dd,-ee-5hh))--(p10+(-dd,ee-6hh));

drawarrow (p10+(-dd,-ee))--(p1+(dd,ee-hh));
drawarrow (p10+(-dd,-ee-hh))--(p1+(dd,ee-2hh));
drawarrow (p10+(-dd,-ee-2hh))--(p1+(dd,ee-3hh));
drawarrow (p10+(-dd,-ee-3hh))--(p1+(dd,ee-4hh));
drawarrow (p10+(-dd,-ee-4hh))--(p1+(dd,ee-5hh));
drawarrow (p10+(-dd,-ee-5hh))--(p1+(dd,ee-6hh));

label.urt(btex $f$ etex, p1+(dd,-ee));
label.ulft(btex $g$ etex, p10+(-dd,-ee));

label.bot(btex \dots etex, 0.5[p0,p1]+(0,-nbox*hh-ff));
label.bot(btex \dots etex, 0.5[p10,p11]+(0,-nbox*hh-ff));

endfig;
end
