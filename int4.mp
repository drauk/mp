% tex/conc/mp/int4.mp   2005-3-9   Alan U. Kennington.
% $Id: tex/conc/mp/int4.mp 92081a4573 2013-06-14 08:44:09Z Alan U. Kennington $
% The ordinal number 10.

% prologues := 1;
input mapmax.mp

beginfig(1);
path    pat;
picture ordinals[];
pair    lmid;

r := 0.6mm;         % "Radius" of the empty set.
dx := 0.6mm;        % X-space between elements of a set.
dy := 1.5mm;        % Y-space between elements of a set.
hmargin := 0.7mm;   % Margin for set boundaries.
vmargin := 1.5mm;   % Margin for set boundaries.
wpen := 0.4pt;      % Pen width.

nmax := 10;         % Number of ordinals to draw.
nmaxh := 5;         % Number of ordinals to draw horizontally.
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
    if n <= nmaxh:
        S_ordsetv(ordinals)(n, dx, dy, hmargin, nmaxh);
    else:
        S_ordsetv(ordinals)(n, dx, dy, vmargin, nmaxh);
        fi
    endfor

% Draw the ordinals.
% totalshift := 0;
% xa := xpart(llcorner ordinals[0]);
% xb := xa;
% for n=0 upto nmax:
%     if n=0:
%         currentpicture := ordinals[n];
%     else:
%         % Copy picture n to below picture n-1.
%         xb := xpart(llcorner ordinals[n]);
%         ya := ypart(llcorner ordinals[n-1]);
%         yb := ypart(ulcorner ordinals[n]);
%         totalshift := totalshift + yb-ya+spp;
%         addto currentpicture also (ordinals[n] shifted (xa-xb,-totalshift));
%         fi
%     % Add label on the left.
%     lmid := 0.5[ulcorner ordinals[n], llcorner ordinals[n]];
%
%     label.lft(decimal n, lmid + (-xlab+xa-xb,ylab-totalshift));
%     endfor

% Just show a single number.
currentpicture := ordinals[nmax];

endfig;
end
