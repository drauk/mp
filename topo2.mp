% tex/conc/mp/topo2.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/topo2.mp 616b73e4f9 2012-05-07 06:57:18Z Alan U. Kennington $
% Hausdorff (T_2) space.
% Formerly fn25.mp.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];

a := 0cm;
dd := 1.8cm;
rr := dd/2;
xs := 1.2;
rrd := 2.2rr*xs;
rry := rr + 14pt;
rryy := rr;
zz0 := (0,0);
zz1 := zz0+(a,0);
zz10 := zz0 + (rrd,0);
zz11 := zz1 + (rrd,0);
penLN := 0.5bp;
penPT := 2.5bp;

% Two circles.
pickup pencircle scaled penLN;
draw (fullcircle scaled dd) xscaled xs shifted zz1 dashed evenly;
draw (fullcircle scaled dd) xscaled xs shifted zz11 dashed evenly;

% Centres of balls.
pickup pencircle scaled penPT;
draw zz1;
label.lft(btex $x_1$ etex, zz1);

% External points.
draw zz11;
label.rt(btex $x_2$ etex, zz11);

% Labels under the balls.
label.bot(btex $\strut x_1\in\Omega_1$ etex, zz1+(0,-rr));
label.bot(btex $\strut x_2\in\Omega_2$ etex, zz11+(0,-rr));

label.bot(btex $\Omega_1\bcap\Omega_2=\emptyset$ etex, 0.5[zz1,zz11]+(0,-rry));

% Labels at the sides.
label.lft(btex $\Omega_1$ etex, zz1+(-rr*xs,0));
label.rt(btex $\Omega_2$ etex, zz11+(rr*xs,0));

endfig;
end
