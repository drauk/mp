% tex/conc/mp/fnmap1.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/fnmap1.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Composition of functions yields partially defined function.
% This is one of my most untidy metapost source files.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];

a := 0cm;
dd := 1.8cm;
rr := dd/2;
xs := 1.2;                  % Eccentricity factor.
rrd := 2.2rr*xs;
rrdd := 3.0rr*xs;
rry := rr + 14pt;
rryy := rr;
dy := 6pt;
yy := rr/2;
gap := 3pt;
penLN := 0.5bp;
penPT := 2.5bp;

% Set A_1.
zz0 := (0,0);
zz1 := zz0+(a,0);
zz2 := zz1+(0,dy);
zz3 := zz1+(0,-dy);

% Set B_1.
zz10 := zz0 + (rrd,0);
zz11 := zz1 + (rrd,0);
zz12 := zz11+(-rr*0.7,dy);
zz13 := zz11+(0,-dy);

% Set A_2.
zz20 := zz0 + (rrdd,0);
zz21 := zz1 + (rrdd,0);
zz22 := zz21+(rr*0.7,dy);
zz23 := zz21+(0,-dy);

% Set B_2.
zz30 := zz20 + (rrd,0);
zz31 := zz21 + (rrd,0);
zz32 := zz31+(0,dy);
zz33 := zz31+(0,-dy);

% Points in the the middle somewhere.
zz50 := 0.5[zz11,zz21] + (0,-dy);
zz51 := 0.5[zz2,zz12] + (0,yy);
zz52 := 0.5[zz3,zz50] + (0,-yy);
zz53 := 0.5[zz50,zz33] + (0,-yy);
zz54 := 0.5[zz22,zz32] + (0,yy);

% Two eccentric circles.
pickup pencircle scaled penLN;

draw (fullcircle scaled dd) xscaled xs shifted zz1;
draw (fullcircle scaled dd) xscaled xs shifted zz11;

draw (fullcircle scaled dd) xscaled xs shifted zz21;
draw (fullcircle scaled dd) xscaled xs shifted zz31;

% Points.
pickup pencircle scaled penPT;
draw zz2;
label.lft(btex $a_1$ etex, zz2);
draw zz3;
label.lft(btex $a_2$ etex, zz3);

draw zz12;
label.bot(btex $c_1$ etex, zz12);
draw zz50;
label.top(btex $c_2$ etex, zz50);

draw zz22;
label.bot(btex $c_3$ etex, zz22);

draw zz32;
label.rt(btex $b_1$ etex, zz32);
draw zz33;
label.rt(btex $b_2$ etex, zz33);

% Labels under the sets.
label.ulft(btex $A_1$ etex, zz1+(0,rr));
label.ulft(btex $B_1$ etex, zz11+(0,rr));
label.urt(btex $A_2$ etex, zz21+(0,rr));
label.urt(btex $B_2$ etex, zz31+(0,rr));

label.bot(btex $f_1:A_1\to B_1$ etex,
 0.5[zz1,zz11]+(0,-rry));

label.bot(btex $f_2:A_2\to B_2$ etex,
 0.5[zz21,zz31]+(0,-rry));

label.bot(btex $f_2\circ f_1:A_1\arrowcirc B_2$ etex,
 0.5[zz1,zz31]+(0,-rry-14pt));

% Some arrows mapping points.
pickup pencircle scaled penLN;

drawarrow (zz2+(gap,0)rotated45)..zz51..(zz12+(gap,0)rotated135) dashed evenly;
label.top(btex $f_1$ etex, zz51);

drawarrow (zz3+(gap,0)rotated-45)..zz52..(zz50+(gap,0)rotated-135);
label.bot(btex $f_1$ etex, zz52);
drawarrow (zz50+(gap,0)rotated-45)..zz53..(zz33+(gap,0)rotated-135);
label.bot(btex $f_2$ etex, zz53);

drawarrow (zz22+(gap,0)rotated45)..zz54..(zz32+(gap,0)rotated135) dashed evenly;
label.top(btex $f_2$ etex, zz54);

endfig;
end
