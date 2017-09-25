% tex/conc/mp/int8.mp   2014-11-6   Alan U. Kennington.
% $Id: tex/conc/mp/mat2.mp 277c758429 2015-07-02 11:30:02Z Alan U. Kennington $
% Two enumeration styles for the set omega x omega. (Based on real10.mp.)

beginfig(1);
pair w[], zz[];
path pat[];

aa := 15pt;
bb := 15pt;
na := 6;
nb := 6;
% xt := 0.75aa;
% yt := 0.75aa;
xt := aa;
yt := aa;
da := na * aa + xt;
db := nb * bb + yt;
cc := da + 2.8cm;
ddots := 1.5pt;
dy := 3bp;

w0 := (0,0);
w1 := (cc,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the lines.
for i=0 upto na:
    draw (w0+(0,-i*bb))--(w0+(da,-i*bb));
    draw (w1+(0,-i*bb))--(w1+(da,-i*bb));
    endfor

for j=0 upto nb:
    draw (w0+(j*aa,0))--(w0+(j*aa,-db));
    draw (w1+(j*aa,0))--(w1+(j*aa,-db));
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add i/j labels.
label(btex $\llap{$\smash{i={}}$}0$ etex, w0+(-0.5aa,-0.5bb));
label(btex $\llap{$\smash{i={}}$}0$ etex, w1+(-0.5aa,-0.5bb));
for i=1 upto na-1:
    label(decimal i infont "cmr10", w0+(-0.5aa,-(i+0.5)*bb));
    label(decimal i infont "cmr10", w1+(-0.5aa,-(i+0.5)*bb));
    endfor
label(btex $\dots$ etex, w0+(-0.5aa-ddots,-(na+0.5)*bb));
label(btex $\dots$ etex, w1+(-0.5aa-ddots,-(na+0.5)*bb));

label(btex $\llap{$\smash{j={}}$}0$ etex, w0+(0.5aa,0.5bb));
label(btex $\llap{$\smash{j={}}$}0$ etex, w1+(0.5aa,0.5bb));
for j=1 upto nb-1:
    label(decimal j infont "cmr10", w0+((j+0.5)*aa,0.5bb));
    label(decimal j infont "cmr10", w1+((j+0.5)*aa,0.5bb));
    endfor
label(btex $\dots$ etex, w0+((nb+0.5)*aa,0.5bb));
label(btex $\dots$ etex, w1+((nb+0.5)*aa,0.5bb));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Put entries in the table.
iA := 0;
jA := 0;
for k=0 upto 2 * na * nb + na + nb:
        if (iA <= na) and (jA <= nb):
            label(decimal k infont "cmr10", w0+((jA+0.5)*aa,-(iA+0.5)*bb));
            fi
        iA := iA - 1;
        jA := jA + 1;
        if iA < 0:
            iA := jA;
            jA := 0;
            fi
    endfor

iA := 0;
jA := 0;
for k=0 upto (na+1) * (nb+1) - 1:
        if (iA <= na) and (jA <= nb):
            label(decimal k infont "cmr10", w1+((jA+0.5)*aa,-(iA+0.5)*bb));
            fi
        if jA < iA:
            jA := jA + 1;
        else:
            if iA > 0:
                iA := iA - 1;
            else:
                iA := jA + 1;
                jA := 0;
                fi
            fi
    endfor

label.bot(btex a triangular enumeration etex,
 w0+(0.5(nb+0.2)*aa,-(na+1)*bb-dy));
label.bot(btex a rectangular enumeration etex,
 w1+(0.5(nb+0.2)*aa,-(na+1)*bb-dy));

endfig;
end
