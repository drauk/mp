% tex/conc/mp/tree55.mp   2013-4-21   Alan U. Kennington.
% $Id: tex/conc/mp/tree55.mp f110958654 2013-04-20 20:51:25Z Alan U. Kennington $
% Relations between propositions and formulas, and language and interpretation.

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

w1 := 180pt;
h1 := 65pt;

w2 := 20pt;
w3 := 10pt;
w4 := 45pt;

% Locations of all boxes.
p0 := (0,0);
p1 := p0;                       % Proposition name space.
p2 := p1 + (0,-h1);             % Concrete proposition domain.
p3 := p2 + (0,-h1);             % Knowledge sets for concrete propositions.
p4 := p1 + (w1,0);              % Wffs.
p5 := p2 + (w1,0);
p6 := p3 + (w1,0);              % Knowledge sets.

B_draw(1, btex\baselineskip12pt%
 \tmatB{\multispan2\hfil\strut proposition names\hfil\cr%
\strut\qquad$p$\qquad& \qquad$q$\qquad\cr%
\strut&\strut\cr}etex, p1);

B_draw(2, btex\baselineskip12pt%
 \tmatB{\multispan2\strut\hfil\space concrete propositions\space\hfil\cr%
\strut\space\quad$\Tnamemap(p)$\quad&\space\quad$\Tnamemap(q)$\quad\cr%
\strut&\strut\cr}etex, p2);

B_draw(3, btex\baselineskip12pt%
 \tmatB{\multispan2\hfil\strut knowledge sets\hfil\cr%
\strut\quad$K_{\Tnamemap(p)}$\quad&\quad$K_{\Tnamemap(q)}$\quad\cr%
\strut&\strut\cr}
 etex, p3);

B_draw(4, btex\baselineskip12pt%
 \tmatB{\multispan2\hfil\strut well-formed formulas\hfil\cr%
\strut\quad``$p$''\quad&\quad``$q$''\quad\cr%
\strut\quad``$p\lor q$''\quad&\quad``\ts$\lnot q$\ts''\quad\cr}
 etex, p4);

B_draw(6, btex\baselineskip12pt%
 \tmatB{\multispan2\hfil\strut knowledge sets\hfil\cr%
\strut\quad$K_{\Tnamemap(p)}$\quad&\quad$K_{\Tnamemap(q)}$\quad\cr%
\strut\quad$K_{\Tnamemap(p)}\bcup K_{\Tnamemap(q)}$\quad&
 \quad$2^\Tpropspace\setminus K_{\Tnamemap(q)}$\quad\cr}
 etex, p6);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(1,4,1);
B_arrow(3,6,1);
B_arrow(4,6,1);

B_box_point_m(p20)(1, -1, 0);
B_box_point_m(p21)(2, -1, 0);
B_box_point_m(p22)(3, -1, 0);
label.lft(btex $\Tnamespace$ etex, p20);
label.lft(btex $\Tpropspace$ etex, p21);
label.lft(btex $\powerset(2^\Tpropspace)$ etex, p22);

B_box_point_m(p40)(4, 1, 0);
B_box_point_m(p42)(6, 1, 0);
label.rt(btex $\WFF$ etex, p40);
label.rt(btex $\powerset(2^\Tpropspace)$ etex, p42);

B_box_point_m(p30)(1, 1, 0);
B_box_point_m(p31)(4, -1, 0);
B_box_point_m(p32)(3, 1, 0);
B_box_point_m(p33)(6, -1, 0);
label.top(btex embedding etex, 0.5[p30,p31]);
label.bot(btex inclusion etex, 0.5[p32,p33]);

B_box_point_m(p50)(1, 0, -1);
B_box_point_m(p51)(2, 0, 1);
B_box_point_m(p52)(2, 0, -1);
B_box_point_m(p53)(3, 0, 1);
B_box_point_m(p54)(4, 0, -1);
B_box_point_m(p55)(6, 0, 1);
B_box_point_m(p56)(1, 1, -0.5);
B_box_point_m(p57)(3, 1, 0.5);
label.lft(btex\strut proposition etex, 0.5[p50,p51]);
label.rt(btex\strut name map etex, 0.5[p50,p51]);
label.lft(btex\strut embedding etex, 0.5[p52,p53]);
label.rt(btex\strut interpretation etex, 0.5[p54,p55]);

p60 := p56 + (w2,0);
p61 := (xpart(p60),ypart(p57));
drawarrow p56--p60--p61--p57;
label.rt(btex\strut interpretation etex, 0.5[p60,p61]);

% Draw the line between language and semantics.
p70 := 0.15[p50,p51];
p71 := (xpart(p20)-w3,ypart(p70));
p72 := (xpart(p40)+w4,ypart(p70));
draw p71--p72 dashed evenly;
p75 := (xpart(p40),ypart(p71));
label.urt(btex\strut language etex, p75);
label.lrt(btex\strut semantics etex, p75);
label.urt(btex\strut $\uparrow$ etex, p72);
label.lrt(btex\strut $\downarrow$ etex, p72);

endfig;
end
