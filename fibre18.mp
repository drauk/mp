% tex/conc/mp/fibre18.mp   2007-5-3   Alan Kennington.
% $Id: tex/conc/mp/fibre18.mp d618639cab 2016-05-13 07:47:54Z Alan U. Kennington $
% Parallelism on topological fibre bundles.
% Formerly map78.mp.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric t[];
pair p[], pp[], ppp[], v[];
path pat[];
string ss;
color col;

unit := 1cm;
a := 2;
nfib := 7;
rfib := 0.7unit;
ptmax := 5;
pptmax := 5;
ppptmax := 2;
angg := -16;
anggg := 10;

% The shape of the fibre space.
for i=0 upto nfib-1:
    v[i] := ((rfib,0)rotated(angg+(i/nfib)*360)) xscaled 0.7;
    endfor

% Three curves in the base space.
p0 := (0,0)*unit;
p1 := p0 + (a,0.8)*unit;
p2 := p1 + (a,-0.4)*unit;
p3 := p2 + (a,2)*unit*0.8;
p4 := p3 + (a,-1)*unit;
p5 := p4 + (a,0.2)*unit;
pat1 := for i=0 upto ptmax-1:
    p[i]..
    endfor
    p[ptmax];

pp0 := p0;
pp1 := pp0 + (a,-0.7)*unit;
pp2 := pp1 + (a,-0.5)*unit;
pp3 := pp2 + (a,0.9)*unit*0.8;
pp4 := pp3 + (a,-1.2)*unit;
pp5 := pp4 + (a,-0.2)*unit;
pat2 := for i=0 upto pptmax-1:
    pp[i]..
    endfor
    pp[pptmax];

ppp0 := pp[4];
ppp1 := ppp0 + (2a/3,1.2)*unit;
% ppp2 := ppp1 + (a/3,0.7)*unit;
ppp2 := p[ptmax];
% ppp3 := ppp2 + (a,2)*unit*0.8;
ppp3 := p[ptmax];
ppp4 := ppp3 + (a,-1)*unit;
ppp5 := ppp4 + (a,0.2)*unit;
pat3 := for i=0 upto ppptmax-1:
    ppp[i]..
    endfor
    ppp[ppptmax];

% Draw the basic curve.
pickup pencircle scaled 3pt;
col := 0.8white;
draw pat1 withcolor col;
draw pat2 withcolor col;
draw pat3 withcolor col;

% Draw the fibre sets.
for i=0 upto nfib-1:
    % Curve 1.
    if i=0:
        tt := 1.3pt;
        ttt := 1.2pt;
        col := black;
    else:
        tt := 0.4pt;
        ttt := 0.3pt;
        col := 0.5white;
        fi
    % Draw the fibre arrows.
    pickup pencircle scaled tt;
    for j=0 upto ptmax:
        drawarrow p[j]--(p[j]+v[(i-j+2)mod nfib]);
        endfor

    % Draw the parallel translation along the path.
    pickup pencircle scaled ttt;
    draw for j=0 upto ptmax-1:
        (p[j]+v[(i-j+2)mod nfib])..
        endfor
        (p[ptmax]+v[(i-ptmax+2)mod nfib]) withcolor col;

    % Curve 2.
    if i=0:
        tt := 1.3pt;
        ttt := 1.2pt;
        col := black;
    else:
        tt := 0.4pt;
        ttt := 0.3pt;
        col := 0.5white;
        fi
    % Draw the fibre arrows.
    pickup pencircle scaled tt;
    for j=0 upto pptmax:
        drawarrow pp[j]--(pp[j]+v[(i-2j+2)mod nfib]);
        endfor

    % Draw the parallel translation along the path.
    pickup pencircle scaled ttt;
    draw for j=0 upto pptmax-1:
        (pp[j]+v[(i-2j+2)mod nfib])..
        endfor
        (pp[pptmax]+v[(i-2pptmax+2)mod nfib]) withcolor col;

    % Curve 3.
    if i=0:
        tt := 1.3pt;
        ttt := 1.2pt;
        col := black;
    else:
        tt := 0.4pt;
        ttt := 0.3pt;
        col := 0.5white;
        fi
    % Draw the fibre arrows.
    pickup pencircle scaled tt;
    for j=0 upto ppptmax:
        % Break the pattern for the last fibre set.
        k := 1;
        if j = ppptmax: k:= 2; fi
        drawarrow ppp[j]--(ppp[j]+v[(i-j+k)mod nfib]);
        endfor

    % Draw the parallel translation along the path.
    pickup pencircle scaled ttt;
    draw for j=0 upto ppptmax-1:
        (ppp[j]+v[(i-j+1)mod nfib])..
        endfor
        % Break the pattern for the last fibre set.
        (ppp[ppptmax]+v[(i-ppptmax+2)mod nfib]) withcolor col;
    endfor

% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
% show pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1;
bboxmargin := bbx;

label.lft(btex Start here etex, p0 + (-rfib,0));
label.rt(btex End here etex, p5 + (rfib,0));

% Set picture edges to the former values.
% pat1 := bbox currentpicture;
% show pat1;
setbounds currentpicture to pat1;
% pickup pencircle scaled 0.4pt;
% draw pat1 dashed evenly;

% Label for curve 1.
i := 1;
m := ptmax;
pat4 := for j=0 upto m-1:
    (p[j]+v[(i-j+2)mod nfib])..
    endfor
    (p[m]+v[(i-m+2)mod nfib]);
S_textcurve("wormhole 1", (subpath (0,2) of pat4) shifted (0,1.5pt),1,"cmr8",1);

% Label for curve 2.
i := 0;
m := pptmax;
pat5 := for j=0 upto m-1:
    (pp[j]+v[(i-2j+2)mod nfib])..
    endfor
    (pp[m]+v[(i-2m+2)mod nfib]);
S_textcurve("wormhole 2",(subpath(3,4)of pat5) shifted((0,2pt)rotated-30),
    1, "cmr8", 1);

% Label for curve 3.
i := 0;
m := ppptmax;
pat6 := for j=0 upto m-1:
    (ppp[j]+v[(i-j+1)mod nfib])..
    endfor
    (ppp[m]+v[(i-m+2)mod nfib]);
S_textcurve("wormhole 3", (subpath (1,2) of pat6) shifted (6.5pt,-4pt),
    1, "cmr8", 1);

endfig;
end
