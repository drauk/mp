% tex/conc/mp/fn2d21.mp   2015-5-20   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d21.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Graph of Peano space-filling curve.

verbatimtex
\input akmath
etex

beginfig(1);
numeric digits[];
pair zz[], curv[];
color colAXIS, colNOTCH;
path pat[];

% Choose the scale to try to fit a 2400 dpi printer wtih 24 dots per cell.
unit := 2.43in;         % Unit length on axes.
a := unit + 11pt;
b := a;
nq := 1;               % Number of notches on both axes.
ht := 3pt;             % Notch length.
offset := a + 30pt;

penAXIS := 0.5bp;
penCURVEa := 0.3bp;
penPT := 3.0bp;
penNOTCH := 0.7bp;

colAXIS := 0.5 white;
colNOTCH := 0.5 white;

% Axis points.
zz0 := (0,0);
zz1 := zz0 + (a,0);
zz2 := zz0 + (0,b);
zz3 := zz0 + (0,0);
zz4 := zz0 + (0,0);

zz10 := zz0 + (offset,0);
zz11 := zz10 + (a,0);
zz12 := zz10 + (0,b);
zz13 := zz10 + (0,0);
zz14 := zz10 + (0,0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz3--zz1 withcolor colAXIS;
drawarrow zz4--zz2 withcolor colAXIS;
label.lrt(btex $x_1$ etex, zz1);
label.lft(btex $x_2$ etex, zz2+(-2pt,0));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=0 upto nq:
    x1 := i * unit;
    draw (zz0+(x1,0))--(zz0+(x1,-ht)) withcolor colNOTCH;
    label.bot(decimal i infont "cmr9", zz0+(x1,-ht-1pt));
    endfor
for i=0 upto nq:
    y1 := i * unit;
    draw (zz0+(0,y1))--(zz0+(-ht,y1)) withcolor colNOTCH;
    label.lft(decimal i infont "cmr9", zz0+(-ht,y1));
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
drawarrow zz13--zz11 withcolor colAXIS;
drawarrow zz14--zz12 withcolor colAXIS;
label.lrt(btex $x_1$ etex, zz11);
label.lft(btex $x_2$ etex, zz12+(-2pt,0));

% Add some notches.
pickup pencircle scaled penNOTCH;
for i=0 upto nq:
    x1 := i * unit;
    draw (zz10+(x1,0))--(zz10+(x1,-ht)) withcolor colNOTCH;
    label.bot(decimal i infont "cmr9", zz10+(x1,-ht-1pt));
    endfor
for i=0 upto nq:
    y1 := i * unit;
    draw (zz10+(0,y1))--(zz10+(-ht,y1)) withcolor colNOTCH;
    label.lft(decimal i infont "cmr9", zz10+(-ht,y1));
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
ndigitpairs := 4;
ndigits := ndigitpairs * 2;
% Initialise the digit array.
for i=1 upto ndigits:
    digits[i] := 0;
    endfor

% Note: Apparently about 4096 is the maximum integer in metapost!
nptsmax := 4000;           % Safety cap for number of iterations.
ncurv := -1;
forever:
    % Add a new point to the list.
    threes := 1;
    zz20 := (0,0);
    for k=1 upto ndigitpairs:
        threes := threes / 3;
        % Calculate px and py;
        px := 0;
        for i=1 upto k-1:
            px := px + digits[2 * i];
            endfor
        py := 0;
        for i=0 upto k-1:
            py := py + digits[2 * i + 1];
            endfor
        signx := 1;
        if odd(px):
            signx := -1;
            fi
        signy := 1;
        if odd(py):
            signy := -1;
            fi
        zz20 := zz20 + threes *
            (signx*(digits[2*k-1]-1)+1, signy*(digits[2*k]-1)+1);
        endfor
    ncurv := ncurv + 1;
    curv[ncurv] := zz0 + zz20 * unit;

    % Increment the ternary expansion of x.
    carry := 0;
    for i=ndigits downto 1:
        if i=ndigits:
            digits[i] := digits[i] + 1;
        else:
            digits[i] := digits[i] + carry;
            carry := 0;
            fi
        if digits[i] >= 3:
            carry := carry + 1;
            digits[i] := digits[i] - 3;
            fi
        exitif carry <= 0;
        endfor

    if (carry > 0) or (ncurv >= nptsmax):
        pat2 :=
        for i=0 upto ncurv-1:
            curv[i]--
            endfor
            curv[ncurv];
        pickup pencircle scaled penCURVEa;
        draw pat2;

        % If the curve is not finished, go back and do some more.
        if ncurv >= nptsmax:
            ncurv := 0;
            curv[ncurv] := curv[nptsmax];
            fi
        fi

    % Exit if we have done all of the values of x.
    exitif (carry > 0) or (ncurv >= nptsmax);
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
ndigitpairs := 5;
ndigits := ndigitpairs * 2;
% Initialise the digit array.
for i=1 upto ndigits:
    digits[i] := 0;
    endfor

% Note: Apparently about 4096 is the maximum integer in metapost!
nptsmax := 4000;           % Safety cap for number of iterations.
ncurv := -1;
forever:
    % Add a new point to the list.
    threes := 1;
    zz20 := (0,0);
    for k=1 upto ndigitpairs:
        threes := threes / 3;
        % Calculate px and py;
        px := 0;
        for i=1 upto k-1:
            px := px + digits[2 * i];
            endfor
        py := 0;
        for i=0 upto k-1:
            py := py + digits[2 * i + 1];
            endfor
        signx := 1;
        if odd(px):
            signx := -1;
            fi
        signy := 1;
        if odd(py):
            signy := -1;
            fi
        zz20 := zz20 + threes *
            (signx*(digits[2*k-1]-1)+1, signy*(digits[2*k]-1)+1);
        endfor
    ncurv := ncurv + 1;
    curv[ncurv] := zz10 + zz20 * unit;

    % Increment the ternary expansion of x.
    carry := 0;
    for i=ndigits downto 1:
        if i=ndigits:
            digits[i] := digits[i] + 1;
        else:
            digits[i] := digits[i] + carry;
            carry := 0;
            fi
        if digits[i] >= 3:
            carry := carry + 1;
            digits[i] := digits[i] - 3;
            fi
        exitif carry <= 0;
        endfor

    if (carry > 0) or (ncurv >= nptsmax):
        pat2 :=
        for i=0 upto ncurv-1:
            curv[i]--
            endfor
            curv[ncurv];
        pickup pencircle scaled penCURVEa;
        draw pat2;

        % If the curve is not finished, go back and do some more.
        if ncurv >= nptsmax:
            ncurv := 0;
            curv[ncurv] := curv[nptsmax];
            fi
        fi

    % Exit if we have done all of the values of x.
    exitif (carry > 0) or (ncurv >= nptsmax);
    endfor

%==============================================================================
% Save the current picture bounding box.
bbx := bboxmargin;
bboxmargin := 0;
pat1 := bbox currentpicture;
bboxmargin := bbx;

setbounds currentpicture to pat1;

endfig;
end
