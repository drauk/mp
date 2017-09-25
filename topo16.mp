% tex/conc/mp/topo16.mp   2014-11-2   Alan U. Kennington.
% $Id: tex/conc/mp/topo16.mp 7c37f267a9 2014-11-01 14:40:18Z Alan U. Kennington $
% The difference between separation and disconnection of a set-pair.

verbatimtex
\input akmath
etex

beginfig(1);
pair zz[];
path pat[];
color colA;

rr := 0.9cm;                % Covering sets.
dd := 2rr;
xs := 1.2;
rrd := 1.05dd*xs;
rrdd := 0.92dd*xs;

ddd := 0.75dd;              % Covered sets.
rrr := 0.5ddd;

a := 2rrd + 30pt;
spLN := 14pt;
rry := rr + spLN;
rryy := rr;

penLN := 0.5bp;
penPT := 3pt;
colA := 0.9white;

zz0 := (0,0);
zz10 := zz0 + (rrdd,0);
zz1 := zz0+(a,0);
zz11 := zz1 + (rrd,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The open cover sets.
pickup pencircle scaled penLN;

pat0 := (fullcircle scaled dd) xscaled xs shifted zz0;
pat10 := (fullcircle scaled dd) xscaled xs shifted zz10;
pat1 := (fullcircle scaled dd) xscaled xs shifted zz1;
pat11 := (fullcircle scaled dd) xscaled xs shifted zz11;

de := 0.5;
draw pat0 dashed evenly scaled de;
draw pat10 dashed evenly scaled de;
draw pat1 dashed evenly scaled de;
draw pat11 dashed evenly scaled de;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The sets which are to be covered.

pat2 := (fullcircle scaled ddd) xscaled xs shifted zz0;
pat3 := (fullcircle scaled ddd) xscaled xs shifted zz10;
pat4 := (fullcircle scaled ddd) xscaled xs shifted zz1;
pat5 := (fullcircle scaled ddd) xscaled xs shifted zz11;

fill pat2 withcolor colA;
fill pat3 withcolor colA;
fill pat4 withcolor colA;
fill pat5 withcolor colA;
draw pat2;
draw pat3;
draw pat4;
draw pat5;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels for the covered sets.
label(btex $S_1$ etex, zz0);
label(btex $S_2$ etex, zz10);
label(btex $S_1$ etex, zz1);
label(btex $S_2$ etex, zz11);

% Labels for the covering sets.
dt := 0.2;
label.ulft(btex $\Omega_1$ etex, point 3+dt of pat0);
label.urt(btex $\Omega_2$ etex, point 1-dt of pat10);
label.ulft(btex $\Omega_1$ etex, point 3+dt of pat1);
label.urt(btex $\Omega_2$ etex, point 1-dt of pat11);

% Labels under the covering sets.
sep := 5pt;
label.bot(btex $\strut S_1\subseteq\Omega_1$ etex, zz0+(-sep,-rr));
label.bot(btex $\strut S_2\subseteq\Omega_2$ etex, zz10+(sep,-rr));
label.bot(btex $\strut S_1\bcap\Omega_2=\emptyset$ etex, zz0+(-sep,-rry));
label.bot(btex $\strut S_2\bcap\Omega_1=\emptyset$ etex, zz10+(sep,-rry));
label.bot(
 btex (i.e.~$\strut \Omega_1\bcap\Omega_2\bcap(S_1\bcup S_2)=\emptyset$) etex,
 0.5[zz0,zz10]+(0,-rry-spLN));

label.bot(btex $\strut S_1\subseteq\Omega_1$ etex, zz1+(0,-rr));
label.bot(btex $\strut S_2\subseteq\Omega_2$ etex, zz11+(0,-rr));
label.bot(btex $\strut\Omega_1\bcap\Omega_2=\emptyset$ etex,
 0.5[zz1,zz11]+(0,-rry));

label.top(btex\strut weakly separated sets etex, 0.5[zz0,zz10]+(0,rr));
label.top(btex\strut strongly separated sets etex, 0.5[zz1,zz11]+(0,rr));

endfig;
end
