% tex/conc/mp/topo1.mp   2014-11-1   Alan U. Kennington.
% $Id: tex/conc/mp/topo1.mp 704a008060 2014-11-01 12:12:01Z Alan U. Kennington $
% T_1 space.
% Formerly fn24.mp.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];

a := 6cm;
dd := 1.8cm;
rr := dd/2;
rrd := 1.8rr;
rry := rr + 10pt;
zz0 := (0,0);
zz1 := zz0+(a,0);
zz10 := zz0 + (rrd,0);
zz11 := zz1 + (rrd,0);
xs := 1.2;
penLN := 0.5bp;
penPT := 2.5bp;

% Two circles.
pickup pencircle scaled penLN;
draw (fullcircle scaled dd) xscaled xs shifted zz0 dashed evenly;
draw (fullcircle scaled dd) xscaled xs shifted zz1 dashed evenly;
draw (fullcircle scaled dd) xscaled xs shifted zz11 dashed evenly;

% Centres of balls.
pickup pencircle scaled penPT;
draw zz0;
draw zz1;
label.lft(btex $x_1$ etex, zz0);
label.lft(btex $x_1$ etex, zz1);

% External points.
draw zz10;
draw zz11;
label.rt(btex $x_2$ etex, zz10);
label.rt(btex $x_2$ etex, zz11);

% Labels above the balls.
label.top(btex\strut $\tc_0$ space etex, 0.5[zz0,zz10]+(0,rr));
label.top(btex\strut $\tc_1$ space etex, 0.5[zz1,zz11]+(0,rr));

% Labels under the balls.
label.bot(btex $\strut x_1\in\Omega_1$ etex, zz0+(0,-rr));
label.bot(btex $\strut x_2\notin\Omega_1$ etex, zz10+(0,-rr));

label.bot(btex $\strut x_1\in\Omega_1$ etex, zz1+(0,-rr));
label.bot(btex $\strut x_2\in\Omega_2$ etex, zz11+(0,-rr));

label.bot(btex $\strut x_1\notin\Omega_2$ etex, zz1+(0,-rry));
label.bot(btex $\strut x_2\notin\Omega_1$ etex, zz11+(0,-rry));

% Labels at the sides.
label.lft(btex $\Omega_1$ etex, zz0+(-rr*xs,0));
label.lft(btex $\Omega_1$ etex, zz1+(-rr*xs,0));
label.rt(btex $\Omega_2$ etex, zz11+(rr*xs,0));

endfig;
end
