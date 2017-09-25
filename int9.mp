% tex/conc/mp/int9.mp   2014-12-15   Alan U. Kennington.
% $Id: tex/conc/mp/int9.mp 068b69ef28 2014-12-15 10:42:07Z Alan U. Kennington $
% Enumeration of an arbitrary subset of omega.

input mapmax

beginfig(1);
boolean bo[];
pair w[], zz[];
color col[];

aaW := 14pt;                % Width of each box.
aaH := 14pt;                % Height of each box.
na := 20;                   % Number of boxes in upper row.
nb := 10;                   % Number of boxes in lower row.
xt := aaW;                  % Extension for ellipsis.
da := na * aaW + xt;
db := nb * aaW + xt;
dyA := aaH + 40pt;
dyB := aaH + 30pt;

sepA := 3pt;
sepB := 2pt;
sepC := 2pt;
sepD := 7pt;

penLN := 0.5bp;
penARROW := 0.5bp;

w0 := (0,0);
w1 := w0 + (0,-dyA);
w10 := w0 + (0.5da,dyB);
col1 := 0.85 white;

for i=0 upto na:
    bo[i] := false;
    endfor
bo[2] := true;
bo[3] := true;
bo[5] := true;
bo[8] := true;
bo[9] := true;
bo[10] := true;
bo[12] := true;
bo[13] := true;
bo[17] := true;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the upper row.
pickup pencircle scaled penLN;
for i=0 upto na:
    if not bo[i]:
        fill (w0+(i*aaW,0))--(w0+(i*aaW,aaH))--
             (w0+((i+1)*aaW,aaH))--(w0+((i+1)*aaW,0))--cycle
            withcolor col1;
        fi
    endfor
for i=0 upto na:
    draw (w0+(i*aaW,0))--(w0+(i*aaW,aaH));
    endfor
draw w0--(w0+(da,0));
draw (w0+(0,aaH))--(w0+(da,aaH));
label.lft(btex $\omega$ etex, w0+(-sepA,0.5aaH));

for i=0 upto na:
    label(decimal i infont "cmr10", w0 + ((i+0.5)*aaW,0.5aaH));
    endfor
label.rt(btex $\dots$ etex, w0+(da+sepA,0.5aaH));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the lower row.
pickup pencircle scaled penLN;
for i=0 upto nb:
    draw (w1+(i*aaW,0))--(w1+(i*aaW,aaH));
    endfor
draw w1--(w1+(db,0));
draw (w1+(0,aaH))--(w1+(db,aaH));
label.lft(btex $\omega$ etex, w1+(-sepA,0.5aaH));

for i=0 upto nb:
    label(decimal i infont "cmr10", w1 + ((i+0.5)*aaW,0.5aaH));
    endfor
label.rt(btex $\dots$ etex, w1+(db+sepA,0.5aaH));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the map f from omega to Y.
pickup pencircle scaled penARROW;
j := 0;
for i=0 upto nb:
    % Find the next element of Y.
    exitif j >= na;
    jnew := j;
    for k := j+1 upto na:
        if bo[k]:
            jnew := k;
            fi
        exitif bo[k];
        endfor
    exitif jnew = j;
    j := jnew;
    zz1 := w1 + ((i+0.5)*aaW,aaH + sepB);
    zz2 := w0 + ((j+0.5)*aaW,-sepB);
    drawarrow zz1--zz2;
    endfor
label.lft(btex $f$ etex, 0.5[w0,w1]+(-sepA,0.5aaH));
label.rt(btex \dots etex, 0.5[zz1,zz2] + (30pt,0pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Arrows from Y label to Y elements.
label(btex $Y$ etex, w10);
pickup pencircle scaled penARROW;
% for i=7 upto 14:
zz10 := w10;
for i=0 upto na:
    if (i <= na) and (bo[i]):
        zz10 := w0 + ((i+0.5)*aaW, aaH + sepC);
        S_arrowspaces(w10, zz10, sepD, 0, 1, black);
        fi
    endfor
if zz10 <> w10:
    label.rt(btex \dots etex, 0.5[w10,zz10] + (20pt,0pt));
    fi

endfig;
end
