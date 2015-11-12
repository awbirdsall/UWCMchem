% DMS.m
% generated from DMS.txt
% 20150706
% # of species = 36
% # of reactions = 89

SpeciesToAdd = {...
'HCHO'; 'CH3SO2OOH'; 'CH3SCHO'; 'CH3OH'; 'DMS'; 'O3'; 'NO2'; 'NO3'; 'CH3SCH2O2'; 'NO'; ...
'DMSO2OH'; 'CH3SCH2OOH'; 'MSA'; 'HO2'; 'MSIA'; 'CH3SOO2NO2'; 'DMSO2'; 'CO'; 'CH3SOOOH'; 'CH3SO4NO2'; ...
'HNO3'; 'CH3NO3'; 'DMSO2O2'; 'HODMSO2'; 'CH3SCH2OH'; 'DMSO2OOH'; 'CH3SO2CHO'; 'OH'; 'H2'; 'CH3O2'; ...
'CH3SO3'; 'SO3'; 'CH3O2NO2'; 'SO2'; 'CH3OOH'; 'DMSO'; };

RO2ToAdd = {...
'CH3SCH2O2'; 'HODMSO2'; 'DMSO2O2'; };

AddSpecies

i=i+1;
Rnames{i} = 'DMS + NO3 = CH3SCH2O2 + HNO3';
k(:,i) = 1.9e-13.*exp(520./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'NO3'; 
fDMS(i)=fDMS(i)-1; fNO3(i)=fNO3(i)-1; fCH3SCH2O2(i)=fCH3SCH2O2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'DMS + OH = CH3SCH2O2';
k(:,i) = 1.12e-11.*exp(-250./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'OH'; 
fDMS(i)=fDMS(i)-1; fOH(i)=fOH(i)-1; fCH3SCH2O2(i)=fCH3SCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'DMS + OH = HODMSO2';
k(:,i) = KMT18;
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'OH'; 
fDMS(i)=fDMS(i)-1; fOH(i)=fOH(i)-1; fHODMSO2(i)=fHODMSO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2O2 + HO2 = CH3SCH2OOH';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'CH3SCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3SCH2O2(i)=fCH3SCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3SCH2OOH(i)=fCH3SCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2O2 + NO =  + CH3S + HCHO + NO2';
k(:,i) = 4.9e-12.*exp(260./T);
Gstr{i,1} = 'CH3SCH2O2'; Gstr{i,2} = 'NO'; 
fCH3SCH2O2(i)=fCH3SCH2O2(i)-1; fNO(i)=fNO(i)-1; fCH3S(i)=fCH3S(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2O2 + NO3 =  + CH3S + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CH3SCH2O2'; Gstr{i,2} = 'NO3'; 
fCH3SCH2O2(i)=fCH3SCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3S(i)=fCH3S(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2O2 =  + CH3S + HCHO';
k(:,i) = 2.*(K298CH3O2.*1.0e-11).^0.5.*0.8;
Gstr{i,1} = 'CH3SCH2O2'; Gstr{i,2} = 'RO2';
fCH3SCH2O2(i)=fCH3SCH2O2(i)-1; fCH3S(i)=fCH3S(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2O2 = CH3SCH2OH';
k(:,i) = 2.*(K298CH3O2.*1.0e-11).^0.5.*0.1;
Gstr{i,1} = 'CH3SCH2O2'; Gstr{i,2} = 'RO2';
fCH3SCH2O2(i)=fCH3SCH2O2(i)-1; fCH3SCH2OH(i)=fCH3SCH2OH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2O2 = CH3SCHO';
k(:,i) = 2.*(K298CH3O2.*1.0e-11).^0.5.*0.1;
Gstr{i,1} = 'CH3SCH2O2'; Gstr{i,2} = 'RO2';
fCH3SCH2O2(i)=fCH3SCH2O2(i)-1; fCH3SCHO(i)=fCH3SCHO(i)+1; 

i=i+1;
Rnames{i} = 'HODMSO2 + NO = DMSO2 + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HODMSO2'; Gstr{i,2} = 'NO'; 
fHODMSO2(i)=fHODMSO2(i)-1; fNO(i)=fNO(i)-1; fDMSO2(i)=fDMSO2(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HODMSO2 = DMSO + HO2';
k(:,i) = 8.90e10.*exp(-6040./T);
Gstr{i,1} = 'HODMSO2'; 
fHODMSO2(i)=fHODMSO2(i)-1; fDMSO(i)=fDMSO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2OOH + OH = CH3SCHO + OH';
k(:,i) = 7.03e-11;
Gstr{i,1} = 'CH3SCH2OOH'; Gstr{i,2} = 'OH'; 
fCH3SCH2OOH(i)=fCH3SCH2OOH(i)-1; fOH(i)=fOH(i)-1; fCH3SCHO(i)=fCH3SCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2OOH =  + CH3S + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3SCH2OOH'; 
fCH3SCH2OOH(i)=fCH3SCH2OOH(i)-1; fCH3S(i)=fCH3S(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCH2OH + OH = CH3SCHO + HO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'CH3SCH2OH'; Gstr{i,2} = 'OH'; 
fCH3SCH2OH(i)=fCH3SCH2OH(i)-1; fOH(i)=fOH(i)-1; fCH3SCHO(i)=fCH3SCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCHO + OH =  + CH3SOO + CO';
k(:,i) = 1.11e-11;
Gstr{i,1} = 'CH3SCHO'; Gstr{i,2} = 'OH'; 
fCH3SCHO(i)=fCH3SCHO(i)-1; fOH(i)=fOH(i)-1; fCH3SOO(i)=fCH3SOO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH3SCHO =  + CH3SOO + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CH3SCHO'; 
fCH3SCHO(i)=fCH3SCHO(i)-1; fCH3SOO(i)=fCH3SOO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2 + OH = DMSO2O2';
k(:,i) = 4.40e-14;
Gstr{i,1} = 'DMSO2'; Gstr{i,2} = 'OH'; 
fDMSO2(i)=fDMSO2(i)-1; fOH(i)=fOH(i)-1; fDMSO2O2(i)=fDMSO2O2(i)+1; 

i=i+1;
Rnames{i} = 'DMSO + OH = MSIA + CH3O2';
k(:,i) = 6.10e-12.*exp(800./T);
Gstr{i,1} = 'DMSO'; Gstr{i,2} = 'OH'; 
fDMSO(i)=fDMSO(i)-1; fOH(i)=fOH(i)-1; fMSIA(i)=fMSIA(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3S + NO2 =  + CH3SOO2 + NO';
k(:,i) = 6.00e-11.*exp(240./T);
Gstr{i,1} = 'CH3S'; Gstr{i,2} = 'NO2'; 
fCH3S(i)=fCH3S(i)-1; fNO2(i)=fNO2(i)-1; fCH3SOO2(i)=fCH3SOO2(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'CH3S + O3 =  + CH3SOO2';
k(:,i) = 1.15e-12.*exp(430./T);
Gstr{i,1} = 'CH3S'; Gstr{i,2} = 'O3'; 
fCH3S(i)=fCH3S(i)-1; fO3(i)=fO3(i)-1; fCH3SOO2(i)=fCH3SOO2(i)+1; 


i=i+1;
Rnames{i} = 'DMSO2O2 + HO2 = DMSO2OOH';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'DMSO2O2'; Gstr{i,2} = 'HO2'; 
fDMSO2O2(i)=fDMSO2O2(i)-1; fHO2(i)=fHO2(i)-1; fDMSO2OOH(i)=fDMSO2OOH(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2O2 + NO =  + CH3SO2 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'DMSO2O2'; Gstr{i,2} = 'NO'; 
fDMSO2O2(i)=fDMSO2O2(i)-1; fNO(i)=fNO(i)-1; fCH3SO2(i)=fCH3SO2(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2O2 + NO3 =  + CH3SO2 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DMSO2O2'; Gstr{i,2} = 'NO3'; 
fDMSO2O2(i)=fDMSO2O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3SO2(i)=fCH3SO2(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2O2 = CH3SO2CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'DMSO2O2'; Gstr{i,2} = 'RO2';
fDMSO2O2(i)=fDMSO2O2(i)-1; fCH3SO2CHO(i)=fCH3SO2CHO(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2O2 =  + CH3SO2 + HCHO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'DMSO2O2'; Gstr{i,2} = 'RO2';
fDMSO2O2(i)=fDMSO2O2(i)-1; fCH3SO2(i)=fCH3SO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2O2 = DMSO2OH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'DMSO2O2'; Gstr{i,2} = 'RO2';
fDMSO2O2(i)=fDMSO2O2(i)-1; fDMSO2OH(i)=fDMSO2OH(i)+1; 

i=i+1;
Rnames{i} = 'MSIA + OH = CH3O2 + SO2';
k(:,i) = 9.00e-11;
Gstr{i,1} = 'MSIA'; Gstr{i,2} = 'OH'; 
fMSIA(i)=fMSIA(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; fSO2(i)=fSO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO + NO2 = CH3O2 + SO2 + NO';
k(:,i) = 1.20e-11.*0.25;
Gstr{i,1} = 'CH3SO'; Gstr{i,2} = 'NO2'; 
fCH3SO(i)=fCH3SO(i)-1; fNO2(i)=fNO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fSO2(i)=fSO2(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO + NO2 =  + CH3SO2O2 + NO';
k(:,i) = 1.20e-11.*0.75;
Gstr{i,1} = 'CH3SO'; Gstr{i,2} = 'NO2'; 
fCH3SO(i)=fCH3SO(i)-1; fNO2(i)=fNO2(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO + O3 = CH3O2 + SO2';
k(:,i) = 4.00e-13;
Gstr{i,1} = 'CH3SO'; Gstr{i,2} = 'O3'; 
fCH3SO(i)=fCH3SO(i)-1; fO3(i)=fO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fSO2(i)=fSO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO + NO =  + CH3SOO2 + NO2';
k(:,i) = 1.1e-11;
Gstr{i,1} = 'CH3SOO'; Gstr{i,2} = 'NO'; 
fCH3SOO(i)=fCH3SOO(i)-1; fNO(i)=fNO(i)-1; fCH3SOO2(i)=fCH3SOO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO + NO2 =  + CH3SOO2 + NO3';
k(:,i) = 2.2e-11;
Gstr{i,1} = 'CH3SOO'; Gstr{i,2} = 'NO2'; 
fCH3SOO(i)=fCH3SOO(i)-1; fNO2(i)=fNO2(i)-1; fCH3SOO2(i)=fCH3SOO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO = CH3O2 + SO2';
k(:,i) = 5.60e16.*exp(-10870./T);
Gstr{i,1} = 'CH3SOO'; 
fCH3SOO(i)=fCH3SOO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fSO2(i)=fSO2(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2OOH + OH = CH3SO2CHO + OH';
k(:,i) = 1.26e-12;
Gstr{i,1} = 'DMSO2OOH'; Gstr{i,2} = 'OH'; 
fDMSO2OOH(i)=fDMSO2OOH(i)-1; fOH(i)=fOH(i)-1; fCH3SO2CHO(i)=fCH3SO2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2OOH + OH = DMSO2O2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'DMSO2OOH'; Gstr{i,2} = 'OH'; 
fDMSO2OOH(i)=fDMSO2OOH(i)-1; fOH(i)=fOH(i)-1; fDMSO2O2(i)=fDMSO2O2(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2OOH =  + CH3SO2 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DMSO2OOH'; 
fDMSO2OOH(i)=fDMSO2OOH(i)-1; fCH3SO2(i)=fCH3SO2(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2CHO + OH =  + CH3SO2O2 + CO';
k(:,i) = 1.78e-12;
Gstr{i,1} = 'CH3SO2CHO'; Gstr{i,2} = 'OH'; 
fCH3SO2CHO(i)=fCH3SO2CHO(i)-1; fOH(i)=fOH(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2CHO =  + CH3SO2O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CH3SO2CHO'; 
fCH3SO2CHO(i)=fCH3SO2CHO(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2OH + OH = CH3SO2CHO + HO2';
k(:,i) = 5.23e-13;
Gstr{i,1} = 'DMSO2OH'; Gstr{i,2} = 'OH'; 
fDMSO2OH(i)=fDMSO2OH(i)-1; fOH(i)=fOH(i)-1; fCH3SO2CHO(i)=fCH3SO2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DMSO2OH + OH =  + CH3SO2 + HCHO';
k(:,i) = 1.40e-13;
Gstr{i,1} = 'DMSO2OH'; Gstr{i,2} = 'OH'; 
fDMSO2OH(i)=fDMSO2OH(i)-1; fOH(i)=fOH(i)-1; fCH3SO2(i)=fCH3SO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2 + O3 = CH3SO3';
k(:,i) = 3.00e-13;
Gstr{i,1} = 'CH3SO2'; Gstr{i,2} = 'O3'; 
fCH3SO2(i)=fCH3SO2(i)-1; fO3(i)=fO3(i)-1; fCH3SO3(i)=fCH3SO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2 = CH3O2 + SO2';
k(:,i) = 5.00e13.*exp(-9673./T);
Gstr{i,1} = 'CH3SO2'; 
fCH3SO2(i)=fCH3SO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fSO2(i)=fSO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2 + HO2 =  + CH3SO2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3SOO2'; Gstr{i,2} = 'HO2'; 
fCH3SOO2(i)=fCH3SOO2(i)-1; fHO2(i)=fHO2(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2 + HO2 = CH3SOOOH';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CH3SOO2'; Gstr{i,2} = 'HO2'; 
fCH3SOO2(i)=fCH3SOO2(i)-1; fHO2(i)=fHO2(i)-1; fCH3SOOOH(i)=fCH3SOOOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2 + HO2 = MSIA + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CH3SOO2'; Gstr{i,2} = 'HO2'; 
fCH3SOO2(i)=fCH3SOO2(i)-1; fHO2(i)=fHO2(i)-1; fMSIA(i)=fMSIA(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2 + NO =  + CH3SO2O2 + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3SOO2'; Gstr{i,2} = 'NO'; 
fCH3SOO2(i)=fCH3SOO2(i)-1; fNO(i)=fNO(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2 + NO2 = CH3SOO2NO2';
k(:,i) = 1.20e-12.*(T./300).^-0.9;
Gstr{i,1} = 'CH3SOO2'; Gstr{i,2} = 'NO2'; 
fCH3SOO2(i)=fCH3SOO2(i)-1; fNO2(i)=fNO2(i)-1; fCH3SOO2NO2(i)=fCH3SOO2NO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2 + NO3 =  + CH3SO2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3SOO2'; Gstr{i,2} = 'NO3'; 
fCH3SOO2(i)=fCH3SOO2(i)-1; fNO3(i)=fNO3(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2 =  + CH3SO2O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CH3SOO2'; Gstr{i,2} = 'RO2';
fCH3SOO2(i)=fCH3SOO2(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2 = MSIA';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CH3SOO2'; Gstr{i,2} = 'RO2';
fCH3SOO2(i)=fCH3SOO2(i)-1; fMSIA(i)=fMSIA(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO3 + HO2 = MSA';
k(:,i) = 5.00e-11;
Gstr{i,1} = 'CH3SO3'; Gstr{i,2} = 'HO2'; 
fCH3SO3(i)=fCH3SO3(i)-1; fHO2(i)=fHO2(i)-1; fMSA(i)=fMSA(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO3 = CH3O2 + SO3';
k(:,i) = 5.00e13.*exp(-9946./T);
Gstr{i,1} = 'CH3SO3'; 
fCH3SO3(i)=fCH3SO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2O2 + HO2 = CH3SO2OOH';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CH3SO2O2'; Gstr{i,2} = 'HO2'; 
fCH3SO2O2(i)=fCH3SO2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3SO2OOH(i)=fCH3SO2OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2O2 + HO2 = CH3SO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3SO2O2'; Gstr{i,2} = 'HO2'; 
fCH3SO2O2(i)=fCH3SO2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3SO3(i)=fCH3SO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2O2 + HO2 = MSA + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CH3SO2O2'; Gstr{i,2} = 'HO2'; 
fCH3SO2O2(i)=fCH3SO2O2(i)-1; fHO2(i)=fHO2(i)-1; fMSA(i)=fMSA(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2O2 + NO = CH3SO3 + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3SO2O2'; Gstr{i,2} = 'NO'; 
fCH3SO2O2(i)=fCH3SO2O2(i)-1; fNO(i)=fNO(i)-1; fCH3SO3(i)=fCH3SO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2O2 + NO2 = CH3SO4NO2';
k(:,i) = 1.20e-12.*(T./300).^-0.9;
Gstr{i,1} = 'CH3SO2O2'; Gstr{i,2} = 'NO2'; 
fCH3SO2O2(i)=fCH3SO2O2(i)-1; fNO2(i)=fNO2(i)-1; fCH3SO4NO2(i)=fCH3SO4NO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2O2 + NO3 = CH3SO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3SO2O2'; Gstr{i,2} = 'NO3'; 
fCH3SO2O2(i)=fCH3SO2O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3SO3(i)=fCH3SO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2O2 = CH3SO3';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CH3SO2O2'; Gstr{i,2} = 'RO2';
fCH3SO2O2(i)=fCH3SO2O2(i)-1; fCH3SO3(i)=fCH3SO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2O2 = MSA';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CH3SO2O2'; Gstr{i,2} = 'RO2';
fCH3SO2O2(i)=fCH3SO2O2(i)-1; fMSA(i)=fMSA(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOOOH + OH =  + CH3SOO2';
k(:,i) = 9.00e-11;
Gstr{i,1} = 'CH3SOOOH'; Gstr{i,2} = 'OH'; 
fCH3SOOOH(i)=fCH3SOOOH(i)-1; fOH(i)=fOH(i)-1; fCH3SOO2(i)=fCH3SOO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOOOH =  + CH3SO2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3SOOOH'; 
fCH3SOOOH(i)=fCH3SOOOH(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2NO2 + OH = MSIA + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3SOO2NO2'; Gstr{i,2} = 'OH'; 
fCH3SOO2NO2(i)=fCH3SOO2NO2(i)-1; fOH(i)=fOH(i)-1; fMSIA(i)=fMSIA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SOO2NO2 =  + CH3SOO2 + NO2';
k(:,i) = 5.40e16.*exp(-13112./T);
Gstr{i,1} = 'CH3SOO2NO2'; 
fCH3SOO2NO2(i)=fCH3SOO2NO2(i)-1; fCH3SOO2(i)=fCH3SOO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MSA + OH = CH3SO3';
k(:,i) = 2.24e-14;
Gstr{i,1} = 'MSA'; Gstr{i,2} = 'OH'; 
fMSA(i)=fMSA(i)-1; fOH(i)=fOH(i)-1; fCH3SO3(i)=fCH3SO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2OOH + OH =  + CH3SO2O2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'CH3SO2OOH'; Gstr{i,2} = 'OH'; 
fCH3SO2OOH(i)=fCH3SO2OOH(i)-1; fOH(i)=fOH(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO2OOH = CH3SO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3SO2OOH'; 
fCH3SO2OOH(i)=fCH3SO2OOH(i)-1; fCH3SO3(i)=fCH3SO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO4NO2 + OH =  + CH3SO2O2 + HNO3';
k(:,i) = 3.60e-13;
Gstr{i,1} = 'CH3SO4NO2'; Gstr{i,2} = 'OH'; 
fCH3SO4NO2(i)=fCH3SO4NO2(i)-1; fOH(i)=fOH(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3SO4NO2 =  + CH3SO2O2 + NO2';
k(:,i) = 5.40e16.*exp(-13112./T);
Gstr{i,1} = 'CH3SO4NO2'; 
fCH3SO4NO2(i)=fCH3SO4NO2(i)-1; fCH3SO2O2(i)=fCH3SO2O2(i)+1; fNO2(i)=fNO2(i)+1; 

