% tex/conc/mp/box6.mp   2009-1-26   Alan Kennington.
% $Id: tex/conc/mp/box6.mp 7538245e51 2009-01-26 01:18:10Z Alan U. Kennington $
% The Russell's paradox set interpreted as computer directories/folders.

% prologues := 1;
input boxmax.mp

verbatimtex
\font\smallrm cmr7
\font\smalllrm cmr5
etex

beginfig(1);
numeric w[], h[];
pair    p[], q[];
path    pat[];
color   col;

dd := 13pt;             % Height of title bar on box.
qq := 2/3;              % Aspect ratio of boxes.
col := 0.90white;

rat := 0.72;
qa := 0.08;
qb := -0.08;
dx := 1.5cm;

w0 := 6cm;
h0 := qq * w0;
w1 := rat * w0;
h1 := rat * h0;
w2 := rat * w1;
h2 := rat * h1;

p0 := (0, 0);
p1 := p0 + (qa * w0, qb * h0);
p2 := p1 + (qa * w1, qb * h1);

p10 := p0 + (w0 + dx, 0);
p11 := p10 + (qa * w0, qb * h0);
p12 := p11 + (qa * w1, qb * h1);

B_draw_box_bar(0, w0, h0, p0, dd, col, btex universe $U=\{Q\}$ etex);
B_draw_box_bar(1, w1, h1, p1, dd, col, btex $Q=\{x\in U;\,x\notin x\}$ etex);
% B_draw_box_bar(2, w2, h2, p2, dd, col, btex $Q=\{x\in U;\,x\notin x\}$ etex);

B_draw_box_bar(10, w0, h0, p10, dd, col, btex universe $U=\{Q\}$ etex);
B_draw_box_bar(11, w1, h1, p11, dd, col, btex $Q=\{x\in U;\,x\notin x\}$ etex);
B_draw_box_bar(12, w2, h2, p12, dd, col, btex $Q=\{x\in U;\,x\notin x\}$ etex);

B_margset(2.5pt, 2.5pt);
B_arrow(0, 10, 3);

endfig;
end
