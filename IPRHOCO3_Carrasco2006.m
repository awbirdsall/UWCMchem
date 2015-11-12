% IPRHOCO3_Carrasco2006.m
% Unimolecular loss of IPRHOCO3 following
% Carrasco et al., Atmos. Environ., 2006, 40, 2011-2019.
% 120210 GMW

i=i+1;
Rnames{i} = 'IPRHOCO3 = OH + CH3COCH3'; 
k(:,i) = 10;
Gstr{i,1} = 'IPRHOCO3';
fIPRHOCO3(i)=-1; fOH(i)=1; fCH3COCH3(i)=1;


