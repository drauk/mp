% tex/conc/mp/log47.mp   2014-11-12   Alan U. Kennington.
% $Id: tex/conc/mp/log47.mp 7fd2b7ed60 2014-11-12 12:43:52Z Alan U. Kennington $
% The "shim" concept for connecting ZF+AC theorems to ZF theorems.

input boxmax

verbatimtex
\input dgmpmax
\input akmath
\font\smallrm cmr9
\def\fystrut{\vphantom{fy}}
\def\blskip{11pt}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
boolean lowrow;
numeric w[], h[];
pair p[];
color col[];

w10 := 5.5cm;
w11 := w10 + 1.0cm;
h10 := 0.6cm;
h11 := h10 + 0.65cm;
h12 := h10 + 0.65cm;

dy := 0.55cm;
spA := 2bp;
margA := 2bp;
sepB := 2.0pt;      % Semi-separation between vertical arrows.
dyB := -3.5pt;      % Vertical adjustment for the shim box.
dyC := -5pt;

col1 := 0.5white;
col2 := black;

penARROW := 0.5bp;
penBOX := 0.5bp;

lowrow := true;     % Logic switch for left row to be low.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Vertical levels of the diagram.
p1 := (0,0);
p2 := p1 + (0,-h12);
p5 := p2 + (0,-h11);
p3 := p5 + (0,-h11);
p4 := p3 + (0,-h12);

p61 := p1 + (-w11,0);
p62 := p61 + (0,-h12);
p65 := p62 + (0,-h11);
p63 := p65 + (0,-h11);
p64 := p63 + (0,-h12);
if lowrow:
    p69 := p65 + (0,5pt);
else:
    p69 := p61;
    fi

% Boxes in the top row.
p10 := p1 + (-w10/3,0);
p11 := p1 + (0,0);
p12 := p1 + (w10/3,0);

p70 := p69 + (-w10/3,0);
p71 := p69 + (0,0);
p72 := p69 + (w10/3,0);

% Boxes in the second row.
p13 := p2 + (w10/3,dyB);

% Boxes in the third row.
p14 := p5 + (w10/3,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The ZF box.
pickup pencircle scaled penBOX;
B_margset(margA, margA);
B_draw_box(3, w10, h10, p3);
label(btex ZF theorem etex, p3);
B_draw_box(63, w10, h10, p63);
label(btex ZF theorem etex, p63);

% The top 3 input boxes.
B_draw(10, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut ZF\cr
 \hfil\smallrm\fystrut axioms\cr}etex, p10);

B_draw(11, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut input\cr
 \hfil\smallrm\fystrut conditions\cr}etex, p11);

B_draw(12, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut choice\cr
 \hfil\smallrm\fystrut axiom\cr}etex, p12);

B_draw(70, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut ZF\cr
 \hfil\smallrm\fystrut axioms\cr}etex, p70);

B_draw(71, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut input\cr
 \hfil\smallrm\fystrut conditions\cr}etex, p71);

B_draw(72, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut choice\cr
 \hfil\smallrm\fystrut function\cr}etex, p72);

% Second row.
B_draw(13, btex\smallrm\fystrut shim etex, p13);

% Third row.
B_draw(14, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut choice\cr
 \hfil\smallrm\fystrut function\cr}etex, p14);

% The single output box.
B_draw(4, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut output\cr
 \hfil\smallrm\fystrut assertion\cr}etex, p4);

B_draw(64, btex\baselineskip\blskip
 \tmat{\hfil\smallrm\fystrut output\cr
 \hfil\smallrm\fystrut assertion\cr}etex, p64);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
B_arrow(3, 4, 1);
B_arrow(63, 64, 1);

pickup pencircle scaled penBOX;
B_box_point_m(p20)(10, 0, -1);
B_box_point_m(p21)(11, 0, -1);
B_box_point_m(p22)(12, 0, -1);

B_box_point_m(p50)(13, 0, 1);
B_box_point_m(p51)(13, 0, -1);

B_box_point_m(p52)(14, 0, 1);
B_box_point_m(p53)(14, 0, -1);

B_box_point_m(p80)(70, 0, -1);
B_box_point_m(p81)(71, 0, -1);
B_box_point_m(p82)(72, 0, -1);

p30 := p3 + (-w10/3, h10/2 + margA + spA);
p31 := p3 + (0, h10/2 + margA + spA);
p32 := p3 + (w10/3, h10/2 + margA + spA);

p40 := p2 + (-w10/3, h10/2 + margA + spA);
p41 := p2 + (0, h10/2 + margA + spA);
p42 := p2 + (w10/3, h10/2 + margA + spA);
p43 := p2 + (-w10/3, -(h10/2 + margA + spA));
p44 := p2 + (0, -(h10/2 + margA + spA));
p45 := p2 + (w10/3, -(h10/2 + margA + spA));

p90 := p63 + (-w10/3, h10/2 + margA + spA);
p91 := p63 + (0, h10/2 + margA + spA);
p92 := p63 + (w10/3, h10/2 + margA + spA);

pickup pencircle scaled penARROW;
drawarrow (p20--p30) shifted (-sepB,0) dashed evenly withcolor col1;
drawarrow (p21--p31) shifted (-sepB,0) dashed evenly withcolor col1;
drawarrow (p20--p40) shifted (sepB,0) withcolor col2;
drawarrow (p21--p41) shifted (sepB,0) withcolor col2;
drawarrow (p43--p30) shifted (sepB,0) withcolor col2;
drawarrow (p44--p31) shifted (sepB,0) withcolor col2;

drawarrow p22--p50 withcolor col2;
drawarrow p51--p52 withcolor col2;
drawarrow p53--p32 withcolor col2;

drawarrow p80--p90 withcolor col2;
drawarrow p81--p91 withcolor col2;
drawarrow p82--p92 withcolor col2;

% The ZF+AC box.
pickup pencircle scaled penBOX;
B_draw_box(2, w10, h10, p2);
label(btex ZF+AC theorem etex, p2+(-1.5pt,0));

% Caption labels.
B_box_point_m(p100)(4, 0, -1);
B_box_point_m(p101)(64, 0, -1);
label.bot(btex ZF+AC set theory etex, p100+(0,dyC));
label.bot(btex ZF set theory etex, p101+(0,dyC));

endfig;
end
