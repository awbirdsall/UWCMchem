% OHRecyclingRxns_Wolfe2011.m
% contains reactions to force OH recycling as detailed in
% Wolfe et al., Atmos. Chem. Phys., 2011, 11, 1269-1294.
% 120210 GMW

alpha = 2.6; %OH yield, normally 2.6
k_ohr = 4.5e-11;

i=i+1;
Rnames{i} = 'HO2 + MBOAO2 = aOH';
k(:,i) = k_ohr;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'MBOAO2';
fOH(i)=alpha; fMBOAO2(i)=-1; fHOCH2CHO(i)=1; fCH3COCH3(i)=1;

i=i+1;
Rnames{i} = 'HO2 + MBOBO2 = aOH';
k(:,i) = k_ohr;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'MBOBO2';
fOH(i)=alpha; fMBOBO2(i)=-1; fIBUTALOH(i)=1; fHCHO(i)=1;

i=i+1;
Rnames{i} = 'HO2 + ISOPAO2 = aOH';
k(:,i) = k_ohr;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'ISOPAO2';
fOH(i)=alpha; fISOPAO2(i)=-1; fHC4CCHO(i)=1;

i=i+1;
Rnames{i} = 'HO2 + ISOPBO2 = aOH';
k(:,i) = k_ohr;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'ISOPBO2';
fOH(i)=alpha; fISOPBO2(i)=-1; fMVKOH(i)=0.25; fCH3O2(i)=0.25; fMVK(i)=0.75; fHCHO(i)=0.75; fHO2(i)=0.75-1;

i=i+1;
Rnames{i} = 'HO2 + ISOPCO2 = aOH';
k(:,i) = k_ohr;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'ISOPCO2';
fOH(i)=alpha; fISOPCO2(i)=-1; fHC4ACHO(i)=1;

i=i+1;
Rnames{i} = 'HO2 + ISOPDO2 = aOH';
k(:,i) = k_ohr;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'ISOPDO2';
fOH(i)=alpha; fISOPDO2(i)=-1; fMACR(i)=1; fHCHO(i)=1;


