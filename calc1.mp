% tex/conc/mp/calc1.mp   2015-7-18   Alan U. Kennington.
% $Id: tex/conc/mp/calc1.mp 013df6dd32 2015-07-18 10:04:09Z Alan U. Kennington $
% Inverse function theorem. Proof that the inverse is differentiable.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
numeric rnd[];
pair w[];
color col[];
path pat[];

dA := 2.1cm;                % region inside U
dAf := 0.85;
dAx := dAf * dA;

dB := 3.1cm;                % U

dC := 2.45cm;               % region inside f(U)

dD := 3.0cm;                % f(U)
dDf := 1.25;
dDx := dDf * dD;

rA := dA/2;
rAx := dAx/2;
rB := dB/2;
rC := dC/2;
rD := dD/2;
rDx := dDx/2;

qB := rB+2.5bp;
qD := rD+5.5bp;
qDx := rDx+2.5bp;
dL := 4pt;

aa := 3.9cm;
bb := 4.0cm;

col0 := 0.7 white;
col1 := 0.93 white;
col2 := 1.00 white;

penCIRC := 0.5bp;
penPT := 3.0bp;
penLN := 0.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Generate some pseudo-random numbers.
npts := 16;         % Number of points in each shape.
nsrA := 0.40;       % Noise-to-signal ratio.
nsrD := 0.2;        % Noise-to-signal ratio.
nsrV := 0.14;       % Noise-to-signal ratio.

% Bad pseudo-random number generator parameters.
rand_x := 993;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Values x on the real line and values f(x).
for i=0 upto 3*npts-1:
    % Create (bad) random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;

    % Random number in [-1,1).
    rnd[i] := -1 + 2 * (rand_x/rand_T);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of circles.
w0 := (0,0);
w1 := w0+(0,bb);

% The circles.
pat0 := (
for i=0 upto npts-1:
    ( (1+nsrA*rnd[i],0) rotated ((i/npts)*360) )..
    endfor
    cycle) scaled rA shifted w0;
pat1 := fullcircle scaled dB shifted w0;
pat2 := fullcircle scaled dC shifted w1;
% pat3 := fullcircle scaled dD xscaled dDf shifted w1;
pat3 := (
for i=0 upto npts-1:
    ( (1+nsrD*rnd[npts+i],0) rotated ((i/npts)*360) )..
    endfor
    cycle) scaled rD shifted w1;
pickup pencircle scaled penCIRC;
fill pat1 withcolor col1;
fill pat3 withcolor col1;
fill pat0 withcolor col2;
fill pat2 withcolor col2;
draw pat0;
draw pat1;
draw pat2;
draw pat3;

% Labels for the circles.
label.lft(btex $U$ etex, w0+(-rB,0));
label.rt(btex $B_{a,\delta_0}$ etex, w0+(rB,0));
label.lft(btex $f(U)$ etex, w1+(-rB,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Points inside circles.
w20 := w0+(-0.70rAx,-0.70rA);
w21 := w0+(0.65rAx,0.15rA);
w22 := w0+(0.25rC,-0.88rA);
% Wobbly line.
w40 := (w21-w20) rotated 135;
pat9 := w20..
for i=1 upto npts-2:
    ((i/npts)[w20,w21] - nsrV * rnd[2*npts+i] * w40)..
    endfor
    w21;
pickup pencircle scaled penLN;
% draw w20--w21;
draw pat9;
pickup pencircle scaled penPT;
draw w0;
draw w20;
draw w21;
label.lft(btex $a$ etex, w0);
% label.bot(btex $x$ etex, w20);
label.lft(btex $x$ etex, w20);
% label.ulft(btex\strut $v(0)$ etex, w20+(3pt,-1pt));
label.ulft(btex\strut $x+v(1)$ etex, w21+(6pt,0pt));
label(btex\strut $g(B_{z,r'})$ etex, w22);

w25 := w1+(0,0);
w26 := w1+(0.65rC,0.35rC);
w27 := w1+(0,-0.65rC);
pickup pencircle scaled penLN;
draw w25--w26;
pickup pencircle scaled penPT;
draw w25;
draw w26;
label.lft(btex\strut $z$ etex, w25);
label.ulft(btex\strut $z+w$ etex, w26+(5pt,-2pt));
label(btex\strut $B_{z,r'}$ etex, w27);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Horizontal arrows.
pickup pencircle scaled penLN;
w30 := w0+(-dL,0);
w31 := w1+(-dL,0);
w32 := w0+(dL,0);
w33 := w1+(dL,0);
S_arrowspaces(w30, w31, qB, qD, 1, black);
label.lft(btex $f$ etex, 0.5[w30,w31]);
S_arrowspaces(w32, w33, qB, qD, 2, black);
label.rt(btex $g$ etex, 0.5[w32,w33]);

endfig;
end
