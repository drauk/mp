% tex/conc/mp/fibre2.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fibre2.mp ec2798f5c7 2012-05-08 06:03:12Z Alan U. Kennington $
% Fibre bundle map for Moebius strip, with fibre chart.
% Formerly fn4.mp.

beginfig(1);
pair v[];
picture s[];
path pat;

a := 7.2cm;     % Width of interval 0,2pi.
b := 2.5cm;     % Distance bottom line to centre.
bb := 2.5cm;    % Distance top line to centre.
c := b + bb;
d := a/4;       % Indent of F points in from the side.
n := 8;
ls := bb/16;    % Space for text on left.
eps := a*0.020; % Epsilon for U sets.
penLN := 0.5bp;
penPT := 2.5bp;
penARROW := 0.4bp;

v0 := (0,0);
v1 := v0+(a,0);
v2 := v0+(0,b);
v3 := v0+(a,b);
v4 := v0+(0,c);
v5 := v0+(a,c);
v6 := v0+(d,c);
v7 := v0+(a-d,c);

s[0] := btex \strut 0 etex;
s[1] := btex \strut $\pi/4$ etex;
s[2] := btex \strut $\pi/2$ etex;
s[3] := btex \strut $3\pi/4$ etex;
s[4] := btex \strut $\pi$ etex;
s[5] := btex \strut $5\pi/4$ etex;
s[6] := btex \strut $3\pi/2$ etex;
s[7] := btex \strut $7\pi/4$ etex;
s[8] := btex \strut $2\pi$ etex;

% The sets E and B.
pickup pencircle scaled penLN;
draw v0--v1;
draw v2--v3;
pickup pencircle scaled penPT;
draw v6;
draw v7;
label.lft(btex $B=S^1$ etex, v0+(-ls,0));
label.lft(btex $E=S^1$ etex, v2+(-ls,0));
label.lft(btex $F=\{-1,1\}$ etex, v4+(0,0));
label.top(btex $\strut-1$ etex, v6);
label.top(btex $\strut1$ etex, v7);
% label.rt(btex $\pi^{-1}(U_1)=E\;\setminus$ etex, v3+(ls,0));
label.rt(btex $\pi^{-1}(U_1)=$ etex, v3+(ls,0));
% label.rt(btex $\bigl((2\pi-\varepsilon/2,\pi-\varepsilon)
% \cup(\pi-\varepsilon/2,2\pi-\varepsilon)\bigr)$ etex,
% v3+(ls-6pt,-14pt));
label.rt(btex $(2\pi-\varepsilon/2,\pi-\varepsilon)
 \cup(\pi-\varepsilon/2,2\pi-\varepsilon)$ etex,
 v3+(ls,-14pt));
% label.rt(btex $U_1=B\setminus(2\pi-\varepsilon,2\pi-2\varepsilon)$ etex,
% v1+(ls,0));
label.rt(btex $U_1=(2\pi-\varepsilon,2\pi-2\varepsilon)$ etex, v1+(ls,0));

% Some labels for B, and dots for both E and B.
pickup pencircle scaled penPT;
for i=0 upto 8:
    x := a * (i/n);
    v10 := v0+(x,0);
    v11 := v2+(x,0);
    if i < n:
        draw v10;
        draw v11;
        fi
    label.bot(s[i], v10);
    endfor

% The arrows from E to B.
for i=0 upto n-1:
    x := a * (i/n);
    xx := x/2;
    xxx := xx + a/2;
    v10 := v0+(x,0);
    v11 := v2+(xx,0);
    v12 := v2+(xxx,0);

    v13 := (v11-v10)/length(v11-v10)*(b/30);
    v14 := (v12-v10)/length(v12-v10)*(b/30);
    pickup pencircle scaled penLN;
    drawarrow reverse ((v10+v13)--(v11-v13));
    drawarrow reverse ((v10+v14)--(v12-v14));
    pickup pencircle scaled penPT;
    draw v10;
    draw v11;
    draw v12;
    endfor

% Arrows from E to F.
pickup pencircle scaled penARROW;
for i=0 upto n-1:
    x := a * (i/n);
    xx := x/2;
    xxx := xx + a/2;
    v11 := v2+(xx,0);
    v12 := v2+(xxx,0);

    v13 := (v6-v11)/length(v11-v6)*(b/30);
    v14 := (v7-v12)/length(v12-v7)*(b/30);
    drawarrow (v11+v13)--(v6-v13*7);
    drawarrow (v12+v14)--(v7-v14*7);
    endfor

% Labels at left.
label.lft(btex $\pi:E\to B$ etex, 0.5[v0,v2]+(-ls,0));
label.lft(btex $\phi_1:\pi^{-1}(U_1)\to F$ etex, 0.5[v2,v4]+(ls*2,0));

% Blot out the complement of the U-sets.
pat := (-eps/2,-eps/2)--(eps/2,-eps/2)--(eps/2,eps/2)--(-eps/2,eps/2)--cycle;
unfill pat shifted (v0+(a-3*eps/2,0));
unfill pat scaled 0.5 shifted (v2+(a-3*eps/2,0));
unfill pat scaled 0.5 shifted (v2+(a/2-3*eps/2,0));

endfig;
end
