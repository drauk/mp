% tex/conc/mp/int2.mp   2005-3-10   Alan U. Kennington.
% $Id: tex/conc/mp/int2.mp 92081a4573 2013-06-14 08:44:09Z Alan U. Kennington $
% The ordinal number 10. Compact version.

% prologues := 1;
input mapmax.mp

beginfig(1);
path    pat;
picture ordinals[];
pair    lmid;

r := 0.35mm;        % "Radius" of the empty set.
dx := r;            % X-space between elements of a set.
dy := 2.0r;         % Y-space between elements of a set.
hmargin := (7/6)*r; % Margin for set boundaries.
vmargin := 2.0r;    % Margin for set boundaries.
wpen := 0.35pt;     % Pen width.

nmax := 10;         % Number of ordinals to draw.
nmaxh := 6;         % Number of ordinals to draw horizontally.

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

% Just show a single number.
currentpicture := ordinals[nmax];

endfig;
end
