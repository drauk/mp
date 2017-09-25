% tex/conc/mp/vec31.mp   2016-12-28   Alan U. Kennington.
% $Id: tex/conc/mp/vec31.mp afe5fa3e4c 2016-12-28 04:32:36Z Alan U. Kennington $
% The difference between left and right conjugation for GL(2).
% Mirror image of vec12.mp.

input mapmax
verbatimtex
\input akmath
etex

beginfig(1);
pair v[], w[], x[], y[];
color col[];
numeric wid[];
path pat, patt;

a := 3.0cm;
aa := 3.6cm;
b := 1.9cm;

wid1 := 0.8pt;      % Axes line width.
wid2 := 0.6pt;      % Circle line width.
wid3 := 3pt;        % Point diameter.
wid4 := 2.5wid2;    % SO(2) circle.
unit := 0.25cm;
np := 2;
xt := 0.45;
col0 := 0.6 white;  % Axes.
col1 := 0.82 white; % SO(2) circle.
bx := unit * 1.2;
gap := 8pt;
dd := 2*np*unit;    % Diameter of circles.
rr := dd/2;
q := (np+xt)*unit + gap;
qx := (np+1+xt)*unit + gap;
qy := (np+xt)*unit + gap/2;
ang := 60;          % Angle for rotation.
dcirc := 4pt;       % Circles on arrows.
sdx := np * unit * 0.52; % Reflection-arrow lengths.
sdy := np * unit * 0.5; % Reflection-arrow separation.
ssca := 1.38;       % Scale for arrows on S_theta.
ldy := 13pt;        % Vertical spacing for text.
qqx := 2.95qx;       % Spacing for "conjugate" text.
qqy := -2pt;

% Centres of spaces.
w10 := (0,0);       % Reference point.
w0 := w10+(aa/2,0); % Bottom right.
w1 := w10+(-aa/2,0); % Bottom left.
w2 := w10+(-a,b);   % Top left.
w3 := w10+(a,b);    % Top right.
w4 := w10+(0,b);    % Top middle.

% The Rn sets.
pickup pencircle scaled wid1;
drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted w0 withcolor col0;
drawarrow ((0,-np-xt)--(0,np+xt+1)) scaled unit shifted w0 withcolor col0;
drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted w1 withcolor col0;
drawarrow ((0,-np-xt)--(0,np+xt+1)) scaled unit shifted w1 withcolor col0;
drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted w2 withcolor col0;
drawarrow ((0,-np-xt)--(0,np+xt+1)) scaled unit shifted w2 withcolor col0;
drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted w3 withcolor col0;
drawarrow ((0,-np-xt)--(0,np+xt+1)) scaled unit shifted w3 withcolor col0;
drawarrow ((-np-xt,0)--(np+xt+1,0)) scaled unit shifted w4 withcolor col0;
drawarrow ((0,-np-xt)--(0,np+xt+1)) scaled unit shifted w4 withcolor col0;

% Some rotations. Rough estimate of path parameter.
pat := (subpath (0,ang/45) of halfcircle) scaled dd;
patt := (subpath (0,ang/45) of halfcircle) scaled dd yscaled -1;
pickup pencircle scaled wid2;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% S_{-\theta}.
draw ((0,0)--((q,0)rotated -ang)) shifted w0 withcolor col0;
draw ((0,-q)--(0,q)) rotated -ang shifted w0 withcolor col0;
drawarrow patt scaled ssca shifted w0;
drawdblarrow ((-sdx,sdy)--(sdx,sdy)) rotated -ang shifted w0;
drawdblarrow ((-sdx,2sdy)--(sdx,2sdy)) rotated -ang shifted w0;
drawdblarrow ((-sdx,0)--(sdx,0)) rotated -ang shifted w0;
drawdblarrow ((-sdx,-sdy)--(sdx,-sdy)) rotated -ang shifted w0;
drawdblarrow ((-sdx,-2sdy)--(sdx,-2sdy)) rotated -ang shifted w0;
label.urt(btex $S_{-\theta}$ etex, w0+(ssca*rr,0)rotated(ang/2));
label(btex $\scriptstyle \theta$ etex, w0+((ssca-0.4)*rr,0)rotated(-ang/2));
label.bot(btex $R_{-\theta}S_0R_\theta=S_{-\theta}$ etex, w0+(0,-qy));
label.bot(btex pull-back of $h$ by $g$ etex, w0+(0,-qy-ldy));
label.rt(btex $g^{-1}hg$ etex, w0+(qx,0));
label.top(btex right etex, w0+(qqx,qqy));
label.bot(btex conjugate etex, w0+(qqx,-qqy));

