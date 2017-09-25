% tex/conc/mp/misc4.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/misc4.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% A "wheel of knowledge" - the cycle of disciplines.

input mapmax.mp

beginfig(1);
string str[];
path p[];
pair c[];

c0 := (0cm,0cm);
d := 4cm;
nn := 7;
% For cmr10 at scale 1.
% dd := d-8pt;
% ddd := d+19pt;
% For cmr8 at scale 1.
dd := d-6.5pt;
ddd := d+15pt;
dddd := dd*0.8;
aa := 90-360/14;

p0 := fullcircle scaled d shifted c0;
p1 := reverse ((fullcircle scaled d) rotated aa) shifted c0;
p3 := (fullcircle scaled dddd) rotated 90 shifted c0;
p10 := fullcircle scaled dd shifted c0;     % Inner circle.
p11 := fullcircle scaled ddd shifted c0;    % Outer circle

str[6] := "mathematics";
str[5] := "logic";
str[4] := "philosophy";
str[3] := "psychology";
str[2] := "biology";
str[1] := "chemistry";
str[0] := "physics";

plen := length p1;
for i=0 upto nn-1:
    p2 := subpath ((i*plen)/nn,((i+1)*plen)/nn) of p1;

    % Draw the string.
    S_textcurve(str[i], p2, 1, "cmr8", 1);

    % Draw the radial line.
    pickup pencircle scaled 0.4pt;
    c1 := (dd/2,0) rotated (aa + (360*i)/nn);
    draw c0--c1;
    endfor

plenn := length p3;     % Yes, I know it's the same as for p1.
zz := 0.25;
for i=0 upto nn-1:
    % Draw a dependency arrow.
    pickup pencircle scaled 1.2pt;
    drawarrow (subpath (((i+zz)*plenn)/nn,((i+1-zz)*plenn)/nn) of p3)
        withcolor 0.6white;
    endfor

% pickup pencircle scaled 0.4pt;
pickup pencircle scaled 1.2pt;
draw p10 withcolor 0.2white;
draw p11 withcolor 0.2white;

endfig;
end
