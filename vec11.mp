% tex/conc/mp/vec11.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/vec11.mp ec2798f5c7 2012-05-08 06:03:12Z Alan U. Kennington $
% Parallel translation of a vector, coordinate vectors.
% Based on vec9.mp, which uses tangent operators.
% Formerly map74.mp.

input mapmax.mp

beginfig(1);
pair p[], q[];
numeric w[], h[], a[];
color col[];

penAXIS := 0.5bp;
penARROW := 0.5bp;

p0 := (0,0);

w1 := 1cm;
h1 := 1cm;
w2 := w1/2;
h2 := h1/4;

% Rotation angles of axes.
a1 := 3.5;
a2 := -10;
a3 := 12;

p1 := p0;
p2 := p1 + (5cm,2cm);
p3 := p1 + (8cm,-1.8cm);

% The w-vectors.
q1 := (w1,h1);
q2 := q1+(w1/3,-h1/8);
q3 := q1+(w1/10,h1/2);

% Draw axes.
pickup pencircle scaled penAXIS;
for i=1 upto 3:
    drawarrow p[i]+((-w2,0)rotated a[i])..p[i]+((w1,0)rotated a[i]);
    drawarrow p[i]+((0,-h2)rotated a[i])..p[i]+((0,h1)rotated a[i]);
    drawarrow p[i]..p[i]+(q[i] rotated a[i]);
    endfor
for i=2 upto 3:
    drawarrow p[i]..p[i]+(q[1] rotated a[i]) dashed evenly;
    endfor

% Labels. MetaPost doesn't seem to have variables inside btex/etex!
draw thelabel.urt(btex $w$ etex, q[1]) rotated a[1] shifted p[1];
draw thelabel.urt(btex $w_1=w+u_1$ etex, q[2]) rotated a[2] shifted p[2];
draw thelabel.urt(btex $w_2=w+u_2$ etex, q[3]) rotated a[3] shifted p[3];

draw thelabel.rt(btex $e_1^{p,\psi}$ etex,
 (w1,0)) rotated a[1] shifted p[1];
draw thelabel.rt(btex $e_1^{p_1,\psi}$ etex,
 (w1,0)) rotated a[2] shifted p[2];
draw thelabel.rt(btex $e_1^{p_2,\psi}$ etex,
 (w1,0)) rotated a[3] shifted p[3];

draw thelabel.top(btex $e_2^{p,\psi}$ etex,
 (0,h1)) rotated a[1] shifted p[1];
draw thelabel.top(btex $e_2^{p_1,\psi}$ etex,
 (0,h1)) rotated a[2] shifted p[2];
draw thelabel.top(btex $e_2^{p_2,\psi}$ etex,
 (0,h1)) rotated a[3] shifted p[3];

% Labels below tangent spaces.
draw thelabel.bot(btex $T_p(M)$ etex, (0,-h2)) rotated a[1] shifted p[1];
draw thelabel.bot(btex $T_{p_1}(M)$ etex, (0,-h2)) rotated a[2] shifted p[2];
draw thelabel.bot(btex $T_{p_2}(M)$ etex, (0,-h2)) rotated a[3] shifted p[3];

% Translation arrows.
col1 := 0.4white;
col2 := 0.6white;
pickup pencircle scaled penARROW;
S_arrowspaces(p1, p2, 2.2w1, 1.2w1, 1, col1);
S_arrowspaces(p1, p3, 2.2w1, 1.2w1, 1, col1);
S_arrowspaces(p2, p3, 1.2w1, 1.8w1, 1, col2);
label.top(btex $v_1$ etex, 0.55[p1,p2]);
label.bot(btex $v_2$ etex, 0.55[p1,p3]);
label.urt(btex $v_2-v_1$ etex, 0.42[p2,p3]);

endfig;
end
