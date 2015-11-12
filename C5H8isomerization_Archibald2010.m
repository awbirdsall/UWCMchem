% C5H8isomerization_Archibald2010.m
% generated from Archibald2010_C5H8isom.txt
%
%*********************************************************
% IMPORTANT NOTE ON USAGE!
% This mechanism is designed for use with the isoprene mechanism found in MCM v3.2 and UWCM v2.1.
% ISOPAO and ISOPCO have been replaced with their decomposition products following the
% "Instantaneous Reaction Assumption" described in MCMreadnwrite.m and the UWCM ReadMe.
% This must appear after the MCM mechanism in the "ChemFiles" structure.
%*********************************************************
%
% This mechanism follows the detailed MCM-protocol for representation of reactions resulting from
% the so-called Leuven mechanism for isoprene peroxy radicals (e.g. Peeters et al., PCCP (2009)).
% The mechanism development is described in Archibald et al., ACP (2010).
%
% Includes the following reactions:
% 1) New initiation reactions to form OH-isoprene adducts
% 2) Equilibria of OH-isoprene adducts with O2 
% 3) RO2 isomerisation reactions
% 4) Other reactions of new cis-RO2
% 5) Subsequent HPALD chemistry
%
% Also, chemistry has been updated/modified from Archibald (2010) as follows:
% 1) O2 adduct equilibria updated following Peeters and Muller (2010)
% 2) rate of CISOPAO2 and CISOPCO2 isomerization reduced following Crounse (2011)
% 3) rate of ISOPBO2 and ISOPDO2 isomerization reduced to match da Silva (2010)
% 4) rate of HPALD photolysis and OH reaction match Wolfe (2012)
%
% 20131122 GMW
% # of species = 40
% # of reactions = 117

SpeciesToAdd = {...
'C5H8'; 'ISOPAO2'; 'ISOPBO2'; 'ISOPCO2'; 'ISOPDO2'; 'CISOPA'; 'TISOPA'; 'CISOPC'; 'TISOPC'; 'CISOPAO2'; ...
'CISOPCO2'; 'HPC4CHO'; 'HPC4CO3'; 'HOOCH2CHO'; 'HPC5O2'; 'HPC4PAN'; 'HPC4CO3H'; 'HPC5O'; 'HPC5OOH'; 'HOOCH2CO3'; ...
'HOOCH2PAN'; 'HOOCH2CO3H'; 'HPC41CHO'; 'HPC41CO3'; 'HPCH2COCH3'; 'HPC51O2'; 'HPC41PAN'; 'HPC41CO3H'; 'HPC51O'; 'HPC51OOH'; ...
'HPC42CHO'; 'HPC51CO3'; 'HPC51PAN'; 'HPC51CO3H'; 'HPC42CO3'; 'HPC42PAN'; 'HPC42CO3H'; 'CH3COCH2O2'; 'CH3COCH2O'; 'HYPERACET'; ...
};

RO2ToAdd = {...
'ISOPAO2'; 'ISOPBO2'; 'ISOPCO2'; 'ISOPDO2'; 'CISOPAO2'; 'CISOPCO2'; 'CH3CO3'; 'HC4ACO3'; 'HC4CCO3'; 'HPC4CO3'; ...
'HPC5O2'; 'HOOCH2CO3'; 'HPC41CO3'; 'HPC51O2'; 'HPC51CO3'; 'HPC42CO3'; 'CH3COCH2O2'; };

AddSpecies

% remove old C5H8 initiation
RxnToReplace = 'OH + C5H8 = ISOPAO2';
kToReplace = 0;
ReplaceRxn

RxnToReplace = 'OH + C5H8 = ISOPBO2';
kToReplace = 0;
ReplaceRxn

RxnToReplace = 'OH + C5H8 = ISOPCO2';
kToReplace = 0;
ReplaceRxn

RxnToReplace = 'OH + C5H8 = ISOPDO2';
kToReplace = 0;
ReplaceRxn

