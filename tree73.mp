% tex/conc/mp/tree73.mp   2016-6-7   Alan U. Kennington.
% $Id: tex/conc/mp/tree73.mp 81104f403d 2016-06-06 17:27:54Z Alan U. Kennington $
% Relations between countable compactness and some other properties.

input boxmax.mp
verbatimtex
\input dgmpmax
\def\blskip{10pt}
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

h1 := 14mm;
dDIAG := 60mm;
w1 := 13mm;
sepA := 16pt;
sepB := 4.5pt;
sepD := 6pt;

p11 := (0,0);
p12 := p11 + (w1, -h1);
p13 := p12 + (w1, h1);

p21 := (dDIAG,0);
p22 := p21 + (w1, -h1);
p23 := p22 + (w1, h1);

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

B_draw(21, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow\infty$-limit point\cr}etex, p21);

B_draw(22, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}$\omega$-infinite set\cr
 \hfil\vphantom{fy} $\Rightarrow\infty$-limit point\cr}etex, p22);

B_draw(23, btex\baselineskip\blskip
 \tmat{\hfil\vphantom{fy}countably\cr
 \hfil\vphantom{fy} compact\cr}etex, p23);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the arrows.
B_margset(3pt, 3pt);

B_arrowD(11, 12, 1);
B_arrowD(13, 12, 1);

B_arrowD(21, 22, 1);
label.rt(btex\sevenrm ZF etex, 0.5[p21,p22]+(sepB,0));
sepE := sepD * length(p21-p22) / abs(ypart(p21-p22));
B_arrowDoffset(21, 22, 2, (-sepE,0));
label.lft(btex\sevenrm CC etex, 0.5[p21,p22]+(-sepE-sepB,0));

B_arrowD(23, 22, 1);
label.lft(btex\sevenrm ZF etex, 0.5[p23,p22]+(-sepB,0));
sepE := sepD * length(p23-p22) / abs(ypart(p23-p22));
B_arrowDoffset(23, 22, 2, (sepE,0));
label.rt(btex\sevenrm CC etex, 0.5[p23,p22]+(sepE+sepB,0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.bot(btex ZF set theory etex, p12 + (0,-sepA));
label.bot(btex ZF+CC set theory etex, p22 + (0,-sepA));

endfig;
end
