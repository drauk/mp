% tex/conc/mp/box1.mp   2006-12-11   Alan Kennington.
% $Id: tex/conc/mp/box1.mp 66f3f9720b 2009-01-07 07:57:27Z Alan U. Kennington $
% Medieval trivium and quadrivium.

input boxmax.mp

% This needs to be in every file where it is used.
% Can't be included from an mp macro file.
verbatimtex \input dgmpmax etex
verbatimtex \input akmath etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[], q[];
numeric w[], h[];
color col;
col := 0.65 white;

w1 := 80pt;
h1 := 50pt;
w2 := 32pt;
h2 := 16pt;
w10 := 2.5pt;       % Boxes around the topic groups.
w11 := 0.5w10;

p1 := (0,0);
p2 := p1 + (w1,0);
p3 := p2 + (w1,0);

p4 := p1 + (-0.5w1,-h1);
p5 := p4 + (w1,0);
p6 := p5 + (w1,0);
p7 := p6 + (w1,0);

q1 := p1 + (-w2,h2);
q2 := p3 + (w2,h2);
q3 := p3 + (w2,-h2);
q4 := p1 + (-w2,-h2);

q5 := p4 + (-w2,h2);
q6 := p7 + (w2,h2);
q7 := p7 + (w2,-h2);
q8 := p4 + (-w2,-h2);

% Draw some container boxes.
pickup pencircle scaled w10;

draw q1--q2--q3--q4--cycle withcolor col;
draw q5--q6--q7--q8--cycle withcolor col;

label.top(btex trivium etex, 0.5[q1,q2] + (0,w11));
label.bot(btex quadrivium etex, 0.5[q7,q8] + (0,-w11));

% Trivium.
pickup pencircle scaled 0.4pt;
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}grammar\cr}etex, p1);

B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}rhetoric\cr}etex, p2);

B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}logic\cr}etex, p3);

% Quadrivium.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}arithmetic\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}geometry\cr}etex, p5);

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}astronomy\cr}etex, p6);

B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}music\cr}etex, p7);

% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(1,4,1);
B_arrow(3,4,1);
B_arrow(4,5,1);
B_arrow(5,6,1);

endfig;
end
