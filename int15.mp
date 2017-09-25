% tex/conc/mp/int15.mp   2017-6-20   Alan U. Kennington.
% $Id: tex/conc/mp/int15.mp 7e10621d5d 2017-06-20 13:28:41Z Alan U. Kennington $
% Application of ZF regularity (well-foundedness) to an ordinal number.

input mapmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair w[], zz[];
color col[];
path pat[];

aaW := 14pt;                % Width of each box.
aaH := 14pt;                % Height of each box.
nB := 4;                    % Number of boxes per step.
nC := 6;                    % Number of steps.
nA := nC * nB;              % Number of boxes.
iY := 20;
iZ := 14;
da := nA * aaW;
daH := da + 0.5aaW;
dB := nB * aaW;
daI := da + 0.5aaW + 0.5dB;

sepX := 1pt;
sepY := 2pt;
sepZ := 2pt;
sepYZ := sepY + sepZ;
sepD := 8pt;
sepE := 15pt;
sepF := 2pt;

penLN := 0.5bp;
penARROW := 0.5bp;

w0 := (0,0);
col1 := 0.9 white;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pat1 := (sepX,-sepY)--(sepX,-sepY-sepZ)--(dB-sepX,-sepY-sepZ)--(dB-sepX,-sepY);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the upper row.
pickup pencircle scaled penLN;
for j=1 upto nC:
    i := j * nB;
    if j < nC:
        fill (w0+(i*aaW,0))--(w0+(i*aaW,aaH))--
             (w0+((i+1)*aaW,aaH))--(w0+((i+1)*aaW,0))--cycle
            withcolor col1;
        draw (w0+((i+1)*aaW,0))--(w0+((i+1)*aaW,aaH));
        fi
    draw (w0+(i*aaW,0))--(w0+(i*aaW,aaH));
    endfor
draw w0--(w0+(da,0));
draw (w0+(0,aaH))--(w0+(da,aaH));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
label.top(btex $\alpha$ etex, w0+(da, aaH));
label.top(btex $\gamma$ etex, w0+(da-dB, aaH));
draw pat1 shifted (w0+(da-dB, 0));
label.bot(btex $\alpha\setminus\gamma$ etex, w0+(da-0.5dB,-sepYZ));

label(btex $\delta$ etex, w0 + (daH-dB, 0.5aaH));
label(btex $\dotss$ etex, w0 + (daI-dB, 0.5aaH));
label.top(btex $\delta$ etex, w0+(da-2dB, aaH));
draw pat1 shifted (w0+(da-2dB, 0));
label.bot(btex $\gamma\setminus\delta$ etex, w0+(da-1.5dB,-sepYZ));

label(btex $\varepsilon$ etex, w0 + (daH-2dB, 0.5aaH));
label(btex $\dotss$ etex, w0 + (daI-2dB, 0.5aaH));
label.top(btex $\varepsilon$ etex, w0+(da-3dB, aaH));
draw pat1 shifted (w0+(da-3dB, 0));
label.bot(btex $\delta\setminus\varepsilon$ etex, w0+(da-2.5dB,-sepYZ));

label(btex $\theta$ etex, w0 + (daH-3dB, 0.5aaH));
label(btex $\dotss$ etex, w0 + (daI-3dB, 0.5aaH));
label.top(btex $\theta$ etex, w0+(da-4dB, aaH));
draw pat1 shifted (w0+(da-4dB, 0));
label.bot(btex $\varepsilon\setminus\theta$ etex, w0+(da-3.5dB,-sepYZ));

label(btex $\xi$ etex, w0 + (daH-4dB, 0.5aaH));
label(btex $\dotss$ etex, w0 + (daI-4dB, 0.5aaH));
label.top(btex $\xi$ etex, w0+(da-5dB, aaH));
draw pat1 shifted (w0+(da-5dB, 0));
label.bot(btex $\theta\setminus\xi$ etex, w0+(da-4.5dB,-sepYZ));

label(btex $\eta$ etex, w0 + (daH-5dB, 0.5aaH));
label(btex $\dotss$ etex, w0 + (daI-5dB, 0.5aaH));
label.top(btex $\eta$ etex, w0+(da-6dB, aaH));
draw pat1 shifted (w0+(da-6dB, 0));
label.bot(btex $\xi\setminus\eta$ etex, w0+(da-5.5dB,-sepYZ));

label(btex $\dotss$ etex, w0 + (daI-6dB, 0.5aaH));
label.top(btex \llap{$\cdotss$} etex, w0+(da-6dB-sepD, aaH));
label.bot(btex \llap{$\cdotss$} etex, w0+(da-6dB-sepD, -sepYZ));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penARROW;
% w20 := w0+(daH-dB, aaH+sepE);
w20 := w0+(da-0.5dB, aaH+sepE);
w21 := w0+(daH-dB, aaH+sepF);
w22 := w0+(daH-0.75dB, aaH+sepE);
label.top(btex $\mcap(\alpha\setminus\gamma)$ etex, w20);
drawarrow w22--w21;

w20 := w20+(-dB,0);
w21 := w21+(-dB,0);
w22 := w22+(-dB,0);
label.top(btex $\mcap(\gamma\setminus\delta)$ etex, w20);
drawarrow w22--w21;

w20 := w20+(-dB,0);
w21 := w21+(-dB,0);
w22 := w22+(-dB,0);
label.top(btex $\mcap(\delta\setminus\varepsilon)$ etex, w20);
drawarrow w22--w21;

w20 := w20+(-dB,0);
w21 := w21+(-dB,0);
w22 := w22+(-dB,0);
label.top(btex $\mcap(\varepsilon\setminus\theta)$ etex, w20);
drawarrow w22--w21;

w20 := w20+(-dB,0);
w21 := w21+(-dB,0);
w22 := w22+(-dB,0);
label.top(btex $\mcap(\theta\setminus\xi)$ etex, w20);
drawarrow w22--w21;



endfig;
end
