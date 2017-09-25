% tex/conc/mp/tangmap29.mp   2017-3-3   Alan U. Kennington.
% $Id: tex/conc/mp/tangmap29.mp e732673266 2017-03-03 14:15:55Z Alan U. Kennington $
% Mixed tensors on manifolds and Cartesian charts.

input boxmax
input centmax
verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
numeric w[], h[];
pair p[], midpt;

w1 := 3.25cm;
h1 := 2.5cm;
h2 := 1.8cm;
penA := 0.5bp;

p1 := (0,0);
p2 := p1 + (w1,0);
p3 := p2 + (w1,0);

p11 := p1 + (0,-h1);
p12 := p2 + (0,-h1);
p13 := p3 + (0,-h1);

p21 := p11 + (0,-h2);
p22 := p12 + (0,-h2);
p23 := p13 + (0,-h2);
midpt := p12;

pickup pencircle scaled penA;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.
B_draw(1, btex\tmatten{\strut\cr
 \strut $L_{\psi_1(p),a_1}^{r,s}$\cr
 \strut \cr}etex, p1);

B_draw(2, btex\tmatten{\strut\cr
 \strut $\tang{p,a_1,\psi_1}^{r,s}=\tang{p,a_2,\psi_2}^{r,s}$\cr
 \strut \cr}etex, p2);

B_draw(3, btex\tmatten{\strut\cr
 \strut $L_{\psi_2(p),a_2}^{r,s}$\cr
 \strut \cr}etex, p3);

B_draw(11, btex\tmatten{\strut\cr
 \strut $L_{\psi_1(p),v_1}$\cr
 \strut \cr}etex, p11);

B_draw(12, btex\tmatten{\strut\cr
 \strut $\tang{p,v_1,\psi_1}=\tang{p,v_2,\psi_2}$\cr
 \strut \cr}etex, p12);

B_draw(13, btex\tmatten{\strut\cr
 \strut $L_{\psi_2(p),v_2}$\cr
 \strut \cr}etex, p13);

B_draw(21, btex\tmatten{\strut $\psi_1(p)$\cr}etex, p21);
B_draw(22, btex\tmatten{\strut $p$\cr}etex, p22);
B_draw(23, btex\tmatten{\strut $\psi_2(p)$\cr}etex, p23);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw some arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,3);
B_arrow(2,3,3);

B_arrow(1,11,3);
B_arrow(2,12,3);
B_arrow(3,13,3);

B_arrow(11,12,3);
B_arrow(12,13,3);

B_arrow(11,21,3);
B_arrow(12,22,3);
B_arrow(13,23,3);

B_arrow(21,22,2);
B_arrow(22,23,1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Labels on spaces.
B_box_point_m(p31)(1, -1, 0);
B_box_point_m(p32)(2, 0, 1);
B_box_point_m(p33)(3, 1, 0);

label.lft(btex\strut $T_{\psi_1(p)}^{r,s}(\reals^n)$ etex, p31);
label.top(btex\strut $T_p^{r,s}(M)$ etex, p32);
label.rt(btex\strut $T_{\psi_2(p)}^{r,s}(\reals^n)$ etex, p33);

B_box_point_m(p41)(11, -1, 0);
B_box_point_m(p42)(12, -1, 1);
B_box_point_m(p43)(13, 1, 0);

label.lft(btex\strut $T_{\psi_1(p)}(\reals^n)$ etex, p41);
label.urt(btex\strut $T_p(M)$ etex, p42);
label.rt(btex\strut $T_{\psi_2(p)}(\reals^n)$ etex, p43);

B_box_point_m(p51)(21, 0, -1);
B_box_point_m(p52)(22, 0, -1);
B_box_point_m(p53)(23, 0, -1);

label.bot(btex\strut $\reals^n$ etex, p51);
label.bot(btex\strut $M$ etex, p52);
label.bot(btex\strut $\reals^n$ etex, p53);

B_box_point_m(p61)(21, 1, 0);
B_box_point_m(p62)(22, -1, 0);

B_box_point_m(p63)(22, 1, 0);
B_box_point_m(p64)(23, -1, 0);

label.bot(btex\strut $\psi_1$ etex, 0.5[p61,p62]);
label.bot(btex\strut $\psi_2$ etex, 0.5[p63,p64]);

C_bbox_centre_set(currentpicture)(midpt);

endfig;
end
