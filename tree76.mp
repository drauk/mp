% tex/conc/mp/tree76.mp   2016-6-7   Alan U. Kennington.
% $Id: tex/conc/mp/tree76.mp 81104f403d 2016-06-06 17:27:54Z Alan U. Kennington $
% Bolzano-Weierstrass, countable compactness, sequential compactness.

input boxmax.mp
verbatimtex
\input dgmpmax
\def\blskip{10pt}
\font\smc cmcsc10
\def\vph{\vphantom{fy}}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

h1 := 15mm;
h2 := h1 - 6pt;
w1 := 14mm;
w2 := 21mm;
dDIAG := 4w1 + w2;
sepA := 16pt;
sepB := 2.5pt;
sepBcc := 0.5pt;
sepC := 2.5pt;
sepD := 6pt;
sepF := 6.5pt;
sepG := 0pt;
sepH := 5pt;
sepI := 6pt;

p11 := (0,0);
p12 := p11 + (2w1, -h1);
p13 := p12 + (0, h1);
p14 := p11 + (0, -h1);
p15 := p12 + (0, -h1);
p16 := p13 + (0, h2);
p17 := p13 + (w2, 0);

p21 := (dDIAG,0);
p22 := p21 + (2w1, -h1);
p23 := p22 + (0, h1);
p24 := p21 + (0, -h1);
p25 := p22 + (0, -h1);
p26 := p23 + (0, h2);
p27 := p23 + (w2, 0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(11, btex\baselineskip\blskip
 \tmat{\hfil\vph infinite set\cr
 \hfil\vph $\Rightarrow\infty$-limit point\cr}etex, p11);

B_draw(12, btex\baselineskip\blskip
 \tmat{\hfil\vph$\omega$-infinite set\cr
 \hfil\vph $\Rightarrow\infty$-limit point\cr}etex, p12);

B_draw(13, btex\baselineskip\blskip
 \tmat{\hfil\vph countably\cr
 \hfil\vph compact\cr}etex, p13);

B_draw(14, btex\baselineskip\blskip
 \tmat{\hfil\vph{\smc bw}: infinite set\cr
 \hfil\vph $\Rightarrow$ limit point\cr}etex, p14);

B_draw(15, btex\baselineskip\blskip
 \tmat{\hfil\vph$\omega$-infinite set\cr
 \hfil\vph $\Rightarrow$ limit point\cr}etex, p15);

B_draw(16, btex\baselineskip\blskip
 \tmat{\hfil\vph compact\cr}etex, p16);

B_draw(17, btex\baselineskip\blskip
 \tmat{\hfil\vph sequentially\cr
 \hfil\vph compact\cr}etex, p17);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
B_draw(21, btex\baselineskip\blskip
 \tmat{\hfil\vph infinite set\cr
 \hfil\vph $\Rightarrow\infty$-limit point\cr}etex, p21);

B_draw(22, btex\baselineskip\blskip
 \tmat{\hfil\vph$\omega$-infinite set\cr
 \hfil\vph $\Rightarrow\infty$-limit point\cr}etex, p22);

B_draw(23, btex\baselineskip\blskip
 \tmat{\hfil\vph countably\cr
 \hfil\vph compact\cr}etex, p23);

B_draw(24, btex\baselineskip\blskip
 \tmat{\hfil\vph{\smc bw}: infinite set\cr
 \hfil\vph $\Rightarrow$ limit point\cr}etex, p24);

B_draw(25, btex\baselineskip\blskip
 \tmat{\hfil\vph$\omega$-infinite set\cr
 \hfil\vph $\Rightarrow$ limit point\cr}etex, p25);

B_draw(26, btex\baselineskip\blskip
 \tmat{\hfil\vph compact\cr}etex, p26);

B_draw(27, btex\baselineskip\blskip
 \tmat{\hfil\vph sequentially\cr
 \hfil\vph compact\cr}etex, p27);

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

if 0=1:
B_arrowD(17, 12, 1);
% label.rt(btex\sevenrm ZF etex, 0.5[p17,p12]+(sepB,0));
sepE := sepD * length(p17-p12) / abs(ypart(p17-p12));
B_arrowDoffset(17, 12, 2, (sepE,0));
label.rt(btex\sevenrm\vph first etex, 0.5[p17,p12]+(sepE+sepB,-sepC));
label.rt(btex\sevenrm\vph countable etex, 0.5[p17,p12]+(sepE+sepB,-sepC-sepF));
fi

B_arrowDoffset(17, 12, 1, (sepG,0));
sepE := sepD * length(p17-p12) / abs(ypart(p17-p12));
B_arrowDoffset(17, 12, 2, (sepG+sepE,0));
label.rt(btex\sevenrm\vph first etex,
 0.5[p17,p12]+(sepG+sepE+sepB,-sepC));
label.rt(btex\sevenrm\vph countable etex,
 0.5[p17,p12]+(sepG+sepE+sepB,-sepC-sepF));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% B_arrowD(21, 22, 1);
B_arrowDoffset(21, 22, 1, (sepI,0));
sepE := sepD * length(p21-p22) / abs(ypart(p21-p22));
B_arrowDoffset(21, 22, 2, (sepI-sepE,0));
label.lft(btex\sevenrm CC etex, 0.5[p21,p22]+(sepI-sepE-sepB,-sepC));

if 0=1:
sepE := sepD * length(p23-p22) / abs(ypart(p23-p22));
% B_arrowD(23, 22, 1);
% B_arrowDoffset(23, 22, 1, (sepE/2,0));
B_arrowDoffset(23, 22, 1, (sepE,0));
% label.lft(btex\sevenrm CC etex, 0.5[p23,p22]+(-sepE/2-sepB,0));
label.lft(btex\sevenrm CC etex, 0.5[p23,p22]+(-sepB,0));
% B_arrowDoffset(23, 22, 2, (-sepE/2,0));
B_arrowD(23, 22, 2);
% label.rt(btex\sevenrm CC etex, 0.5[p23,p22]+(sepE/2+sepB,0));
fi

sepE := sepD * length(p23-p22) / abs(ypart(p23-p22));
B_arrowDoffset(23, 22, 1, (-sepE/2,0));
B_arrowDoffset(23, 22, 2, (sepE/2,0));
label.rt(btex\sevenrm CC etex, 0.5[p23,p22]+(sepE/2+sepBcc,0));

B_arrowD(21, 24, 1);
sepE := sepD * length(p21-p24) / abs(ypart(p21-p24));
B_arrowDoffset(21, 24, 2, (-sepE,0));
label.lft(btex\sevenrm $\scriptstyle T_1$ etex, 0.5[p21,p24]+(-sepE-sepB,0));

% B_arrowD(24, 25, 1);
B_arrowDoffset(24, 25, 1, (sepI,0));
sepE := sepD * length(p24-p25) / abs(ypart(p24-p25));
B_arrowDoffset(24, 25, 2, (sepI-sepE,0));
label.lft(btex\sevenrm CC etex, 0.5[p24,p25]+(sepI-sepE-sepB,-sepC));

if 0=1:
B_arrowD(22, 25, 1);
sepE := sepD * length(p25-p22) / abs(ypart(p25-p22));
B_arrowDoffset(22, 25, 2, (sepE,0));
label.rt(btex\sevenrm $\scriptstyle T_1$ etex, 0.5[p25,p22]+(sepE+sepB,0));
fi

sepE := sepD * length(p25-p22) / abs(ypart(p25-p22));
B_arrowDoffset(22, 25, 1, (-sepE/2,0));
B_arrowDoffset(22, 25, 2, (sepE/2,0));
label.rt(btex\sevenrm $\scriptstyle T_1$ etex, 0.5[p25,p22]+(sepE/2+sepB,0));

sepE := sepD * length(p23-p26) / abs(ypart(p23-p26));
% B_arrowD(26, 23, 1);
B_arrowDoffset(26, 23, 1, (-sepE/2,0));
B_arrowDoffset(26, 23, 2, (sepE/2,0));
B_box_point_m(p32)(26, 0, -1);
B_box_point_m(p33)(23, 0, 1);
label.rt(btex\sevenrm Lindel\"of etex, 0.5[p32,p33]+(sepE/2+sepB,0));

if 0=1:
B_arrowD(27, 22, 1);
% label.rt(btex\sevenrm ZF etex, 0.5[p27,p22]+(sepB,0));
sepE := sepD * length(p27-p22) / abs(ypart(p27-p22));
B_arrowDoffset(27, 22, 2, (sepE,0));
label.rt(btex\sevenrm\vph first etex, 0.5[p27,p22]+(sepE+sepB,-sepC));
label.rt(btex\sevenrm\vph countable etex, 0.5[p27,p22]+(sepE+sepB,-sepC-sepF));
fi

B_arrowDoffset(27, 22, 1, (sepH,0));
sepE := sepD * length(p27-p22) / abs(ypart(p27-p22));
B_arrowDoffset(27, 22, 2, (sepH+sepE,0));
label.rt(btex\sevenrm\vph first etex,
 0.5[p27,p22]+(sepH+sepE+sepB,-sepC));
label.rt(btex\sevenrm\vph countable etex,
 0.5[p27,p22]+(sepH+sepE+sepB,-sepC-sepF));

%==============================================================================
label.bot(btex ZF set theory etex, p15 + (0,-sepA));
label.bot(btex ZF+CC set theory etex, p25 + (0,-sepA));

endfig;
end
