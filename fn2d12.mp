% tex/conc/mp/fn2d12.mp   2009-1-10   Alan Kennington.
% $Id: tex/conc/mp/fn2d12.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Graph suggesting the existence of complex numbers.

input mapmax.mp

verbatimtex
\font\smallrm cmr7
etex

beginfig(1);
numeric xx[], dd[];
pair zz[];
path pat[];
color col[];

unit := 0.9cm;       % Global scale factor.

% Dimensions of the axes.
np := 6;
a  := (np + 1) * unit;
aa := (np + 1) * unit;
b  := 2.0 * unit;
bb := 2.0 * unit;
zz0 := (0,0);
zz1 := (a,0);
zz2 := (0,b);
zz3 := (-aa,0);
zz4 := (0,-bb);
ht := unit/8;

thpt := 2.4pt;          % Thickness for points.
thln := 0.5bp;          % Thickness for lines.
thci := 0.5bp;          % Thickness for circles.
thar := 0.5pt;          % Thickness for arrows.

col1 := 0.4white;       % Colour for the axes.
col2 := 0.4white;       % Colour for the notches.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw axes with labels.
pickup pencircle scaled thln;
drawarrow zz3--zz1 withcolor col1;
drawarrow zz4--zz2 withcolor col1;
label.ulft(btex $\strut x$ etex, zz1+(-2pt,0pt));
% label.ulft(btex $y$ etex, zz2);

% Draw the X-axis notches.
for i = -np step 1 until np:
    xx1 := i * unit;
    if i <> 0:
        draw (xx1,0)--(xx1,ht) withcolor col2;
        label.bot(decimal i, (xx1,0));
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the Y-axis notches.
% label.llft(btex $0$ etex, (0,0));

draw (0,unit)--(ht,unit) withcolor col2;
label.ulft(btex $1$ etex, (0,unit-1pt));

draw (0,-unit)--(ht,-unit) withcolor col2;
label.llft(btex $-1$ etex, (0,-unit+1pt));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Some points and circles.
zz10 := zz0 + (0,unit);
xx11 := 0;
xx12 := 0.5;
xx13 := 1.42;
xx14 := 2.5;
xx15 := -2.5;
xx16 := -2.5;
xx17 := -1;
xx18 := -1.5;
xx19 := -2.5;

for i=12 upto 15:
    zz[i] := (xx[i] * unit, 0);
    dd[i] := 2 * length(zz[i] - zz10);
    pat1 := fullcircle scaled dd[i] shifted zz[i];
    pickup pencircle scaled thci;
    draw pat1 dashed evenly scaled 0.5;
    pickup pencircle scaled thpt;
    draw zz[i];
    pickup pencircle scaled thar;
%    draw subpath (0,1-5pt/dd[i]) of (zz[i]--zz10);
    draw subpath (0,0.96) of (zz[i]--zz10);
%    drawarrow zz[i]--(zz[i]+(0,dd[i]/2));
    endfor

% Add some labels.
% label.bot(btex $x_1$ etex, zz11);
spa := 2pt;
spb := -2pt;
label.bot(btex $x_1$ etex, zz12);
label.bot(btex $x_2$ etex, zz13+(-2pt,0));
label.top(btex $x_3$ etex, zz14+(spa,ht+spb));
label.top(btex $x_4$ etex, zz15+(-spa,ht+spb));

sp := -2pt;
S_tiltlabel_top_up(btex\smallrm convergence etex,
 0.55[zz10,zz14], angle(zz14-zz10), sp);
S_tiltlabel_bot_up(btex\smallrm radius etex,
 0.55[zz10,zz14], angle(zz14-zz10), -sp);

S_tiltlabel_top_up(btex\smallrm convergence etex,
 0.5[zz10,zz15], angle(zz10-zz15), sp);
S_tiltlabel_bot_up(btex\smallrm radius etex,
 0.5[zz10,zz15], angle(zz10-zz15), -sp);

label(btex radius of convergence of $(1+x^2)^{-1}$ etex, zz0 + (0, -3.2unit));

endfig;
end
