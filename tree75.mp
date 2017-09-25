% tex/conc/mp/tree75.mp   2016-6-7   Alan U. Kennington.
% $Id: tex/conc/mp/tree75.mp 81104f403d 2016-06-06 17:27:54Z Alan U. Kennington $
% Relations between Bolzano-Weierstrass, countable compactness, etc.

input boxmax.mp
verbatimtex
\input dgmpmax
\def\blskip{10pt}
\font\smc cmcsc10
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

h1 := 15mm;
h2 := h1 - 6pt;
dDIAG := 67mm;
w1 := 14.5mm;
sepA := 16pt;
sepB := 2.5pt;
sepC := 2.5pt;
sepD := 6pt;

p11 := (0,0);
p12 := p11 + (2w1, -h1);
p13 := p12 + (0, h1);
p14 := p11 + (0, -h1);
p15 := p12 + (0, -h1);
p16 := p13 + (0, h2);

p21 := (dDIAG,0);
p22 := p21 + (2w1, -h1);
p23 := p22 + (0, h1);
p24 := p21 + (0, -h1);
p25 := p22 + (0, -h1);
p26 := p23 + (0, h2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(11, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow\infty$-limit point\cr}etex, p11);

B_draw(12, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$\omega$-infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow\infty$-limit point\cr}etex, p12);

B_draw(13, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}countably\cr
 \hfil\vphantom{fy} compact\cr}etex, p13);

B_draw(14, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}{\smc bw}: infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow$ limit point\cr}etex, p14);

B_draw(15, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$\omega$-infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow$ limit point\cr}etex, p15);

B_draw(16, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}compact\cr}etex, p16);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(21, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow\infty$-limit point\cr}etex, p21);

B_draw(22, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$\omega$-infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow\infty$-limit point\cr}etex, p22);

B_draw(23, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}countably\cr
 \hfil\vphantom{fy} compact\cr}etex, p23);

B_draw(24, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}{\smc bw}: infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow$ limit point\cr}etex, p24);

B_draw(25, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$\omega$-infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow$ limit point\cr}etex, p25);

B_draw(26, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}compact\cr}etex, p26);

%==============================================================================
% Draw the arrows.
B_margset(3pt, 3pt);

B_arrowD(11, 12, 1);

B_arrowD(13, 12, 1);

B_arrowD(11, 14, 1);
sepE := sepD * length(p11-p14) / abs(ypart(p11-p14));
B_arrowDoffset(11, 14, 2, (-sepE,0));
label.lft(btex\sevenrm $\scriptstyle T_1$ etex, 0.5[p11,p14]+(-sepE-sepB,0));

B_arrowD(14, 15, 1);

B_arrowD(12, 15, 1);
sepE := sepD * length(p15-p12) / abs(ypart(p15-p12));
B_arrowDoffset(12, 15, 2, (sepE,0));
label.rt(btex\sevenrm $\scriptstyle T_1$ etex, 0.5[p15,p12]+(sepE+sepB,0));

B_arrowD(16, 13, 1);
sepE := sepD * length(p13-p16) / abs(ypart(p13-p16));
B_arrowDoffset(16, 13, 2, (sepE,0));
B_box_point_m(p30)(16, 0, -1);
B_box_point_m(p31)(13, 0, 1);
label.rt(btex\sevenrm Lindel\"of etex, 0.5[p30,p31]+(sepE+sepB,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_arrowD(21, 22, 1);
% label.rt(btex\sevenrm ZF etex, 0.5[p21,p22]+(sepB,0));
sepE := sepD * length(p21-p22) / abs(ypart(p21-p22));
B_arrowDoffset(21, 22, 2, (-sepE,0));
label.lft(btex\sevenrm CC etex, 0.5[p21,p22]+(-sepE-sepB,-sepC));

B_arrowD(23, 22, 1);
% label.lft(btex\sevenrm ZF etex, 0.5[p23,p22]+(-sepB,0));
sepE := sepD * length(p23-p22) / abs(ypart(p23-p22));
B_arrowDoffset(23, 22, 2, (sepE,0));
label.rt(btex\sevenrm CC etex, 0.5[p23,p22]+(sepE+sepB,0));

B_arrowD(21, 24, 1);
sepE := sepD * length(p21-p24) / abs(ypart(p21-p24));
B_arrowDoffset(21, 24, 2, (-sepE,0));
label.lft(btex\sevenrm $\scriptstyle T_1$ etex, 0.5[p21,p24]+(-sepE-sepB,0));

B_arrowD(24, 25, 1);
sepE := sepD * length(p24-p25) / abs(ypart(p24-p25));
B_arrowDoffset(24, 25, 2, (-sepE,0));
label.lft(btex\sevenrm CC etex, 0.5[p24,p25]+(-sepE-sepB,-sepC));

B_arrowD(22, 25, 1);
sepE := sepD * length(p25-p22) / abs(ypart(p25-p22));
B_arrowDoffset(22, 25, 2, (sepE,0));
label.rt(btex\sevenrm $\scriptstyle T_1$ etex, 0.5[p25,p22]+(sepE+sepB,0));

B_arrowD(26, 23, 1);
sepE := sepD * length(p23-p26) / abs(ypart(p23-p26));
B_arrowDoffset(26, 23, 2, (sepE,0));
B_box_point_m(p30)(26, 0, -1);
B_box_point_m(p31)(23, 0, 1);
label.rt(btex\sevenrm Lindel\"of etex, 0.5[p30,p31]+(sepE+sepB,0));

%==============================================================================
label.bot(btex ZF set theory etex, p15 + (0,-sepA));
label.bot(btex ZF+CC set theory etex, p25 + (0,-sepA));

endfig;
end
