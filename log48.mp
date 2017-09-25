% tex/conc/mp/log48.mp   2014-12-5   Alan U. Kennington.
% $Id: tex/conc/mp/log48.mp 520f83f81b 2014-12-05 10:24:36Z Alan U. Kennington $
% Classes of cardinality of finite, mediate and infinite sets.

verbatimtex
% \input akmath
etex

beginfig(1);
pair w[];
color col[];

aa := 9.5cm;                 % Width of each row.
bb := 28pt;                 % Height of each row.
ratA := 0.25;
ratB := 0.5;
ratC := 0.75;
sepA := 11pt;

penLN := 0.5bp;
penPT := 2.5bp;

w0 := (0,0);    % Top left.
w1 := w0 + (0,-bb);
w2 := w1 + (0,-bb);
w3 := w2 + (0,-bb);
w4 := w3 + (0,-bb);
w5 := w4 + (0,-bb);
w6 := w5 + (0,-bb);

w10 := w0 + (aa,0);    % Top right
w11 := w10 + (0,-bb);
w12 := w11 + (0,-bb);
w13 := w12 + (0,-bb);
w14 := w13 + (0,-bb);
w15 := w14 + (0,-bb);
w16 := w15 + (0,-bb);

pickup pencircle scaled penLN;
draw w1--w11;
draw w2--w12;
draw w3--w13;
draw w4--w14;
% draw w5--w15;

draw (ratA[w1,w11])--(ratA[w5,w15]);
draw (ratB[w2,w12])--(ratB[w5,w15]);
draw (ratC[w3,w13])--(ratC[w5,w15]);

% draw w0--w10--w16--w6--cycle;
draw w0--w10--w15--w5--cycle;

label(btex\strut sets etex, 0.5[w0,w11]);

label(btex\strut finite etex, 0.5[w1,ratA[w2,w12]]);
label(btex\strut infinite etex, 0.5[ratA[w1,w11],w12]);

label(btex\strut finite etex, 0.5[w2,ratA[w3,w13]]);
label(btex\strut mediate etex, 0.5[ratA[w2,w12],ratB[w3,w13]]);
label(btex\strut $\omega$-infinite etex, 0.5[ratB[w2,w12],w13]);

label(btex\strut finite etex, 0.5[w3,ratA[w4,w14]]);
label(btex\strut mediate etex, 0.5[ratA[w3,w13],ratB[w4,w14]]);
label(btex\strut countably etex, 0.5[ratB[w3,w13],ratC[w4,w14]] + (0,sepA/2));
label(btex\strut infinite etex, 0.5[ratB[w3,w13],ratC[w4,w14]] + (0,-sepA/2));
label(btex\strut uncountably etex, 0.5[ratC[w3,w13],w14] + (0,sepA/2));
label(btex\strut $\omega$-infinite etex, 0.5[ratC[w3,w13],w14] + (0,-sepA/2));

label(btex\strut countable etex, 0.5[w4,ratA[w5,w15]]);
label(btex\strut uncountable etex, 0.5[ratA[w4,w14],ratB[w5,w15]]);
label(btex\strut countable etex, 0.5[ratB[w4,w14],ratC[w5,w15]]);
label(btex\strut uncountable etex, 0.5[ratC[w4,w14],w15]);

endfig;
end