% S_\theta.
draw ((0,0)--((q,0)rotated ang)) shifted w1 withcolor col0;
draw ((0,-q)--(0,q)) rotated ang shifted w1 withcolor col0;
drawarrow pat scaled ssca shifted w1;
drawdblarrow ((-sdx,sdy)--(sdx,sdy)) rotated ang shifted w1;
drawdblarrow ((-sdx,2sdy)--(sdx,2sdy)) rotated ang shifted w1;
drawdblarrow ((-sdx,0)--(sdx,0)) rotated ang shifted w1;
drawdblarrow ((-sdx,-sdy)--(sdx,-sdy)) rotated ang shifted w1;
drawdblarrow ((-sdx,-2sdy)--(sdx,-2sdy)) rotated ang shifted w1;
label.urt(btex $S_\theta$ etex, w1+(ssca*rr,0)rotated(ang/2));
label(btex $\scriptstyle \theta$ etex, w1+((ssca-0.4)*rr,0)rotated(ang/2));
label.bot(btex $R_\theta S_0R_{-\theta}=S_\theta$ etex, w1+(0,-qy));
label.bot(btex push-forth of $h$ by $g$ etex, w1+(0,-qy-ldy));
label.lft(btex $ghg^{-1}$ etex, w1+(-qx,0));
label.top(btex left etex, w1+(-qqx,qqy));
label.bot(btex conjugate etex, w1+(-qqx,-qqy));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% R_\theta.
drawarrow pat shifted w2;
drawarrow (pat rotated 90) shifted w2;
drawarrow (pat rotated 180) shifted w2;
drawarrow (pat rotated 270) shifted w2;
draw ((0,0)--((q,0)rotated ang)) shifted w2;
label.urt(btex $R_\theta$ etex, w2+(rr,0)rotated(ang/2));
label(btex $\scriptstyle \theta$ etex, w2+(rr/2,0)rotated(ang/2));
label.top(btex $g=R_\theta$ etex, w2+(0,q));

% R_\theta^{-1}.
drawarrow patt shifted w3;
drawarrow (patt rotated 90) shifted w3;
drawarrow (patt rotated 180) shifted w3;
drawarrow (patt rotated 270) shifted w3;
draw ((0,0)--((q,0)rotated -ang)) shifted w3;
label.urt(btex $R_{-\theta}$ etex, w3+(rr,0)rotated(ang/2));
label(btex $\scriptstyle \theta$ etex, w3+(rr/2,0)rotated(-ang/2));
label.top(btex $g^{-1}=R_{-\theta}$ etex, w3+(0,q));

% S_0.
drawdblarrow ((-sdx,sdy)--(sdx,sdy)) shifted w4;
drawdblarrow ((-sdx,2sdy)--(sdx,2sdy)) shifted w4;
drawdblarrow ((-sdx,0)--(sdx,0)) shifted w4;
drawdblarrow ((-sdx,-sdy)--(sdx,-sdy)) shifted w4;
drawdblarrow ((-sdx,-2sdy)--(sdx,-2sdy)) shifted w4;
% draw ((0,0)--((q,0)rotated ang)) shifted w4;
label.urt(btex $S_0$ etex, w4+(rr,0)rotated(ang/2));
% label(btex $\scriptstyle \theta$ etex, w4+(rr/2,0)rotated(ang/2));
label.top(btex $h=S_0$ etex, w4+(0,q));

endfig;
end
