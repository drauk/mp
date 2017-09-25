% tex/conc/mp/int14.mp   2016-1-9   Alan U. Kennington.
% $Id: tex/conc/mp/int14.mp 8c9685d2ff 2016-01-09 09:37:12Z Alan U. Kennington $
% Addition of finite ordinal numbers.

% prologues := 1;
input mapmax.mp

beginfig(1);
path    pat;
picture ordinals[];
pair    lmid, lmidA;

r := 0.6mm;         % "Radius" of the empty set.
dx := 0.6mm;        % X-space between elements of a set.
margin := 0.7mm;    % Margin for set boundaries.
wpen := 0.4pt;      % Pen width.

nmin := 0;          % Min ordinal to draw.
nmax := 5;          % Max ordinal to draw.
spp := 3mm;         % Vertical space between ordinals.
xlab := 6pt;        % Spacing of labels on the left;
ylab := 0pt;        % Spacing of labels on the left;

% The empty set.
pickup pencircle scaled wpen;
pat := (-r,-r)--(r,-r)--(r,r)--(-r,r)--cycle;
ordinals[0] := nullpicture;
addto ordinals[0] doublepath pat withpen currentpen;

% Create the ordinals.
for n=1 upto nmax:
    S_ordset(ordinals)(n, dx, margin);
    endfor

% Draw the ordinals.
totalshift := 0;
xa := xpart(llcorner ordinals[0]);
xb := xa;
for n=nmin upto nmax:
    if n=0:
        currentpicture := ordinals[n];
    else:
        % Copy picture n to below picture n-1.
        xb := xpart(llcorner ordinals[n]);
        ya := ypart(llcorner ordinals[n-1]);
        yb := ypart(ulcorner ordinals[n]);
        totalshift := totalshift + yb-ya+spp;
        addto currentpicture also (ordinals[n] shifted (xa-xb,-totalshift));
        fi
    % Add label on the left.
    lmid := 0.5[ulcorner ordinals[n], llcorner ordinals[n]];
    lmidA := lmid + (-xlab+xa-xb,ylab-totalshift);

    if n=3:
        label.lft(btex $2+1=3$ etex, lmidA);
    elseif n=4:
        label.lft(btex $2+2=4$ etex, lmidA);
    elseif n=5:
        label.lft(btex $2+3=5$ etex, lmidA);
    else:
        label.lft(decimal n infont "cmr10", lmidA);
        fi
    endfor

endfig;
end
