% tex/conc/mp/fibre1.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fibre1.mp ec2798f5c7 2012-05-08 06:03:12Z Alan U. Kennington $
% Fibre bundle map for Moebius strip.
% Formerly fn3.mp.

beginfig(1);
pair v[];
picture s[];

a := 8cm;
b := 3.5cm;
n := 4;
ls := b/8; % Space for text on left.
penLN := 0.5bp;
penPT := 2.5bp;

v0 := (0,0);
v1 := v0+(a,0);
v2 := v0+(0,b);
v3 := v0+(a,b);

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
label.lft(btex $B=S^1$ etex, v0+(-ls,0));
label.lft(btex $E=S^1$ etex, v2+(-ls,0));

% The arrows.
for i=0 upto n:
    x := a * (i/n);
    xx := x/2;
    xxx := xx + a/2;
    v10 := v0+(x,0);
    v11 := v2+(xx,0);
    v12 := v2+(xxx,0);
    v13 := (v11-v10)/length(v11-v10)*(b/30);
    v14 := (v12-v10)/length(v12-v10)*(b/30);
    if i < n:
        pickup pencircle scaled penLN;
        drawarrow (v10+v13)--(v11-v13);
        drawarrow (v10+v14)--(v12-v14);

        pickup pencircle scaled penPT;
        draw v10;
        draw v11;
        draw v12;
        fi
    label.top(s[i], v11);
    label.top(s[i+n], v12);
    label.bot(s[i*2], v10);
    endfor

% Label at left.
label.lft(btex $\pi^{-1}:B\to E$ etex, 0.5[v0,v2]+(-ls,0));

endfig;
end
