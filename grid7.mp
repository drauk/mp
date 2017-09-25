% tex/conc/mp/grid7.mp   2016-8-31   Alan U. Kennington.
% $Id: tex/conc/mp/grid7.mp 6ca9ae4555 2016-08-31 13:44:02Z Alan U. Kennington $
% Parallel transport of a vector over a family of curves.

input gridmax
verbatimtex
\input akmath
\input dgmpmax
etex

beginfig(1);
pair p[], zvec, kappa;
color col[];
path pat[];

m := 10;
n := 10;
mm := 3;
nn := 3;
unit := 2.5cm;
unitC := 1.2*unit/m;
iX := 1;
iA := 4;
iB := 8;
jA := 1;
jB := n;
zvec :=  (0,1) * 0.4unit;
kappa := (0.3/(m*n))*(1,-0.1)*length(zvec);

col1 := 0.9white;
col2 := 0.8white;
col3 := black;
col4 := black;
col5 := 0.5white;
col6 := 0.6white;

penVEC := 0.4pt;
penGRID := 1.3pt;
penGRIDc := 1pt;
penPTb := 2.0pt;
penPTx := 3.0pt;
penPTy := 2.4pt;
penARROW := 0.5pt;

p0 := (-1.6,0.4) * unit;
p1 := (0,0) * unit;
p2 := (-0.2,1.22) * unit;
p3 := (1,1) * unit;

p11 := 0.5[p0,p1] + (0,0.15) * unit;
p12 := 0.5[p0,p2] + (0,0.15) * unit;
p13 := 0.5[p2,p3] + (0,0.15) * unit;
p14 := 0.5[p1,p3] + (0,0.15) * unit;

p30 := 0.5[p0,p1];
p31 := 0.5[p2,p3];
p32 := 0.5[p30,p31];
p33 := p32 + (xpart(p3-p0),0);
p34 := p33 + (-0.5(unitC*m),-0.5(unitC*m));

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pat1 := p0..p11..p1;
pat2 := p0..p12..p2;
pat3 := p2..p13..p3;
pat4 := p1..p14..p3;

% Note: G_grid() sets lots of global variables which are used here.
pickup pencircle scaled penGRID;
G_grid(pat)(m, n, mm, nn, 0, 0, col1);
label.bot(btex $M$ etex, p30);

% Overdraw the linear interpolation lines for parallel transport.
pickup pencircle scaled penGRID;
for i=0 upto G_m:
    if (i=iX) or (i=iA) or (i=iB):
        drawdblarrow
        for j=0 upto G_a2-1:
            G_p[i*G_b1][j]..
            endfor
            G_p[i*G_b1][G_a2] withcolor col6;
        fi
    endfor
for j=0 upto G_n:
    if (j=jA):
        drawdblarrow
        for i=0 upto G_a1-1:
            G_p[i][j*G_b2]..
            endfor
            G_p[G_a1][j*G_b2] withcolor col6;
        fi
    endfor

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the base points of the grid.
pickup pencircle scaled penPTb;
for i=0 upto G_m:
    for j=0 upto G_n:
        draw G_p[i*G_b1][j*G_b2] withcolor col5;
        endfor
    endfor

% Overdraw the start-point and turning points.
pickup pencircle scaled penPTx;
draw G_p[iX*G_b1][jA*G_b2] withcolor col4;
pickup pencircle scaled penPTy;
draw G_p[iA*G_b1][jA*G_b2] withcolor col4;
draw G_p[iB*G_b1][jA*G_b2] withcolor col4;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the parallel-transported vectors.
pickup pencircle scaled penVEC;
for i=0 upto G_m:
    for j=0 upto G_n:
        if (i=iX) or (i=iA) or (i=iB) or (j=jA):
            p22 := zvec + (i-iX)*(j-jA)*kappa;
            if (j=jA):
                drawarrow G_p[i*G_b1][j*G_b2]--(G_p[i*G_b1][j*G_b2]+p22);
            else:
                drawarrow G_p[i*G_b1][j*G_b2]--(G_p[i*G_b1][j*G_b2]+p22)
                    dashed evenly scaled 0.5;
                fi
            fi
        endfor
    endfor

% Labels for vectors being transported.
p50 := G_p[iX*G_b1][jA*G_b2] + zvec;
p51 := G_p[iA*G_b1][jB*G_b2] + zvec + (iA-iX)*(jB-jA)*kappa;
p52 := G_p[iB*G_b1][jB*G_b2] + zvec + (iB-iX)*(jB-jA)*kappa;
p53 := G_p[iX*G_b1][jB*G_b2] + zvec;
label.top(btex $z$ etex, p50);

%==============================================================================
% The grid of parameter pairs.
pickup pencircle scaled penGRIDc;
for i=0 upto m:
    draw (p34+(i,0)*unitC)--(p34+(i,n)*unitC) withcolor col2;
    endfor
for j=0 upto n:
    draw (p34+(0,j)*unitC)--(p34+(m,j)*unitC) withcolor col2;
    endfor
label.lft(btex $\reals^2$ etex, p34+(0,7)*unitC);

% Overdraw when the parallel transport will go.
pickup pencircle scaled penGRIDc;
drawdblarrow (p34+(0,jA)*unitC)--(p34+(m,jA)*unitC) withcolor col3;
drawdblarrow (p34+(iX,0)*unitC)--(p34+(iX,n)*unitC) withcolor col3;
drawdblarrow (p34+(iA,0)*unitC)--(p34+(iA,n)*unitC) withcolor col3;
drawdblarrow (p34+(iB,0)*unitC)--(p34+(iB,n)*unitC) withcolor col3;

% Draw the start-point and turning points.
pickup pencircle scaled penPTx;
draw (p34+(iX,jA)*unitC) withcolor col4;
pickup pencircle scaled penPTy;
draw (p34+(iA,jA)*unitC) withcolor col4;
draw (p34+(iB,jA)*unitC) withcolor col4;

% Some labels.
pickup pencircle scaled penARROW;
label.lft(btex $t=t_0$ etex, p34+(0,jA)*unitC);
label.lft(btex $t=t_1$ etex, p34+(0,n)*unitC);
label.bot(btex $s=s_0$ etex, p34+(iX,0)*unitC);
label.top(btex $s=s_1$ etex, p34+(iA,n)*unitC);
label.top(btex $s=s_2$ etex, p34+(iB,n)*unitC);
p60 :=  p34+(iX,jA)*unitC;
p61 :=  p60 + (-2.4unitC,-2unitC);
p62 :=  p34+(iA,jA)*unitC;
p63 :=  p62 + (2.4unitC,-2unitC);
drawarrow p61--0.9[p61,p60];
drawarrow p63--0.9[p63,p62];
label.lft(btex $(s_0,t_0)$ etex, p61);
label.rt(btex $(s_1,t_0)$ etex, p63);
label.top(btex $\llap{$\ppara^\gamma_{12}(s_0,t_1)$}(z)$ etex, p53+(0,-2pt));
label.top(btex $\ppara\rlap{${}^\gamma_{12}(s_1,t_1)(z)$}$ etex,
 p51+(0pt,-3pt));
label.rt(btex $\ppara^\gamma_{12}(s_2,t_1)(z)$ etex, p52);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Arrow from coordinate space to point space.
p40 := 0.3[p33,p32];
p41 := 0.65[p33,p32];
pickup pencircle scaled penARROW;
drawarrow p40--p41;
label.bot(btex\strut $\gamma$ etex, 0.5[p40,p41]);

endfig;
end
