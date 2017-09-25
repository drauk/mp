% tex/conc/mp/fibdiag11.mp   2016-10-4   Alan U. Kennington.
% $Id: tex/conc/mp/fibdiag11.mp 44f6599d2f 2016-10-03 13:37:25Z Alan U. Kennington $
% Maps and spaces for linearity of connections on vector bundles.

input boxmax
verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[], q[];
numeric w[], xywh[][];
picture pic[];

w20 := 1.1cm;
sepA := 14pt;
penARROW := 0.5bp;

%==============================================================================
% The following procedure for drawing formulas and arrows should be a macro!
% Draw the nodes and arrows of the parse tree.
pic1 := btex\strut $F$ etex;
pic2 := btex\strut $E_p$ etex;
pic3 := btex\strut $\smash{\mcup\limits_{z\in E_p}T_z(E)}$ etex;
pic4 := btex\strut $T(F)$ etex;
pic5 := btex\strut $F$ etex;

pic12 := btex $\phi\restrictp{E_p}{-1}$ etex;
pic13 := btex $\konv_V$ etex;
pic14 := btex $\phi_*$ etex;
pic15 := btex $\dropf$ etex;

p0 := (0,0);
w0 := 0;
B_margset(2pt, 2pt);
for i=1 upto 5:
    w[i] := xpart(urcorner(pic[i])-ulcorner(pic[i]));
    p[i] := p[i-1] + (w20 + 0.5(w[i-1]+w[i]),0);
    B_draw_no_box(i, pic[i], p[i]);
    B_get_path(i)(xywh[i]);

    % Draw the arrow.
    if i>1:
        pickup pencircle scaled penARROW;
        B_arrow(i-1,i,1);
        % Label under arrow.
        xmid := 0.5(xywh[i-1][0] + xywh[i-1][2] + xywh[i][0] - xywh[i][2]);
        w[10+i] := xpart(urcorner(pic[10+i])-ulcorner(pic[10+i]));
        q[i] := (xmid - 0.5w[10+i], -sepA);
        draw pic[10+i] shifted q[i];
        fi
    endfor

endfig;
end
