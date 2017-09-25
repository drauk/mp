% tex/conc/mp/misc23.mp   2017-6-23   Alan U. Kennington.
% $Id: tex/conc/mp/misc23.mp 7ee1288bdb 2017-06-25 13:24:49Z Alan U. Kennington $
% Explanation of the crazy order of the days of the week.

input mapmax
input centmax
verbatimtex
\input akmath
etex

beginfig(1);
numeric ang[];
pair p[], q[], midpt;
color col[];

unit := 1.05cm; % Scale factor for individual figures.
a := 3.5cm;     % Horizontal spacing of figures.
b := 0.5cm;     % Height of arrow labels above the arrows.

sepA := 2bp;
sepB := sepA + 13bp;
ratA := 0.22;
ratB := 0.3;

penARROW := 0.7bp;
penLINE := 0.5bp;
penPT := 2.5pt;
penSEVEN := 0.5bp;
col1 := 0.5white;

p1 := (0,0);
midpt := p1;

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Figure 5.
% Draw the polyhedron.
n := 7;
radius := unit * 2;

n := 7;
for i=0 upto n-1:
    ang[i] := 360*((i+1)/n);
    q[i] := p1+(0,radius)rotated ang[i];
    endfor

for i=0 upto n-1:
    p10 := q[(i+4) mod 7];
    pickup pencircle scaled penSEVEN;
    draw q[i]--p10;
%    drawarrow q[i]--((1-ratA)[q[i],p10]);
    drawarrow q[i]--(ratA[q[i],p10]);
    if i<n-1:
        pickup pencircle scaled penARROW;
        drawarrow reverse ((ratB[q[i],q[i+1]])--((1-ratB)[q[i],q[i+1]]));
        fi
    endfor

pickup pencircle scaled penPT;
for i=0 upto n-1:
    draw q[i];
    endfor

S_tiltlabel_top_up(btex Monday etex, q[0], ang[0], sepA);
S_tiltlabel_top_up(btex Wednesday etex, q[1], ang[1], sepA);
S_tiltlabel_top_up(btex Friday etex, q[2], ang[2], sepA);
S_tiltlabel_top_up(btex Sunday etex, q[3], ang[3], sepA);
S_tiltlabel_top_up(btex Tuesday etex, q[4], ang[4], sepA);
S_tiltlabel_top_up(btex Thursday etex, q[5], ang[5], sepA);
S_tiltlabel_top_up(btex Saturday etex, q[6], ang[6], sepA);

S_tiltlabel_top_up(btex Moon etex, q[0], ang[0], sepB);
S_tiltlabel_top_up(btex Mercury etex, q[1], ang[1], sepB);
S_tiltlabel_top_up(btex Venus etex, q[2], ang[2], sepB);
S_tiltlabel_top_up(btex Sun etex, q[3], ang[3], sepB);
S_tiltlabel_top_up(btex Mars etex, q[4], ang[4], sepB);
S_tiltlabel_top_up(btex Jupiter etex, q[5], ang[5], sepB);
S_tiltlabel_top_up(btex Saturn etex, q[6], ang[6], sepB);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
