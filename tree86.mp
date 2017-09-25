% tex/conc/mp/tree86.mp   2016-3-8   Alan U. Kennington.
% $Id: tex/conc/mp/tree86.mp 99cc85979c 2016-03-08 12:04:39Z Alan U. Kennington $
% Tree of topological relations between classes of real-number intervals.

input boxmax.mp
verbatimtex
\input akmath
\input dgmpmax
% \def\blskip{9pt}
\def\blskip{11pt}

% \def\fontA{\sevenrm}
\def\fontA{}

\font\smallrm cmr9
\font\smallmi cmmi9
\font\smallsy cmsy9
\font\ssmallsy cmsy6
% \def\fontB{\scriptstyle}
% \def\fontB{}
\def\fontB{%
 \textfont0=\smallrm
 \textfont1=\smallmi
 \textfont2=\smallsy
 \scriptfont2=\ssmallsy
 }
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric w[], h[];
pair p[];

w1 := 60pt;
h1 := 32pt;
h2 := h1 + 8pt;

p1 := (0,0);
p2 := p1 + (w1,0);
p3 := p1 + (0,-h2);
p4 := p1 + (-w1,-h2);
p5 := p1 + (w1,-h2);
p6 := p3 + (0,-h2);

% Draw the boxes.
B_draw(1, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}\fontA singleton\cr\hfil
 $\fontB \{a\}$\cr}etex, p1);

B_draw(2, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}empty\cr\hfil
 $\fontB \emptyset$\cr}etex, p2);

B_draw(3, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}compact\cr\hfil
 $\fontB [a,b]$\cr}etex, p3);

B_draw(4, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}compact-open\cr\hfil
 $\fontB [a,b)$,  $\fontB [a,\infty)$\cr}etex, p4);

B_draw(5, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}open-compact\cr\hfil
 $\fontB (-\infty,b]$, $\fontB (a,b]$\cr}etex, p5);

B_draw(6, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}non-empty open\cr\hfil
 $\fontB(a,b)$, $\fontB(a,\infty)$, $\fontB(-\infty,b)$,
 $\fontB(-\infty,\infty)$\cr}etex, p6);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,3,2);
B_arrow(1,4,2);
B_arrow(1,5,2);
B_arrow(3,6,2);
B_arrow(4,6,2);
B_arrow(5,6,2);

endfig;
end
