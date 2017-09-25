% tex/conc/mp/fibre3.mp   2012-5-8   Alan U. Kennington.
% $Id: tex/conc/mp/fibre3.mp ec2798f5c7 2012-05-08 06:03:12Z Alan U. Kennington $
% Fibre bundle map for Moebius strip, with fibre chart.
% Formerly fn5.mp.

beginfig(1);
pair v[];
picture s[];
path pat;

a := 7.2cm;
b := 3.0cm;
n := 16;
m := 6;
d := a/4-a/(2*n); % Indent of F points in from the side.
% db := 3a/8-a/(2*n);
db := a/4-a/(2*n); % Indent of F points in from the side.
ls := b/16;     % Space for text on left.
dd := b/8;      % Space between copies of E.
eps := a*0.025; % Epsilon for U sets.
epsb := a*0.020; % Height of unfill-boxes.

penLN := 0.5bp;
penLNH := 0.8bp;
penTHICK := 1.2bp;
penTHIN := 0.5bp;
penPT := 2.5bp;

v0 := (0,0);
v1 := v0+(a,0);
v2 := v0+(0,dd);
v3 := v0+(a,dd);
v4 := v0+(d,b);
v5 := v0+(a-d,b);

v6 := v0+(0,-dd);
v7 := v0+(a,-dd);
v8 := v0+(db,-b);
v9 := v0+(a-db,-b);

pickup pencircle scaled penLN;
draw v0--v1;
pickup pencircle scaled penLNH;
draw v2--v3;
draw v6--v7;
pickup pencircle scaled penPT;
draw v4;
draw v5;
draw v8;
draw v9;
label.lft(btex $E=S^1$ etex, v0+(-ls,0));
label.lft(btex $\pi^{-1}(U_1)\subseteq E$ etex, v0+(-ls,14pt));
label.lft(btex $\pi^{-1}(U_2)\subseteq E$ etex, v0+(-ls,-14pt));
label.lft(btex $F=\{-1,1\}$ etex, v0+(0,b));
label.lft(btex $F=\{-1,1\}$ etex, v0+(0,-b));
label.top(btex $\strut-1$ etex, v4);
label.top(btex $\strut1$ etex, v5);
label.bot(btex $\strut-1$ etex, v8);
label.bot(btex $\strut1$ etex, v9);

% Some dots for E.
pickup pencircle scaled penPT;
for i=0 upto n-1:
    x := a * (i/n);
    draw v0+(x,0);
    endfor

% Arrows from E to F.
pickup pencircle scaled penLN;
for i=0 upto n-1:
    if i=m: pickup pencircle scaled penTHICK; fi
    x := a * (i/n);
    % Top set F.
    v10 := v2 + (x,0);
    if i < n/2:
        v11 := v4;
    else:
        v11 := v5;
        fi
    v12 := (v11-v10)/length(v11-v10)*(b/30);
    drawarrow (v10+v12)--(v11-v12*7);

    % Bottom set F.
    v10 := v6 + (x,0);
    if (i < n/4) or (i >= 3n/4):
        v11 := v8;
    else:
        v11 := v9;
        fi
    v12 := (v11-v10)/length(v11-v10)*(b/30);
    drawarrow (v10+v12)--(v11-v12*7);
    if i=m: pickup pencircle scaled penTHIN; fi
    endfor

% Blot out the complement of the U-sets.
pat :=
 (-eps/2,-epsb/2)--(eps/2,-epsb/2)--(eps/2,epsb/2)--(-eps/2,epsb/2)--cycle;
% unfill pat shifted (v0+(a-3*eps/2,0));
unfill pat xscaled 0.5 shifted (v2+(a-3*eps/2,0));
unfill pat xscaled 0.5 shifted (v2+(a/2-3*eps/2,0));
unfill pat xscaled 0.5 shifted (v6+(3a/4-3*eps/2,0));
unfill pat xscaled 0.5 shifted (v6+(a/4-3*eps/2,0));

% Labels at left.
label.lft(btex $\phi_1:\pi^{-1}(U_1)\to F$ etex, v0+(0,b/2));
label.lft(btex $\phi_2:\pi^{-1}(U_2)\to F$ etex, v0+(0,-b/2));

% Emphasis for a point b.
label.ulft(btex $b$ etex, (v0+(a*(m/n),0)));

endfig;
end
