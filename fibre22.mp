% tex/conc/mp/fibre22.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibre22.mp 8baaf0bddc 2012-05-07 13:25:39Z Alan U. Kennington $
% Topological parallelism structure.
% Formerly map126.mp.

input mapmax.mp
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
numeric t[];
pair p[], q[], v[], zz[];
path pat[];
string ss;
color col[];

% Pseudo-random number generation. (Very poor!!)
rand_x := 919;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

unit := 1cm;
a := 2;
dd := 0.8cm;
rre := 0.4dd;
bb := 1.7cm;
nn := 15;
ff := 0.25;
penCURVE := 1.5bp;
penLN := 0.5bp;
penREAL := 0.5bp;
penDOT := 1.6bp;
penPT := 2.5bp;

for i=1 upto nn:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    rrr := ff + (rand_x/rand_T)*(1 - ff);
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    q[i] := (rrr,0) rotated ((rand_x/rand_T)*360);
    endfor

p0 := (0,0)*unit;
p1 := p0 + (a,0.5)*unit;
p2 := p1 + (a,-0.5)*unit;
p3 := p2 + (a,0.8)*unit*0.8;
p4 := p3 + (a,-0.8)*unit;
p5 := p4 + (a,-0.2)*unit;
pat1 := p0..p1..p2..p3..p4..p5;

% Draw the basic curve.
pickup pencircle scaled penCURVE;
draw subpath(0,5) of pat1 withcolor0.8white;

% Points p and q on curve/path.
t0 := 1.12;         % Attachment points.
t1 := 2.63;
dt := 0.6;
t2 := t1 + dt + 0.5;
t3 := t2 + dt;
t4 := t3 + dt;
p10 := point t0 of pat1;
p11 := point t1 of pat1;
p12 := point t2 of pat1;
p13 := point t3 of pat1;
p14 := point t4 of pat1;

% Fibres at p and q.
p20 := p10 + (0,bb);
p21 := p11 + (0,bb);
p22 := 0.5[p20,p21];
p23 := p20 + (-0.5dd,0);
p24 := p21 + (0.5dd,0);
p32 := p12 + (0,bb);
p33 := p13 + (0,bb);
p34 := p14 + (0,bb);

pickup pencircle scaled penLN;
col1 := 0.38white;
col2 := 0.88white;
draw p10--p20+(0,-dd/2) withcolor col1;
draw p11--p21+(0,-dd/2) withcolor col1;
draw p12--p32+(0,-dd/2) withcolor col1;
draw p13--p33+(0,-dd/2) withcolor col1;
draw p14--p34+(0,-dd/2) withcolor col1;

fill fullcircle scaled dd shifted p20 withcolor col2;
fill fullcircle scaled dd shifted p21 withcolor col2;
fill fullcircle scaled dd shifted p32 withcolor col2;
fill fullcircle scaled dd shifted p33 withcolor col2;
fill fullcircle scaled dd shifted p34 withcolor col2;

pickup pencircle scaled penDOT;
for i:=1 upto nn:
    draw (q[i] rotated 0) scaled rre shifted p20;
    draw (q[i] rotated 120) scaled rre shifted p21;
    draw (q[i] rotated 210) scaled rre shifted p32;
    draw (q[i] rotated 45) scaled rre shifted p33;
    draw (q[i] rotated -60) scaled rre shifted p34;
    endfor

pickup pencircle scaled penLN;
draw fullcircle scaled dd shifted p20;
draw fullcircle scaled dd shifted p21;
draw fullcircle scaled dd shifted p32;
draw fullcircle scaled dd shifted p33;
draw fullcircle scaled dd shifted p34;
label.top(btex $\ppara^\gamma_{s,t}$ etex, p22);
label.bot(btex $\scriptstyle{}\in\,\Iso_G(E_p,E_q)$ etex, p22);
label.ulft(btex $E_p$ etex, p23);
label.urt(btex $E_q$ etex, p24);

pickup pencircle scaled penPT;
draw p10;
draw p11;
label.bot(btex \strut$\llap{$\gamma(s)={}$}p$ etex, p10);
label.bot(btex \strut$q\rlap{${}=\gamma(t)$}$ etex, p11);

% Draw the interval set.
ax := 1.3cm;
ay := 0.1cm;
zz1 := p0 + (1.8cm,-2.1cm);         % Location of real interval.
zz2 := 0.5[p10,p11] + (0,-0.4cm);   % End of arrow.
zz3 := 0.5[zz1,zz2];                % Point for label on arrow.
zz4 := point 4.5 of pat1;           % Point for label on curve's path.

S_reals(zz1, ax, ay, pencircle scaled penREAL);
label.lrt(btex $s,t$ etex, zz1 + (ax,0));
label.bot(btex \strut$I_\gamma$ etex, zz1 + (-ax,0));
label.lrt(btex $\gamma$ etex, zz3);
label.bot(btex \strut$\Range(\gamma)\subseteq B$ etex, zz4);

pickup pencircle scaled penLN;
S_arrowspaces(zz1, zz2, 5mm, 4mm, 1, black);
S_arrowspaces(p20, p21, 0.6dd, 0.6dd, 1, black);

endfig;
end
