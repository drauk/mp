% tex/conc/mp/real10.mp   2012-7-8   Alan U. Kennington.
% $Id: tex/conc/mp/mat1.mp 277c758429 2015-07-02 11:30:02Z Alan U. Kennington $
% Component transition matrices for some particular bases of a linear space.

beginfig(1);
pair w[], zz[];
path pat[];

aa := 15pt;
bb := 15pt;
na := 6;
nb := 6;
xt := 0.75aa;
yt := 0.75aa;
da := na * aa + xt;
db := nb * bb + yt;
cc := da + 2.8cm;
ddots := 1.5pt;
dx := 0pt;

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
label(btex $\llap{$\smash{j={}}$}0$ etex, w1+(-0.5aa,-0.5bb));
for i=1 upto na-1:
    label(decimal i infont "cmr10", w0+(-0.5aa,-(i+0.5)*bb));
    label(decimal i infont "cmr10", w1+(-0.5aa,-(i+0.5)*bb));
    endfor
label(btex $\dots$ etex, w0+(-0.5aa-ddots,-(na+0.5)*bb));
label(btex $\dots$ etex, w1+(-0.5aa-ddots,-(na+0.5)*bb));

label(btex $\llap{$\smash{j={}}$}0$ etex, w0+(0.5aa,0.5bb));
label(btex $\llap{$\smash{i={}}$}0$ etex, w1+(0.5aa,0.5bb));
for j=1 upto nb-1:
    label(decimal j infont "cmr10", w0+((j+0.5)*aa,0.5bb));
    label(decimal j infont "cmr10", w1+((j+0.5)*aa,0.5bb));
    endfor
label(btex $\dots$ etex, w0+((nb+0.5)*aa,0.5bb));
label(btex $\dots$ etex, w1+((nb+0.5)*aa,0.5bb));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Put entries in the table.
for i=0 upto na-1:
    for j=0 upto nb-1:
        valA := 0;
        if i=j: valA := 1; fi
        if i+1=j: valA := -1; fi
        label(decimal valA infont "cmr10", w0+((j+0.5)*aa,-(i+0.5)*bb));
        valB := 0;
        if i<=j: valB := 1; fi
        label(decimal valB infont "cmr10", w1+((j+0.5)*aa,-(i+0.5)*bb));
        endfor
    endfor

label.lft(btex $\bar A_{\bar B,B}={}$ etex, w0+(-aa-dx,-0.5na*bb));
label.lft(btex $A_{B,\bar B}={}$ etex, w1+(-aa-dx,-0.5na*bb));

endfig;
end
