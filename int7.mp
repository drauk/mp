% tex/conc/mp/int7.mp   2013-8-13   Alan U. Kennington.
% $Id: tex/conc/mp/int7.mp 6bac7a7e20 2013-08-12 14:52:31Z Alan U. Kennington $
% The first five von Neumann (i.e. Zermelo) universes.

input mapmax.mp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
picture universe[];
path    pat;
pair    lmid;

r := 0.45mm;        % "Radius" of the empty set.
dx := 0.45mm;       % X-space between elements of a set.
margin := 0.65mm;   % Margin for set boundaries.
penSET := 0.4bp;    % Pen width for sets.

depmax := 4;        % Maximum depth to draw.
spp := 3mm;         % Vertical space between universes.
xlab := 4pt;        % Spacing of labels on the left;
ylab := 0pt;        % Spacing of labels on the left;

% Create the universes.
for dep=0 upto depmax:
    S_universe(universe)(dep, r, dx, margin, penSET);
    endfor

% Draw the universe.
totalshift := 0;
xa := xpart(llcorner universe[0]);
xb := xa;
for dep=0 upto depmax:
    if dep=0:
        currentpicture := universe[dep];
    else:
        % Copy picture dep to below picture dep-1.
        xb := xpart(llcorner universe[dep]);
        ya := ypart(llcorner universe[dep-1]);
        yb := ypart(ulcorner universe[dep]);
        totalshift := totalshift + yb-ya+spp;
        addto currentpicture also (universe[dep] shifted (xa-xb,-totalshift));
        fi
    % Add label on the left.
    lmid := 0.5[ulcorner universe[dep], llcorner universe[dep]];

    % Save the location for the labels.
    labs[dep] := lmid + (-xlab+xa-xb, ylab-totalshift);
    endfor

label.lft(btex $V_0$ etex, labs[0]);
label.lft(btex $V_1$ etex, labs[1]);
label.lft(btex $V_2$ etex, labs[2]);
label.lft(btex $V_3$ etex, labs[3]);
label.lft(btex $V_4$ etex, labs[4]);

endfig;
end
