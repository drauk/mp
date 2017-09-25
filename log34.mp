% tex/conc/mp/log34.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/log34.mp 87f5956f06 2012-05-06 15:47:34Z Alan U. Kennington $
% Set membership tree for the set of finite ordinal numbers.

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

h1 := 0.9cm;
w1 := 0.50cm;
w3 := 0.75w1;
w4 := 1.3w1;

nn := 7;
dd := 6pt;
ddd := 1pt;
hh := 6pt;

p1 := (0,0);
p2 := p1 + (-(nn-1)*w1,-h1);
p3 := p2 + (2w1,0);
p4 := p3 + (2w1,0);
p5 := p4 + (2w1,0);
p6 := p5 + (2w1,0);
p7 := p6 + (2w1,0);
p8 := p7 + (2w1,0);

p11 := p3 + (0,-h1);

p12 := p4 + (-0.5w3,-h1);
p13 := p4 + (0.5w3,-h1);

p14 := p5 + (-w3,-h1);
p15 := p5 + (0,-h1);
p16 := p5 + (1.8w3,-h1);

p17 := p7 + (-w4,-h1);
p18 := p7 + (0,-h1);
p19 := p7 + (w4,-h1);

p21 := p13 + (0,-h1);
p22 := p15 + (0,-h1);
p23 := p16 + (-0.5w3,-h1);
p24 := p16 + (0.5w3,-h1);

p31 := p24 + (0,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the nodes and arrows of the parse tree.
label(btex $\omega$ etex, p1);
label(btex $0$ etex, p2);
label(btex $1$ etex, p3);
label(btex $2$ etex, p4);
label(btex $3$ etex, p5);
label(btex \dots etex, p6);
label(btex $n$ etex, p7);
label(btex \dots etex, p8);

label(btex $0$ etex, p11);

label(btex $0$ etex, p12);
label(btex $1$ etex, p13);

label(btex $0$ etex, p14);
label(btex $1$ etex, p15);
label(btex $2$ etex, p16);

label(btex $0$ etex, p17);
label(btex \dots etex, p18);
label(btex $n{-}1$ etex, p19);

label(btex $0$ etex, p21);
label(btex $0$ etex, p22);
label(btex $0$ etex, p23);
label(btex $1$ etex, p24);

label(btex $0$ etex, p31);

% Draw the arrows.
for i=1 upto nn:
    S_arrowspaces(p1, p[i+1]+(0,hh), dd, ddd, 1, black);
    endfor
S_arrowspaces(p3, p11+(0,hh), dd, ddd, 1, black);

S_arrowspaces(p4, p12+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p4, p13+(0,hh), dd, ddd, 1, black);

S_arrowspaces(p5, p14+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p5, p15+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p5, p16+(0,hh), dd, ddd, 1, black);

S_arrowspaces(p7, p17+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p7, p18+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p7, p19+(0,hh), dd, ddd, 1, black);

S_arrowspaces(p13, p21+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p15, p22+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p16, p23+(0,hh), dd, ddd, 1, black);
S_arrowspaces(p16, p24+(0,hh), dd, ddd, 1, black);

S_arrowspaces(p24, p31+(0,hh), dd, ddd, 1, black);

label.lft(btex \llap{$\mcup\omega$}\rlap{${}=\{$} etex, p11+(-2w1,0));
label.rt(btex \rlap{$\dots\;\}$} etex, p19+(w1-1pt,0));

endfig;
end
