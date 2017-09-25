% tex/conc/mp/topofin1.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/topofin1.mp 69b29aa50e 2015-08-08 03:07:22Z Alan U. Kennington $
% Non-discrete T_1 topology on a countably infinite set.

beginfig(1);
pair w[], zz[];
color col[];
path pat[];

unit := 8cm;
a := 1.1unit;
aa := 0.1unit;
np := 20;               % Number of points.
npx := 26;              % Extra points.
npp := 5;               % Number of points inside boxes.
rat := 0.875;           % Ratio of points.
sp := 2pt;
xsp := 2.2pt;           % Inter-box spacing.

penLN := 0.5pt;         % Box boundary thickness.
penPT := 2.0pt;         % Point diameter.

w0 := (0,0);
w1 := w0 + (a,0);
w2 := w0 + (-aa,0);

% Draw the real number line?
% pickup pencircle scaled 0.5pt;
% draw w2--w1;

% Draw some points.
pickup pencircle scaled penPT;
dd := unit;
penPTz := penPT;
for i=1 upto npx:
    zz[i] := w0 + (dd,0);
    if (i > np):
        penPTz := penPTz * rat;
        pickup pencircle scaled penPTz;
        fi
    draw zz[i];
    dd := dd * rat;
    if (i < 10):
        label.bot(decimal i, zz[i]+(0,-sp));
        fi
    endfor

% The limit point.
pickup pencircle scaled penPT;
draw w0;

% Draw some boxes.
pickup pencircle scaled penLN;
xd := 0;
yd := 1.25pt;
for i=np downto npp:
    xd := xd + xsp;
    yd := yd + xsp;
    w9 := 0.5[zz[i],zz[i-1]];
    w10 := w0+(-xd,yd);         % Top left.
    w11 := w9+(0,yd);           % Top right.
    w12 := w9+(0,-yd);          % Bot right.
    w13 := w0+(-xd,-yd);        % Bot left.
    draw w10--w11--w12--w13--cycle;
    endfor

label.rt(btex $\scriptstyle0$ etex, w0+(-1pt,0));

% Some set labels.
ddy := 17pt;
ddyy := 7pt;
ddxx := 7.5pt;
ddxxx := 0.5pt+penLN/2;
dda := -0.5pt;

i := npp;
w9 := 0.5[zz[i],zz[i-1]];
label.urt(btex $\Omega_4$ etex, w9+(dda,ddy));
drawarrow w9+(ddxx,ddy)..w9+(ddxxx,ddyy);

i := i+1;
w9 := 0.5[zz[i],zz[i-1]];
label.urt(btex $\Omega_5$ etex, w9+(dda,ddy));
drawarrow w9+(ddxx,ddy)..w9+(ddxxx,ddyy);

i := i+1;
w9 := 0.5[zz[i],zz[i-1]];
label.urt(btex $\Omega_6$ etex, w9+(dda,ddy));
drawarrow w9+(ddxx,ddy)..w9+(ddxxx,ddyy);

i := i+1;
w9 := 0.5[zz[i],zz[i-1]];
label.urt(btex $\Omega_7$ etex, w9+(dda,ddy));
drawarrow w9+(ddxx,ddy)..w9+(ddxxx,ddyy);

endfig;
end
