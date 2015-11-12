% MGLYOXRxns_BaezaRomero2007.m
% Modification to methyl glyoxal mechanism as described in
% Baeza-Romero et al., Phys. Chem. Chem. Phys., 2007, 9, 4114-4128.
% 120210 GMW

i=i+1;
Rnames{i} = 'MGLYOX + OH = CH3O2 + 2CO';
k(:,i) = 0.4.*1.9e-12.*exp(575./T);
Gstr{i,1} = 'MGLYOX'; Gstr{i,2} = 'OH';
fMGLYOX(i)=-1; fOH(i)=-1; fCH3O2(i)=1; fCO(i)=2;

RxnToReplace = 'OH + MGLYOX = CH3CO3 + CO';
kToReplace = 0.6.*1.9e-12.*exp(575./T);
ReplaceRxn


