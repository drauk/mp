% tex/conc/mp/box2.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/box2.mp 7beeb1e1fd 2012-04-30 07:37:19Z Alan U. Kennington $
% Magma, bedrock and sedimentary layers.

input boxmax.mp

verbatimtex
\input dgmpmax
\input akmath
etex

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
w3 := 40pt;
w4 := 64pt;
w10 := 2.5pt;       % Boxes around the topic groups.
w11 := 0.5w10;
www := 0.75;
w5 := www * w1;
h5 := www * h1;

p1 := (0,0);
p2 := p1 + (w1,0);
p3 := p2 + (w1,0);

p4 := p2 + (-2w1,-h1);
p5 := p4 + (w1,0);
p6 := p5 + (w1,0);
p7 := p6 + (w1,0);
p8 := p7 + (w1,0);

p10 := p2 + (0,h1);
p11 := p10 + (-w5,h5);
p12 := p10 + (0,h5);
p13 := p10 + (w5,h5);

% Big boxes around the little boxes.
q1 := p2 + (-w4,h2);
q2 := p2 + (w4,h2);
q3 := p2 + (w4,-h2);
q4 := p2 + (-w4,-h2);

q5 := p4 + (-w3,h2);
q6 := p8 + (w3,h2);
q7 := p8 + (w3,-h2);
q8 := p4 + (-w3,-h2);

q10 := p11 + (-w2,h2);
q11 := p13 + (w2,h2);
q12 := p13 + (w2,-h2 - h5);
q13 := p11 + (-w2,-h2 - h5);

% Draw some container boxes.
pickup pencircle scaled w10;

draw q1--q2--q3--q4--cycle withcolor col;
draw q5--q6--q7--q8--cycle withcolor col;
draw q10--q11--q12--q13--cycle withcolor col;

label.top(btex sedimentary layers (rigorous mathematics) etex,
 0.5[q10,q11] + (0,w11));
label.lft(btex bedrock layer etex, 0.5[q1,q4] + (-w11,0));
label.bot(btex magma layer (naive mathematics) etex, 0.5[q7,q8] + (0,-w11));

pickup pencircle scaled 0.4pt;

% Sedimentary layers.
B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}set theory\cr}etex, p10);

B_draw(11, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}functions\cr}etex, p11);

B_draw(12, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}order\cr}etex, p12);

B_draw(13, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}numbers\cr}etex, p13);

% Bedrock.
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}mathematical logic\cr}etex, p2);

% Magma.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}naive logic\cr}etex, p4);

B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}naive sets\cr}etex, p5);

B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}naive functions\cr}etex, p6);

B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}naive order\cr}etex, p7);

B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\rm\vphantom{fy}naive numbers\cr}etex, p8);

% Draw the arrows.
B_margset(2pt, 2pt);

B_arrow(4,2,1);
B_arrow(5,2,1);
B_arrow(6,2,1);
B_arrow(7,2,1);
B_arrow(8,2,1);

B_arrow(2,10,1);
B_arrow(10,11,1);
B_arrow(10,12,1);
B_arrow(10,13,1);

endfig;
end
