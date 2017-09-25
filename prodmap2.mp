% tex/conc/mp/prodmap2.mp   2015-9-24   Alan U. Kennington.
% $Id: tex/conc/mp/prodmap2.mp 259c107b1f 2015-09-24 10:22:38Z Alan U. Kennington $
% Maps and spaces for the pointwise Cartesian product of two functions.

input mapmax
verbatimtex
\input dgmpmax
etex

beginfig(1);
pair p[], w[];
color col[];

d := 1.0cm;
sepA := 6pt;
sepB := 2pt;
nn := 6;
qA := d*0.5 + sepA;
qB := d*0.7 + sepA;
qC := d/nn*0.5 + sepA;
qD := d*0.5 + sepB;
nA := 3;                % Point b. Set A.
nB := nn - 2;           % Point a. Set B.

a := 2.5cm;
b := a;
penLN := 0.5bp;
penARROW := 0.5bp;
col1 := 0.9white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Centres of sets.
w0 := (0,0);            % Set X.
w1 := w0+(0,-b);        % Set A.
w2 := w0+(a,0);         % Set B.
w4 := w0+(a,-b);        % Set A x B.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
p0 := w0 + 0.5*(-d,-d);
p1 := w1 + 0.5*(-d,-d/nn);
p2 := w2 + 0.5*(-d/nn,-d);
p4 := w4 + 0.5*(-d,-d);

p10 := p0 + (0, nA*d/nn);
p11 := p0 + (nB*d/nn, 0);
p12 := p1 + (nB*d/nn, 0);       % Point a.
p13 := p2 + (0, nA*d/nn);       % Point b.
p14 := p4 + (0, nA*d/nn);
p15 := p4 + (nB*d/nn, 0);
fill p10--(p10+(d,0))--(p10+(d,-d/nn))--(p10+(0,-d/nn))--cycle withcolor col1;
fill p11--(p11+(0,d))--(p11+(d/nn,d))--(p11+(d/nn,0))--cycle withcolor col1;
fill p12--(p12+(0,d/nn))--(p12+(d/nn,d/nn))--(p12+(d/nn,0))--cycle
 withcolor col1;
fill p13--(p13+(0,-d/nn))--(p13+(d/nn,-d/nn))--(p13+(d/nn,0))--cycle
 withcolor col1;
fill p14--(p14+(d,0))--(p14+(d,-d/nn))--(p14+(0,-d/nn))--cycle withcolor col1;
fill p15--(p15+(0,d))--(p15+(d/nn,d))--(p15+(d/nn,0))--cycle withcolor col1;

for i=0 upto nn:
    draw (p0+(0,i*d/nn))--(p0+(d,i*d/nn));
    draw (p0+(i*d/nn,0))--(p0+(i*d/nn,d));

    draw (p1+(i*d/nn,0))--(p1+(i*d/nn,d/nn));
    draw (p2+(0,i*d/nn))--(p2+(d/nn,i*d/nn));

    draw (p4+(0,i*d/nn))--(p4+(d,i*d/nn));
    draw (p4+(i*d/nn,0))--(p4+(i*d/nn,d));
    endfor
for i=0 upto 1:
    draw (p1+(0,i*d/nn))--(p1+(d,i*d/nn));
    draw (p2+(i*d/nn,0))--(p2+(i*d/nn,d));
    endfor

% Labels for sets.
label.ulft(btex $X$ etex, w0+(-qD,qD));
label.lft(btex $A$ etex, w1-(qD,0));
label.rt(btex $B$ etex, w2+(qD,0));
label.rt(btex $A\times B$ etex, w4+(qD,0));

label.bot(btex $a$ etex, p12+(d/nn/2,0));
label.rt(btex $b$ etex, p13+(d/nn,-d/nn/2));
label.lft(btex $g^{-1}(\{b\})$ etex, p10 + (-sepB,-d/nn/2));
label.urt(btex $f^{-1}(\{a\})$ etex, p11 + (d/nn/2-4pt,d+sepB));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Arrows and labels.
pickup pencircle scaled penARROW;
S_arrowspaces(w0, w1, qA, qC, 1, black);
S_arrowspaces(w0, w2, qA, qC, 1, black);
S_arrowspaces(w0, w4, qB, qB, 1, black);
S_arrowspaces(w4, w1, qA, qA, 1, black);
S_arrowspaces(w4, w2, qA, qA, 1, black);

% Labels on the arrows.
label.lft(btex $f$ etex, 0.5[w0,w1]);
label.top(btex $g$ etex, 0.5[w0,w2]);
S_tiltlabel(btex $f\dottimes g$ etex, 0.5[w0,w4], angle(w4-w0));
label.bot(btex\strut $\Pi_1$ etex, 0.5[w4,w1]);
label.rt(btex $\Pi_2$ etex, 0.5[w4,w2]);

endfig;
end
