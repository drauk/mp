% tex/conc/mp/int13.mp   2007-5-23   Alan Kennington.
% $Id: tex/conc/mp/int13.mp 20cbd19625 2015-08-09 04:21:02Z Alan U. Kennington $
% Construction of signed integers from integers and "sign bit".

beginfig(1);
pair zz[];
path pat[];
color col[];

unit := 6.5mm;        % Scaling parameter.
na := 16;
nb := 1;
spa := 1.2;
spb := 0.9;
aa := (na+spa)*unit;
bb := (nb+spb)*unit;
col0 := 0.5white;
col1 := 0.8white;
rpt := 0.1unit;
dpt := 2rpt;
ax := 0.04;
ay := 0.00;
sp := 3pt;

% The axes.
zz0 := (0,0);
zz1 := zz0 + (aa,0);
zz2 := zz0 + (0,bb);
zz3 := zz0 + (-aa*ax,0);
zz4 := zz0 + (0,-bb*ay);

% Draw the axes.
pickup pencircle scaled 0.7pt;
drawarrow zz3--zz1 withcolor col0;
drawarrow zz4--zz2 withcolor col0;
label.bot(btex \strut$v$ etex, zz1);
label.lft(btex \strut$s$ etex, zz2);

pickup pencircle scaled 0.4pt;
pat0 := fullcircle scaled dpt;
pat1 := (-rpt,-rpt)--(rpt,rpt);
pat2 := (-rpt,rpt)--(rpt,-rpt);
for i=0 upto na:
    for j=0 upto nb:
        if (i <> 0) or (j = 0):
            fill (pat0 shifted (i*unit,j*unit)) withcolor col1;
            draw (pat0 shifted (i*unit,j*unit));
            fi
        endfor
    label.bot(decimal i, (i*unit,-sp));
    if (i <> 0):
        label.top(decimal -i, (i*unit,unit+sp));
        fi
    endfor

endfig;
end
