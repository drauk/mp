% tex/conc/mp/fibre23.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fibre23.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Deviation from parallelism in fibre bundle.
% Formerly map127.mp.

input mapmax
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
penARROW := 0.5bp;
penPT := 2.5bp;
penDOT := 2.0bp;
penLN := 0.5bp;
penREALS := 0.5bp;

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

pickup pencircle scaled penARROW;
col1 := 0.38white;
col2 := 0.92white;
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

q0 := (0.7,0);
q1 := (q0 rotated 0) scaled rre shifted p20;
q2 := (q0 rotated -20) scaled rre shifted p21;
q3 := (q0 rotated -40) scaled rre shifted p32;
q4 := (q0 rotated -60) scaled rre shifted p33;
q5 := (q0 rotated -80) scaled rre shifted p34;

q10 := (0.7,0);
q11 := (q10 rotated 0) scaled rre shifted p20;
q12 := (q10 rotated 10) scaled rre shifted p21;
q13 := (q10 rotated 15) scaled rre shifted p32;
q14 := (q10 rotated 20) scaled rre shifted p33;
q15 := (q10 rotated 30) scaled rre shifted p34;

pickup pencircle scaled penDOT;
draw q1;
draw q2;
draw q3;
draw q4;
draw q5;

draw q11;
draw q12;
draw q13;
draw q14;
draw q15;

pickup pencircle scaled penLN;
draw fullcircle scaled dd shifted p20;
draw fullcircle scaled dd shifted p21;
draw fullcircle scaled dd shifted p32;
draw fullcircle scaled dd shifted p33;
draw fullcircle scaled dd shifted p34;
label.bot(btex $\ppara^\gamma_{s,t}$ etex, p22);
label.top(btex $V\circ\gamma$ etex, p22);
label.ulft(btex $E_p$ etex, p23);
label.urt(btex $E_q$ etex, p24);

pickup pencircle scaled penPT;
draw p10;
draw p11;
label.bot(btex \strut$\llap{$\gamma(s)={}$}p$ etex, p10);
label.bot(btex \strut$q\rlap{${}=\gamma(t)$}$ etex, p11);

% Draw the interval set.
ax := 1.6cm;
ay := 0.1cm;
zz1 := p0 + (2.1cm,-2.1cm);         % Location of real interval.
zz2 := 0.5[p10,p11] + (0,-0.4cm);   % End of arrow.
zz3 := 0.5[zz1,zz2];                % Point for label on arrow.
zz4 := point 4.5 of pat1;           % Point for label on curve's path.

S_reals(zz1, ax, ay, pencircle scaled penREALS);
label.lrt(btex $s,t$ etex, zz1 + (ax,0));
label.bot(btex \strut$I_\gamma=\Domain(\gamma)$ etex, zz1 + (-ax,0));
label.lrt(btex $\gamma$ etex, zz3);
label.bot(btex \strut$\Range(\gamma)\subseteq B$ etex, zz4);

pickup pencircle scaled penARROW;
S_arrowspaces(zz1, zz2, 5mm, 4mm, 1, black);

pickup pencircle scaled penLN;
pat2 := q1..q2..q3..q4..q5;
pat3 := q11..q12..q13..q14..q15;
gap := 0.05;
drawarrow subpath(0,1-0.6gap) of pat2;
drawarrow subpath(1,2-0.8gap) of pat2;
drawarrow subpath(2,3-gap) of pat2;
drawarrow subpath(3,4-gap) of pat2;

drawarrow subpath(0,1-0.6gap) of pat3;
drawarrow subpath(1,2-0.8gap) of pat3;
drawarrow subpath(2,3-gap) of pat3;
drawarrow subpath(3,4-gap) of pat3;

pickup pencircle scaled penARROW;
q20 := 0.5[q5,q15]+((4pt,0)rotated-25);
q21 := q20 + (3pt,3pt);
pat4 := q5..q20..q15;
drawarrow (subpath(0,1.8) of pat4) dashed evenly scaled 0.5;
label.lrt(btex deviation etex, q21);
label.lrt(btex from etex, q21 + (0,-10pt));
label.lrt(btex parallel etex, q21+(0,-20pt));
label.lrt(btex transport etex, q21+(0,-30pt));

label.lft(btex $z$ etex, q1);

endfig;
end
