% tex/conc/mp/vec8.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/vec8.mp 09c178b650 2012-05-08 03:58:47Z Alan U. Kennington $
% Parallel motion under a connection, part 2.
% Formerly map22.mp.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair a, b, c, e, eg, f, fg, g, gg, h, p, q, v, zg;

a := (3.6cm, 0.2cm);            % v vector
b := (0, 1.5cm);                % z vector
zg := (-1.0cm,0.7cm);           % zg vector.
c := (0,0);                     % Centre of picture.
e := (0.8cm,-0.2cm);            % rho(z)
eg := (0.3cm, 0.3cm);           % rho(zg)
f := e rotated 90 scaled 0.3;
g := e rotated 90 scaled 0.1;
fg := eg rotated 90 scaled 0.3;
gg := eg rotated 90 scaled 0.1;
h := a/20;
d := 1;                         % dashes scale
dd := 0.5;                      % dashes scale
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

pickup pencircle scaled penLN;
p := c;
q := p+zg;
drawarrow p--q;
label.top(btex $zg$ etex, q);

%---------------------------------------
% Stuff on the right.
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
drawarrow (c+b+h)--p..v..q dashed evenly scaled dd;
label.top(btex $\konZ_z(v)+o(v)$ etex, v+g);

% Same thing "rotated" by g.
p := c+a;
q := p+zg;
drawarrow p--q dashed evenly scaled d withcolor 0.5white;

p := c+a;
q := p+zg+eg;
drawarrow p--q;

p := c+a+zg+fg;
q := p+eg;
v := 0.5[p,q]+gg;
drawarrow (c+zg+h)--p..v..q dashed evenly scaled dd;
label.lft(btex $\konZ_{zg}(v)+o(v)$ etex, v+gg);

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
drawarrow (c+b-h)--p..v..q dashed evenly scaled dd;
label.top(btex $\konZ_z(-v)+o(-v)$ etex, v+g);

% Same thing "rotated" by g.
p := c-a;
q := p+zg;
drawarrow p--q dashed evenly scaled d withcolor 0.5white;

p := c-a;
q := p+zg-eg;
drawarrow p--q;

p := c-a+zg+fg;
q := p-eg;
v := 0.5[p,q]+gg;
drawarrow (c+zg-h)--p..v..q dashed evenly scaled dd;
label.ulft(btex $\konZ_{zg}(-v)+o(-v)$ etex, v+gg);

endfig;
end
