% tex/conc/mp/fn2d15.mp   2012-4-30   Alan U. Kennington.
% $Id: tex/conc/mp/fn2d15.mp d453a5fd74 2015-08-09 06:01:41Z Alan U. Kennington $
% Chart for Lipschitz manifold. Not differentiable at the origin.

beginfig(1);
numeric th[];
pair zz[], p[], q[], vec[];
color col[];
path pat[];

nx := 4;                % Number of points on X axis.
ny := 4;                % Number of points on Y axis.
nxx := 4;               % Interpolation factor for horizontal lines.
nyy := 4;               % Interpolation factor for vertical lines.
np := nx*nxx;           % Number of points for horizontal lines.
nq := ny*nyy;           % Number of points for vertical lines.
na := 9;                % Number of arrows per quadrant.

alpha := 1;
beta := 2;

unit := 6mm;
aa := (nx+1/nxx)*unit;
bb := (ny+1/nyy)*unit;
aaa := aa + 3mm;
bbb := bb + 3mm;
da := 2aaa + 30pt;      % Distance between diagrams.

col1 := 0.0white;       % Axes.
col2 := 0.5white;       % Coordinate lines.
col3 := 0.5white;       % Coordinate lines.
col4 := 0.3white;       % Arrows.

th1 := 0.5bp;           % Axes.
th2 := 0.5bp;           % Coordinate lines.
th3 := 0.5bp;           % Arrows.

sc := 0.5;              % Scale for dashing of lines.

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
zz0 := (0,0);
for diag=0 upto 1:
    if diag=1:
        zz0 := zz0 + (da,0);
        fi
    zz1 := zz0+(aaa,0);
    zz2 := zz0+(0,bbb);
    zz3 := zz0+(-aaa,0);
    zz4 := zz0+(0,-bbb);

    % - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    % Draw the chart coordinates.
    % (There's a lot of redundant arithmetic in the following calculations.)
    pickup pencircle scaled th2;
    % Vertical lines, x_1 > 0.
    for i=1 upto nx:
        for j=-nq-1 upto nq+1:
            jj := j / nyy;
            q[j] := unitvector((beta*i,alpha*jj))*length((i,jj));
            endfor
        draw
        for j=-nq-1 upto nq:
            (zz0+q[j]*unit)--
            endfor
            (zz0+q[nq+1]*unit) dashed evenly scaled sc withcolor col3;
        endfor
    % Vertical lines, x_1 < 0.
    for i=1 upto nx:
        for j=-nq-1 upto nq+1:
            jj := j / nyy;
            q[j] := unitvector((-beta*i,alpha*jj))*length((i,jj));
            endfor
        draw
        for j=-nq-1 upto nq:
            (zz0+q[j]*unit)--
            endfor
            (zz0+q[nq+1]*unit) dashed evenly scaled sc withcolor col3;
        endfor
    % Horizontal lines, x_2 > 0.
    for j=1 upto ny:
        for i=-np-1 upto np+1:
            ii := i / nxx;
            p[i] := unitvector((beta*ii,alpha*j))*length((ii,j));
            endfor
        draw
        for i=-np-1 upto np:
            (zz0+p[i]*unit)--
            endfor
            (zz0+p[np+1]*unit) dashed evenly scaled sc withcolor col3;
        endfor
    % Horizontal lines, x_2 < 0.
    for j=1 upto ny:
        for i=-np-1 upto np+1:
            ii := i / nxx;
            p[i] := unitvector((beta*ii,-alpha*j))*length((ii,j));
            endfor
        draw
        for i=-np-1 upto np:
            (zz0+p[i]*unit)--
            endfor
            (zz0+p[np+1]*unit) dashed evenly scaled sc withcolor col3;
        endfor

    % - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    % Draw some arrows.
    if diag=1:
        pickup pencircle scaled th3;
        for t=1 upto na-1:
            vec0 := (nx*cosd(t*(90/na)) * unit, ny * sind(t*(90/na)) * unit);
            vec1 := unitvector((beta*xpart(vec0),alpha*ypart(vec0)))
                * length(vec0);
            drawarrow zz0--(zz0+vec1) withcolor col4;
            drawarrow zz0--(zz0-vec1) withcolor col4;
            endfor
        for t=0 upto na:
            vec0 := (-nx*cosd(t*(90/na)) * unit, ny * sind(t*(90/na)) * unit);
            vec1 := unitvector((beta*xpart(vec0),alpha*ypart(vec0)))
                * length(vec0);
            drawarrow zz0--(zz0+vec1) withcolor col4;
            drawarrow zz0--(zz0-vec1) withcolor col4;
            endfor
        fi

    % - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    % Draw the axes.
    pickup pencircle scaled th1;
    drawarrow zz3--zz1 withcolor col1;
    drawarrow zz4--zz2 withcolor col1;
    label.lrt(btex $x_1$ etex, zz1);
    label.lft(btex $x_2$ etex, zz2);

    for i=0 upto nx:
        label.llft(decimal i infont "cmr7", zz0+(i*unit,0));
        endfor
    for j=1 upto ny:
        label.llft(decimal j infont "cmr7", zz0+(0,j*unit));
        endfor
    endfor

endfig;
end
