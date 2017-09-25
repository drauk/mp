% tex/conc/mp/real9.mp   2015-6-30   Alan U. Kennington.
% $Id: tex/conc/mp/real9.mp 75cdf477f2 2015-06-30 08:00:00Z Alan U. Kennington $
% Addition of vectors in the free linear space over the reals.

input mapmax.mp
verbatimtex
\input akmath
etex

beginfig(1);
path pat[];
pair w[];
color col[];

% The parameter intervals.
aa := 5.7cm;
bb := 1mm;

col2 := 0.6white;
thx := 1.30pt;          % Arrows in real number sets.
thz := 1.00pt;          % Real number sets.

m := 10;                % Number of points.
iz := 10;               % First point in point array.
unitx := 0.9aa;
unity := 1cm;
hh := unity * 1.8;

w0 := (0,0);
w1 := w0 + (0,-hh);
w2 := w1 + (0,-hh);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The parameter intervals.
pickup pencircle scaled thz;
S_realscol(w0, aa, bb, pencircle scaled thz, col2, col2);
S_realscol(w1, aa, bb, pencircle scaled thz, col2, col2);
S_realscol(w2, aa, bb, pencircle scaled thz, col2, col2);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Pseudo-random number generation. (Very bad!!)
rand_x := 993;
rand_T := 2048;
rand_a := 7;
rand_b := 1;

% Values x on the real line and values f(x).
for i=0 upto 2*m-1:
    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;

    % Number between -1 and +1.
    vx := -1 + 2 * (rand_x/rand_T);

    % Create random number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;

    % Number between -1 and +1.
    vy := -1 + 2 * (rand_x/rand_T);

    w[iz+i] := (vx * unitx, vy * unity);
    endfor

% The first function.
pickup pencircle scaled thx;
for i=0 upto m-1:
    draw (w0+(xpart(w[iz+i]),0))--(w0+w[iz+i]);

    endfor

% The second function.
pickup pencircle scaled thx;
for i=0 upto m-1:
    draw (w1+(xpart(w[iz+m+i]),0))--(w1+w[iz+m+i]);

    endfor

% The sum of the two functions.
pickup pencircle scaled thx;
for i=0 upto 2m-1:
    draw (w2+(xpart(w[iz+i]),0))--(w2+w[iz+i]);

    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

label.ulft(btex $f_1$ etex, w0+(-aa,0));
label.ulft(btex $f_2$ etex, w1+(-aa,0));
label.ulft(btex $f_1+f_2$ etex, w2+(-aa,0));

% Lie about the picture edges.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

endfig;
end
