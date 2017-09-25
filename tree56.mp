% tex/conc/mp/tree56.mp   2013-4-22   Alan U. Kennington.
% $Id: tex/conc/mp/tree56.mp 8e8cd7f2c3 2013-04-21 15:43:59Z Alan U. Kennington $
% Relations between propositions, logical expressions and knowledge sets.

input boxmax.mp
verbatimtex
\input akmath
\input dgmpmax
\font\ninerm cmr9
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 192pt;
h1 := 75pt;

w2 := 20pt;
w3 := 10pt;
w4 := 50pt;
w5 := 3pt;
w6 := 15pt;
w7 := 4pt;
w8 := 5pt;
w9 := 1.5pt;

h2 := 3.0pt;                    % Semi-separation between arrows.
h3 := 1pt;
h4 := h2 + h3;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;                       % Proposition name space.
p2 := p1 + (0,-h1);             % Concrete proposition domain.
% p3 := p2 + (0,-h1);             % Knowledge sets for concrete propositions.
p4 := p1 + (w1,0);              % Wffs.
% p5 := p2 + (w1,0);
% p6 := p3 + (w1,0);              % Knowledge sets.
p6 := p2 + (w1,0);              % Knowledge sets.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(1, btex\baselineskip12pt%
 \tmatB{\multispan2\hfil\strut proposition names\hfil\cr%
\strut\qquad$p$\qquad& \qquad$q$\qquad\cr%
\strut&\strut\cr}etex, p1);

B_draw(2, btex\baselineskip12pt%
 \tmatB{\multispan2\strut\hfil\space concrete propositions\space\hfil\cr%
\strut\space\quad$\Tnamemap(p)$\quad&\space\quad$\Tnamemap(q)$\quad\cr%
\strut&\strut\cr}etex, p2);

% B_draw(3, btex\baselineskip12pt%
%  \tmatB{\multispan2\hfil\strut knowledge sets\hfil\cr%
% \strut\quad$K_{\Tnamemap(p)}$\quad&\quad$K_{\Tnamemap(q)}$\quad\cr%
% \strut&\strut\cr}
%  etex, p3);

B_draw(4, btex\baselineskip12pt%
 \tmatB{\multispan2\hfil\strut logical expressions\hfil\cr%
\strut\quad``$p$''\quad&\quad``$q$''\quad\cr%
\strut\quad``$p\lor q$''\quad&\quad``\ts$\lnot q$\ts''\quad\cr}
 etex, p4);

B_draw(6, btex\baselineskip12pt%
 \tmatB{\multispan2\hfil\strut knowledge sets\hfil\cr%
\strut\quad$K_{\Tnamemap(p)}$\quad&\quad$K_{\Tnamemap(q)}$\quad\cr%
\strut\quad$K_{\Tnamemap(p)}\bcup K_{\Tnamemap(q)}$\quad&
 \quad$2^\Tpropspace\setminus K_{\Tnamemap(q)}$\quad\cr}
 etex, p6);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
% B_arrow(2,3,1);
% B_arrow(1,4,1);
% B_arrow(3,6,1);
B_arrow(2,6,1);
B_arrow(4,6,1);

B_box_point_m(p20)(1, -1, 0);
B_box_point_m(p21)(2, -1, 0);
% B_box_point_m(p22)(3, -1, 0);
label.lft(btex $\Tnamespace$ etex, p20);
label.lft(btex $\Tpropspace$ etex, p21);
% label.lft(btex $\powerset(2^\Tpropspace)$ etex, p22);

B_box_point_m(p40)(4, 1, 0);
B_box_point_m(p42)(6, 1, 0);
label.rt(btex $\WFF$ etex, p40);
label.rt(btex $\powerset(2^\Tpropspace)$ etex, p42);

B_box_point_m(p30)(1, 1, 0);
B_box_point_m(p31)(4, -1, 0);
% B_box_point_m(p32)(3, 1, 0);
% B_box_point_m(p33)(6, -1, 0);
B_box_point_m(p34)(2, 1, 0);
B_box_point_m(p35)(6, -1, 0);
drawarrow (p31--p30) shifted (0,h2);
drawarrow (p30--p31) shifted (0,-h2);

B_box_point_m(p50)(1, 0, -1);
B_box_point_m(p51)(2, 0, 1);
% B_box_point_m(p52)(2, 0, -1);
% B_box_point_m(p53)(3, 0, 1);
B_box_point_m(p54)(4, 0, -1);
B_box_point_m(p55)(6, 0, 1);
% B_box_point_m(p56)(1, 1, -0.5);
% B_box_point_m(p57)(3, 1, 0.5);
label.lft(btex\strut proposition etex, 0.5[p50,p51]);
label.rt(btex\strut name map etex, 0.5[p50,p51]);
% label.lft(btex\strut embedding etex, 0.5[p52,p53]);
label.lft(btex\strut interpretation etex, 0.5[p54,p55]);

% p60 := p56 + (w2,0);
% p61 := (xpart(p60),ypart(p57));
% drawarrow p56--p60--p61--p57;
% label.rt(btex\strut interpretation etex, 0.5[p60,p61]);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the line between language and semantics.
p70 := 0.15[p50,p51];
p71 := (xpart(p20)-w3,ypart(p70));
p72 := (xpart(p40)+w4,ypart(p70));
draw p71--p72 dashed evenly;
p75 := (xpart(p40),ypart(p71));
label.urt(btex\strut language etex, p75+(5pt,0));
label.lrt(btex\strut semantics etex, p75+(5pt,0));
label.urt(btex\strut $\uparrow$ etex, p72);
label.lrt(btex\strut $\downarrow$ etex, p72);

% Draw the line between propositions and logical expressions.
p80 := 0.07[p34,p35];
B_box_point_m(p86)(1, 1, 1);
B_box_point_m(p87)(2, 1, -1);
p81 := (xpart(p80),ypart(p86)+w6);
p82 := (xpart(p80),ypart(p87)-w5);
draw p81--p82 dashed evenly;
p85 := (xpart(p80),ypart(p81));
label.llft(btex\strut$\leftarrow$ atomic propositions etex, p85+(-w7,w8));
label.lrt(btex\strut compound propositions $\rightarrow$ etex, p85+(w7,w8));

% Labels on horizontal arrows.
label.urt(btex name extraction etex, (xpart(p80)+w9,ypart(p30)+h4));
label.lrt(btex embedding etex, (xpart(p80)+w9,ypart(p30)-h4));
label.lrt(btex embedding etex, (xpart(p80)+w9,ypart(p34)-h3));

endfig;
end
