% tex/conc/mp/box5.mp   2009-1-5   Alan Kennington.
% $Id: tex/conc/mp/box5.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Universe set interpreted in context of computer directories/folders.

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

dd := 12pt;             % Height of title bar on box.
qq := 2/3;              % Aspect ratio of boxes.
col := 0.90white;

rat := 0.72;
qa := 0.08;
qb := -0.08;

w0 := 8cm;
h0 := qq * w0;
w1 := rat * w0;
h1 := rat * h0;
w2 := rat * w1;
h2 := rat * h1;
w3 := rat * w2;
h3 := rat * h2;
w4 := rat * w3;
h4 := rat * h3;
w5 := rat * w4;
h5 := rat * h4;
w6 := rat * w5;
h6 := rat * h5;
w7 := rat * w6;
h7 := rat * h6 * 0.8;
w8 := rat * w7;
h8 := rat * h7 * 0.4;
w9 := rat * w8;
h9 := rat * h8 * 0.7;

p0 := (0, 0);
p1 := p0 + (qa * w0, qb * h0);
p2 := p1 + (qa * w1, qb * h1);
p3 := p2 + (qa * w2, qb * h2);
p4 := p3 + (qa * w3, qb * h3 - 0.5pt);
p5 := p4 + (qa * w4, qb * h4 - 0.8pt);
p6 := p5 + (qa * w5, qb * h5 - 0.8pt);
p7 := p6 + (qa * w6, qb * h6 - 0.8pt);
p8 := p7 + (qa * w7, qb * h7 - 2.0pt);
p9 := p8 + (qa * w8 + 0.5pt, qb * h8 - 1.5pt);

B_draw_box_bar(0, w0, h0, p0, dd, col, btex universe $U_0$ etex);
B_draw_box_bar(1, w1, h1, p1, dd, col, btex universe $U_1$ etex);
B_draw_box_bar(2, w2, h2, p2, dd, col, btex universe $U_2$ etex);
B_draw_box_bar(3, w3, h3, p3, 0.7dd, col,
 btex\smallrm universe $\scriptstyle U_3$ etex);
B_draw_box_bar(4, w4, h4, p4, 0.7dd, col,
 btex\smallrm universe $\scriptstyle U_4$ etex);
B_draw_box_bar(5, w5, h5, p5, 0.5dd, col,
 btex\smalllrm universe $\scriptscriptstyle U_5$ etex);
B_draw_box_bar(6, w6, h6, p6, 0.5dd, col,
 btex\smalllrm universe 6 etex);
B_draw_box_bar(7, w7, h7, p7, 0.5dd, col,
 btex\smalllrm universe etex);
B_draw_box_bar(8, w8, h8, p8, 0.3dd, col,
 btex\smalllrm un\i v etex);

bboxmargin := 0.7pt;
% B_draw_box(9, w9, h9, p9);
B_draw(9, btex \dots etex, p9);

endfig;
end
