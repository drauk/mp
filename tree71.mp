% tex/conc/mp/tree71.mp   2014-12-21   Alan U. Kennington.
% $Id: tex/conc/mp/tree71.mp c411b46503 2014-12-21 03:34:58Z Alan U. Kennington $
% Family tree for classes of omega-infinite, countable and uncountable sets.

input boxmax.mp
verbatimtex
\input akmath
\input dgmpmax
\def\blskip{11pt}
% \def\fontA{\sevenrm}
\def\fontA{}
% \def\fontB{\scriptstyle}
\def\fontB{}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric w[], h[];
pair p[];

w0 := 180pt;
w1 := 45pt;
w2 := 65pt;
h1 := 32pt;
% h2 := h1;
h2 := h1 + 4pt;
h3 := h1 + 10pt;
h4 := h3 + 2pt;
sepA := 20pt;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (0,-h1);
p4 := p3 + (0,-h2);
p5 := p4 + (0,-h3);

p10 := (xpart(p2),ypart(p5)) + (0,-h4);
p20 := p3 + (w2,-h2);
p21 := p20 + (0,-h3);

p41 := p1 + (w0,0);
p42 := p41 + (-w1,-h1);
p43 := p41 + (0,-h1);
p44 := p43 + (0,-h2);
p45 := p44 + (0,-h3);

p50 := (xpart(p42),ypart(p45)) + (0,-h4);
p60 := p43 + (w2,-h2);
p61 := p60 + (0,-h3);

%==============================================================================
% Draw the boxes.
B_draw(1, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}set\cr}etex, p1);

B_draw(2, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}finite\cr\hfil
 \fontA\vphantom{fy}$\fontB <\omega$\cr}etex, p2);

B_draw(3, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}infinite\cr\hfil
 \fontA\vphantom{fy}$\fontB \not<\omega$\cr}etex, p3);

B_draw(4, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}$\omega$-infinite\cr\hfil
 \fontA\vphantom{fy}$\fontB \ge\omega$\cr}etex, p4);

B_draw(5, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}countably\cr\hfil
 \fontA\vphantom{fy}infinite\cr\hfil
 \fontA\vphantom{fy}$\fontB =\omega$\cr}etex, p5);

B_draw(10, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}countable\cr\hfil
 \fontA\vphantom{fy}$\fontB \le\omega$\cr}etex, p10);

B_draw(20, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}uncountable\cr\hfil
 \fontA\vphantom{fy}$\fontB \not\le\omega$\cr}etex, p20);

B_draw(21, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}uncountable\cr\hfil
 \fontA\vphantom{fy}$\omega$-infinite\cr\hfil
 \fontA\vphantom{fy}$\fontB >\omega$\cr}etex, p21);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(41, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}set\cr}etex, p41);

B_draw(42, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}finite\cr\hfil
 \fontA\vphantom{fy}$\fontB <\omega$\cr}etex, p42);

B_draw(43, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}infinite\cr\hfil
 \fontA\vphantom{fy}$\fontB \ge\omega$\cr}etex, p43);

% B_draw(44, btex\baselineskip\blskip
%  \tmat{\hfil\fontA\vphantom{fy}$\omega$-infinite\cr\hfil
%  \fontA\vphantom{fy}$\fontB \ge\omega$\cr}etex, p44);

B_draw(45, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}countably\cr\hfil
 \fontA\vphantom{fy}infinite\cr\hfil
 \fontA\vphantom{fy}$\fontB =\omega$\cr}etex, p45);

B_draw(50, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}countable\cr\hfil
 \fontA\vphantom{fy}$\fontB \le\omega$\cr}etex, p50);

B_draw(60, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{fy}uncountable\cr\hfil
 \fontA\vphantom{fy}$\fontB >\omega$\cr}etex, p60);

% B_draw(61, btex\baselineskip\blskip
%  \tmat{\hfil\fontA\vphantom{fy}uncountable\cr\hfil
%  \fontA\vphantom{fy}$\omega$-infinite\cr\hfil
%  \fontA\vphantom{fy}$\fontB >\omega$\cr}etex, p61);

%==============================================================================
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(3,4,1);
B_arrow(4,5,1);

B_arrow(2,10,1);
B_arrow(5,10,1);

B_arrow(3,20,1);
B_arrow(4,21,1);
B_arrow(20,21,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_arrow(41,42,1);
B_arrow(41,43,1);
B_arrow(43,45,1);

B_arrow(42,50,1);
B_arrow(45,50,1);

B_arrow(43,60,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.bot(btex ZF set theory etex, (xpart(p1),ypart(p10)-sepA));
label.bot(btex ZF+AC set theory etex, (xpart(p41),ypart(p50))+(0,-sepA));

endfig;
end
