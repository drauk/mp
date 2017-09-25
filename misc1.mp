% tex/conc/mp/misc1.mp   2005-3-10   Alan Kennington.
% $Id: tex/conc/mp/misc1.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Map for coordinate map.

beginfig(1);

path p[], q[];
pair c;

c := (0cm,0cm);
d := 1.4cm;

p0 = fullcircle scaled d shifted c;

pickup pencircle scaled 0.4pt;
draw p0;

s := 1;
for i=1 step 1 until 8:
    s := s * 1.1;
    q[i] := (subpath(0,i) of p0) scaled s;
    draw q[i];
    endfor;

defaultfont := "cmr8";
label.bot(decimal 3, (point length q[3] of q[3]) shifted (-d*0.05,0));
label.rt(decimal 4, point length q[4] of q[4]);
label.rt(decimal 5, point length q[5] of q[5]);
label.top(decimal 6, point length q[6] of q[6]);
label.top(decimal 7, point length q[7] of q[7]);

endfig;
end