%new chemistry
i=i+1;
Rnames{i} = 'OH + C5H8 = CISOPA';
k(:,i) = 2.54e-11.*exp(410./T).*0.655.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fCISOPA(i)=fCISOPA(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = TISOPA';
k(:,i) = 2.54e-11.*exp(410./T).*0.655.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fTISOPA(i)=fTISOPA(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = CISOPC';
k(:,i) = 2.54e-11.*exp(410./T).*0.345.*0.7;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fCISOPC(i)=fCISOPC(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = TISOPC';
k(:,i) = 2.54e-11.*exp(410./T).*0.345.*0.3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fTISOPC(i)=fTISOPC(i)+1; 

i=i+1;
Rnames{i} = 'CISOPA = ISOPBO2';
k(:,i) = 3.57e-27.*4.2D14.*.21.*M;
Gstr{i,1} = 'CISOPA'; 
fCISOPA(i)=fCISOPA(i)-1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 = CISOPA';
k(:,i) = 4.2D14.*exp(-9970./T);
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fCISOPA(i)=fCISOPA(i)+1; 

i=i+1;
Rnames{i} = 'TISOPA = ISOPBO2';
k(:,i) = 4e-27.*3.7D14.*.21.*M      ;
Gstr{i,1} = 'TISOPA'; 
fTISOPA(i)=fTISOPA(i)-1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 = TISOPA';
k(:,i) = 3.7D14.*exp(-9570./T)  ;
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fTISOPA(i)=fTISOPA(i)+1; 

i=i+1;
Rnames{i} = 'TISOPA = ISOPAO2';
k(:,i) = 9.8e-26.*3.1D12.*.21.*M    ;
Gstr{i,1} = 'TISOPA'; 
fTISOPA(i)=fTISOPA(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 = TISOPA';
k(:,i) = 3.1D12.*exp(-7900./T)  ;
Gstr{i,1} = 'ISOPAO2'; 
fISOPAO2(i)=fISOPAO2(i)-1; fTISOPA(i)=fTISOPA(i)+1; 

i=i+1;
Rnames{i} = 'CISOPA = CISOPAO2';
k(:,i) = 1.79e-26.*7.8D13.*.21.*M   ;
Gstr{i,1} = 'CISOPA'; 
fCISOPA(i)=fCISOPA(i)-1; fCISOPAO2(i)=fCISOPAO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = CISOPA';
k(:,i) = 7.8D13.*exp(-8660./T)  ;
Gstr{i,1} = 'CISOPAO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fCISOPA(i)=fCISOPA(i)+1; 

i=i+1;
Rnames{i} = 'CISOPC = ISOPDO2';
k(:,i) = 1.82e-27.*8.25D14.*.21.*M  ;
Gstr{i,1} = 'CISOPC'; 
fCISOPC(i)=fCISOPC(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 = CISOPC';
k(:,i) = 8.25D14.*exp(-10220./T);
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fCISOPC(i)=fCISOPC(i)+1; 

i=i+1;
Rnames{i} = 'TISOPC = ISOPDO2';
k(:,i) = 3.07e-27.*5.0D14.*.21.*M   ;
Gstr{i,1} = 'TISOPC'; 
fTISOPC(i)=fTISOPC(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 = TISOPC';
k(:,i) = 5.0D14.*exp(-10120./T) ;
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fTISOPC(i)=fTISOPC(i)+1; 

i=i+1;
Rnames{i} = 'TISOPC = ISOPCO2';
k(:,i) = 5.38e-26.*5.65D12.*.21.*M  ;
Gstr{i,1} = 'TISOPC'; 
fTISOPC(i)=fTISOPC(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 = TISOPC';
k(:,i) = 5.65D12.*exp(-8410./T) ;
Gstr{i,1} = 'ISOPCO2'; 
fISOPCO2(i)=fISOPCO2(i)-1; fTISOPC(i)=fTISOPC(i)+1; 

i=i+1;
Rnames{i} = 'CISOPC = CISOPCO2';
k(:,i) = 7.01e-27.*1.4D14.*.21.*M   ;
Gstr{i,1} = 'CISOPC'; 
fCISOPC(i)=fCISOPC(i)-1; fCISOPCO2(i)=fCISOPCO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = CISOPC';
k(:,i) = 1.4D14.*exp(-9110./T)  ;
Gstr{i,1} = 'CISOPCO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fCISOPC(i)=fCISOPC(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = HPC4CHO + HO2';
k(:,i) = 8.48D8.*exp(-5930./T)./50; %divide by 50 following Crounse (2011)
Gstr{i,1} = 'CISOPAO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fHPC4CHO(i)=fHPC4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = HPC41CHO + HO2';
k(:,i) = 8.48D8.*exp(-5930./T)./50; %divide by 50 following Crounse (2011)
Gstr{i,1} = 'CISOPCO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fHPC41CHO(i)=fHPC41CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 = HCHO + MVK + OH';
k(:,i) = 2.38D12.*exp(-21400./(1.987.*T)); %da Silva (2010) rate
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fHCHO(i)=fHCHO(i)+1; fMVK(i)=fMVK(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 = HCHO + MACR + OH';
k(:,i) = 1.27D12.*exp(-21000./(1.987.*T)); %da Silva (2010) rate
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fHCHO(i)=fHCHO(i)+1; fMACR(i)=fMACR(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + NO = 0.25C524O2 + 0.75HC4CCHO + 0.75HO2 + NO2';
k(:,i) = KRO2NO.*0.892;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO(i)=fNO(i)-1; fC524O2(i)=fC524O2(i)+0.25; fHC4CCHO(i)=fHC4CCHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fNO2(i)=fNO2(i)+1; 
i=i+1;
Rnames{i} = 'CISOPAO2 + NO = ISOPANO3';
k(:,i) = KRO2NO.*0.108;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO(i)=fNO(i)-1; fISOPANO3(i)=fISOPANO3(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + NO3 = 0.25C524O2 + 0.75HC4CCHO + 0.75HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO3'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO3(i)=fNO3(i)-1; fC524O2(i)=fC524O2(i)+0.25; fHC4CCHO(i)=fHC4CCHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + HO2 = ISOPAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'HO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPAOOH(i)=fISOPAOOH(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = 0.25C524O2 + 0.75HC4CCHO + 0.75HO2';
k(:,i) = 2.40e-12.*0.8;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'RO2';
fCISOPAO2(i)=fCISOPAO2(i)-1; fC524O2(i)=fC524O2(i)+0.25; fHC4CCHO(i)=fHC4CCHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; 

i=i+1;
Rnames{i} = 'CISOPAO2 = HC4ACHO';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'RO2';
fCISOPAO2(i)=fCISOPAO2(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = ISOPAOH';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'RO2';
fCISOPAO2(i)=fCISOPAO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO = 0.75HC4ACHO + 0.75HO2 + 0.25HC4CCHO + 0.25HO2 + NO2';
k(:,i) = KRO2NO.*0.892;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO(i)=fNO(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fHC4CCHO(i)=fHC4CCHO(i)+0.25; fHO2(i)=fHO2(i)+0.25; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO = ISOPCNO3';
k(:,i) = KRO2NO.*0.108;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO(i)=fNO(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO3 = 0.75HC4ACHO + 0.75HO2 + 0.25HC4CCHO + 0.25HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO3'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO3(i)=fNO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fHC4CCHO(i)=fHC4CCHO(i)+0.25; fHO2(i)=fHO2(i)+0.25; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + HO2 = ISOPCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'HO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPCOOH(i)=fISOPCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = 0.75HC4ACHO + 0.75HO2 + 0.25HC4CCHO + 0.25HO2';
k(:,i) = 2.00e-12.*0.8;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fHC4CCHO(i)=fHC4CCHO(i)+0.25; fHO2(i)=fHO2(i)+0.25; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = HC4CCHO';
k(:,i) = 2.00e-12.*0.1;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = ISOPAOH';
k(:,i) = 2.00e-12.*0.1;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CHO = HC4CCO3 + OH';
k(:,i) = J19./0.0195  ;
Gstr{i,1} = 'HPC4CHO'; 
fHPC4CHO(i)=fHPC4CHO(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CHO = HC4CCO3 + OH';
k(:,i) = J18./0.0195  ;
Gstr{i,1} = 'HPC4CHO'; 
fHPC4CHO(i)=fHPC4CHO(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CHO = HC4ACO3 + OH';
k(:,i) = J19./0.0195  ;
Gstr{i,1} = 'HPC41CHO'; 
fHPC41CHO(i)=fHPC41CHO(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CHO = HC4ACO3 + OH';
k(:,i) = J18./0.0195  ;
Gstr{i,1} = 'HPC41CHO'; 
fHPC41CHO(i)=fHPC41CHO(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CHO + OH = HPC4CO3';
k(:,i) = 5.1e-11.*0.264 ;
Gstr{i,1} = 'HPC4CHO'; Gstr{i,2} = 'OH'; 
fHPC4CHO(i)=fHPC4CHO(i)-1; fOH(i)=fOH(i)-1; fHPC4CO3(i)=fHPC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CHO + OH = HPC5O2';
k(:,i) = 5.1e-11.*0.736 ;
Gstr{i,1} = 'HPC4CHO'; Gstr{i,2} = 'OH'; 
fHPC4CHO(i)=fHPC4CHO(i)-1; fOH(i)=fOH(i)-1; fHPC5O2(i)=fHPC5O2(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CO3 + NO = CH3CO3 + HOOCH2CHO + NO2';
k(:,i) = KAPNO         ;
Gstr{i,1} = 'HPC4CO3'; Gstr{i,2} = 'NO'; 
fHPC4CO3(i)=fHPC4CO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOOCH2CHO(i)=fHOOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CO3 + NO2 = HPC4PAN';
k(:,i) = KFPAN         ;
Gstr{i,1} = 'HPC4CO3'; Gstr{i,2} = 'NO2'; 
fHPC4CO3(i)=fHPC4CO3(i)-1; fNO2(i)=fNO2(i)-1; fHPC4PAN(i)=fHPC4PAN(i)+1; 

i=i+1;
Rnames{i} = 'HPC4PAN = HPC4CO3 + NO2';
k(:,i) = KBPAN         ;
Gstr{i,1} = 'HPC4PAN'; 
fHPC4PAN(i)=fHPC4PAN(i)-1; fHPC4CO3(i)=fHPC4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CO3 + NO3 = CH3CO3 + HOOCH2CHO + NO2';
k(:,i) = KRO2NO3.*1.6   ;
Gstr{i,1} = 'HPC4CO3'; Gstr{i,2} = 'NO3'; 
fHPC4CO3(i)=fHPC4CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOOCH2CHO(i)=fHOOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CO3 + HO2 = HPC4CO3H';
k(:,i) = KAPHO2        ;
Gstr{i,1} = 'HPC4CO3'; Gstr{i,2} = 'HO2'; 
fHPC4CO3(i)=fHPC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHPC4CO3H(i)=fHPC4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CO3 = CH3CO3 + HOOCH2CHO';
k(:,i) = 1.00e-11  ;
Gstr{i,1} = 'HPC4CO3'; Gstr{i,2} = 'RO2';
fHPC4CO3(i)=fHPC4CO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOOCH2CHO(i)=fHOOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HPC5O2 + NO = HPC5O + NO2';
k(:,i) = KRO2NO        ;
Gstr{i,1} = 'HPC5O2'; Gstr{i,2} = 'NO'; 
fHPC5O2(i)=fHPC5O2(i)-1; fNO(i)=fNO(i)-1; fHPC5O(i)=fHPC5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC5O2 + NO3 = HPC5O + NO2';
k(:,i) = KRO2NO3       ;
Gstr{i,1} = 'HPC5O2'; Gstr{i,2} = 'NO3'; 
fHPC5O2(i)=fHPC5O2(i)-1; fNO3(i)=fNO3(i)-1; fHPC5O(i)=fHPC5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC5O2 + HO2 = HPC5OOH';
k(:,i) = KRO2HO2.*0.706 ;
Gstr{i,1} = 'HPC5O2'; Gstr{i,2} = 'HO2'; 
fHPC5O2(i)=fHPC5O2(i)-1; fHO2(i)=fHO2(i)-1; fHPC5OOH(i)=fHPC5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC5O2 = HPC5O';
k(:,i) = 9.20e-14  ;
Gstr{i,1} = 'HPC5O2'; Gstr{i,2} = 'RO2';
fHPC5O2(i)=fHPC5O2(i)-1; fHPC5O(i)=fHPC5O(i)+1; 

i=i+1;
Rnames{i} = 'HPC5O = MGLYOX + HOOCH2CHO + HO2';
k(:,i) = KDEC          ;
Gstr{i,1} = 'HPC5O'; 
fHPC5O(i)=fHPC5O(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOOCH2CHO(i)=fHOOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC4PAN + OH = MGLYOX + HOOCH2CHO + HO2 + NO3';
k(:,i) = 5.92e-11      ;
Gstr{i,1} = 'HPC4PAN'; Gstr{i,2} = 'OH'; 
fHPC4PAN(i)=fHPC4PAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOOCH2CHO(i)=fHOOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CO3H = CH3CO3 + HOOCH2CHO + OH';
k(:,i) = J41.*2       ;
Gstr{i,1} = 'HPC4CO3H'; 
fHPC4CO3H(i)=fHPC4CO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOOCH2CHO(i)=fHOOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC4CO3H + OH = HPC4CO3';
k(:,i) = 6.28e-11      ;
Gstr{i,1} = 'HPC4CO3H'; Gstr{i,2} = 'OH'; 
fHPC4CO3H(i)=fHPC4CO3H(i)-1; fOH(i)=fOH(i)-1; fHPC4CO3(i)=fHPC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC5OOH = HPC5O + OH';
k(:,i) = J41.*2       ;
Gstr{i,1} = 'HPC5OOH'; 
fHPC5OOH(i)=fHPC5OOH(i)-1; fHPC5O(i)=fHPC5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC5OOH = HMVKAOOH + CO + HO2 + OH';
k(:,i) = J15         ;
Gstr{i,1} = 'HPC5OOH'; 
fHPC5OOH(i)=fHPC5OOH(i)-1; fHMVKAOOH(i)=fHMVKAOOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC5OOH + OH = HMVKAOOH + CO + OH';
k(:,i) = 4.66e-11      ;
Gstr{i,1} = 'HPC5OOH'; Gstr{i,2} = 'OH'; 
fHPC5OOH(i)=fHPC5OOH(i)-1; fOH(i)=fOH(i)-1; fHMVKAOOH(i)=fHMVKAOOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CHO + OH = HOOCH2CO3';
k(:,i) = 3.02e-11.*0.779;
Gstr{i,1} = 'HOOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOOCH2CHO(i)=fHOOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fHOOCH2CO3(i)=fHOOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CHO + OH = GLYOX + OH';
k(:,i) = 3.02e-11.*0.221;
Gstr{i,1} = 'HOOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOOCH2CHO(i)=fHOOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CHO = HO2 + CO + HCHO + OH';
k(:,i) = J15         ;
Gstr{i,1} = 'HOOCH2CHO'; 
fHOOCH2CHO(i)=fHOOCH2CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CHO = HO2 + CO + HCHO + OH';
k(:,i) = J41         ;
Gstr{i,1} = 'HOOCH2CHO'; 
fHOOCH2CHO(i)=fHOOCH2CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CO3 + NO = HCHO + OH + NO2';
k(:,i) = KAPNO         ;
Gstr{i,1} = 'HOOCH2CO3'; Gstr{i,2} = 'NO'; 
fHOOCH2CO3(i)=fHOOCH2CO3(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CO3 + NO2 = HOOCH2PAN';
k(:,i) = KFPAN         ;
Gstr{i,1} = 'HOOCH2CO3'; Gstr{i,2} = 'NO2'; 
fHOOCH2CO3(i)=fHOOCH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fHOOCH2PAN(i)=fHOOCH2PAN(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2PAN = HOOCH2CO3 + NO2';
k(:,i) = KBPAN         ;
Gstr{i,1} = 'HOOCH2PAN'; 
fHOOCH2PAN(i)=fHOOCH2PAN(i)-1; fHOOCH2CO3(i)=fHOOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CO3 + NO3 = HCHO + OH + NO2';
k(:,i) = KRO2NO3.*1.6   ;
Gstr{i,1} = 'HOOCH2CO3'; Gstr{i,2} = 'NO3'; 
fHOOCH2CO3(i)=fHOOCH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CO3 + HO2 = HOOCH2CO3H';
k(:,i) = KAPHO2        ;
Gstr{i,1} = 'HOOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOOCH2CO3(i)=fHOOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOOCH2CO3H(i)=fHOOCH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CO3 = HCHO + OH';
k(:,i) = 1.00e-11  ;
Gstr{i,1} = 'HOOCH2CO3'; Gstr{i,2} = 'RO2';
fHOOCH2CO3(i)=fHOOCH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2PAN + OH = GLYPAN + OH';
k(:,i) = 9.48e-12      ;
Gstr{i,1} = 'HOOCH2PAN'; Gstr{i,2} = 'OH'; 
fHOOCH2PAN(i)=fHOOCH2PAN(i)-1; fOH(i)=fOH(i)-1; fGLYPAN(i)=fGLYPAN(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2PAN = HCHO + OH + NO3';
k(:,i) = J41         ;
Gstr{i,1} = 'HOOCH2PAN'; 
fHOOCH2PAN(i)=fHOOCH2PAN(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CO3H + OH = HCOCO3H + OH';
k(:,i) = 1.31e-11      ;
Gstr{i,1} = 'HOOCH2CO3H'; Gstr{i,2} = 'OH'; 
fHOOCH2CO3H(i)=fHOOCH2CO3H(i)-1; fOH(i)=fOH(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOOCH2CO3H = HCHO + OH + OH';
k(:,i) = J41.*2       ;
Gstr{i,1} = 'HOOCH2CO3H'; 
fHOOCH2CO3H(i)=fHOOCH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CHO + OH = HPC41CO3';
k(:,i) = 5.1e-11.*0.264 ;
Gstr{i,1} = 'HPC41CHO'; Gstr{i,2} = 'OH'; 
fHPC41CHO(i)=fHPC41CHO(i)-1; fOH(i)=fOH(i)-1; fHPC41CO3(i)=fHPC41CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CHO + OH = HPC51O2';
k(:,i) = 5.1e-11.*0.736 ;
Gstr{i,1} = 'HPC41CHO'; Gstr{i,2} = 'OH'; 
fHPC41CHO(i)=fHPC41CHO(i)-1; fOH(i)=fOH(i)-1; fHPC51O2(i)=fHPC51O2(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CO3 + NO = CO + HO2 + HPCH2COCH3 + NO2';
k(:,i) = KAPNO         ;
Gstr{i,1} = 'HPC41CO3'; Gstr{i,2} = 'NO'; 
fHPC41CO3(i)=fHPC41CO3(i)-1; fNO(i)=fNO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CO3 + NO2 = HPC41PAN';
k(:,i) = KFPAN         ;
Gstr{i,1} = 'HPC41CO3'; Gstr{i,2} = 'NO2'; 
fHPC41CO3(i)=fHPC41CO3(i)-1; fNO2(i)=fNO2(i)-1; fHPC41PAN(i)=fHPC41PAN(i)+1; 

i=i+1;
Rnames{i} = 'HPC41PAN = HPC41CO3 + NO2';
k(:,i) = KBPAN         ;
Gstr{i,1} = 'HPC41PAN'; 
fHPC41PAN(i)=fHPC41PAN(i)-1; fHPC41CO3(i)=fHPC41CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CO3 + NO3 = CO + HO2 + HPCH2COCH3 + NO2';
k(:,i) = KRO2NO3.*1.6   ;
Gstr{i,1} = 'HPC41CO3'; Gstr{i,2} = 'NO3'; 
fHPC41CO3(i)=fHPC41CO3(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CO3 + HO2 = HPC41CO3H';
k(:,i) = KAPHO2        ;
Gstr{i,1} = 'HPC41CO3'; Gstr{i,2} = 'HO2'; 
fHPC41CO3(i)=fHPC41CO3(i)-1; fHO2(i)=fHO2(i)-1; fHPC41CO3H(i)=fHPC41CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CO3 = CO + HO2 + HPCH2COCH3';
k(:,i) = 1.00e-11  ;
Gstr{i,1} = 'HPC41CO3'; Gstr{i,2} = 'RO2';
fHPC41CO3(i)=fHPC41CO3(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; 

i=i+1;
Rnames{i} = 'HPC51O2 + NO = HPC51O + NO2';
k(:,i) = KRO2NO        ;
Gstr{i,1} = 'HPC51O2'; Gstr{i,2} = 'NO'; 
fHPC51O2(i)=fHPC51O2(i)-1; fNO(i)=fNO(i)-1; fHPC51O(i)=fHPC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC51O2 + NO3 = HPC51O + NO2';
k(:,i) = KRO2NO3       ;
Gstr{i,1} = 'HPC51O2'; Gstr{i,2} = 'NO3'; 
fHPC51O2(i)=fHPC51O2(i)-1; fNO3(i)=fNO3(i)-1; fHPC51O(i)=fHPC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC51O2 + HO2 = HPC51OOH';
k(:,i) = KRO2HO2.*0.706 ;
Gstr{i,1} = 'HPC51O2'; Gstr{i,2} = 'HO2'; 
fHPC51O2(i)=fHPC51O2(i)-1; fHO2(i)=fHO2(i)-1; fHPC51OOH(i)=fHPC51OOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC51O2 = HPC51O';
k(:,i) = 9.20e-14  ;
Gstr{i,1} = 'HPC51O2'; Gstr{i,2} = 'RO2';
fHPC51O2(i)=fHPC51O2(i)-1; fHPC51O(i)=fHPC51O(i)+1; 

i=i+1;
Rnames{i} = 'HPC51O = GLYOX + HPCH2COCH3 + HO2';
k(:,i) = KDEC          ;
Gstr{i,1} = 'HPC51O'; 
fHPC51O(i)=fHPC51O(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC41PAN + OH = GLYOX + HPCH2COCH3 + HO2 + NO3';
k(:,i) = 5.92e-11      ;
Gstr{i,1} = 'HPC41PAN'; Gstr{i,2} = 'OH'; 
fHPC41PAN(i)=fHPC41PAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CO3H = HO2 + CO + HPCH2COCH3 + OH';
k(:,i) = J41.*2       ;
Gstr{i,1} = 'HPC41CO3H'; 
fHPC41CO3H(i)=fHPC41CO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC41CO3H + OH = HPC41CO3';
k(:,i) = 6.28e-11      ;
Gstr{i,1} = 'HPC41CO3H'; Gstr{i,2} = 'OH'; 
fHPC41CO3H(i)=fHPC41CO3H(i)-1; fOH(i)=fOH(i)-1; fHPC41CO3(i)=fHPC41CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC51OOH = HPC51O + OH';
k(:,i) = J41.*2       ;
Gstr{i,1} = 'HPC51OOH'; 
fHPC51OOH(i)=fHPC51OOH(i)-1; fHPC51O(i)=fHPC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC51OOH = HO2 + HPC42CHO + HO2 + CO';
k(:,i) = J15         ;
Gstr{i,1} = 'HPC51OOH'; 
fHPC51OOH(i)=fHPC51OOH(i)-1; fHO2(i)=fHO2(i)+1; fHPC42CHO(i)=fHPC42CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HPC51OOH + OH = HPC51CO3';
k(:,i) = 4.40e-11      ;
Gstr{i,1} = 'HPC51OOH'; Gstr{i,2} = 'OH'; 
fHPC51OOH(i)=fHPC51OOH(i)-1; fOH(i)=fOH(i)-1; fHPC51CO3(i)=fHPC51CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC51CO3 + NO = HO2 + HPC42CHO + NO2';
k(:,i) = KAPNO         ;
Gstr{i,1} = 'HPC51CO3'; Gstr{i,2} = 'NO'; 
fHPC51CO3(i)=fHPC51CO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fHPC42CHO(i)=fHPC42CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC51CO3 + NO2 = HPC51PAN';
k(:,i) = KFPAN         ;
Gstr{i,1} = 'HPC51CO3'; Gstr{i,2} = 'NO2'; 
fHPC51CO3(i)=fHPC51CO3(i)-1; fNO2(i)=fNO2(i)-1; fHPC51PAN(i)=fHPC51PAN(i)+1; 

i=i+1;
Rnames{i} = 'HPC51PAN = HPC51CO3 + NO2';
k(:,i) = KBPAN         ;
Gstr{i,1} = 'HPC51PAN'; 
fHPC51PAN(i)=fHPC51PAN(i)-1; fHPC51CO3(i)=fHPC51CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC51CO3 + NO3 = HO2 + HPC42CHO + NO2';
k(:,i) = KRO2NO3.*1.6   ;
Gstr{i,1} = 'HPC51CO3'; Gstr{i,2} = 'NO3'; 
fHPC51CO3(i)=fHPC51CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHPC42CHO(i)=fHPC42CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC51CO3 + HO2 = HPC51CO3H';
k(:,i) = KAPHO2        ;
Gstr{i,1} = 'HPC51CO3'; Gstr{i,2} = 'HO2'; 
fHPC51CO3(i)=fHPC51CO3(i)-1; fHO2(i)=fHO2(i)-1; fHPC51CO3H(i)=fHPC51CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HPC51CO3 = HO2 + HPC42CHO';
k(:,i) = 1.00e-11  ;
Gstr{i,1} = 'HPC51CO3'; Gstr{i,2} = 'RO2';
fHPC51CO3(i)=fHPC51CO3(i)-1; fHO2(i)=fHO2(i)+1; fHPC42CHO(i)=fHPC42CHO(i)+1; 

i=i+1;
Rnames{i} = 'HPC51PAN + OH = HO2 + HPC42CHO + NO3';
k(:,i) = 2.33e-11      ;
Gstr{i,1} = 'HPC51PAN'; Gstr{i,2} = 'OH'; 
fHPC51PAN(i)=fHPC51PAN(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHPC42CHO(i)=fHPC42CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC51CO3H = HO2 + HPC42CHO + OH';
k(:,i) = J41.*3       ;
Gstr{i,1} = 'HPC51CO3H'; 
fHPC51CO3H(i)=fHPC51CO3H(i)-1; fHO2(i)=fHO2(i)+1; fHPC42CHO(i)=fHPC42CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC51CO3H + OH = HPC51CO3';
k(:,i) = 2.69e-11      ;
Gstr{i,1} = 'HPC51CO3H'; Gstr{i,2} = 'OH'; 
fHPC51CO3H(i)=fHPC51CO3H(i)-1; fOH(i)=fOH(i)-1; fHPC51CO3(i)=fHPC51CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CHO = HPCH2COCH3 + OH + CO + HO2';
k(:,i) = J15         ;
Gstr{i,1} = 'HPC42CHO'; 
fHPC42CHO(i)=fHPC42CHO(i)-1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CHO = HPCH2COCH3 + OH + CO + HO2';
k(:,i) = J41.*2       ;
Gstr{i,1} = 'HPC42CHO'; 
fHPC42CHO(i)=fHPC42CHO(i)-1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CHO + OH = HPC42CO3';
k(:,i) = 3.78e-11      ;
Gstr{i,1} = 'HPC42CHO'; Gstr{i,2} = 'OH'; 
fHPC42CHO(i)=fHPC42CHO(i)-1; fOH(i)=fOH(i)-1; fHPC42CO3(i)=fHPC42CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CO3 + NO = HPCH2COCH3 + OH + NO2';
k(:,i) = KAPNO         ;
Gstr{i,1} = 'HPC42CO3'; Gstr{i,2} = 'NO'; 
fHPC42CO3(i)=fHPC42CO3(i)-1; fNO(i)=fNO(i)-1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CO3 + NO2 = HPC42PAN';
k(:,i) = KFPAN         ;
Gstr{i,1} = 'HPC42CO3'; Gstr{i,2} = 'NO2'; 
fHPC42CO3(i)=fHPC42CO3(i)-1; fNO2(i)=fNO2(i)-1; fHPC42PAN(i)=fHPC42PAN(i)+1; 

i=i+1;
Rnames{i} = 'HPC42PAN = HPC42CO3 + NO2';
k(:,i) = KBPAN         ;
Gstr{i,1} = 'HPC42PAN'; 
fHPC42PAN(i)=fHPC42PAN(i)-1; fHPC42CO3(i)=fHPC42CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CO3 + NO3 = HPCH2COCH3 + OH + NO2';
k(:,i) = KRO2NO3.*1.6   ;
Gstr{i,1} = 'HPC42CO3'; Gstr{i,2} = 'NO3'; 
fHPC42CO3(i)=fHPC42CO3(i)-1; fNO3(i)=fNO3(i)-1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CO3 + HO2 = HPC42CO3H';
k(:,i) = KAPHO2        ;
Gstr{i,1} = 'HPC42CO3'; Gstr{i,2} = 'HO2'; 
fHPC42CO3(i)=fHPC42CO3(i)-1; fHO2(i)=fHO2(i)-1; fHPC42CO3H(i)=fHPC42CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CO3 = HPCH2COCH3 + OH';
k(:,i) = 1.00e-11  ;
Gstr{i,1} = 'HPC42CO3'; Gstr{i,2} = 'RO2';
fHPC42CO3(i)=fHPC42CO3(i)-1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC42PAN + OH = HPCH2COCH3 + OH + NO3';
k(:,i) = 1.70e-11      ;
Gstr{i,1} = 'HPC42PAN'; Gstr{i,2} = 'OH'; 
fHPC42PAN(i)=fHPC42PAN(i)-1; fOH(i)=fOH(i)-1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CO3H = HPCH2COCH3 + OH + OH';
k(:,i) = J41.*2       ;
Gstr{i,1} = 'HPC42CO3H'; 
fHPC42CO3H(i)=fHPC42CO3H(i)-1; fHPCH2COCH3(i)=fHPCH2COCH3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC42CO3H + OH = HPC42CO3';
k(:,i) = 2.06e-11      ;
Gstr{i,1} = 'HPC42CO3H'; Gstr{i,2} = 'OH'; 
fHPC42CO3H(i)=fHPC42CO3H(i)-1; fOH(i)=fOH(i)-1; fHPC42CO3(i)=fHPC42CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPCH2COCH3 + OH = CH3COCH2O2';
k(:,i) = 3.60e-12      ;
Gstr{i,1} = 'HPCH2COCH3'; Gstr{i,2} = 'OH'; 
fHPCH2COCH3(i)=fHPCH2COCH3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HPCH2COCH3 + OH = MGLYOX + OH';
k(:,i) = 5.98e-12      ;
Gstr{i,1} = 'HPCH2COCH3'; Gstr{i,2} = 'OH'; 
fHPCH2COCH3(i)=fHPCH2COCH3(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

