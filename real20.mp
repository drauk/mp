% tex/conc/mp/real20.mp   2014-11-10   Alan U. Kennington.
% $Id: tex/conc/mp/real20.mp f479007c71 2014-11-10 03:20:44Z Alan U. Kennington $
% The "stages" of an enumeration of the rational numbers.

verbatimtex
\input akmath
etex

beginfig(1);
boolean ratfound;
numeric rats[];
pair zz[];
color col[];

aa := 12cm;                             % Width of drawing area.
xmax := 6;                              % Maximum breadth.
dmax := 2*(xmax+1);                     % Maximum depth.
dYdist := 3mm;                          % Vertical separation.

unit := aa/xmax/2;
aaX := 10pt;
aaXX := aaX+7pt;
ht := dYdist*0.6;
Ylabel := 2pt;

penLN := 0.4bp;
penPT := 2.0bp;
penRAT := 0.4bp;

col1 := 0.5white;                       % for the axis.
col2 := 0.5white;                       % For dots.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% The accumulated set of points at the current stage.
Nrats := 0;

% Draw the graphs.
zz30 := (0,0);                          % Movable origin.
for d=2 upto dmax:
    % Add more rats to the list.
    for p := 1 upto d-1:
        rat := p/d;
        % Search the current table to see if the rat is in there already.
        ratfound := false;
        for i=0 upto Nrats-1:
            % Note that it doesn't really matter if a point is over-plotted.
            if rats[i] = rat:
                ratfound := true;
                fi
            exitif ratfound;
            endfor
        if not ratfound:
            rats[Nrats] := rat;
            Nrats := Nrats + 1;
            fi
        endfor

    % Plot the points.
    zz31 := zz30 + (-aa/2,0);
    zz32 := zz30 + (aa/2,0);
    zz33 := zz31 + (-aaX,0);
    zz34 := zz32 + (aaXX,0);

    if d=2:
        label.rt("stage" infont "cmr7", zz33+(-10pt,9pt));
        fi

    % Draw the line.
    pickup pencircle scaled penLN;
    drawarrow zz33--zz34 withcolor col1;
    label.lft(decimal d infont "cmr7", zz33);

    % Integer markers and labels.
    for i=-xmax upto xmax:
        if d=dmax:
            pickup pencircle scaled penPT;
            zz40 := zz30+(i*unit,0);
            draw zz40 withcolor col2;
            label.bot(decimal i infont "cmr8", zz40+(0,-Ylabel));
            fi
        endfor

    % Draw the rats.
    for i=0 upto Nrats-1:
        rat := rats[i];
        if rat >= 0.5:
            hrat := 1/(1-rat)/2-1;
        else:
            hrat := 1-1/(2rat);
            fi
        pickup pencircle scaled penRAT;
        zz50 := zz30+(hrat*unit,0);
        zz51 := zz50 + (0,ht);
        draw zz50--zz51;
        endfor

    zz30 := zz30 + (0,-dYdist);
    endfor

endfig;
end
