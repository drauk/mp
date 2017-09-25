% tex/conc/mp/tree41.mp   2012-5-7   Alan U. Kennington.
% $Id: tex/conc/mp/tree41.mp c157bf5f68 2012-05-06 17:01:47Z Alan U. Kennington $
% Family tree of affine spaces.

input boxmax.mp
verbatimtex
\input dgmpmax
\input akmath
etex

%%%%%%%%%%%%%%%%%%%%%%%%%
%       figure 1        %
%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(1);
pair p[];
numeric w[], h[];

w1 := 75pt;
h1 := 32pt;

p1 := (0,0);
p2 := p1 + (0,-h1);
p3 := p2 + (0,-h1);
p4 := p3 + (-w1,-h1);
p5 := p3 + (w1,-h1);
p6 := p5 + (-w1,-h1);
p7 := p5 + (w1,-h1);
p8 := p6 + (0,-h1);
p9 := p7 + (0,-h1);
p10 := 0.5[p8,p9] + (0,-h1);

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Draw the boxes.

% Affine space over group.
B_draw(1, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over group\cr\hfil
 $\scriptstyle(G,X,\sigma_G,\mu_G,\delta_X)$\cr}etex, p1);

% Affine space over module (unstructured).
B_draw(2, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over module\cr\hfil
 $\scriptstyle(M,X,\sigma_M,\mu_M,\delta_X)$\cr}etex, p2);

% Affine space over module over set.
B_draw(3, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over module over set\cr\hfil
 $\scriptstyle(A,M,X,\sigma_M,\mu_A,\mu_M,\delta_X)$\cr}etex, p3);

% Affine space over module over group.
B_draw(4, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over module over group\cr\hfil
 $\scriptstyle(G,M,X,\sigma_G,\sigma_M,\mu_G,\mu_M,\delta_X)$\cr}etex, p4);

% Affine space over module over ring.
B_draw(5, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over module over ring\cr\hfil
 $\scriptstyle(R,M,X,\sigma_R,\tau_R,\sigma_M,\mu_R,\mu_M,\delta_X)$\cr}etex,
 p5);

% Affine space over module over field.
B_draw(6, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over module over field\cr\hfil
 $\scriptstyle(K,M,X,\sigma_K,\tau_K,\sigma_M,\mu_K,\mu_M,\delta_X)$\cr}etex,
 p6);

% Affine space over module over ring.
B_draw(7, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over module over ordered ring\cr\hfil
 $\scriptstyle(R,M,X,\sigma_R,\tau_R,<,\sigma_M,\mu_R,\mu_M,\delta_X)$\cr}etex,
 p7);

% Affine space over module over linear space.
B_draw(8, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over linear space\cr\hfil
 $\scriptstyle(K,V,X,\sigma_K,\tau_K,\sigma_V,\mu_K,\mu_V,\delta_X)$\cr}etex,
 p8);

% Affine space over module over ordered field.
B_draw(9, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over module over ordered field\cr\hfil
 $\scriptstyle(K,M,X,\sigma_K,\tau_K,<,\sigma_M,\mu_K,\mu_M,\delta_X)$\cr}etex,
 p9);

% Affine space over module over linear space over ordered field.
B_draw(10, btex\baselineskip9pt
 \tmat{\hfil\sevenrm affine space over linear space over ordered field\cr\hfil
 $\scriptstyle(K,V,X,\sigma_K,\tau_K,<,\sigma_V,\mu_K,\mu_V,\delta_X)$\cr}etex,
 p10);

% Draw the arrows.
B_margset(2pt, 2pt);
B_arrow(1,2,1);
B_arrow(2,3,1);
B_arrow(3,4,1);
B_arrow(3,5,1);
B_arrow(5,6,1);
B_arrow(5,7,1);
B_arrow(6,8,1);
B_arrow(7,9,1);
B_arrow(8,10,1);
B_arrow(9,10,1);

endfig;
end
