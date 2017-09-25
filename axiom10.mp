% tex/conc/mp/axiom10.mp   2016-1-15   Alan U. Kennington.
% $Id: tex/conc/mp/axiom10.mp 77b571f291 2016-01-15 12:15:00Z Alan U. Kennington $
% ZF axioms of regularity and infinity bounding the finite ordinal numbers.

input mapmax.mp

beginfig(1);
pair w[];

d := 0.6cm;
r := d/2;
q := r + 2pt;
a := 1.7d;
spLN := 13pt;

sp := 6pt;             % Ellipsis parameters.
spp := 3pt;

nmax := 8;
dotmax := 3;

penLN := 0.5bp;
penPT := 2.5bp;
penDOT := 1.2pt;

% Centres of circles.
w0 := (0,0);           % Set 0.
for n=1 upto nmax:
    w[n] := w[n-1]+(a,0);        % Set n.
    endfor

% The circles.
pickup pencircle scaled penLN;
for n=0 upto nmax:
    draw fullcircle scaled d shifted w[n];
    endfor

% Labels for the circles.
for n=0 upto nmax:
    label.bot(decimal n infont "cmr10", w[n]+(0,-q));
    endfor
label.top(btex\strut $\scriptstyle\emptyset$ etex, w[0]+(0,r));
label.top(btex\strut $\scriptstyle\{\emptyset\}$ etex, w[1]+(0,r));
label.top(btex\strut $\scriptstyle\{\emptyset,\{\emptyset\}\}$ etex,
 w[2]+(0,r));
label.top(btex\strut $\dots$ etex, w[3]+(0,r));

% The arrows.
for n=1 upto nmax:
    drawarrow (w[n-1]+(r,0))--(w[n]+(-r/8,0));
    label.bot(btex $\scriptstyle\in$ etex, 0.5[w[n-1],w[n]]);
    endfor


% Ellipsis to the right.
pickup pencircle scaled penDOT;
for i=0 upto dotmax:
    draw w[nmax]+(r+sp+i*spp,0);
    endfor

label.lft(btex axiom of etex, w[0]+(-q,spLN/2));
label.lft(btex regularity etex, w[0]+(-q,-spLN/2));

label.rt(btex axiom of etex, w[nmax]+(q+sp+dotmax*spp,spLN/2));
label.rt(btex infinity etex, w[nmax]+(q+sp+dotmax*spp,-spLN/2));

endfig;
end
