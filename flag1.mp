% tex/conc/mp/flag1.mp   2005-1-17   Alan Kennington.
% $Id: tex/conc/mp/flag1.mp 8017ff16b3 2008-06-01 17:11:26Z Alan U. Kennington $
% Vietnam flag.

prologues := 1;

input mapmax.mp

defaultfont := "phvr8y"; dsc := 1; defaultscale := dsc;

beginfig(1);
path pat;
pair w[];

unit := 1in/75;
a := 360 * unit;
b := 240 * unit;
aa := a/2;
bb := b/2;
r := bb/2;
n := 5;

pat := (0,0)--(a,0)--(a,b)--(0,b)--cycle;
fill pat withcolor red; % 0xff0000.
% draw pat;

% Now do the star.
for i=0 upto n-1:
    w[i] := (aa,bb) + (0,r) rotated (360*i/n);
    endfor
pat := for i=0 upto n-1:
    w[(2i) mod n]--
    endfor
    cycle;
fill pat withcolor (1,1,0); % 0xffff00.
% draw pat;

endfig;
end
