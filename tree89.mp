% tex/conc/mp/tree89.mp   2017-12-21   Alan U. Kennington.
% $Id$
% Tree of differentiable fibre bundles for the purpose of connection styles.

input boxmax
verbatimtex
\input akmath
\input dgmpmax
\input dgspell

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

w1 := 52pt;
h1 := 30pt;
h2 := h1 + 8pt;

p1 := (0,0);
p2 := p1 + (-w1,-h2);
p3 := p1 + (w1,-h2);
p4 := p2 + (0,-h2);
p5 := p3 + (0,-h2);

% Draw the boxes.
B_draw(1, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}\fontA \fibre/ bundle\cr\hfil
 \fontA\vphantom{f}\fontA FB$\fontB{}\equiv{}$OFB\cr}etex, p1);

B_draw(2, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}\fontA vector bundle\cr\hfil
 \fontA\vphantom{f}\fontA VB\cr}etex, p2);

B_draw(3, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}\fontA principal \fibre/ bundle\cr\hfil
 \fontA\vphantom{f}\fontA PFB\cr}etex, p3);

B_draw(4, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}tangent bundle\cr\hfil
 $\fontB T(M)$\cr}etex, p4);

B_draw(5, btex\baselineskip\blskip
 \tmat{\hfil\fontA\vphantom{f}principal frame bundle\cr\hfil
 $\fontB \Frame(M)$\cr}etex, p5);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(1,3,1);
B_arrow(2,4,1);
B_arrow(3,5,1);

endfig;
end
