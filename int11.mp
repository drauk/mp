% tex/conc/mp/int11.mp   2005-3-13   Alan Kennington.
% $Id: tex/conc/mp/int11.mp 20cbd19625 2015-08-09 04:21:02Z Alan U. Kennington $
% Construction of the rational numbers from integers.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a diagonal line with a label.
%%%%%%%%%%%%%%%%%%%%%%%%%
%        FN_rat         %
%%%%%%%%%%%%%%%%%%%%%%%%%
def FN_rat(text lab)(expr n, d) =
begingroup
save rat, ratt;
rat := n/d;
ratt := bb/aa;
if (rat <= ratt) and (rat >= -ratt):
    drawarrow (-aa,-rat*aa)--(aa,rat*aa);
    label.rt(lab, (aa,rat*aa));
elseif (rat > ratt):
    drawarrow (-bb/rat,-bb)--(bb/rat,bb);
    label.top(lab, (bb/rat,bb));
elseif (rat < -ratt):
    % Yes, I know the above condition is redundant!
    drawarrow (bb/rat,bb)--(-bb/rat,-bb);
    if d > 0:
        label.bot(lab, (-bb/rat,-bb));
    else:
        label.top(lab, (bb/rat,bb));
        fi
    fi
endgroup
enddef; % End of function FN_rat.

beginfig(1);
numeric xx[];
pair zz[];
path pat[];
color col[];

unit := 4.5mm;        % Scaling parameter.
na := 10;
nb := 6;
spa := 0.9;
aa := (na+spa)*unit;
bb := (nb+spa)*unit;
col0 := 0.5white;
col1 := 0.8white;
rpt := 0.1unit;
dpt := 2rpt;
rcent := 0.6unit;
dcent := 2rcent;

% The axes.
zz0 := (0,0);
zz1 := zz0 + (aa,0);
zz2 := zz0 + (0,bb);
zz3 := zz0 + (-aa,0);
zz4 := zz0 + (0,-bb);

% Draw the rational numbers.
pickup pencircle scaled 0.5pt;
FN_rat(btex $\kern10pt\scriptstyle 0/1$ etex)(0, 1);

FN_rat(btex $1\over1$ etex)(1, 1);
FN_rat(btex $\scriptstyle 1/2$ etex)(1, 2);
FN_rat(btex $\scriptstyle 1/3$ etex)(1, 3);
FN_rat(btex $\scriptstyle 1/4$ etex)(1, 4);
FN_rat(btex $\scriptstyle 1/5$ etex)(1, 5);
FN_rat(btex $\scriptstyle 1/10$ etex)(1, 10);

FN_rat(btex $2\over1$ etex)(2, 1);
FN_rat(btex $2\over3$ etex)(2, 3);
FN_rat(btex $\scriptstyle 2/5$ etex)(2, 5);

FN_rat(btex $3\over1$ etex)(3, 1);
FN_rat(btex $3\over2$ etex)(3, 2);
FN_rat(btex $3\over4$ etex)(3, 4);
FN_rat(btex $\scriptstyle 3/5$ etex)(3, 5);

FN_rat(btex $4\over1$ etex)(4, 1);
FN_rat(btex $4\over3$ etex)(4, 3);

FN_rat(btex $6\over1$ etex)(6, 1);
FN_rat(btex $6\over5$ etex)(6, 5);
FN_rat(btex $6\over7$ etex)(6, 7);

% Negative rational numbers.
FN_rat(btex $-1\over1$ etex)(-1, 1);
FN_rat(btex $\scriptstyle -1/2$ etex)(-1, 2);
FN_rat(btex $\scriptstyle -1/3$ etex)(-1, 3);
FN_rat(btex $\scriptstyle -1/4$ etex)(-1, 4);
FN_rat(btex $\scriptstyle -1/5$ etex)(-1, 5);
FN_rat(btex $\scriptstyle -1/10$ etex)(-1, 10);

FN_rat(btex $-2\over1$ etex)(-2, 1);
FN_rat(btex $-2\over3$ etex)(-2, 3);
FN_rat(btex $\scriptstyle -2/5$ etex)(-2, 5);

FN_rat(btex $-3\over1$ etex)(-3, 1);
FN_rat(btex $-3\over2$ etex)(-3, 2);
FN_rat(btex $-3\over4$ etex)(-3, 4);
FN_rat(btex $\scriptstyle -3/5$ etex)(-3, 5);

FN_rat(btex $-4\over1$ etex)(4, -1);
% FN_rat("")(-4, 1);
FN_rat(btex $-4\over3$ etex)(4, -3);
% FN_rat("")(-4, 3);

FN_rat(btex $-6\over1$ etex)(-6, 1);
FN_rat(btex $-6\over5$ etex)(-6, 5);
FN_rat(btex $-6\over7$ etex)(-6, 7);

% Blot out a circle in the middle.
fill fullcircle scaled dcent withcolor white;

% Draw the axes.
pickup pencircle scaled 0.7pt;
drawarrow zz3--zz1 withcolor col0;
drawarrow zz4--zz2 withcolor col0;
label.rt(btex $d$ etex, zz1);
label.top(btex $n$ etex, zz2);

pickup pencircle scaled 0.4pt;
pat0 := fullcircle scaled dpt;
pat1 := (-rpt,-rpt)--(rpt,rpt);
pat2 := (-rpt,rpt)--(rpt,-rpt);
for i=-na upto na:
    for j=-nb upto nb:
        if i = 0:
            draw (pat1 shifted (i*unit,j*unit));
            draw (pat2 shifted (i*unit,j*unit));
        else:
            fill (pat0 shifted (i*unit,j*unit)) withcolor col1;
            draw (pat0 shifted (i*unit,j*unit));
            fi
        endfor
    endfor

endfig;
end
