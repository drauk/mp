% tex/conc/mp/int12.mp   2006-8-10   Alan Kennington.
% $Id: tex/conc/mp/int12.mp 20cbd19625 2015-08-09 04:21:02Z Alan U. Kennington $
% Construction of signed integers from pairs of unsigned integers.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a diagonal line with a label.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        FN_int         %
%%%%%%%%%%%%%%%%%%%%%%%%%
def FN_int(text lab)(expr n) =
if n >= 0:
    if n > na - nb:
        drawarrow (n*unit,0)--(aa,aa-n*unit);
        label.rt(lab, (aa,aa-n*unit));
    else:
        drawarrow (n*unit,0)--(bb+n*unit,bb);
        label.top(lab, (bb+n*unit,bb));
        fi
else:
    if n > na - nb:
        drawarrow (0,-n*unit)--(aa,aa-n*unit);
        label.rt(lab, (aa,aa-n*unit));
    else:
        drawarrow (0,-n*unit)--(bb+n*unit,bb);
        label.top(lab, (bb+n*unit,bb));
        fi
    fi
enddef; % End of function FN_int.

beginfig(1);
pair zz[];
path pat[];
color col[];

unit := 5.5mm;        % Scaling parameter.
na := 16;
nb := 8;
spa := 0.9;
aa := (na+spa)*unit;
bb := (nb+spa)*unit;
col0 := 0.5white;
col1 := 0.8white;
rpt := 0.1unit;
dpt := 2rpt;
rcent := 0.6unit;
dcent := 2rcent;
ax := 0.09;
ay := 0.07;

% The axes.
zz0 := (0,0);
zz1 := zz0 + (aa,0);
zz2 := zz0 + (0,bb);
zz3 := zz0 + (-aa*ax,0);
zz4 := zz0 + (0,-bb*ay);

% Draw the equivalence classes for signed integers.
pickup pencircle scaled 0.5pt;
FN_int(btex $\scriptstyle 0$ etex)(0);
FN_int(btex $\scriptstyle 1$ etex)(1);
FN_int(btex $\scriptstyle 2$ etex)(2);
FN_int(btex $\scriptstyle 3$ etex)(3);
FN_int(btex $\scriptstyle 4$ etex)(4);
FN_int(btex $\scriptstyle 5$ etex)(5);
FN_int(btex $\scriptstyle 6$ etex)(6);
FN_int(btex $\scriptstyle 7$ etex)(7);
FN_int(btex $\scriptstyle 8$ etex)(8);
FN_int(btex $\scriptstyle 9$ etex)(9);
FN_int(btex $\scriptstyle 10$ etex)(10);
FN_int(btex $\scriptstyle 11$ etex)(11);
FN_int(btex $\scriptstyle 12$ etex)(12);
FN_int(btex $\scriptstyle 13$ etex)(13);
FN_int(btex $\scriptstyle 14$ etex)(14);
FN_int(btex $\scriptstyle 15$ etex)(15);
FN_int(btex $\scriptstyle 16$ etex)(16);

FN_int(btex $\scriptstyle -1$ etex)(-1);
FN_int(btex $\scriptstyle -2$ etex)(-2);
FN_int(btex $\scriptstyle -3$ etex)(-3);
FN_int(btex $\scriptstyle -4$ etex)(-4);
FN_int(btex $\scriptstyle -5$ etex)(-5);
FN_int(btex $\scriptstyle -6$ etex)(-6);
FN_int(btex $\scriptstyle -7$ etex)(-7);
FN_int(btex $\scriptstyle -8$ etex)(-8);

% Draw the axes.
pickup pencircle scaled 0.7pt;
drawarrow zz3--zz1 withcolor col0;
drawarrow zz4--zz2 withcolor col0;
label.lrt(btex $p$ etex, zz1);
label.ulft(btex $n$ etex, zz2);

pickup pencircle scaled 0.4pt;
pat0 := fullcircle scaled dpt;
pat1 := (-rpt,-rpt)--(rpt,rpt);
pat2 := (-rpt,rpt)--(rpt,-rpt);
for i=0 upto na:
    for j=0 upto nb:
        fill (pat0 shifted (i*unit,j*unit)) withcolor col1;
        draw (pat0 shifted (i*unit,j*unit));
        endfor
    endfor

endfig;
end
