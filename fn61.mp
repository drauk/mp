% tex/conc/mp/fn61.mp   2013-12-15   Alan U. Kennington.
% $Id: tex/conc/mp/fn61.mp 511d309e61 2013-12-15 07:58:26Z Alan U. Kennington $
% Zooming in on a differentiable function.

input mapmax.mp

beginfig(1);
pair zz[], p[], q[];
color col[];
path pat[];

pi := 3.14159265358979;
unit := 0.7cm;
unitx := unit * (pi/4);
a := 1.2*pi*unit;
aau := 1.55;
aa := 2.2unit;
b := 2.8unit;
np := 4;                % Number of points on X axis.
nq := 2;                % Number of points on Y axis.
ht := a/45;
da := 2.4a;
penAXIS := 0.5bp;       % Thickness of axis lines.
penLINE := 0.5bp;       % Thickness of lines for drawing graphs.
% penDOT := 3.0bp;        % Thickness of dots.
% penBDY := 0.4bp;        % Thickness of rectangle boundaries.
col1 := 0.65white;      % Colour of axes.
col2 := 0.9white;       % Colour of error zones.
nx := 10;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% 0th derivative.
zz10 := (0,0);
zz11 := zz10+(a+0.2unit,0);
zz12 := zz10+(0,b);
zz13 := zz10+(-a,0);
zz14 := zz10+(0,-b);
zz15 := zz10+(-4unitx,-4unitx);
zz16 := zz10+(4unitx,4unitx);

pat10 := zz16--zz10
for i=1 upto nx:
    ..(zz10+((i/nx)*4unitx,sind((i/nx)*180)*unit))
    endfor
    --cycle;
fill pat10 withcolor col2;

pat11 := zz15--zz10
for i=1 upto nx:
    ..(zz10+((-i/nx)*4unitx,sind((-i/nx)*180)*unit))
    endfor
    --cycle;
fill pat11 withcolor col2;

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz13--zz11 withcolor col1;
drawarrow zz14--zz12 withcolor col1;
label.bot(btex $\strut x$ etex, zz11);
label.urt(btex $y$ etex, zz12);

% Draw the graph.
for i=-np step 1 until np:
    zz0 := zz10+(i*unitx,0);
    if i <> 0:
        draw zz0--(zz0+(0,ht));
        fi
    endfor
label.bot(btex ${\vphantom{3}\pi\over4}$ etex, zz10+(unitx,0));
label.bot(btex ${\vphantom{3}\pi\over2}$ etex, zz10+(2unitx,0));
label.bot(btex ${3\pi\over4}$ etex, zz10+(3unitx,0));
label.bot(btex $\vphantom{3}\pi$ etex, zz10+(4unitx,0));
label.top(btex $\llap{$\scriptstyle-{}$}{\pi\over2}$ etex, zz10+(-2unitx,0));
label.top(btex $\scriptstyle-\pi$ etex, zz10+(-4unitx,0));
for i=-nq step 1 until nq:
    zz1 := zz10+(0,i*unit);
    if i <> 0:
        label.lft(decimal i, zz1);
        draw zz1--(zz1+(ht,0));
        fi
    endfor
pickup pencircle scaled penLINE;
draw zz15--zz16;
draw subpath(1,nx+1) of pat10;
draw subpath(1,nx+1) of pat11;
label.rt(btex zoom = x1 etex, zz10+(unitx,-1.5unit));

S_tiltlabel_top_up(btex $y=x$ etex,
 zz10+(2unitx,2unitx), angle(zz16-zz10), 0);
% S_tiltlabel_bot_up(btex $y=\sin x$ etex,
%  zz10+(2unitx,2unitx), angle(zz16-zz10), 0);
S_tiltlabel_bot_up(btex $y=x$ etex,
 zz10+(-2unitx,-2unitx), angle(zz16-zz10), 0);
% S_tiltlabel_top_up(btex $y=\sin x$ etex,
%  zz10+(-2unitx,-2unitx), angle(zz16-zz10), 0);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% 0th derivative.
zz20 := (da,0);
zz21 := zz20+(a+0.2unit,0);
zz22 := zz20+(0,b);
zz23 := zz20+(-a,0);
zz24 := zz20+(0,-b);
zz25 := zz20+(-4unitx,-4unitx);
zz26 := zz20+(4unitx,4unitx);

pat10 := zz26--zz20
for i=1 upto nx:
    ..(zz20+4((i/(4nx))*4unitx,sind((i/(4nx))*180)*unit))
    endfor
    --cycle;
fill pat10 withcolor col2;

pat11 := zz25--zz20
for i=1 upto nx:
    ..(zz20+4((-i/(4nx))*4unitx,sind((-i/(4nx))*180)*unit))
    endfor
    --cycle;
fill pat11 withcolor col2;

% Draw the axes.
pickup pencircle scaled penAXIS;
drawarrow zz23--zz21 withcolor col1;
drawarrow zz24--zz22 withcolor col1;
label.bot(btex $\strut x$ etex, zz21);
label.urt(btex $y$ etex, zz22);

% Draw the graph.
for i=-np step 1 until np:
    zz0 := zz20+(i*unitx,0);
    if i <> 0:
        draw zz0--(zz0+(0,ht));
        fi
    endfor
label.bot(btex ${\vphantom{3}\pi\over16}$ etex, zz20+(unitx,0));
label.bot(btex ${\vphantom{3}\pi\over8}$ etex, zz20+(2unitx,0));
label.bot(btex ${3\pi\over16}$ etex, zz20+(3unitx,0));
label.bot(btex $\vphantom{3}\pi\over4$ etex, zz20+(4unitx,0));
label.top(btex $\llap{$\scriptstyle-{}$}{\pi\over8}$ etex, zz20+(-2unitx,0));
label.top(btex $\llap{$\scriptstyle-{}$}{\pi\over4}$ etex, zz20+(-4unitx,0));
for i=-nq step 1 until nq:
    zz2 := zz20+(0,i*unit);
    if i <> 0:
        draw zz2--(zz2+(ht,0));
        fi
    endfor
label.lft(btex ${1\over4}$ etex, zz20+(0,unit));
label.lft(btex ${1\over2}$ etex, zz20+(0,2unit));
label.lft(btex $-{1\over4}$ etex, zz20+(0,-unit)+(1pt,-1pt));
label.lft(btex $-{1\over2}$ etex, zz20+(0,-2unit));

pickup pencircle scaled penLINE;
draw zz25--zz26;
draw subpath(1,nx+1) of pat10;
draw subpath(1,nx+1) of pat11;
label.rt(btex zoom = x4 etex, zz20+(unitx,-1.5unit));

S_tiltlabel_top_up(btex $y=x$ etex,
 zz20+(2unitx,2unitx), angle(zz26-zz20), 0);
S_tiltlabel_bot_up(btex $y=\sin x$ etex,
 zz20+(2unitx,2unitx), angle(zz26-zz20), 0);
S_tiltlabel_bot_up(btex $y=x$ etex,
 zz20+(-2unitx,-2unitx), angle(zz26-zz20), 0);
S_tiltlabel_top_up(btex $y=\sin x$ etex,
 zz20+(-2unitx,-2unitx), angle(zz26-zz20), 0);

endfig;
end
