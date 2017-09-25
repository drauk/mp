% tex/conc/mp/misc18.mp   2009-1-24   Alan Kennington.
% $Id: tex/conc/mp/misc18.mp 4134542cc3 2009-01-24 00:49:03Z Alan U. Kennington $
% Classification of entities in the environment.

input mapmax.mp

beginfig(1);
pair    p[], q[];
path    pat[];

unit := 2.0cm;
d := unit;
r := 0.5d;

p0 := (0,0);
p1 := p0 + (1.7unit,0);
p2 := 0.5[p0,p1] + (0,-unit);

penpt := 1.8pt;
penln := 0.5bp;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pat0 := fullcircle scaled d shifted p0;
pat1 := fullcircle scaled d shifted p1;
pat2 := fullcircle scaled d shifted p2;

% Kludge: Drawing in white.
pickup pencircle scaled penln;
draw pat0 withcolor white;
draw pat1 withcolor white;
draw pat2 withcolor white;

% Bounding box.
pat10 := bbox currentpicture;
p10 := ulcorner currentpicture;
p11 := urcorner currentpicture;
p12 := lrcorner currentpicture;
p13 := llcorner currentpicture;

pickup pencircle scaled penln;
draw pat10;

ww := xpart(p11) - xpart(p10);
hh := ypart(p11) - ypart(p12);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some random patterns inside the regions.
% Pseudo-random number generation. (Very rough!!)
rand_x := 981;
rand_T := 2048;
rand_a := 13;
rand_b := 1;
a := ww;
b := hh;

pickup pencircle scaled penpt;
npointsmax := 250;
for i=0 upto npointsmax-1:
    % Create "random" number in [0,T).
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    aa := a * (rand_x/rand_T);
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    rand_x := (rand_x * rand_a + rand_b) mod rand_T;
    bb := b * (rand_x/rand_T);
    q0 := p13 + (aa, bb);
    % Test whether this point was inside a region.
    drawit := 0;
    if length(q0-p0) < r: drawit := 1; fi
    if length(q0-p1) < r: drawit := 1; fi
    if length(q0-p2) < r: drawit := 1; fi

    if drawit > 0:
        draw q0;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Add some labels.
spc := 1.5pt;
label.llft(btex mice etex, point 6 of pat0);
label.lrt(btex rats etex, point 6 of pat1);
label.lft(btex hamsters etex, point 5 of pat2);
label.bot(btex attribute parameter 1 etex, 0.5[p12,p13] + (0,-spc));
S_tiltlabel_top_up(btex attribute parameter 2 etex,
 0.5[p10,p13], angle(p10-p13), spc);

% Dividing lines.
rat := 0.32;
p20 := 0.5[p0,p2];
p21 := 0.5[p1,p2];
p22 := p0 - p2;
p23 := p1 - p2;
p30 := p20 + ((p22 rotated 90) scaled rat);
p31 := p20 + ((p22 rotated 270) scaled rat);
p32 := p21 + ((p23 rotated 90) scaled rat);
p33 := p21 + ((p23 rotated 270) scaled rat);

pickup pencircle scaled penln;
draw p30--p31;
draw p32--p33;

endfig;
end
