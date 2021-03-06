% tex/conc/mp/fibre8.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fibre8.mp defbd13703 2012-05-07 12:05:29Z Alan U. Kennington $
% Partitioning of total space by a projection map.
% Formerly map47.mp.

beginfig(1);
path pat[];
pair q[];
picture pic;

np := 10;       % Number of vertical divisions of X.
npx := np-2;    % Special element y_2 in Y.
npxx := 4;      % Special element y_1 in Y.
a := 3cm;       % Half-width of picture.
b := 2.8cm;     % Distance of centre of set X above set Y.
c := 1.5cm;     % Half-height of set X.
d := -0.2cm;    % Arrow spacing gap (top).
dd := 0.2cm;    % Arrow spacing gap (bottom).
e := 9pt;       % Label spacing gap.

penLN := 0.5bp;
penLNW := 1.0bp;
penPT := 2.5bp;

% The main curve of the set X.
pat0 := (-3,0)..(-1.8,-1.0)..(0,-2.5)..(2,-0.8)..(2.85,0)
      ..(2,1.0)..(0,2.5)..(-1.5,1.5)..cycle;
pat0 := (pat0 xscaled (a/3)) yscaled (c/3.5) shifted (0,b);

% X coordinate for the point y in Y.
qx := -a+a*((2npx-1)/np);
qxa := -a+2a*((npx-1)/np);
qxaa := -a+2a*(npx/np);
qxx := -a+a*((2npxx-1)/np);
qxxa := -a+2a*((npxx-1)/np);
qxxaa := -a+2a*(npxx/np);

fill ((qxa,b-c)--(qxaa,b-c)--(qxaa,b+c)--(qxa,b+c)--cycle) withcolor 0.9white;
fill ((qxxa,b-c)--(qxxaa,b-c)--(qxxaa,b+c)--(qxxa,b+c)--cycle)
 withcolor 0.9white;

% Vertical lines for X.
for i=1 upto np-1:
    draw (-a+2a*(i/np), b+c)..(-a+2a*(i/np), b-c);
    endfor

clip currentpicture to pat0;

% Draw the set X.
draw pat0;

% Draw the set Y.
pickup pencircle scaled penLNW;
draw (-a,0)..(a,0) withcolor 0.9white;

for i=1 upto np:
    pickup pencircle scaled penPT;
    xx := -a+a*((2i-1)/np);
    draw (xx,0);

    % Put in some arrows for function f.
    pickup pencircle scaled penLN;
    drawarrow (xx,b-c-d)..(xx,dd);
    endfor

% Draw label for element y of Y.
label.bot(btex \strut$b_2$ etex, (qx,0));
label.bot(btex \strut$b_1$ etex, (qxx,0));

% A label and arrow for f^{-1}({y_1}).
pickup pencircle scaled penLN;
q2 := (qxx,b+0.63c);
q1 := q2 + (-0.6c,0.32c);
drawarrow q1{dir0}..{dir-70}q2;
label.lft(btex $E_{b_1}=\pi^{-1}(\{b_1\})$ etex, q1);

% A label and arrow for f^{-1}({y_2}).
pickup pencircle scaled penLN;
q2 := (qx,b+0.5c);
q1 := q2 + (0.6c,0.4c);
drawarrow q1{dir180}..{dir-110}q2;
label.rt(btex $E_{b_2}=\pi^{-1}(\{b_2\})$ etex, q1);

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

% Do stuff outside the bounding box.
label.lft(btex $B$ etex, (-a-e,0));
label.lft(btex $E$ etex, (-a-e,b));
label.lft(btex $\pi$ etex, (-a-e,(b-c-d+dd)/2));

setbounds currentpicture to pat1;

endfig;
end
