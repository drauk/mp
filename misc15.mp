% tex/conc/mp/misc15.mp   2015-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/misc15.mp 68b7a41e04 2015-01-15 11:22:38Z Alan U. Kennington $
% Cross product of two sets.

input boxmax

beginfig(1);
pair zz[], pt[];
path pat[];
color col[];
numeric a[], b[];

unit := 5.5mm;          % Scaling parameter.
rpt := 0.1unit;         % Radius of dots.
dpt := 2rpt;
penDOT := 0.4pt;        % Thickness of outlines of dots.
penBOX := 0.4pt;        % Thickness of box around A x B.
penARROW := 0.4pt;      % Thickness of box around A x B.

spx := 1.8unit;         % X-margin for set B on the left.
spy := 1.8unit;         % Y-margin for set A on the bottom.
sprat := 0.3;           % Proportion of margins for the boxes.
spxx := spx * sprat;
spyy := spy * sprat;
splab := 4pt;           % Spacing for labels.

col0 := 0.5white;
col1 := 0.8white;

% Points in set A.
a1 := 0;
a2 := 1.5;
a3 := 2;
a4 := 2.5;
a5 := 3;
a6 := 4.5;
a7 := 5;
a8 := 6.5;
a9 := 7;
a10 := 7.5;
a11 := 9;
a12 := 9.5;
amax := 12;
% a[0] := -spx+spxx;
% a[-1] := -spx-spxx;

% Points in set B.
b1 := 0;
b2 := 0.5;
b3 := 2;
b4 := 2.5;
b5 := 3;
b6 := 3.5;
b7 := 5;
b8 := 5.5;
b9 := 6;
b10 := 7;
bmax := 10;
% b[0] := -spy+spyy;
% b[-1] := -spy-spyy;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw set A on the bottom.
pickup pencircle scaled penDOT;
pat0 := fullcircle scaled dpt;
for i=1 upto amax:
    zz0 := (a[i] * unit, -spy);
    fill (pat0 shifted zz0) withcolor col1;
    draw (pat0 shifted zz0);
    endfor

% Draw set B on the left.
pickup pencircle scaled penDOT;
pat0 := fullcircle scaled dpt;
for j=1 upto bmax:
    zz0 := (-spx, b[j] * unit);
    fill (pat0 shifted zz0) withcolor col1;
    draw (pat0 shifted zz0);
    endfor

% Draw the cross-product set A x B.
pickup pencircle scaled penDOT;
pat0 := fullcircle scaled dpt;
for i=1 upto amax:
    for j=1 upto bmax:
        zz0 := (a[i] * unit, b[j] * unit);
        fill (pat0 shifted zz0) withcolor col1;
        draw (pat0 shifted zz0);
        endfor
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw a box around A.
B_draw_rect_round(a[1]*unit-spxx, -spy+spyy,
 (a[amax]-a[1])*unit+2spxx, 2spyy, spxx, penBOX, black);

% Draw a box around B.
B_draw_rect_round(-spx-spxx, b[bmax]*unit+spyy,
 2spxx, (b[bmax]-b[1])*unit+2spyy, spxx, penBOX, black);

% Draw a box around A x B.
B_draw_rect_round(a[1]*unit-spxx, b[bmax]*unit+spyy,
 (a[amax]-a[1])*unit+2spxx, (b[bmax]-b[1])*unit+2spyy, spxx, penBOX, black);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the sets.
label.rt(btex $A$ etex, (a[amax]*unit, b[1]*unit-spy) + (spxx+splab, 0));

label.lft(btex $B$ etex,
 0.5[(a[1]*unit, b[1]*unit),(a[1]*unit, b[bmax]*unit)] + (-spx-spxx-splab, 0));

label.rt(btex $A\times B$ etex,
 0.5[(a[amax]*unit, b[1]*unit),(a[amax]*unit, b[bmax]*unit)] + (spxx+splab, 0));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for some sample points.
zz10 := (a[1]*unit - spx, b[bmax]*unit) + (-spxx*0.33, 0);
zz11 := zz10 + (-20pt, 0pt);
pickup pencircle scaled penARROW;
drawarrow zz11--zz10;
label.lft(btex $b$ etex, zz11);

zz20 := (a[amax]*unit, b[bmax]*unit) + (spxx*0.33, 0);
zz21 := zz20 + (20pt, 0pt);
drawarrow zz21--zz20;
label.rt(btex $(a,b)$ etex, zz21);

zz30 := (a[amax]*unit, b[1]*unit - spy) + ((spxx*0.33, 0) rotated 40);
zz31 := zz30 + ((20pt, 0pt) rotated 40);
drawarrow zz31--zz30;
label.urt(btex $a$ etex, zz31);

endfig;
end
