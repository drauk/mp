% tex/conc/mp/class8.mp   2016-9-1   Alan U. Kennington.
% $Id: tex/conc/mp/class8.mp 1142343da1 2016-09-01 12:37:36Z Alan U. Kennington $
% Division of a line in a ratio according to Euclidean geometry.

input mapmax
% verbatimtex
% \input akmath
% etex

beginfig(1);
pair v[];
color col[];
path pat[];

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
penLN := 0.5bp;             % Lines.
penPT := 2.5pt;             % Points.
penARC := 0.4bp;            % Arcs.
penARROW := 0.5bp;          % Parallelism arrows.
col1 := 0.5white;

thetA := 38;
scA := 1.32;
pA := 7;
qA := 11;
scC := 1.2;

aa := 5cm;
lenC := aa * scC / qA;

v0 := (0,0);            % A
v1 := v0+(aa,0);        % B
v20 := (v1-v0) scaled scA rotated thetA; % A--C
v21 := unitvector(v20);
v2 := v0 + v20;         % C

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pickup pencircle scaled penLN;
draw v0--v1;
draw v0--v2;

pickup pencircle scaled penPT;
draw v0;
draw v1;
draw v2;

% Draw the two parallel lines.
v30 := v0 + v21 * lenC * pA;
v31 := v0 + v21 * lenC * qA;
v32 := v30 + (v1 - v31);
pickup pencircle scaled penLN;
draw v31--v1;           % 8-B.
draw v30--v32;          % 5-D.
draw v32--v1;           % D-B.

% The desired point E.
v40 := (v30--v32) intersectionpoint (v0--v1);
% Where to put the arrow symbols.
v41 := 0.5[v30,v40];
v42 := 0.5[v31,v1];

cC := 30/(360/8);
cD := 27.5/(360/8);
for i=1 upto qA:
    lenCx := lenC * (i-1);
    lenCy := lenC * i;
    v25 := v0 + v21 * lenCx;
    v26 := v0 + v21 * lenCy;
    % Draw an arc to determine where to put the next point.
    pat10 := (subpath (-cD,cC) of fullcircle scaled (lenC*2))
        rotated thetA shifted v25;
    pickup pencircle scaled penARC;
    draw pat10;

    pickup pencircle scaled penPT;
    draw v26;
    v27 := v26;
    if i > 9:
        v27 := v27 + (0,1.5bp);
        fi
    label.top(decimal i infont "cmr7", v27);
    endfor

% Draw arcs to determine where D is.
lenDB := abs(v30-v31);
angDB := angle(v30-v31);
cDB := 20/(360/8);
lenDV := abs(v1-v31);
angDV := angle(v1-v31);
cDV := 15/(360/8);

pat11 := (subpath (-cDB,cDB) of fullcircle scaled (lenDB*2))
    rotated angDB shifted v1;
pat12 := (subpath (-cDV,cDV) of fullcircle scaled (lenDV*2))
    rotated angDV shifted v30;
pickup pencircle scaled penARC;
draw pat11;
draw pat12;

pickup pencircle scaled penPT;
draw v32;
draw v40;

label.lft(btex $A$ etex, v0);
label.rt(btex $B$ etex, v1);
label.rt(btex $C$ etex, v2);
label.bot(btex $D$ etex, v32+(-2pt,0));
label.urt(btex $E$ etex, v40+(0,0));

% Add a couple of parallelism arrows.
S_tilt_parallel(v41, angDV, 1);
S_tilt_parallel(v42, angDV, 1);

v50 := 0.3[v0,v40] + (0,-15pt);
label.bot(btex $AE = {7\over11}AB$ etex, v50);

endfig;
end
