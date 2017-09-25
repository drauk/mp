% tex/conc/mp/vec7.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/vec7.mp 09c178b650 2012-05-08 03:58:47Z Alan U. Kennington $
% Parallel motion under a connection.
% Formerly map21.mp.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair a, b, c, e, f, g, h, p, q, v;

a := (3.0cm, 0.2cm);
b := (0, 1.5cm);
c := (0,0);
e := (0.8cm,-0.2cm);
f := e rotated 90 scaled 0.3;
g := e rotated 90 scaled 0.1;
h := a/20;
d := 1;
dd := 0.5;
penLN := 0.5bp;
penPT := 2.5bp;

pickup pencircle scaled penLN;
p := c;
q := p+b;
drawarrow p--q;
label.top(btex $z$ etex, q);
label.bot(btex $p=\pi(z)$ etex, p);
pickup pencircle scaled penPT;
draw p;

%---------------------------------------
% Stuff on the right.
pickup pencircle scaled penLN;
p := c+h;
q := c+a-h;
drawarrow p--q;
label.bot(btex $v$ etex, 0.5[p,q]);

p := c+a;
q := p+b;
drawarrow p--q dashed evenly scaled d withcolor 0.5white;

p := c+a;
q := p+b+e;
drawarrow p--q;

p := c+a+b+f;
q := p+e;
v := 0.5[p,q]+g;
drawarrow (c+b+2h)--p..v..q dashed evenly scaled dd;
label.top(btex $\konZ_z(v)+o(v)$ etex, v+g);

%---------------------------------------
% Stuff on the left.
p := c-h;
q := c-a+h;
drawarrow p--q;
label.bot(btex $-v$ etex, 0.5[p,q]);

p := c-a;
q := p+b;
drawarrow p--q dashed evenly scaled d withcolor 0.5white;

p := c-a;
q := p+b-e;
drawarrow p--q;

p := c-a+b+f;
q := p-e;
v := 0.5[p,q]+g;
drawarrow (c+b-2h)--p..v..q dashed evenly scaled dd;
label.top(btex $\konZ_z(-v)+o(-v)$ etex, v+g);

endfig;
end
