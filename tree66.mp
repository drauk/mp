% tex/conc/mp/tree66.mp   2014-11-10   Alan U. Kennington.
% $Id: tex/conc/mp/tree66.mp 5f9cb46c71 2014-11-10 11:33:25Z Alan U. Kennington $
% Family tree for classes of finite and infinite sets.

input boxmax.mp
verbatimtex
\input akmath
\input dgmpmax
% \def\blskip{9pt}
\def\blskip{12pt}
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

w1 := 54pt;
h1 := 35pt;
% h2 := h1;
h2 := h1 + 4pt;

p1 := (0,0);
p2 := p1 + (-w1,-h1);
p3 := p1 + (w1,-h1);
p4 := p3 + (0,-h2);
p5 := p4 + (0,-h2);

% Draw the boxes.
B_draw(1, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}\fontA set\cr\hfil
 $\fontB S$\cr}etex, p1);

B_draw(2, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}finite set\cr\hfil
 $\fontB \forsome n\in\omega,\;\Bij(n,S)\neq\emptyset$\cr}etex, p2);

B_draw(3, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}infinite set\cr\hfil
 $\fontB \forall n\in\omega,\;\Bij(n,S)=\emptyset$\cr}etex, p3);

B_draw(4, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}$\omega$-infinite set\cr\hfil
 $\fontB \Inj(\omega,S)\neq\emptyset$\cr}etex, p4);

B_draw(5, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}countably infinite set\cr\hfil
 $\fontB \Bij(\omega,S)\neq\emptyset$\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(3,4,1);
B_arrow(4,5,1);

endfig;
end
