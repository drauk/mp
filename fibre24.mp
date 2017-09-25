% tex/conc/mp/fibre24.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/fibre24.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Curvature of connection on an ordinary fibre bundle.
% Formerly map128.mp.

input mapmax
input gridmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
numeric t[];
pair p[], q[], v[], zz[];
path pat[];
color col[];

m := 8;
n := 8;
mm := 3;
nn := 3;
unit := 2.5cm;
ht := 1.5cm;
dd := 0.3;

% Some fake perspective.
t0 := 1.4ht;
t1 := 1.0ht;
t2 := 1.2ht;
t3 := 0.9ht;
penGRID := 1.2bp;               % Grid line thickness.
penPORT := 0.7bp;               % Transport arrows.
penVERT := 0.5bp;
penCIRC := 0.5bp;
penARROW := 0.5bp;
penPT := 2.3bp;

col1 := 0.75white;              % Grid colour.
col2 := 0.92white;              % Colour for fill of circles.

p0 := (0,0) * unit;             % Bottom.
p1 := (1,1) * unit;             % Right.
p2 := (-1.6,0.4) * unit;        % Left.
p3 := (-0.2,1.22) * unit;       % Top.

p11 := 0.5[p0,p1] + (0,0.2) * unit;
p12 := 0.5[p0,p2] + (0,0.1) * unit;
p13 := 0.5[p2,p3] + (0,0.2) * unit;
p14 := 0.5[p1,p3] + (0,0.1) * unit;

pat1 := p0..p11..p1;            % Lower right.
pat2 := p0..p12..p2;            % Lower left.
pat3 := p2..p13..p3;            % Upper left.
pat4 := p1..p14..p3;            % Upper right.

pickup pencircle scaled penGRID;
G_grid(pat)(m, n, mm, nn, 0, 0, col1);

for i:=0 upto 3:
    q[i] := p[i] + (0,t[i]);
    endfor

q11 := 0.5[q0,q1] + (0,0.2) * unit;
q12 := 0.5[q0,q2] + (0,0.1) * unit;
q13 := 0.5[q2,q3] + (0,0.2) * unit;
q14 := 0.5[q1,q3] + (0,0.1) * unit;

pat5 := q0..q11..q1;            % Lower right.
pat6 := q0..q12..q2;            % Lower left.
pat7 := q2..q13..q3;            % Upper left.
pat8 := q1..q14..q3;            % Upper right.

% Draw some curves between the fibres.
pickup pencircle scaled penPORT;
drawarrow subpath(0.2,1.75) of pat5;
drawarrow reverse (subpath(0.2,1.78) of pat6);
drawarrow subpath(0.2,1.82) of pat7;
drawarrow reverse (subpath(0.2,1.8) of pat8);

% Draw the fibres at the vertices.
for i:=0 upto 3:
    pickup pencircle scaled penVERT;
    draw p[i]--(q[i]+(0,-dd*t[i]/2));

    pickup pencircle scaled penCIRC;
    fill fullcircle scaled (dd*t[i]) shifted q[i] withcolor col2;
    draw fullcircle scaled (dd*t[i]) shifted q[i];
    endfor

% Labels for vertices.
label.rt(btex $\gamma(s,0)$ etex, p0);
label.rt(btex $\gamma(s,t)$ etex, p1);
label.lft(btex $\gamma(0,0)$ etex, p2);
label.ulft(btex $\gamma(0,t)$ etex, p3);

label.rt(btex $E_{\gamma(s,0)}$ etex, q0+(dd*t0/2,0)rotated-55);
label.top(btex $E_{\gamma(s,t)}$ etex, q1+(dd*t1/2,0)rotated110);
label.ulft(btex $E_{\gamma(0,0)}$ etex, q2+(dd*t2/2,0)rotated90);
label.ulft(btex $E_{\gamma(0,t)}$ etex, q3+(dd*t3/2,0)rotated80);

% Point in starting fibre.
zz1 := q2 + (0.2dd*t2,0);
zz2 := q1 + (-0.2dd*t1,1.5pt);
zz3 := q1 + (-0.2dd*t1,-1.5pt);
zz6 := q0 + (-0.03dd*t0,-0.8pt);
zz7 := q3 + (-0.03dd*t3,0.8pt);
pickup pencircle scaled penPT;
draw zz1;
draw zz2;
draw zz3;
draw zz6;
draw zz7;
label.lft(btex $z$ etex, zz1);

zz4 := zz2 + (20pt,10pt);
zz5 := zz3 + (20pt,-10pt);
pickup pencircle scaled penARROW;
S_arrowspaces(zz4, zz2, 0, 2pt, 1, black);
S_arrowspaces(zz5, zz3, 0, 2pt, 1, black);
label.rt(btex $\tilde\gamma^z_2(s,t)$ etex, zz4);
label.rt(btex $\tilde\gamma^z_1(s,t)$ etex, zz5);

endfig;
end
