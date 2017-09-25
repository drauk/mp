% tex/conc/mp/log37.mp   2011-12-28   Alan U. Kennington.
% $Id: tex/conc/mp/log37.mp c9d0421084 2011-12-28 07:38:01Z Alan U. Kennington $
% Open subbase for a topology.
% 2011-12-28. This is probably my worst ever MetaPost source file!
% It's a shocker!! Please don't read it....

input mapmax.mp

verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

h1 := 1.1cm;
w1 := 1.3cm;
w3 := 0.95w1;
w4 := 0.9w1;
w5 := 0.9cm;
w6 := 0.4w1;
w7 := 0.45w1;

nn := 7;
dd := 10pt;
ddx := 15pt;
ddxx := 18pt;
ddd := 0pt;
hh := 10pt;

p1 := (0,0);
p2 := p1 + (-(nn-1)*w1,-h1);
p3 := p2 + (2w1,0);
p4 := p3 + (2w1,0);
p5 := p4 + (2w1,0);
p6 := p5 + (2w5,0);
p7 := p6 + (2w5,0);
p8 := p7 + (2w5,0);

p12 := p4 + (-0.5w3,-h1);
p13 := p4 + (0.5w3,-h1);

p14 := p5 + (-0.5w3,-h1);
p15 := p5 + (0.5w3,-h1);

p17 := p7 + (-w4,-h1);
p18 := p7 + (0,-h1);
p19 := p7 + (w4,-h1);
p20 := p7 + (2w4,-h1);

p42 := p12 + (-w6,-h1);
p43 := p13 + (-w6,-h1);
p44 := p14 + (-w6,-h1);
p45 := p15 + (-w6,-h1);

p47 := p17 + (-w6,-h1);
p48 := p18 + (-w6,-h1);
p49 := p19 + (-w6,-h1);
p50 := p20 + (-w6,-h1);

p52 := p12 + (w6,-h1);
p53 := p13 + (w6,-h1);
p54 := p14 + (0.7w6,-h1);
p55 := p15 + (0.4w6,-h1);

p57 := p17 + (0,-h1);
p58 := p18 + (w6,-h1);
p59 := p19 + (w6,-h1);
p60 := p20 + (w6,-h1);

p70 := p19 + (-2w7,-h1);
p71 := p19 + (0w7,-h1);
p72 := p19 + (2w7,-h1);
p73 := p19 + (4w7,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the parse tree.
label(btex $T$ etex, p1);
% label(btex $\mcup C_1$ etex, p2);
% label(btex $\mcup C_1$ etex, p3);
label(btex $\mcup C_1$ etex, p4);
label(btex $\mcup C_2$ etex, p5);
label(btex \dots etex, p6);
label(btex $\mcup C_i$ etex, p7);
label(btex \dots etex, p8);

label(btex $\mcap D_{1,1}$ etex, p12);
label(btex $\mcap D_{1,2}$ etex, p13);

label(btex $\mcap D_{2,1}$ etex, p14);
label(btex $\mcap D_{2,2}$ etex, p15);

label(btex $\mcap D_{i,1}$ etex, p17);
label(btex \dots etex, p18);
label(btex $\mcap D_{i,j_i}$ etex, p19);
label(btex \dots etex, p20);

label(btex $\textstyle E_{1,1,1}$ etex, p42);
label(btex $\textstyle E_{1,1,2}$ etex, p52);

% label(btex $\textstyle E_{2,2,1}$ etex, p43);
label(btex $\dots$ etex, p53);
label(btex $\dots$ etex, p54);
label(btex $\dots$ etex, p55);
label(btex $\dots$ etex, p57);
% label(btex $\dots$ etex, p59);

label(btex $\textstyle E_{i,j_i,1}$ etex, p70);
label(btex $\textstyle E_{i,j_i,2}$ etex, p71);
label(btex $\textstyle E_{i,j_i,3}$ etex, p72);
label(btex $\dots$ etex, p73);

% Draw the arrows.
for i=3 upto nn:
    S_arrowspaces(p1, p[i+1]+(0,hh), dd, ddd, 1, black);
    endfor
S_arrowspaces(p4, p12+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p4, p13+(0,hh), dd, ddd, 1, black);

S_arrowspaces(p5, p14+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p5, p15+(0,hh), dd, ddd, 1, black);

S_arrowspaces(p7, p17+(0,hh), ddx, ddd, 1, black);
S_arrowspaces(p7, p18+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p7, p19+(0,hh), ddx, ddd, 1, black);
S_arrowspaces(p7, p20+(0,hh), ddxx, ddd, 1, black);

S_arrowspaces(p12, p42+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p12, p52+(0,hh), dd, ddd, 1, black);

S_arrowspaces(p13, p53+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p13, p53+(-5pt,hh), dd, ddd, 1, black);
S_arrowspaces(p13, p53+(5pt,hh), dd, ddd, 1, black);

S_arrowspaces(p14, p54+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p14, p54+(-5pt,hh), dd, ddd, 1, black);
S_arrowspaces(p14, p54+(5pt,hh), dd, ddd, 1, black);

S_arrowspaces(p15, p55+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p15, p55+(-5pt,hh), dd, ddd, 1, black);
S_arrowspaces(p15, p55+(5pt,hh), dd, ddd, 1, black);

S_arrowspaces(p17, p57+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p17, p57+(-5pt,hh), dd, ddd, 1, black);
S_arrowspaces(p17, p57+(5pt,hh), dd, ddd, 1, black);

% S_arrowspaces(p19, p59+(0,hh), dd, ddd, 1, black);
% S_arrowspaces(p19, p59+(-5pt,hh), dd, ddd, 1, black);
% S_arrowspaces(p19, p59+(5pt,hh), dd, ddd, 1, black);

S_arrowspaces(p19, p70+(0,hh), ddx, ddd, 1, black);
S_arrowspaces(p19, p71+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p19, p72+(0,hh), ddx, ddd, 1, black);
S_arrowspaces(p19, p73+(0,hh), ddxx, ddd, 1, black);

endfig;
end
