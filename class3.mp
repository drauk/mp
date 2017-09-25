% tex/conc/mp/class3.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/class3.mp c157bf5f68 2012-05-06 17:01:47Z Alan U. Kennington $
% Tangent to Archimedes spiral.

input mapmax.mp
verbatimtex
% \input akmath
\font\ninerm cmr9
etex

beginfig(1);
pair v[];
path pat[];

th1 := 0.5bp;           % Lines.
th2 := 2.5bp;           % Points.

pickup pencircle scaled th1;

%----------------------------------------------------------------------
pi := 3.14159265358979; % Pi.
a := 1.6cm;             % Radius of circle.
b := a * 0.75;          % Cosine length.
tk := -105;             % Angle for K.
% rp := 0.95;             % Proportion of line OP to draw.
rp := 1.00;             % Proportion of line OP to draw.

np := 10;               % Number of points in the spiral up to P.
npp := np + 3;          % Total number of points in the spiral.
ix := a/np;             % Speed of increase of radius.
theta := (-270-tk)/np;  % Speed of increase of angle.
tanalpha := (ix/((theta/180)*pi))/a; % Gradient of the spiral's tangent line.
lt := a/tanalpha;       % Length of OT.
thetaR := -270-2*angle(1,tanalpha);

v1 := (0,0);            % O = centre of circle.
v2 := v1 + (-a,0);      % A
v3 := v1 + (a,0);       % B
v4 := v1 + (b,0);       % C
v5 := v3 + (0,a);       % Tangent top.
v6 := v3 + (0,-a);      % Tangent bottom.

v21 := v1 + (a,0) rotated tk; % K.
v22 := v1 + (2a,0) rotated tk; % A.
v23 := v1 + (0,a);      % P.
v24 := v1 + (0,rp*a);   % Point on OP.
v25 := v1 + (lt,0);     % T.
v26 := v23 + (1,-tanalpha)*a; % F
v27 := v1 + (-a,0);     % Intersection of cotangent line with circle.
v28 := v1 + (a,0) rotated thetaR; % R.

pat1 := (fullcircle scaled 2a) shifted v1; % The circle.
pat2 :=
for i = 0 upto npp-1:
    (v1 + (i*ix,0) rotated (tk + i * theta))..
    endfor
    (v1 + (npp*ix,0) rotated (tk + npp * theta));

pickup pencircle scaled th1;

draw pat1;              % The circle.
draw pat2;              % The spiral.
% draw v1--v22;           % OA.
draw v1--v21;           % OK.
draw v1--v24;           % OP (almost).
draw v1--v25;           % OT.
draw v25--v26;          % TF.

label.rt(btex \sevenrm O etex, v1);
% label.lrt(btex \sevenrm K etex, v21+(-2pt,-1pt));
label.bot(btex \sevenrm K etex, v21+(0pt,0pt));
% label.lft(btex \sevenrm A etex, v22);
label.top(btex \sevenrm P etex, v24);
label.bot(btex \sevenrm T etex, v25);
label.urt(btex \sevenrm $\alpha$ etex, v25+(25pt,1pt));
label.rt(btex \sevenrm F etex, v26+(0pt,0pt));
label.ulft(btex \sevenrm R etex, v28+(0pt,0pt));

pickup pencircle scaled th2;
draw v1;
draw v25;

% Labels.
label.bot(btex \llap{\sevenrm OT${}={}$}$\cot\alpha$ etex,
 0.8[v25,v27]+(0pt,0pt));
S_tiltlabel_top_up(btex tangent line etex,
 0.5[v25,v28]+(0pt,0pt), angle(v28-v25), -1pt);
S_textcurve_up("spiral", subpath(1,np) of pat2, 1, "cmr10", 1, 2pt);
S_textcurve_up("curve", subpath(np+1.5,npp) of pat2, 1, "cmr10", 1, 2pt);

endfig;
end
