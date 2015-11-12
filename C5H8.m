% c5h8.m
% generated from c5h8.txt
% 20151112
% # of species = 496
% # of reactions = 1752

SpeciesToAdd = {...
'C4PAN5'; 'C4PAN6'; 'C535OOH'; 'NC3OO'; 'IEB1CHO'; 'CHOPRNO3'; 'C524CO'; 'ISOPDOOH'; 'MVK'; 'IPRHOCO2H'; ...
'ETHGLY'; 'MACROH'; 'MACROO'; 'C3MCODBPAN'; 'ETHO2HNO3'; 'DHPMPAL'; 'INB1NBCO2H'; 'CO24C4CHO'; 'MACRO2'; 'ACO3H'; ...
'INAHCO3'; 'C525OOH'; 'INAHCHO'; 'C534OOH'; 'ISOPAOOH'; 'MAE'; 'ISOPCOOH'; 'HYPERACET'; 'INB1NACO3H'; 'IEACO3H'; ...
'C3DIOLOOH'; 'INAHPCO3'; 'MMALANHYO2'; 'NO2'; 'NO3'; 'C58OOH'; 'H2O2'; 'C58NO3'; 'INCCO'; 'PAN'; ...
'INB1GLYOX'; 'PRONO3AO2'; 'C527OOH'; 'CONM2CO3H'; 'C537O2'; 'CO2H3CO3H'; 'CH3CHO'; 'C531O2'; 'HMML'; 'NOA'; ...
'C530NO3'; 'BIACETOOH'; 'INCOOH'; 'ISOPBOOH'; 'CH2CHCH2OOH'; 'INAOOH'; 'C533O2'; 'IEPOXC'; 'NOAOO'; 'IEPOXA'; ...
'C58NO3CO3'; 'MACROOH'; 'INAHPCO3H'; 'CO2N3CHO'; 'C510OH'; 'INANCOCO2H'; 'CO2N3CO3'; 'PHAN'; 'PXYFUO2'; 'HOCH2COCHO'; ...
'C535O2'; 'MACO2H'; 'CO2C3OO'; 'ACRPAN'; 'HMACROH'; 'ISOPCNO3'; 'MACRNCO2H'; 'C510O2'; 'ISOP34NO3'; 'INDO2'; ...
'DHPMEK'; 'NC526OOH'; 'INB1NACHO'; 'MACRNBPAN'; 'COHM2CO3H'; 'NC524OOH'; 'HOCH2CHO'; 'ISOPANO3'; 'INANCOCHO'; 'PRNO3CO3H'; ...
'INB1OOH'; 'CHOMOHCO3'; 'C31CO3'; 'INANCO3H'; 'H14CO23C4'; 'INAOH'; 'C531CO'; 'C3MCODBCO3'; 'IECCO3'; 'PRNO3PAN'; ...
'C23O3CCO2H'; 'HPC52CO3'; 'HYPROPO2H'; 'HVMK'; 'INCOH'; 'MMALNBCO3H'; 'IPRHOCO3'; 'INCO2'; 'INANCOCO3'; 'HC4CO3'; ...
'INCNO3'; 'CH3CHOO'; 'INB2OOH'; 'INCNCHO'; 'INANPAN'; 'NPXYFUO2'; 'INAO2'; 'INCNCO3'; 'ISOPDNO3'; 'IBUTALOH'; ...
'C32OH13CO'; 'CH3CO3H'; 'HIEB1O2'; 'H1CO23CHO'; 'INANO3'; 'INB1HPCHO'; 'ACO2H'; 'CH3COPAN'; 'CO2N3PAN'; 'ISOPBNO3'; ...
'ACRO2'; 'MMALNACO3'; 'C533OOH'; 'IECCO3H'; 'HC4ACHO'; 'CH4'; 'HMGLYOO'; 'HCOCO3'; 'NC4CO3'; 'HC4PAN'; ...
'HCOCH2O2'; 'MMALNACO3H'; 'ACLOO'; 'NC524NO3'; 'CONM2CO3'; 'PRONO3BO2'; 'HCOOH'; 'HCOCO2H'; 'ETHENO3O2'; 'HIEPOXB'; ...
'HCHO'; 'HMVKAO2'; 'CONM2CO2H'; 'MACRNO3'; 'ISOP34OOH'; 'HMACRO2'; 'IPROPOLPER'; 'C4M2AL2OH'; 'ALLYLOH'; 'IECCHO'; ...
'HOCH2CO3'; 'MC3CODBPAN'; 'HMVKNO3'; 'CHOOCHO'; 'A2PAN'; 'IPROPOLO2H'; 'CONM2CHO'; 'HOCH2CO2H'; 'MACRNB'; 'IPRHOCO3H'; ...
'INB1NBCHO'; 'C47CO3'; 'MACRNOO'; 'C5PACALD2'; 'C5PACALD1'; 'CH3OOH'; 'HPC52CO3H'; 'OCCOHCOOH'; 'PROPGLY'; 'ISOP34O2'; ...
'NO3CH2CO3'; 'NC4CHO'; 'HMVKNGLYOX'; 'C57NO3CO3H'; 'C526O2'; 'CH3CHOHCHO'; 'NISOPNO3'; 'IEC2OOH'; 'MVKOHAOH'; 'MVKOHBO2'; ...
'MGLOO'; 'PXYFUOH'; 'INDHPCO3'; 'C23O3CCO3'; 'INDOH'; 'MVKOHAOOH'; 'MGLYOO'; 'C58NO3CO2H'; 'C524O2'; 'H13CO2CO3H'; ...
'INB1NACO2H'; 'CO2H3CHO'; 'IEAPAN'; 'IEB4CHO'; 'MMALNHYOOH'; 'MGLYOX'; 'C524OH'; 'HMACO3H'; 'MVKOHAO2'; 'INANCOPAN'; ...
'HC4CCHO'; 'MPAN'; 'INDOOH'; 'CH3O2NO2'; 'MACRNBCO3H'; 'HCOC5'; 'CH3COCO3'; 'INDHCO3H'; 'MMALNBCO2H'; 'C51NO3'; ...
'GAOO'; 'NC41OO'; 'MACRNBCO3'; 'IEACO3'; 'HMGLOO'; 'C23O3CPAN'; 'CH3COCO2H'; 'IEPOXB'; 'C57O2'; 'INCGLYOX'; ...
'DNC524CO'; 'OCCOHCOH'; 'C51O2'; 'IECPAN'; 'C2OHOCOOH'; 'INB1HPCO3H'; 'C510OOH'; 'C5H8'; 'C51OH'; 'C59O2'; ...
'ACETOL'; 'INB1HPCO2H'; 'VGLYOX'; 'IPROPOLO2'; 'CONM2PAN'; 'CH3CO3'; 'INB1HPPAN'; 'CO2C3CO2H'; 'MMALNBPAN'; 'HIEB2O2'; ...
'C3MDIALOOH'; 'HPNC524CO'; 'C47CO3H'; 'C45OOH'; 'INAHPCO2H'; 'CH3COCH2O2'; 'MACO3H'; 'HMAC'; 'CH3NO3'; 'ISOPAOH'; ...
'HMVKANO3'; 'MACROHO2'; 'HMVKBO2'; 'INB1NBCO3H'; 'H13CO2CHO'; 'COHM2CO3'; 'HCOCO3H'; 'HC4CCO2H'; 'C57NO3CO3'; 'ISOPCO2'; ...
'INANCOCO3H'; 'IPROPOLPAN'; 'HNO3'; 'C57AOOH'; 'MACRNCO3'; 'HYETHO2H'; 'INB1NO3'; 'ETHOHNO3'; 'GLYOO'; 'C524NO3'; ...
'ISOPAO2'; 'HOCHOCOOH'; 'HC4CHO'; 'A2PANOO'; 'HIEB1OOH'; 'GLYOX'; 'HC4CCO3'; 'HMACR'; 'INCNCO2H'; 'C3H6'; ...
'CO2N3CO3H'; 'HC4ACO3'; 'MACROHOOH'; 'C527O2'; 'CO23C4NO3'; 'C57OOH'; 'CH2OO'; 'COHM2PAN'; 'CH3CHOHCO3'; 'COHM2CO2H'; ...
'INB1HPCO3'; 'C23O3CCHO'; 'C5PAN19'; 'C5PAN18'; 'PXYFUOOH'; 'C5PAN17'; 'C525O2'; 'C2H4'; 'HCOCOHCO3'; 'INB1NBCO3'; ...
'C57NO3'; 'NISOPOOH'; 'C57AO2'; 'HO12CO3C4'; 'C31PAN'; 'H13CO2CO3'; 'INANCO'; 'C5HPALD2'; 'C5HPALD1'; 'CO2C3PAN'; ...
'C3DIOLO2'; 'NO3CH2CHO'; 'INB2O2'; 'MVKOHANO3'; 'NO3CH2CO2H'; 'CO'; 'CL'; 'HPC52OOH'; 'INAHPPAN'; 'MCOCOMOXO2'; ...
'MMALNACO2H'; 'C42AOH'; 'C51OOH'; 'HC4ACO2H'; 'C45NO3'; 'NPXYFUOOH'; 'C58AOOH'; 'HIEB2OOH'; 'C4M2ALOHO2'; 'HMACO2H'; ...
'HNC524CO'; 'HPC52PAN'; 'HCOCH2OOH'; 'MCOCOMOOOH'; 'CO2C3CO3H'; 'MVKNO3'; 'C2OHOCO2H'; 'ISOPBOH'; 'ISOPDOH'; 'C58O2'; ...
'HC4CO3H'; 'MC3CODBCO3'; 'INDHPPAN'; 'NO3CH2CO3H'; 'M3BU3ECO3H'; 'HPC52O2'; 'C58OH'; 'ISOPDO2'; 'SO3'; 'SO2'; ...
'C47PAN'; 'ISOPBO2'; 'C57NO3CO2H'; 'HOCH2CO3H'; 'PR2O2HNO3'; 'HMVKAOOH'; 'INAHCO3H'; 'NC4CO3H'; 'HCOCOHCO3H'; 'C58NO3CO3H'; ...
'C526NO3'; 'CH3OH'; 'INDHCO3'; 'BIACETO2'; 'INDHCHO'; 'HMACO3'; 'O3'; 'INDHPCHO'; 'INAHPAN'; 'INB1NAPAN'; ...
'M3BU3ECO3'; 'CISOPCO2'; 'INAHPCHO'; 'INANCHO'; 'INCNPAN'; 'C4CO2O2'; 'C4CO2OOH'; 'HCOCOHPAN'; 'CH3COCO3H'; 'OH'; ...
'CH3O2'; 'C4MDIAL'; 'HMVKBOOH'; 'BIACETOH'; 'PR1O2HNO3'; 'PXYFUONE'; 'HYPROPO2'; 'MVKO2'; 'PE4E2CO'; 'MMALANHY'; ...
'ME3BU3ECHO'; 'C59OOH'; 'NC4OO'; 'HOCH2CH2O2'; 'IEACHO'; 'C536OOH'; 'C58NO3PAN'; 'HO1CO24C5'; 'INCNCO3H'; 'OCCOHCO2'; ...
'H13CO2C3'; 'INB1NACO3'; 'C58AO2'; 'MVKOH'; 'ACO3'; 'C57NO3PAN'; 'PROLNO3'; 'MVKOO'; 'INB1O2'; 'H2'; ...
'C532CO'; 'NC51OOH'; 'NC2OO'; 'HC4CCO3H'; 'M3F'; 'NMGLYOX'; 'C530OOH'; 'CO2C3CO3'; 'CH2CHCH2NO3'; 'MMALNBCO3'; ...
'HOCH2COCO2H'; 'ACR'; 'INDHPAN'; 'MMALNHY2OH'; 'INB1NBPAN'; 'CH2CHCH2O2'; 'NO'; 'HMACROOH'; 'HC4ACO3H'; 'MC3ODBCO2H'; ...
'C527NO3'; 'C57OH'; 'C531OOH'; 'NC524OH'; 'CH3CO2H'; 'MVKOOH'; 'NC524O2'; 'C4M2ALOHNO3'; 'C536O2'; 'CO2C3CHO'; ...
'MMALNAPAN'; 'C537OOH'; 'C530O2'; 'CO23C3CHO'; 'CH3COCH3'; 'PRNO3CO3'; 'MACRNBCO2H'; 'NC526O2'; 'C58ANO3'; 'INDHPCO3H'; ...
'C23O3CCO3H'; 'CO2H3CO3'; 'INANCO3'; 'C3MDIALO2'; 'C4MALOHOOH'; 'C23O3CHO'; 'C47CHO'; 'PROPOLNO3'; 'INB1OH'; 'MVKOHBOOH'; ...
'INAHCO2H'; 'CHOMOHCO3H'; 'NC51O2'; 'C534O2'; 'HO2'; 'NISOPO2'; 'NC4CO2H'; 'PRNO3CO2H'; 'MACR'; 'INANCO2H'; ...
'MACO3'; 'MACRNCO3H'; 'M3BU3EPAN'; 'INB1CO'; 'C4PAN10'; 'NO3CH2PAN'; 'CISOPAO2'; 'C524OOH'; 'M3FOO'; 'MACRNPAN'; ...
'C31CO3H'; 'C45O2'; 'CHOMOHPAN'; 'HMPAN'; 'C3MDIALOH'; 'C526OOH'; };

RO2ToAdd = {...
'NISOPO2'; 'ISOP34O2'; 'MACO3'; 'MACRO2'; 'MACROHO2'; 'CH3CO3'; 'HMVKAO2'; 'HMVKBO2'; 'CH3O2'; 'MVKO2'; ...
'CISOPAO2'; 'ISOPBO2'; 'CISOPCO2'; 'ISOPDO2'; 'NC526O2'; 'C530O2'; 'M3BU3ECO3'; 'C45O2'; 'NC51O2'; 'C51O2'; ...
'CH2CHCH2O2'; 'ISOPAO2'; 'ISOPCO2'; 'INCO2'; 'NC4CO3'; 'C510O2'; 'PRONO3AO2'; 'PRONO3BO2'; 'HYPROPO2'; 'IPROPOLO2'; ...
'C536O2'; 'C537O2'; 'INAO2'; 'C58O2'; 'HC4CO3'; 'CO2C3CO3'; 'CH3COCH2O2'; 'C4CO2O2'; 'C527O2'; 'HOCH2CO3'; ...
'MACRNCO3'; 'MACRNBCO3'; 'CHOMOHCO3'; 'HCOCH2O2'; 'CO2H3CO3'; 'ACO3'; 'MVKOHAO2'; 'MVKOHBO2'; 'C526O2'; 'HC4ACO3'; ...
'C58AO2'; 'INB1O2'; 'INB2O2'; 'HPC52O2'; 'HC4CCO3'; 'C57AO2'; 'C57O2'; 'INDO2'; 'C59O2'; 'ACRO2'; ...
'OCCOHCO2'; 'C524O2'; 'HCOCO3'; 'CONM2CO3'; 'IPRHOCO3'; 'PRNO3CO3'; 'CH3CHOHCO3'; 'CO2N3CO3'; 'NO3CH2CO3'; 'C534O2'; ...
'C3MCODBCO3'; 'MC3CODBCO3'; 'C4M2ALOHO2'; 'C535O2'; 'C58NO3CO3'; 'ETHENO3O2'; 'HOCH2CH2O2'; 'C531O2'; 'INCNCO3'; 'H13CO2CO3'; ...
'IEACO3'; 'C3MDIALO2'; 'BIACETO2'; 'CH3COCO3'; 'NPXYFUO2'; 'MCOCOMOXO2'; 'PXYFUO2'; 'IECCO3'; 'HPC52CO3'; 'INDHCO3'; ...
'C57NO3CO3'; 'INAHPCO3'; 'INANCO3'; 'INAHCO3'; 'A2PANOO'; 'HCOCOHCO3'; 'NC524O2'; 'C525O2'; 'HMACO3'; 'HMACRO2'; ...
'COHM2CO3'; 'C47CO3'; 'INB1HPCO3'; 'INB1NACO3'; 'INB1NBCO3'; 'MMALNACO3'; 'MMALNBCO3'; 'INDHPCO3'; 'INANCOCO3'; 'HIEB1O2'; ...
'HIEB2O2'; 'C31CO3'; 'C533O2'; 'MMALANHYO2'; 'C3DIOLO2'; 'C23O3CCO3'; };

AddSpecies

i=i+1;
Rnames{i} = 'NO3 + C5H8 = NISOPO2';
k(:,i) = 3.15e-12.*exp(-450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C5H8'; 
fNO3(i)=fNO3(i)-1; fC5H8(i)=fC5H8(i)-1; fNISOPO2(i)=fNISOPO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 =  + 0.56CH2OO + 0.19CO + 0.25HO2 + 0.25CO + 0.25OH + MACR';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.3;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fCH2OO(i)=fCH2OO(i)+0.56; fCO(i)=fCO(i)+0.19; fHO2(i)=fHO2(i)+0.25; fCO(i)=fCO(i)+0.25; fOH(i)=fOH(i)+0.25; fMACR(i)=fMACR(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 =  + 0.56CH2OO + 0.19CO + 0.25HO2 + 0.25CO + 0.25OH + MVK';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.2;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fCH2OO(i)=fCH2OO(i)+0.56; fCO(i)=fCO(i)+0.19; fHO2(i)=fHO2(i)+0.25; fCO(i)=fCO(i)+0.25; fOH(i)=fOH(i)+0.25; fMVK(i)=fMVK(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 = HCHO +  + 0.095C3H6 + 0.095CH3CO3 + 0.095HCHO + 0.095HO2 + 0.56MACROO + 0.25OH + 0.25CO + 0.25CH3CO3 + 0.25HCHO';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.3;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fHCHO(i)=fHCHO(i)+1; fC3H6(i)=fC3H6(i)+0.095; fCH3CO3(i)=fCH3CO3(i)+0.095; fHCHO(i)=fHCHO(i)+0.095; fHO2(i)=fHO2(i)+0.095; fMACROO(i)=fMACROO(i)+0.56; fOH(i)=fOH(i)+0.25; fCO(i)=fCO(i)+0.25; fCH3CO3(i)=fCH3CO3(i)+0.25; fHCHO(i)=fHCHO(i)+0.25; 

i=i+1;
Rnames{i} = 'O3 + C5H8 = HCHO +  + 0.095C3H6 + 0.095CH3O2 + 0.095HCHO + 0.095CO + 0.095HO2 + 0.56MVKOO + 0.25OH + 0.25MVKO2';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.2;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fHCHO(i)=fHCHO(i)+1; fC3H6(i)=fC3H6(i)+0.095; fCH3O2(i)=fCH3O2(i)+0.095; fHCHO(i)=fHCHO(i)+0.095; fCO(i)=fCO(i)+0.095; fHO2(i)=fHO2(i)+0.095; fMVKOO(i)=fMVKOO(i)+0.56; fOH(i)=fOH(i)+0.25; fMVKO2(i)=fMVKO2(i)+0.25; 

i=i+1;
Rnames{i} = 'OH + C5H8 =  + CISOPAO2 + ISOPBO2';
k(:,i) = 2.70e-11.*exp(390./T).*0.288;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fCISOPAO2(i)=fCISOPAO2(i)+1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 =  + CISOPCO2 + ISOPDO2';
k(:,i) = 2.70e-11.*exp(390./T).*0.238;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fCISOPCO2(i)=fCISOPCO2(i)+1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOP34O2';
k(:,i) = 2.70e-11.*exp(390./T).*0.022;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOP34O2(i)=fISOP34O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ME3BU3ECHO + HO2';
k(:,i) = 2.70e-11.*exp(390./T).*0.020;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fME3BU3ECHO(i)=fME3BU3ECHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = PE4E2CO + HO2';
k(:,i) = 2.70e-11.*exp(390./T).*0.042;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fPE4E2CO(i)=fPE4E2CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 =  + ISOPAO2 + ISOPBO2';
k(:,i) = 2.70e-11.*exp(390./T).*0.288;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 =  + ISOPCO2 + ISOPDO2';
k(:,i) = 2.70e-11.*exp(390./T).*0.102;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + HO2 = NISOPOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'HO2'; 
fNISOPO2(i)=fNISOPO2(i)-1; fHO2(i)=fHO2(i)-1; fNISOPOOH(i)=fNISOPOOH(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + NO = NISOPNO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'NO'; 
fNISOPO2(i)=fNISOPO2(i)-1; fNO(i)=fNO(i)-1; fNISOPNO3(i)=fNISOPNO3(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + NO =  + NC4CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'NO'; 
fNISOPO2(i)=fNISOPO2(i)-1; fNO(i)=fNO(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + NO3 =  + NC4CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'NO3'; 
fNISOPO2(i)=fNISOPO2(i)-1; fNO3(i)=fNO3(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 = ISOPCNO3';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'RO2';
fNISOPO2(i)=fNISOPO2(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 = NC4CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'RO2';
fNISOPO2(i)=fNISOPO2(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 =  + NC4CHO + HO2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'RO2';
fNISOPO2(i)=fNISOPO2(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACR =  + 0.35CH3CO3 + 0.35HCHO + 0.65HCHO + 0.65CH3O2 + 0.65CO + CO + HO2';
k(:,i) = J18;
Gstr{i,1} = 'MACR'; 
fMACR(i)=fMACR(i)-1; fCH3CO3(i)=fCH3CO3(i)+0.35; fHCHO(i)=fHCHO(i)+0.35; fHCHO(i)=fHCHO(i)+0.65; fCH3O2(i)=fCH3O2(i)+0.65; fCO(i)=fCO(i)+0.65; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACR = MACO3 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'MACR'; 
fMACR(i)=fMACR(i)-1; fMACO3(i)=fMACO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + MACR = MACO3 + HNO3';
k(:,i) = 3.4e-15;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'MACR'; 
fNO3(i)=fNO3(i)-1; fMACR(i)=fMACR(i)-1; fMACO3(i)=fMACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MACR = HCHO +  + 0.18MGLYOO + 0.82OH + 0.82CO + 0.82CH3CO3';
k(:,i) = 1.4e-15.*exp(-2100./T).*0.12;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MACR'; 
fO3(i)=fO3(i)-1; fMACR(i)=fMACR(i)-1; fHCHO(i)=fHCHO(i)+1; fMGLYOO(i)=fMGLYOO(i)+0.18; fOH(i)=fOH(i)+0.82; fCO(i)=fCO(i)+0.82; fCH3CO3(i)=fCH3CO3(i)+0.82; 

i=i+1;
Rnames{i} = 'O3 + MACR = MGLYOX +  + 0.37CH2OO + 0.47CO + 0.16HO2 + 0.16CO + 0.16OH';
k(:,i) = 1.4e-15.*exp(-2100./T).*0.88;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MACR'; 
fO3(i)=fO3(i)-1; fMACR(i)=fMACR(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCH2OO(i)=fCH2OO(i)+0.37; fCO(i)=fCO(i)+0.47; fHO2(i)=fHO2(i)+0.16; fCO(i)=fCO(i)+0.16; fOH(i)=fOH(i)+0.16; 

i=i+1;
Rnames{i} = 'OH + MACR = MACO3';
k(:,i) = 8.0e-12.*exp(380./T).*0.45;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACR'; 
fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)-1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACR = MACRO2';
k(:,i) = 8.0e-12.*exp(380./T).*0.47;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACR'; 
fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)-1; fMACRO2(i)=fMACRO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACR = MACROHO2';
k(:,i) = 8.0e-12.*exp(380./T).*0.08;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACR'; 
fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)-1; fMACROHO2(i)=fMACROHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVK = C3H6 + CO';
k(:,i) = J23;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fC3H6(i)=fC3H6(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MVK = CH3CO3 + HCHO + CO + HO2';
k(:,i) = J24;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MVK =  + 0.20CH3CHO + 0.20CH3CO3 + 0.20HCHO + 0.20HO2 + 0.24MGLOO + 0.36OH + 0.36CO + 0.36CH3CO3 + HCHO';
k(:,i) = 8.5e-16.*exp(-1520./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MVK'; 
fO3(i)=fO3(i)-1; fMVK(i)=fMVK(i)-1; fCH3CHO(i)=fCH3CHO(i)+0.20; fCH3CO3(i)=fCH3CO3(i)+0.20; fHCHO(i)=fHCHO(i)+0.20; fHO2(i)=fHO2(i)+0.20; fMGLOO(i)=fMGLOO(i)+0.24; fOH(i)=fOH(i)+0.36; fCO(i)=fCO(i)+0.36; fCH3CO3(i)=fCH3CO3(i)+0.36; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MVK = MGLYOX +  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH';
k(:,i) = 8.5e-16.*exp(-1520./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MVK'; 
fO3(i)=fO3(i)-1; fMVK(i)=fMVK(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCH2OO(i)=fCH2OO(i)+0.24; fCO(i)=fCO(i)+0.40; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; 

i=i+1;
Rnames{i} = 'OH + MVK = HMVKAO2';
k(:,i) = 2.6e-12.*exp(610./T).*0.3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MVK'; 
fOH(i)=fOH(i)-1; fMVK(i)=fMVK(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MVK = HMVKBO2';
k(:,i) = 2.6e-12.*exp(610./T).*0.7;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MVK'; 
fOH(i)=fOH(i)-1; fMVK(i)=fMVK(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO = CO + HO2 + HO2';
k(:,i) = J11;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO = H2 + CO';
k(:,i) = J12;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HCHO = HNO3 + CO + HO2';
k(:,i) = 5.5e-16;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HCHO'; 
fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCHO = HO2 + CO';
k(:,i) = 5.4e-12.*exp(135./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCHO'; 
fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + HO2 = ISOP34OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'HO2'; 
fISOP34O2(i)=fISOP34O2(i)-1; fHO2(i)=fHO2(i)-1; fISOP34OOH(i)=fISOP34OOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + NO = ISOP34NO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'NO'; 
fISOP34O2(i)=fISOP34O2(i)-1; fNO(i)=fNO(i)-1; fISOP34NO3(i)=fISOP34NO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + NO =  + MACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'NO'; 
fISOP34O2(i)=fISOP34O2(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + NO3 =  + MACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'NO3'; 
fISOP34O2(i)=fISOP34O2(i)-1; fNO3(i)=fNO3(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 = HC4CHO';
k(:,i) = 2.65e-12.*0.1;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'RO2';
fISOP34O2(i)=fISOP34O2(i)-1; fHC4CHO(i)=fHC4CHO(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 =  + MACR + HCHO + HO2';
k(:,i) = 2.65e-12.*0.8;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'RO2';
fISOP34O2(i)=fISOP34O2(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 = ISOPDOH';
k(:,i) = 2.65e-12.*0.1;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'RO2';
fISOP34O2(i)=fISOP34O2(i)-1; fISOPDOH(i)=fISOPDOH(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + NO3 = NC526O2';
k(:,i) = 3.30e-13;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'NO3'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fNO3(i)=fNO3(i)-1; fNC526O2(i)=fNC526O2(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + O3 =  + 0.18CH2OO + 0.82HO2 + 0.82CO + 0.82OH + CO2C3CHO';
k(:,i) = 1.60e-17.*0.33;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'O3'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fO3(i)=fO3(i)-1; fCH2OO(i)=fCH2OO(i)+0.18; fHO2(i)=fHO2(i)+0.82; fCO(i)=fCO(i)+0.82; fOH(i)=fOH(i)+0.82; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + O3 =  + 0.82C4CO2O2 + 0.82OH + 0.18CO2C3OO + HCHO';
k(:,i) = 1.60e-17.*0.67;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'O3'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fO3(i)=fO3(i)-1; fC4CO2O2(i)=fC4CO2O2(i)+0.82; fOH(i)=fOH(i)+0.82; fCO2C3OO(i)=fCO2C3OO(i)+0.18; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + OH = C530O2';
k(:,i) = 7.30e-11.*0.712;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'OH'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fOH(i)=fOH(i)-1; fC530O2(i)=fC530O2(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + OH = M3BU3ECO3';
k(:,i) = 7.30e-11.*0.288;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'OH'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fOH(i)=fOH(i)-1; fM3BU3ECO3(i)=fM3BU3ECO3(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO = C45O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'ME3BU3ECHO'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fC45O2(i)=fC45O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + NO3 = NC51O2';
k(:,i) = 1.20e-14;
Gstr{i,1} = 'PE4E2CO'; Gstr{i,2} = 'NO3'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fNO3(i)=fNO3(i)-1; fNC51O2(i)=fNC51O2(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + O3 =  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH + CO2C3CHO';
k(:,i) = 1.00e-17.*0.43;
Gstr{i,1} = 'PE4E2CO'; Gstr{i,2} = 'O3'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fO3(i)=fO3(i)-1; fCH2OO(i)=fCH2OO(i)+0.24; fCO(i)=fCO(i)+0.40; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + O3 =  + 0.36C4CO2O2 + 0.36OH + 0.2CH3COCH2O2 + 0.2HO2 + 0.2CH3COCH3 + 0.24CO2C3OO + HCHO';
k(:,i) = 1.00e-17.*0.57;
Gstr{i,1} = 'PE4E2CO'; Gstr{i,2} = 'O3'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fO3(i)=fO3(i)-1; fC4CO2O2(i)=fC4CO2O2(i)+0.36; fOH(i)=fOH(i)+0.36; fCH3COCH2O2(i)=fCH3COCH2O2(i)+0.2; fHO2(i)=fHO2(i)+0.2; fCH3COCH3(i)=fCH3COCH3(i)+0.2; fCO2C3OO(i)=fCO2C3OO(i)+0.24; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + OH = C51O2';
k(:,i) = 2.71e-11;
Gstr{i,1} = 'PE4E2CO'; Gstr{i,2} = 'OH'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fOH(i)=fOH(i)-1; fC51O2(i)=fC51O2(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO = CH3CO3 + CH2CHCH2O2';
k(:,i) = J22;
Gstr{i,1} = 'PE4E2CO'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH2CHCH2O2(i)=fCH2CHCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NISOPOOH =  + NC4CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NISOPOOH'; 
fNISOPOOH(i)=fNISOPOOH(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NISOPOOH = NC4CHO + OH';
k(:,i) = 1.03e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NISOPOOH'; 
fOH(i)=fOH(i)-1; fNISOPOOH(i)=fNISOPOOH(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NISOPNO3 =  + NC4CHO + HO2 + NO2';
k(:,i) = J53.*2.0;
Gstr{i,1} = 'NISOPNO3'; 
fNISOPNO3(i)=fNISOPNO3(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NISOPNO3 = NC4CHO + NO2';
k(:,i) = 8.55e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NISOPNO3'; 
fOH(i)=fOH(i)-1; fNISOPNO3(i)=fNISOPNO3(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCNO3 =  + 0.30C527O2 + 0.52HC4ACHO + 0.52HO2 + 0.18M3F + 0.18HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'ISOPCNO3'; 
fISOPCNO3(i)=fISOPCNO3(i)-1; fC527O2(i)=fC527O2(i)+0.30; fHC4ACHO(i)=fHC4ACHO(i)+0.52; fHO2(i)=fHO2(i)+0.52; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPCNO3 =  + 0.11GAOO + 0.89OH + 0.89HO2 + 0.89GLYOX + NOA';
k(:,i) = 4.10e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPCNO3'; 
fO3(i)=fO3(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fGAOO(i)=fGAOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fGLYOX(i)=fGLYOX(i)+0.89; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPCNO3 = HOCH2CHO +  + 0.11NC3OO + 0.89OH + 0.89NO2 + 0.89MGLYOX';
k(:,i) = 4.10e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPCNO3'; 
fO3(i)=fO3(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNC3OO(i)=fNC3OO(i)+0.11; fOH(i)=fOH(i)+0.89; fNO2(i)=fNO2(i)+0.89; fMGLYOX(i)=fMGLYOX(i)+0.89; 

i=i+1;
Rnames{i} = 'OH + ISOPCNO3 = INCO2';
k(:,i) = 1.12e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCNO3'; 
fOH(i)=fOH(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fINCO2(i)=fINCO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CHO = ACETOL + CO + CO + HO2 + NO2';
k(:,i) = J56.*8;
Gstr{i,1} = 'NC4CHO'; 
fNC4CHO(i)=fNC4CHO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CHO = HMAC + CO + OH + NO2';
k(:,i) = J56.*8;
Gstr{i,1} = 'NC4CHO'; 
fNC4CHO(i)=fNC4CHO(i)-1; fHMAC(i)=fHMAC(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NC4CHO = NC4CO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NC4CHO'; 
fNO3(i)=fNO3(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fNC4CO3(i)=fNC4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + NC4CHO = NOA +  + 0.11GLYOO + 0.89OH + 0.89HO2 + 0.89CO + 0.89CO';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NC4CHO'; 
fO3(i)=fO3(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fNOA(i)=fNOA(i)+1; fGLYOO(i)=fGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fCO(i)=fCO(i)+0.89; fCO(i)=fCO(i)+0.89; 

i=i+1;
Rnames{i} = 'O3 + NC4CHO =  + 0.11NOAOO + 0.89OH + 0.89NO2 + 0.89MGLYOX + GLYOX';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NC4CHO'; 
fO3(i)=fO3(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fNOAOO(i)=fNOAOO(i)+0.11; fOH(i)=fOH(i)+0.89; fNO2(i)=fNO2(i)+0.89; fMGLYOX(i)=fMGLYOX(i)+0.89; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4CHO = C510O2';
k(:,i) = 4.16e-11.*0.52;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4CHO'; 
fOH(i)=fOH(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fC510O2(i)=fC510O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4CHO = NC4CO3';
k(:,i) = 4.16e-11.*0.48;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4CHO'; 
fOH(i)=fOH(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fNC4CO3(i)=fNC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + CO = HCHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'CO'; 
fCH2OO(i)=fCH2OO(i)-1; fCO(i)=fCO(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO = HCHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO'; 
fCH2OO(i)=fCH2OO(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO2 = HCHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO2'; 
fCH2OO(i)=fCH2OO(i)-1; fNO2(i)=fNO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + SO2 = HCHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'SO2'; 
fCH2OO(i)=fCH2OO(i)-1; fSO2(i)=fSO2(i)-1; fHCHO(i)=fHCHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO = HCHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CH2OO'; 
fCH2OO(i)=fCH2OO(i)-1; fHCHO(i)=fHCHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO = HCOOH';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CH2OO'; 
fCH2OO(i)=fCH2OO(i)-1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + HO2 =  + 0.35CH3CO3 + 0.35HCHO + 0.65HCHO + 0.65CH3O2 + 0.65CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'HO2'; 
fMACO3(i)=fMACO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+0.35; fHCHO(i)=fHCHO(i)+0.35; fHCHO(i)=fHCHO(i)+0.65; fCH3O2(i)=fCH3O2(i)+0.65; fCO(i)=fCO(i)+0.65; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + HO2 = MACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'HO2'; 
fMACO3(i)=fMACO3(i)-1; fHO2(i)=fHO2(i)-1; fMACO2H(i)=fMACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + HO2 = MACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'HO2'; 
fMACO3(i)=fMACO3(i)-1; fHO2(i)=fHO2(i)-1; fMACO3H(i)=fMACO3H(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO =  + 0.35CH3CO3 + 0.35HCHO + 0.65HCHO + 0.65CH3O2 + 0.65CO + NO2';
k(:,i) = 8.70e-12.*exp(290./T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO'; 
fMACO3(i)=fMACO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+0.35; fHCHO(i)=fHCHO(i)+0.35; fHCHO(i)=fHCHO(i)+0.65; fCH3O2(i)=fCH3O2(i)+0.65; fCO(i)=fCO(i)+0.65; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO2 = MPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO2'; 
fMACO3(i)=fMACO3(i)-1; fNO2(i)=fNO2(i)-1; fMPAN(i)=fMPAN(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO3 =  + 0.35CH3CO3 + 0.35HCHO + 0.65HCHO + 0.65CH3O2 + 0.65CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO3'; 
fMACO3(i)=fMACO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+0.35; fHCHO(i)=fHCHO(i)+0.35; fHCHO(i)=fHCHO(i)+0.65; fCH3O2(i)=fCH3O2(i)+0.65; fCO(i)=fCO(i)+0.65; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 =  + 0.35CH3CO3 + 0.35HCHO + 0.65HCHO + 0.65CH3O2 + 0.65CO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RO2';
fMACO3(i)=fMACO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+0.35; fHCHO(i)=fHCHO(i)+0.35; fHCHO(i)=fHCHO(i)+0.65; fCH3O2(i)=fCH3O2(i)+0.65; fCO(i)=fCO(i)+0.65; 

i=i+1;
Rnames{i} = 'MACO3 = MACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RO2';
fMACO3(i)=fMACO3(i)-1; fMACO2H(i)=fMACO2H(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOX = CH3CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'MGLYOX'; 
fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + MGLYOX = CH3CO3 + CO + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'MGLYOX'; 
fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MGLYOX = CH3CO3 + CO';
k(:,i) = 1.9e-12.*exp(575./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MGLYOX'; 
fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + HO2 = MACROOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'HO2'; 
fMACRO2(i)=fMACRO2(i)-1; fHO2(i)=fHO2(i)-1; fMACROOH(i)=fMACROOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + NO = MACRNO3';
k(:,i) = KRO2NO.*0.013;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO'; 
fMACRO2(i)=fMACRO2(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + NO =  + ACETOL + CO + HO2 + NO2';
k(:,i) = KRO2NO.*0.987;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO'; 
fMACRO2(i)=fMACRO2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + NO3 =  + ACETOL + CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO3'; 
fMACRO2(i)=fMACRO2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 = ACETOL + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'MACRO2'; 
fMACRO2(i)=fMACRO2(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 =  + ACETOL + CO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'RO2';
fMACRO2(i)=fMACRO2(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 = MACROH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'RO2';
fMACRO2(i)=fMACRO2(i)-1; fMACROH(i)=fMACROH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + HO2 = MACROHOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'HO2'; 
fMACROHO2(i)=fMACROHO2(i)-1; fHO2(i)=fHO2(i)-1; fMACROHOOH(i)=fMACROHOOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + NO = MACRNB';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'NO'; 
fMACROHO2(i)=fMACROHO2(i)-1; fNO(i)=fNO(i)-1; fMACRNB(i)=fMACRNB(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + NO =  + MGLYOX + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'NO'; 
fMACROHO2(i)=fMACROHO2(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + NO3 =  + MGLYOX + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'NO3'; 
fMACROHO2(i)=fMACROHO2(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 = C3MDIALOH';
k(:,i) = 1.4e-12.*0.2;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'RO2';
fMACROHO2(i)=fMACROHO2(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 = MACROH';
k(:,i) = 1.4e-12.*0.2;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'RO2';
fMACROHO2(i)=fMACROHO2(i)-1; fMACROH(i)=fMACROH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 =  + MGLYOX + HCHO + HO2';
k(:,i) = 1.4e-12.*0.6;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'RO2';
fMACROHO2(i)=fMACROHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C3H6 = PRONO3AO2';
k(:,i) = 4.6e-13.*exp(-1155./T).*0.35;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C3H6'; 
fNO3(i)=fNO3(i)-1; fC3H6(i)=fC3H6(i)-1; fPRONO3AO2(i)=fPRONO3AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C3H6 = PRONO3BO2';
k(:,i) = 4.6e-13.*exp(-1155./T).*0.65;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C3H6'; 
fNO3(i)=fNO3(i)-1; fC3H6(i)=fC3H6(i)-1; fPRONO3BO2(i)=fPRONO3BO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C3H6 =  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH + CH3CHO';
k(:,i) = 5.5e-15.*exp(-1880./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C3H6'; 
fO3(i)=fO3(i)-1; fC3H6(i)=fC3H6(i)-1; fCH2OO(i)=fCH2OO(i)+0.24; fCO(i)=fCO(i)+0.40; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C3H6 =  + 0.24CH3CHOO + 0.36CH3O2 + 0.36CO + 0.36OH + 0.20CH3O2 + 0.20HO2 + 0.20CH4 + HCHO';
k(:,i) = 5.5e-15.*exp(-1880./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C3H6'; 
fO3(i)=fO3(i)-1; fC3H6(i)=fC3H6(i)-1; fCH3CHOO(i)=fCH3CHOO(i)+0.24; fCH3O2(i)=fCH3O2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; fCH3O2(i)=fCH3O2(i)+0.20; fHO2(i)=fHO2(i)+0.20; fCH4(i)=fCH4(i)+0.20; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3H6 = HYPROPO2';
k(:,i) = KMT16.*0.87;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3H6'; 
fOH(i)=fOH(i)-1; fC3H6(i)=fC3H6(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3H6 = IPROPOLO2';
k(:,i) = KMT16.*0.13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3H6'; 
fOH(i)=fOH(i)-1; fC3H6(i)=fC3H6(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3H(i)=fCH3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO = NO2 + CH3O2';
k(:,i) = 7.5e-12.*exp(290./T);
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO2 = PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO3 = NO2 + CH3O2';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO3'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 = CH3CO2H';
k(:,i) = 2.*(K298CH3O2.*2.9e-12.*exp(500./T)).^0.5.*0.3;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 = CH3O2';
k(:,i) = 2.*(K298CH3O2.*2.9e-12.*exp(500./T)).^0.5.*0.7;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + HO2 = HMVKAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'HO2'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fHO2(i)=fHO2(i)-1; fHMVKAOOH(i)=fHMVKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO = HMVKANO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO =  + MGLYOX + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO3 =  + MGLYOX + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO3'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 = CO2H3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 =  + MGLYOX + HCHO + HO2';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 = HO12CO3C4';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; 

i=i+1;
Rnames{i} = ' HMVKBO2 + NO = MVKNO3';
k(:,i) = KRO2NO.*0.043;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'NO'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + HO2 = HMVKBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'HO2'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + NO =  + CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KRO2NO.*0.957;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'NO'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + NO3 =  + CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'NO3'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 = BIACETOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'RO2';
fHMVKBO2(i)=fHMVKBO2(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 =  + CH3CO3 + HOCH2CHO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'RO2';
fHMVKBO2(i)=fHMVKBO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 = HO12CO3C4';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'RO2';
fHMVKBO2(i)=fHMVKBO2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + CO = MACR';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'CO'; 
fMACROO(i)=fMACROO(i)-1; fCO(i)=fCO(i)-1; fMACR(i)=fMACR(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + NO = MACR + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'NO'; 
fMACROO(i)=fMACROO(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + NO2 = MACR + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'NO2'; 
fMACROO(i)=fMACROO(i)-1; fNO2(i)=fNO2(i)-1; fMACR(i)=fMACR(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + SO2 = MACR + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'SO2'; 
fMACROO(i)=fMACROO(i)-1; fSO2(i)=fSO2(i)-1; fMACR(i)=fMACR(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MACROO = MACO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'MACROO'; 
fMACROO(i)=fMACROO(i)-1; fMACO2H(i)=fMACO2H(i)+1; 

i=i+1;
Rnames{i} = 'MACROO = MACR + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MACROO'; 
fMACROO(i)=fMACROO(i)-1; fMACR(i)=fMACR(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = CH3OOH';
k(:,i) = 3.8e-13.*exp(780./T).*(1-1./(1+498.*exp(-1160./T)));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3OOH(i)=fCH3OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = HCHO';
k(:,i) = 3.8e-13.*exp(780./T).*(1./(1+498.*exp(-1160./T)));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = CH3NO3';
k(:,i) = 2.3e-12.*exp(360./T).*0.001;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fCH3NO3(i)=fCH3NO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO =  + HCHO + HO2 + NO2';
k(:,i) = 2.3e-12.*exp(360./T).*0.999;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO2 = CH3O2NO2';
k(:,i) = KMT13;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO2'; 
fCH3O2(i)=fCH3O2(i)-1; fNO2(i)=fNO2(i)-1; fCH3O2NO2(i)=fCH3O2NO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO3 =  + HCHO + HO2 + NO2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO3'; 
fCH3O2(i)=fCH3O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 =  + HCHO + HO2';
k(:,i) = 2.*KCH3O2.*7.18.*exp(-885./T);
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 = CH3OH';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fCH3OH(i)=fCH3OH(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 = HCHO';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + CO = MVK';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'CO'; 
fMVKOO(i)=fMVKOO(i)-1; fCO(i)=fCO(i)-1; fMVK(i)=fMVK(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + NO = MVK + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'NO'; 
fMVKOO(i)=fMVKOO(i)-1; fNO(i)=fNO(i)-1; fMVK(i)=fMVK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + NO2 = MVK + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'NO2'; 
fMVKOO(i)=fMVKOO(i)-1; fNO2(i)=fNO2(i)-1; fMVK(i)=fMVK(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + SO2 = MVK + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'SO2'; 
fMVKOO(i)=fMVKOO(i)-1; fSO2(i)=fSO2(i)-1; fMVK(i)=fMVK(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO = MVK + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MVKOO'; 
fMVKOO(i)=fMVKOO(i)-1; fMVK(i)=fMVK(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + HO2 = MVKOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'HO2'; 
fMVKO2(i)=fMVKO2(i)-1; fHO2(i)=fHO2(i)-1; fMVKOOH(i)=fMVKOOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + NO =  + HCHO + ACO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'NO'; 
fMVKO2(i)=fMVKO2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + NO3 =  + HCHO + ACO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'NO3'; 
fMVKO2(i)=fMVKO2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 =  + HCHO + ACO3';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'RO2';
fMVKO2(i)=fMVKO2(i)-1; fHCHO(i)=fHCHO(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 = MVKOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'RO2';
fMVKO2(i)=fMVKO2(i)-1; fMVKOH(i)=fMVKOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 = VGLYOX';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'RO2';
fMVKO2(i)=fMVKO2(i)-1; fVGLYOX(i)=fVGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + HO2 = ISOPAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'HO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPAOOH(i)=fISOPAOOH(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + NO =  + 0.19C526O2 + 0.63HC4CCHO + 0.63HO2 + 0.18M3F + 0.18HO2 + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO(i)=fNO(i)-1; fC526O2(i)=fC526O2(i)+0.19; fHC4CCHO(i)=fHC4CCHO(i)+0.63; fHO2(i)=fHO2(i)+0.63; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + NO = ISOPANO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO(i)=fNO(i)-1; fISOPANO3(i)=fISOPANO3(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + NO3 =  + 0.19C526O2 + 0.63HC4CCHO + 0.63HO2 + 0.18M3F + 0.18HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO3'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO3(i)=fNO3(i)-1; fC526O2(i)=fC526O2(i)+0.19; fHC4CCHO(i)=fHC4CCHO(i)+0.63; fHO2(i)=fHO2(i)+0.63; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = C536O2';
k(:,i) = 8.14D9.*exp(-8591./T).*exp(1.00D8./T.^3).*0.5;
Gstr{i,1} = 'CISOPAO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fC536O2(i)=fC536O2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = C5HPALD1 + HO2';
k(:,i) = 8.14D9.*exp(-8591./T).*exp(1.00D8./T.^3).*0.5;
Gstr{i,1} = 'CISOPAO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fC5HPALD1(i)=fC5HPALD1(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 =  + CISOPAO2 + ISOPBO2';
k(:,i) = 5.22D15.*exp(-9838./T);
Gstr{i,1} = 'CISOPAO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fCISOPAO2(i)=fCISOPAO2(i)+1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 =  + 0.19C526O2 + 0.63HC4CCHO + 0.63HO2 + 0.18M3F + 0.18HO2';
k(:,i) = 2.40e-12.*0.8;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'RO2';
fCISOPAO2(i)=fCISOPAO2(i)-1; fC526O2(i)=fC526O2(i)+0.19; fHC4CCHO(i)=fHC4CCHO(i)+0.63; fHO2(i)=fHO2(i)+0.63; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; 

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
Rnames{i} = 'ISOPBO2 + HO2 = ISOPBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'HO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPBOOH(i)=fISOPBOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO = ISOPBNO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO(i)=fNO(i)-1; fISOPBNO3(i)=fISOPBNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO =  + MVK + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO(i)=fNO(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO3 =  + MVK + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO3'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO3(i)=fNO3(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 =  + CISOPAO2 + ISOPBO2';
k(:,i) = 8.62D15.*exp(-11322./T);
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fCISOPAO2(i)=fCISOPAO2(i)+1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 =  + MVK + HCHO + HO2';
k(:,i) = 8.00e-13.*0.8;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'RO2';
fISOPBO2(i)=fISOPBO2(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 = ISOPBOH';
k(:,i) = 8.00e-13.*0.2;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'RO2';
fISOPBO2(i)=fISOPBO2(i)-1; fISOPBOH(i)=fISOPBOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 = MVK + HCHO + OH';
k(:,i) = 1.04D11.*exp(-9746./T);
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 =  + ISOPAO2 + ISOPBO2';
k(:,i) = 8.55D15.*exp(-10743./T);
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + HO2 = ISOPCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'HO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPCOOH(i)=fISOPCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO =  + 0.30C527O2 + 0.52HC4ACHO + 0.52HO2 + 0.18M3F + 0.18HO2 + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO(i)=fNO(i)-1; fC527O2(i)=fC527O2(i)+0.30; fHC4ACHO(i)=fHC4ACHO(i)+0.52; fHO2(i)=fHO2(i)+0.52; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO = ISOPCNO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO(i)=fNO(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO3 =  + 0.30C527O2 + 0.52HC4ACHO + 0.52HO2 + 0.18M3F + 0.18HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO3'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO3(i)=fNO3(i)-1; fC527O2(i)=fC527O2(i)+0.30; fHC4ACHO(i)=fHC4ACHO(i)+0.52; fHO2(i)=fHO2(i)+0.52; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = C537O2';
k(:,i) = 2.20D10.*exp(-8174./T).*exp(1.00D8./T.^3).*0.5;
Gstr{i,1} = 'CISOPCO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fC537O2(i)=fC537O2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = C5HPALD2 + HO2';
k(:,i) = 2.20D10.*exp(-8174./T).*exp(1.00D8./T.^3).*0.5;
Gstr{i,1} = 'CISOPCO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fC5HPALD2(i)=fC5HPALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 =  + CISOPCO2 + ISOPDO2';
k(:,i) = 3.06D15.*exp(-10254./T);
Gstr{i,1} = 'CISOPCO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fCISOPCO2(i)=fCISOPCO2(i)+1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 =  + 0.30C527O2 + 0.52HC4ACHO + 0.52HO2 + 0.18M3F + 0.18HO2';
k(:,i) = 2.40e-12.*0.8;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fC527O2(i)=fC527O2(i)+0.30; fHC4ACHO(i)=fHC4ACHO(i)+0.52; fHO2(i)=fHO2(i)+0.52; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; 

i=i+1;
Rnames{i} = 'CISOPCO2 = HC4CCHO';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = ISOPAOH';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + HO2 = ISOPDOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'HO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPDOOH(i)=fISOPDOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO = ISOPDNO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO(i)=fNO(i)-1; fISOPDNO3(i)=fISOPDNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO =  + MACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO3 =  + MACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO3'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO3(i)=fNO3(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 =  + CISOPCO2 + ISOPDO2';
k(:,i) = 1.05D16.*exp(-11705./T);
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fCISOPCO2(i)=fCISOPCO2(i)+1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 = HCOC5';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'RO2';
fISOPDO2(i)=fISOPDO2(i)-1; fHCOC5(i)=fHCOC5(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 =  + MACR + HCHO + HO2';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'RO2';
fISOPDO2(i)=fISOPDO2(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 = ISOPDOH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'RO2';
fISOPDO2(i)=fISOPDO2(i)-1; fISOPDOH(i)=fISOPDOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 = MACR + HCHO + OH';
k(:,i) = 1.88D11.*exp(-9752./T);
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 =  + ISOPCO2 + ISOPDO2';
k(:,i) = 1.05D16.*exp(-11569./T);
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34OOH + OH = HC4CHO + OH';
k(:,i) = 9.73e-11;
Gstr{i,1} = 'ISOP34OOH'; Gstr{i,2} = 'OH'; 
fISOP34OOH(i)=fISOP34OOH(i)-1; fOH(i)=fOH(i)-1; fHC4CHO(i)=fHC4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34OOH =  + MACR + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOP34OOH'; 
fISOP34OOH(i)=fISOP34OOH(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34NO3 + OH = INAO2';
k(:,i) = 8.77e-11;
Gstr{i,1} = 'ISOP34NO3'; Gstr{i,2} = 'OH'; 
fISOP34NO3(i)=fISOP34NO3(i)-1; fOH(i)=fOH(i)-1; fINAO2(i)=fINAO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOP34NO3 = HMVKANO3 +  + 0.18CH2OO + 0.82HO2 + 0.82CO + 0.82OH';
k(:,i) = 2.52e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP34NO3'; 
fO3(i)=fO3(i)-1; fISOP34NO3(i)=fISOP34NO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fCH2OO(i)=fCH2OO(i)+0.18; fHO2(i)=fHO2(i)+0.82; fCO(i)=fCO(i)+0.82; fOH(i)=fOH(i)+0.82; 

i=i+1;
Rnames{i} = 'O3 + ISOP34NO3 =  + 0.82CO23C4NO3 + 0.82HO2 + 0.82OH + 0.18NC41OO + HCHO';
k(:,i) = 2.52e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP34NO3'; 
fO3(i)=fO3(i)-1; fISOP34NO3(i)=fISOP34NO3(i)-1; fCO23C4NO3(i)=fCO23C4NO3(i)+0.82; fHO2(i)=fHO2(i)+0.82; fOH(i)=fOH(i)+0.82; fNC41OO(i)=fNC41OO(i)+0.18; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HC4CHO + OH = C58O2';
k(:,i) = 1.04e-10.*0.829;
Gstr{i,1} = 'HC4CHO'; Gstr{i,2} = 'OH'; 
fHC4CHO(i)=fHC4CHO(i)-1; fOH(i)=fOH(i)-1; fC58O2(i)=fC58O2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CHO + OH = HC4CO3';
k(:,i) = 1.04e-10.*0.171;
Gstr{i,1} = 'HC4CHO'; Gstr{i,2} = 'OH'; 
fHC4CHO(i)=fHC4CHO(i)-1; fOH(i)=fOH(i)-1; fHC4CO3(i)=fHC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HC4CHO = MACR + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HC4CHO'; 
fHC4CHO(i)=fHC4CHO(i)-1; fMACR(i)=fMACR(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOH = HCOC5 + HO2';
k(:,i) = 7.38e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOH'; 
fOH(i)=fOH(i)-1; fISOPDOH(i)=fISOPDOH(i)-1; fHCOC5(i)=fHCOC5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526O2 + HO2 = NC526OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NC526O2'; Gstr{i,2} = 'HO2'; 
fNC526O2(i)=fNC526O2(i)-1; fHO2(i)=fHO2(i)-1; fNC526OOH(i)=fNC526OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC526O2 + NO =  + 0.27CO2C3CHO + 0.27HCHO + 0.27NO2 + 0.73NOA + 0.73HCOCH2O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC526O2'; Gstr{i,2} = 'NO'; 
fNC526O2(i)=fNC526O2(i)-1; fNO(i)=fNO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+0.27; fHCHO(i)=fHCHO(i)+0.27; fNO2(i)=fNO2(i)+0.27; fNOA(i)=fNOA(i)+0.73; fHCOCH2O2(i)=fHCOCH2O2(i)+0.73; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526O2 + NO3 =  + 0.27CO2C3CHO + 0.27HCHO + 0.27NO2 + 0.73NOA + 0.73HCOCH2O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC526O2'; Gstr{i,2} = 'NO3'; 
fNC526O2(i)=fNC526O2(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+0.27; fHCHO(i)=fHCHO(i)+0.27; fNO2(i)=fNO2(i)+0.27; fNOA(i)=fNOA(i)+0.73; fHCOCH2O2(i)=fHCOCH2O2(i)+0.73; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526O2 =  + 0.27CO2C3CHO + 0.27HCHO + 0.27NO2 + 0.73NOA + 0.73HCOCH2O2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NC526O2'; Gstr{i,2} = 'RO2';
fNC526O2(i)=fNC526O2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+0.27; fHCHO(i)=fHCHO(i)+0.27; fNO2(i)=fNO2(i)+0.27; fNOA(i)=fNOA(i)+0.73; fHCOCH2O2(i)=fHCOCH2O2(i)+0.73; 

i=i+1;
Rnames{i} = 'CO2C3CHO + NO3 = CO2C3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'CO2C3CHO'; Gstr{i,2} = 'NO3'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + OH = CO2C3CO3';
k(:,i) = 7.15e-11;
Gstr{i,1} = 'CO2C3CHO'; Gstr{i,2} = 'OH'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO = CH3COCH2O2 + HCHO';
k(:,i) = J15;
Gstr{i,1} = 'CO2C3CHO'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + HO2 = C530OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'HO2'; 
fC530O2(i)=fC530O2(i)-1; fHO2(i)=fHO2(i)-1; fC530OOH(i)=fC530OOH(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + NO = C530NO3';
k(:,i) = KRO2NO.*0.020;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'NO'; 
fC530O2(i)=fC530O2(i)-1; fNO(i)=fNO(i)-1; fC530NO3(i)=fC530NO3(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + NO =  + CO2C3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.980;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'NO'; 
fC530O2(i)=fC530O2(i)-1; fNO(i)=fNO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + NO3 =  + CO2C3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'NO3'; 
fC530O2(i)=fC530O2(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 =  + CO2C3CHO + HCHO + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'RO2';
fC530O2(i)=fC530O2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + HO2 = C45O2 + OH + NO2';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'HO2'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fHO2(i)=fHO2(i)-1; fC45O2(i)=fC45O2(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + HO2 = M3BU3ECO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'HO2'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fHO2(i)=fHO2(i)-1; fM3BU3ECO3H(i)=fM3BU3ECO3H(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + NO = C45O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'NO'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fNO(i)=fNO(i)-1; fC45O2(i)=fC45O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + NO2 = M3BU3EPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'NO2'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fNO2(i)=fNO2(i)-1; fM3BU3EPAN(i)=fM3BU3EPAN(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + NO3 = C45O2 + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'NO3'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fNO3(i)=fNO3(i)-1; fC45O2(i)=fC45O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 = C45O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'RO2';
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fC45O2(i)=fC45O2(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + HO2 = C45OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'HO2'; 
fC45O2(i)=fC45O2(i)-1; fHO2(i)=fHO2(i)-1; fC45OOH(i)=fC45OOH(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + NO = C45NO3';
k(:,i) = KRO2NO.*0.024;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'NO'; 
fC45O2(i)=fC45O2(i)-1; fNO(i)=fNO(i)-1; fC45NO3(i)=fC45NO3(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + NO =  + MACR + HO2 + NO2';
k(:,i) = KRO2NO.*0.976;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'NO'; 
fC45O2(i)=fC45O2(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + NO3 =  + MACR + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'NO3'; 
fC45O2(i)=fC45O2(i)-1; fNO3(i)=fNO3(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 =  + MACR + HO2';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'RO2';
fC45O2(i)=fC45O2(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC51O2 + HO2 = NC51OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NC51O2'; Gstr{i,2} = 'HO2'; 
fNC51O2(i)=fNC51O2(i)-1; fHO2(i)=fHO2(i)-1; fNC51OOH(i)=fNC51OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC51O2 + NO =  + CO2C3CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC51O2'; Gstr{i,2} = 'NO'; 
fNC51O2(i)=fNC51O2(i)-1; fNO(i)=fNO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC51O2 + NO3 =  + CO2C3CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC51O2'; Gstr{i,2} = 'NO3'; 
fNC51O2(i)=fNC51O2(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC51O2 =  + CO2C3CHO + HCHO + NO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NC51O2'; Gstr{i,2} = 'RO2';
fNC51O2(i)=fNC51O2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + HO2 = C51OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'HO2'; 
fC51O2(i)=fC51O2(i)-1; fHO2(i)=fHO2(i)-1; fC51OOH(i)=fC51OOH(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO = C51NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO'; 
fC51O2(i)=fC51O2(i)-1; fNO(i)=fNO(i)-1; fC51NO3(i)=fC51NO3(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO =  + CO2C3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO'; 
fC51O2(i)=fC51O2(i)-1; fNO(i)=fNO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO3 =  + CO2C3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO3'; 
fC51O2(i)=fC51O2(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 =  + CO2C3CHO + HCHO + HO2';
k(:,i) = 8.40e-13.*0.6;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 = C51OH';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fC51OH(i)=fC51OH(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 = HO1CO24C5';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + HO2 = CH2CHCH2OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'HO2'; 
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH2CHCH2OOH(i)=fCH2CHCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + NO = CH2CHCH2NO3';
k(:,i) = KRO2NO.*0.024;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'NO'; 
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fNO(i)=fNO(i)-1; fCH2CHCH2NO3(i)=fCH2CHCH2NO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + NO =  + ACR + HO2 + NO2';
k(:,i) = KRO2NO.*0.976;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'NO'; 
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fNO(i)=fNO(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + NO3 =  + ACR + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'NO3'; 
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 = ACR';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'RO2';
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fACR(i)=fACR(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 = ALLYLOH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'RO2';
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fALLYLOH(i)=fALLYLOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 =  + ACR + HO2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'RO2';
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + HO2 = ISOPAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'HO2'; 
fISOPAO2(i)=fISOPAO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPAOOH(i)=fISOPAOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO = ISOPANO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO(i)=fNO(i)-1; fISOPANO3(i)=fISOPANO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO =  + C524O2 + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO(i)=fNO(i)-1; fC524O2(i)=fC524O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO3 =  + C524O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO3'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO3(i)=fNO3(i)-1; fC524O2(i)=fC524O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 = HC4ACHO';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 =  + C524O2';
k(:,i) = 2.40e-12.*0.8;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fC524O2(i)=fC524O2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 = ISOPAOH';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 =  + ISOPAO2 + ISOPBO2';
k(:,i) = 2.86D14.*exp(-9028./T);
Gstr{i,1} = 'ISOPAO2'; 
fISOPAO2(i)=fISOPAO2(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + HO2 = ISOPCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'HO2'; 
fISOPCO2(i)=fISOPCO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPCOOH(i)=fISOPCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO =  + 0.30C527O2 + 0.52HC4ACHO + 0.52HO2 + 0.18M3F + 0.18HO2 + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO(i)=fNO(i)-1; fC527O2(i)=fC527O2(i)+0.30; fHC4ACHO(i)=fHC4ACHO(i)+0.52; fHO2(i)=fHO2(i)+0.52; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO = ISOPCNO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO(i)=fNO(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO3 =  + 0.30C527O2 + 0.52HC4ACHO + 0.52HO2 + 0.18M3F + 0.18HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO3'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO3(i)=fNO3(i)-1; fC527O2(i)=fC527O2(i)+0.30; fHC4ACHO(i)=fHC4ACHO(i)+0.52; fHO2(i)=fHO2(i)+0.52; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 =  + 0.30C527O2 + 0.52HC4ACHO + 0.52HO2 + 0.18M3F + 0.18HO2';
k(:,i) = 2.00e-12.*0.8;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'RO2';
fISOPCO2(i)=fISOPCO2(i)-1; fC527O2(i)=fC527O2(i)+0.30; fHC4ACHO(i)=fHC4ACHO(i)+0.52; fHO2(i)=fHO2(i)+0.52; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; 

i=i+1;
Rnames{i} = 'ISOPCO2 = HC4CCHO';
k(:,i) = 2.00e-12.*0.1;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'RO2';
fISOPCO2(i)=fISOPCO2(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 = ISOPAOH';
k(:,i) = 2.00e-12.*0.1;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'RO2';
fISOPCO2(i)=fISOPCO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 =  + ISOPCO2 + ISOPDO2';
k(:,i) = 2.13D14.*exp(-9984./T);
Gstr{i,1} = 'ISOPCO2'; 
fISOPCO2(i)=fISOPCO2(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA + OH = MGLYOX + NO2';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'NOA'; Gstr{i,2} = 'OH'; 
fNOA(i)=fNOA(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA =  + CH3CO3 + HCHO + NO2';
k(:,i) = J56;
Gstr{i,1} = 'NOA'; 
fNOA(i)=fNOA(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + NO3 = HOCH2CO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'NO3'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = GLYOX + HO2';
k(:,i) = 1.00e-11.*0.200;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = HOCH2CO3';
k(:,i) = 1.00e-11.*0.800;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO = HO2 + HCHO + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HOCH2CHO'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + HO2 = INCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'HO2'; 
fINCO2(i)=fINCO2(i)-1; fHO2(i)=fHO2(i)-1; fINCOOH(i)=fINCOOH(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO = INCNO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'NO'; 
fINCO2(i)=fINCO2(i)-1; fNO(i)=fNO(i)-1; fINCNO3(i)=fINCNO3(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO =  + NOA + HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'NO'; 
fINCO2(i)=fINCO2(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO3 =  + NOA + HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'NO3'; 
fINCO2(i)=fINCO2(i)-1; fNO3(i)=fNO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 = INCCO';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'RO2';
fINCO2(i)=fINCO2(i)-1; fINCCO(i)=fINCCO(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 =  + NOA + HO2 + HOCH2CHO';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'RO2';
fINCO2(i)=fINCO2(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 = INCOH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'RO2';
fINCO2(i)=fINCO2(i)-1; fINCOH(i)=fINCOH(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + OH = MGLYOX + HO2';
k(:,i) = 1.6e-12.*exp(305./T);
Gstr{i,1} = 'ACETOL'; Gstr{i,2} = 'OH'; 
fACETOL(i)=fACETOL(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL = CH3CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'ACETOL'; 
fACETOL(i)=fACETOL(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMAC + OH = C3MDIALOH + HO2';
k(:,i) = 5.56e-11;
Gstr{i,1} = 'HMAC'; Gstr{i,2} = 'OH'; 
fHMAC(i)=fHMAC(i)-1; fOH(i)=fOH(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMAC = CO + HO2 + MGLYOX + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'HMAC'; 
fHMAC(i)=fHMAC(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + HO2 = NC4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'HO2'; 
fNC4CO3(i)=fNC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC4CO2H(i)=fNC4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + HO2 = NC4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'HO2'; 
fNC4CO3(i)=fNC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC4CO3H(i)=fNC4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + HO2 = NOA + CO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'HO2'; 
fNC4CO3(i)=fNC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + NO = NOA + CO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'NO'; 
fNC4CO3(i)=fNC4CO3(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + NO2 = C5PAN18';
k(:,i) = KFPAN;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'NO2'; 
fNC4CO3(i)=fNC4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN18(i)=fC5PAN18(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + NO3 = NOA + CO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'NO3'; 
fNC4CO3(i)=fNC4CO3(i)-1; fNO3(i)=fNO3(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 = NC4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'RO2';
fNC4CO3(i)=fNC4CO3(i)-1; fNC4CO2H(i)=fNC4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 = NOA + HO2 + CO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'RO2';
fNC4CO3(i)=fNC4CO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX = CO + CO + H2';
k(:,i) = J31;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX = CO + CO + HO2 + HO2';
k(:,i) = J33;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX = HCHO + CO';
k(:,i) = J32;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + GLYOX =  + CO + CO + HO2 + CO + CO + HO2 + CO + OH + HCOCO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'GLYOX'; 
fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHCOCO3(i)=fHCOCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYOX =  + CO + CO + HO2 + CO + CO + HO2 + CO + OH + HCOCO3';
k(:,i) = 3.1e-12.*exp(340./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYOX'; 
fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 + HO2 = C510OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'HO2'; 
fC510O2(i)=fC510O2(i)-1; fHO2(i)=fHO2(i)-1; fC510OOH(i)=fC510OOH(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 + NO =  + NOA + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'NO'; 
fC510O2(i)=fC510O2(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 + NO3 =  + NOA + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'NO3'; 
fC510O2(i)=fC510O2(i)-1; fNO3(i)=fNO3(i)-1; fNOA(i)=fNOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 =  + NOA + GLYOX + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'RO2';
fC510O2(i)=fC510O2(i)-1; fNOA(i)=fNOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 = C510OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'RO2';
fC510O2(i)=fC510O2(i)-1; fC510OH(i)=fC510OH(i)+1; 

i=i+1;
Rnames{i} = 'HCOOH + OH = HO2';
k(:,i) = 4.5e-13;
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH'; 
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACO2H =  + 0.35CH3CO3 + 0.35HCHO + 0.65HCHO + 0.65CH3O2 + 0.65CO';
k(:,i) = 1.51e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACO2H'; 
fOH(i)=fOH(i)-1; fMACO2H(i)=fMACO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+0.35; fHCHO(i)=fHCHO(i)+0.35; fHCHO(i)=fHCHO(i)+0.65; fCH3O2(i)=fCH3O2(i)+0.65; fCO(i)=fCO(i)+0.65; 

i=i+1;
Rnames{i} = 'MACO3H =  + 0.35CH3CO3 + 0.35HCHO + 0.65HCHO + 0.65CH3O2 + 0.65CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACO3H'; 
fMACO3H(i)=fMACO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+0.35; fHCHO(i)=fHCHO(i)+0.35; fHCHO(i)=fHCHO(i)+0.65; fCH3O2(i)=fCH3O2(i)+0.65; fCO(i)=fCO(i)+0.65; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACO3H = ACETOL + CO + OH';
k(:,i) = 1.30e-11.*0.83;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACO3H'; 
fOH(i)=fOH(i)-1; fMACO3H(i)=fMACO3H(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACO3H = HMML + OH';
k(:,i) = 1.30e-11.*0.17;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACO3H'; 
fOH(i)=fOH(i)-1; fMACO3H(i)=fMACO3H(i)-1; fHMML(i)=fHMML(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACO3H = MACO3';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACO3H'; 
fOH(i)=fOH(i)-1; fMACO3H(i)=fMACO3H(i)-1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MPAN = MACO3 + NO2';
k(:,i) = 1.6e16.*exp(-13500./T);
Gstr{i,1} = 'MPAN'; 
fMPAN(i)=fMPAN(i)-1; fMACO3(i)=fMACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MPAN = HCHO + CH3CO3 + NO3';
k(:,i) = 8.2e-18;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MPAN'; 
fO3(i)=fO3(i)-1; fMPAN(i)=fMPAN(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MPAN = ACETOL + CO + NO3';
k(:,i) = 2.9e-11.*0.22;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MPAN'; 
fOH(i)=fOH(i)-1; fMPAN(i)=fMPAN(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MPAN = HMML + NO3';
k(:,i) = 2.90e-11.*0.57;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MPAN'; 
fOH(i)=fOH(i)-1; fMPAN(i)=fMPAN(i)-1; fHMML(i)=fHMML(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MPAN = MAE + NO3';
k(:,i) = 2.90e-11.*0.21;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MPAN'; 
fOH(i)=fOH(i)-1; fMPAN(i)=fMPAN(i)-1; fMAE(i)=fMAE(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + CO = MGLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'CO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fCO(i)=fCO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + NO = MGLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + NO2 = MGLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO2'; 
fMGLYOO(i)=fMGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + SO2 = MGLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'SO2'; 
fMGLYOO(i)=fMGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO = MGLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MGLYOO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MACROOH = ACETOL + CO + HO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'MACROOH'; 
fMACROOH(i)=fMACROOH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROOH =  + ACETOL + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACROOH'; 
fMACROOH(i)=fMACROOH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACROOH = ACETOL + CO + OH';
k(:,i) = 3.77e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACROOH'; 
fOH(i)=fOH(i)-1; fMACROOH(i)=fMACROOH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO3 + OH = CONM2CHO + HO2';
k(:,i) = 4.34e-12.*0.16;
Gstr{i,1} = 'MACRNO3'; Gstr{i,2} = 'OH'; 
fMACRNO3(i)=fMACRNO3(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO3 + OH = MACRNCO3';
k(:,i) = 4.34e-12.*0.84;
Gstr{i,1} = 'MACRNO3'; Gstr{i,2} = 'OH'; 
fMACRNO3(i)=fMACRNO3(i)-1; fOH(i)=fOH(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO3 = ACETOL + NO2 + CO + HO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'MACRNO3'; 
fMACRNO3(i)=fMACRNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROH = ACETOL + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MACROH'; 
fMACROH(i)=fMACROH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACROH = C3MDIALOH + HO2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACROH'; 
fOH(i)=fOH(i)-1; fMACROH(i)=fMACROH(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHOOH + OH = C3MDIALOH + OH';
k(:,i) = 5.55e-11;
Gstr{i,1} = 'MACROHOOH'; Gstr{i,2} = 'OH'; 
fMACROHOOH(i)=fMACROHOOH(i)-1; fOH(i)=fOH(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHOOH = IBUTALOH + CO + HO2  + OH';
k(:,i) = J17;
Gstr{i,1} = 'MACROHOOH'; 
fMACROHOOH(i)=fMACROHOOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHOOH =  + MGLYOX + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACROHOOH'; 
fMACROHOOH(i)=fMACROHOOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNB = C3MDIALOH + HO2 + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'MACRNB'; 
fMACRNB(i)=fMACRNB(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACRNB = MACRNBCO3';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACRNB'; 
fOH(i)=fOH(i)-1; fMACRNB(i)=fMACRNB(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH + OH = CHOMOHCO3';
k(:,i) = 4.18e-11;
Gstr{i,1} = 'C3MDIALOH'; Gstr{i,2} = 'OH'; 
fC3MDIALOH(i)=fC3MDIALOH(i)-1; fOH(i)=fOH(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH = MGLYOX + HO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'C3MDIALOH'; 
fC3MDIALOH(i)=fC3MDIALOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + HO2 = PR1O2HNO3';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'HO2'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fHO2(i)=fHO2(i)-1; fPR1O2HNO3(i)=fPR1O2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + NO =  + CHOPRNO3 + HO2 + HCHO + CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'NO'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fNO(i)=fNO(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + NO3 =  + CHOPRNO3 + HO2 + HCHO + CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'NO3'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fNO3(i)=fNO3(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 = CHOPRNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 =  + CHOPRNO3 + HO2 + HCHO + CH3CHO + NO2';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 = PROPOLNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + HO2 = PR2O2HNO3';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'HO2'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fHO2(i)=fHO2(i)-1; fPR2O2HNO3(i)=fPR2O2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + NO =  + CH3CHO + HCHO + NO2 + NOA + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'NO'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + NO3 =  + CH3CHO + HCHO + NO2 + NOA + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'NO3'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 = NOA';
k(:,i) = 4.00e-14.*0.2;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 = PROLNO3';
k(:,i) = 4.00e-14.*0.2;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fPROLNO3(i)=fPROLNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 =  + CH3CHO + HCHO + NO2 + NOA + HO2';
k(:,i) = 4.00e-14.*0.6;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO = CH3O2 + HO2 + CO';
k(:,i) = J13;
Gstr{i,1} = 'CH3CHO'; 
fCH3CHO(i)=fCH3CHO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CH3CHO = HNO3 + CH3CO3';
k(:,i) = 1.4e-12.*exp(-1860./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CH3CHO'; 
fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fHNO3(i)=fHNO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3CHO = CH3CO3';
k(:,i) = 4.7e-12.*exp(345./T).*0.95;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3CHO'; 
fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3CHO = HCOCH2O2';
k(:,i) = 4.7e-12.*exp(345./T).*0.05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3CHO'; 
fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + HO2 = HYPROPO2H';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'HO2'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fHO2(i)=fHO2(i)-1; fHYPROPO2H(i)=fHYPROPO2H(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + NO3 =  + CH3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'NO3'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 = ACETOL';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 =  + CH3CHO + HCHO + HO2';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 = PROPGLY';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fPROPGLY(i)=fPROPGLY(i)+1; 

i=i+1;
Rnames{i} = 'NO + HYPROPO2 =  + CH3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.977;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'HYPROPO2'; 
fNO(i)=fNO(i)-1; fHYPROPO2(i)=fHYPROPO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + HYPROPO2 = PROPOLNO3';
k(:,i) = KRO2NO.*0.023;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'HYPROPO2'; 
fNO(i)=fNO(i)-1; fHYPROPO2(i)=fHYPROPO2(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + HO2 = IPROPOLO2H';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'HO2'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fHO2(i)=fHO2(i)-1; fIPROPOLO2H(i)=fIPROPOLO2H(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO =  + CH3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.991;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO = PROLNO3';
k(:,i) = KRO2NO.*0.009;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO(i)=fNO(i)-1; fPROLNO3(i)=fPROLNO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO3 =  + CH3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO3'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 = CH3CHOHCHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 =  + CH3CHO + HCHO + HO2';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 = PROPGLY';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fPROPGLY(i)=fPROPGLY(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO2H + OH = CH3O2';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'CH3CO2H'; Gstr{i,2} = 'OH'; 
fCH3CO2H(i)=fCH3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + OH = CH3CO3';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CH3CO3H'; Gstr{i,2} = 'OH'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H = CH3O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3CO3H'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PAN + OH = HCHO + CO + NO2';
k(:,i) = 3e-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'OH'; 
fPAN(i)=fPAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PAN = CH3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + CO = MGLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'CO'; 
fMGLOO(i)=fMGLOO(i)-1; fCO(i)=fCO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + NO = MGLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO'; 
fMGLOO(i)=fMGLOO(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + NO2 = MGLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO2'; 
fMGLOO(i)=fMGLOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + SO2 = MGLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'SO2'; 
fMGLOO(i)=fMGLOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO = CH3COCO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'MGLOO'; 
fMGLOO(i)=fMGLOO(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO = MGLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MGLOO'; 
fMGLOO(i)=fMGLOO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAOOH =  + MGLYOX + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMVKAOOH'; 
fHMVKAOOH(i)=fHMVKAOOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMVKAOOH = CO2H3CHO + OH';
k(:,i) = 5.77e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMVKAOOH'; 
fOH(i)=fOH(i)-1; fHMVKAOOH(i)=fHMVKAOOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKANO3 =  + MGLYOX + HCHO + HO2 + NO2';
k(:,i) = J56.*0.91;
Gstr{i,1} = 'HMVKANO3'; 
fHMVKANO3(i)=fHMVKANO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMVKANO3 = CO2H3CHO + NO2';
k(:,i) = 2.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMVKANO3'; 
fOH(i)=fOH(i)-1; fHMVKANO3(i)=fHMVKANO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CHO = MGLYOX + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CO2H3CHO'; 
fCO2H3CHO(i)=fCO2H3CHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO2H3CHO = CO2H3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO2H3CHO'; 
fNO3(i)=fNO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2H3CHO = CO2H3CO3';
k(:,i) = 2.45e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2H3CHO'; 
fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO12CO3C4 = CH3CO3 + HOCH2CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HO12CO3C4'; 
fHO12CO3C4(i)=fHO12CO3C4(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO12CO3C4 = BIACETOH + HO2';
k(:,i) = 1.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO12CO3C4'; 
fOH(i)=fOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 + OH = BIACETOH + NO2';
k(:,i) = 1.33e-12.*0.33;
Gstr{i,1} = 'MVKNO3'; Gstr{i,2} = 'OH'; 
fMVKNO3(i)=fMVKNO3(i)-1; fOH(i)=fOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 + OH = CO2N3CHO + HO2';
k(:,i) = 1.33e-12.*0.67;
Gstr{i,1} = 'MVKNO3'; Gstr{i,2} = 'OH'; 
fMVKNO3(i)=fMVKNO3(i)-1; fOH(i)=fOH(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'MVKNO3'; 
fMVKNO3(i)=fMVKNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBOOH =  + CH3CO3 + HOCH2CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMVKBOOH'; 
fHMVKBOOH(i)=fHMVKBOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMVKBOOH = BIACETOH + OH';
k(:,i) = 3.95e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMVKBOOH'; 
fOH(i)=fOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOH = CH3CO3 + HOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'BIACETOH'; 
fBIACETOH(i)=fBIACETOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOH = CO23C3CHO + HO2';
k(:,i) = 2.69e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOH'; 
fOH(i)=fOH(i)-1; fBIACETOH(i)=fBIACETOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH =  + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3OOH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3OOH = CH3O2';
k(:,i) = 5.3e-12.*exp(190./T).*0.6;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3OOH'; 
fOH(i)=fOH(i)-1; fCH3OOH(i)=fCH3OOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3OOH = HCHO + OH';
k(:,i) = 5.3e-12.*exp(190./T).*0.4;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3OOH'; 
fOH(i)=fOH(i)-1; fCH3OOH(i)=fCH3OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3NO3 =  + HCHO + HO2 + NO2';
k(:,i) = J51;
Gstr{i,1} = 'CH3NO3'; 
fCH3NO3(i)=fCH3NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3NO3 = HCHO + NO2';
k(:,i) = 4.0e-13.*exp(-845./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3NO3'; 
fOH(i)=fOH(i)-1; fCH3NO3(i)=fCH3NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2NO2 = CH3O2 + NO2';
k(:,i) = KMT14;
Gstr{i,1} = 'CH3O2NO2'; 
fCH3O2NO2(i)=fCH3O2NO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OH + OH = HO2 + HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'CH3OH'; Gstr{i,2} = 'OH'; 
fCH3OH(i)=fCH3OH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOH = HCHO + OH + ACO3';
k(:,i) = J24;
Gstr{i,1} = 'MVKOOH'; 
fMVKOOH(i)=fMVKOOH(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOH =  + HCHO + ACO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MVKOOH'; 
fMVKOOH(i)=fMVKOOH(i)-1; fHCHO(i)=fHCHO(i)+1; fACO3(i)=fACO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MVKOOH = MVKO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MVKOOH'; 
fOH(i)=fOH(i)-1; fMVKOOH(i)=fMVKOOH(i)-1; fMVKO2(i)=fMVKO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MVKOOH = VGLYOX + OH';
k(:,i) = 2.55e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MVKOOH'; 
fOH(i)=fOH(i)-1; fMVKOOH(i)=fMVKOOH(i)-1; fVGLYOX(i)=fVGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + O3 =  + 0.24HMGLOO + 0.20HOCH2CHO + 0.20HOCH2CO3 + 0.20HO2 + 0.36OH + 0.36CO + 0.36HOCH2CO3 + HCHO';
k(:,i) = 7.51e-16.*exp(-1521./T).*0.5;
Gstr{i,1} = 'MVKOH'; Gstr{i,2} = 'O3'; 
fMVKOH(i)=fMVKOH(i)-1; fO3(i)=fO3(i)-1; fHMGLOO(i)=fHMGLOO(i)+0.24; fHOCH2CHO(i)=fHOCH2CHO(i)+0.20; fHOCH2CO3(i)=fHOCH2CO3(i)+0.20; fHO2(i)=fHO2(i)+0.20; fOH(i)=fOH(i)+0.36; fCO(i)=fCO(i)+0.36; fHOCH2CO3(i)=fHOCH2CO3(i)+0.36; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + O3 = HOCH2COCHO +  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH';
k(:,i) = 7.51e-16.*exp(-1521./T).*0.5;
Gstr{i,1} = 'MVKOH'; Gstr{i,2} = 'O3'; 
fMVKOH(i)=fMVKOH(i)-1; fO3(i)=fO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fCH2OO(i)=fCH2OO(i)+0.24; fCO(i)=fCO(i)+0.40; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; 

i=i+1;
Rnames{i} = 'MVKOH + OH = MVKOHAO2';
k(:,i) = 4.60e-12.*exp(452./T).*0.3;
Gstr{i,1} = 'MVKOH'; Gstr{i,2} = 'OH'; 
fMVKOH(i)=fMVKOH(i)-1; fOH(i)=fOH(i)-1; fMVKOHAO2(i)=fMVKOHAO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + OH = MVKOHBO2';
k(:,i) = 4.60e-12.*exp(452./T).*0.7;
Gstr{i,1} = 'MVKOH'; Gstr{i,2} = 'OH'; 
fMVKOH(i)=fMVKOH(i)-1; fOH(i)=fOH(i)-1; fMVKOHBO2(i)=fMVKOHBO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH = ALLYLOH + CO';
k(:,i) = J23;
Gstr{i,1} = 'MVKOH'; 
fMVKOH(i)=fMVKOH(i)-1; fALLYLOH(i)=fALLYLOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH = HCHO + HO2 + HOCH2CO3 + CO';
k(:,i) = J24;
Gstr{i,1} = 'MVKOH'; 
fMVKOH(i)=fMVKOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + VGLYOX = CO + ACO3 + HNO3';
k(:,i) = KNO3AL.*2.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'VGLYOX'; 
fNO3(i)=fNO3(i)-1; fVGLYOX(i)=fVGLYOX(i)-1; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + VGLYOX = CO + ACO3';
k(:,i) = 2.95e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'VGLYOX'; 
fOH(i)=fOH(i)-1; fVGLYOX(i)=fVGLYOX(i)-1; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'VGLYOX = HO2 + CO + ACO3';
k(:,i) = J34;
Gstr{i,1} = 'VGLYOX'; 
fVGLYOX(i)=fVGLYOX(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAOOH =  + C524O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPAOOH'; 
fISOPAOOH(i)=fISOPAOOH(i)-1; fC524O2(i)=fC524O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOOH = HC4ACHO + OH';
k(:,i) = 1.54e-10.*0.05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOOH'; 
fOH(i)=fOH(i)-1; fISOPAOOH(i)=fISOPAOOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOOH = IEPOXA + OH';
k(:,i) = 1.54e-10.*0.93;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOOH'; 
fOH(i)=fOH(i)-1; fISOPAOOH(i)=fISOPAOOH(i)-1; fIEPOXA(i)=fIEPOXA(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOOH = ISOPAO2';
k(:,i) = 1.54e-10.*0.02;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOOH'; 
fOH(i)=fOH(i)-1; fISOPAOOH(i)=fISOPAOOH(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPANO3 =  + C524O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'ISOPANO3'; 
fISOPANO3(i)=fISOPANO3(i)-1; fC524O2(i)=fC524O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPANO3 = ACETOL +  + 0.11NC2OO + 0.89OH + 0.89NO2 + 0.89GLYOX';
k(:,i) = 4.10e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPANO3'; 
fO3(i)=fO3(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNC2OO(i)=fNC2OO(i)+0.11; fOH(i)=fOH(i)+0.89; fNO2(i)=fNO2(i)+0.89; fGLYOX(i)=fGLYOX(i)+0.89; 

i=i+1;
Rnames{i} = 'O3 + ISOPANO3 =  + 0.11ACLOO + 0.89OH + 0.89HO2 + 0.89MGLYOX + NO3CH2CHO';
k(:,i) = 4.10e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPANO3'; 
fO3(i)=fO3(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fACLOO(i)=fACLOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fMGLYOX(i)=fMGLYOX(i)+0.89; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPANO3 = INAO2';
k(:,i) = 1.12e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPANO3'; 
fOH(i)=fOH(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fINAO2(i)=fINAO2(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 + HO2 = C536OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C536O2'; Gstr{i,2} = 'HO2'; 
fC536O2(i)=fC536O2(i)-1; fHO2(i)=fHO2(i)-1; fC536OOH(i)=fC536OOH(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 + NO =  + MGLYOX + HCOCH2OOH + OH + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C536O2'; Gstr{i,2} = 'NO'; 
fC536O2(i)=fC536O2(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 + NO3 =  + MGLYOX + HCOCH2OOH + OH + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C536O2'; Gstr{i,2} = 'NO3'; 
fC536O2(i)=fC536O2(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 =  + MGLYOX + HCOCH2OOH + OH';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C536O2'; Gstr{i,2} = 'RO2';
fC536O2(i)=fC536O2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 = DHPMEK + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C536O2'; 
fC536O2(i)=fC536O2(i)-1; fDHPMEK(i)=fDHPMEK(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + NO3 = C5PACALD1 + OH + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'NO3'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fNO3(i)=fNO3(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; fOH(i)=fOH(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + O3 =  + 0.11MGLYOO + 0.89OH + 0.89CO + 0.89CH3CO3 + HCOCH2OOH';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'O3'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fO3(i)=fO3(i)-1; fMGLYOO(i)=fMGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fCO(i)=fCO(i)+0.89; fCH3CO3(i)=fCH3CO3(i)+0.89; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + O3 = MGLYOX +  + GLYOX + OH + OH';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'O3'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + OH = C4MALOHOOH + OH';
k(:,i) = 5.20e-11.*0.359;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'OH'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fOH(i)=fOH(i)-1; fC4MALOHOOH(i)=fC4MALOHOOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + OH = C4MDIAL + OH';
k(:,i) = 5.20e-11.*0.256;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'OH'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fOH(i)=fOH(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + OH = C5PACALD1 + OH';
k(:,i) = 5.20e-11.*0.385;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'OH'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fOH(i)=fOH(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 = CH3CO3 + HOCH2CHO + CO + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'C5HPALD1'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 = HVMK + CO + OH + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'C5HPALD1'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fHVMK(i)=fHVMK(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACHO = ACETOL + HO2 + HO2 + CO + CO';
k(:,i) = J18;
Gstr{i,1} = 'HC4ACHO'; 
fHC4ACHO(i)=fHC4ACHO(i)-1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACHO = HC4ACO3 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'HC4ACHO'; 
fHC4ACHO(i)=fHC4ACHO(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HC4ACHO = HC4ACO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HC4ACHO'; 
fNO3(i)=fNO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC4ACHO = ACETOL +  + 0.11GLYOO + 0.89OH + 0.89HO2 + 0.89CO + 0.89CO';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4ACHO'; 
fO3(i)=fO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOO(i)=fGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fCO(i)=fCO(i)+0.89; fCO(i)=fCO(i)+0.89; 

i=i+1;
Rnames{i} = 'O3 + HC4ACHO =  + 0.11ACLOO + 0.89OH + 0.89HO2 + 0.89MGLYOX + GLYOX';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4ACHO'; 
fO3(i)=fO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fACLOO(i)=fACLOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fMGLYOX(i)=fMGLYOX(i)+0.89; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = C4MDIAL + HO2';
k(:,i) = 6.42e-11.*0.051;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = C58AO2';
k(:,i) = 6.42e-11.*0.247;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fC58AO2(i)=fC58AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = C58O2';
k(:,i) = 6.42e-11.*0.452;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fC58O2(i)=fC58O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = HC4ACO3';
k(:,i) = 6.42e-11.*0.250;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOH = HC4ACHO + HO2';
k(:,i) = 9.30e-11.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOH'; 
fOH(i)=fOH(i)-1; fISOPAOH(i)=fISOPAOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOH = HC4CCHO + HO2';
k(:,i) = 9.30e-11.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOH'; 
fOH(i)=fOH(i)-1; fISOPAOH(i)=fISOPAOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBOOH =  + MVK + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPBOOH'; 
fISOPBOOH(i)=fISOPBOOH(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBOOH = IEPOXB + OH';
k(:,i) = 5.00e-11.*0.92;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBOOH'; 
fOH(i)=fOH(i)-1; fISOPBOOH(i)=fISOPBOOH(i)-1; fIEPOXB(i)=fIEPOXB(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBOOH = ISOPBO2';
k(:,i) = 5.00e-11.*0.08;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBOOH'; 
fOH(i)=fOH(i)-1; fISOPBOOH(i)=fISOPBOOH(i)-1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBNO3 =  + MVK + HCHO + HO2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'ISOPBNO3'; 
fISOPBNO3(i)=fISOPBNO3(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPBNO3 = HCHO +  + 0.36ACETOL + 0.36NO2 + 0.36CO + 0.36OH + 0.20ACETOL + 0.20NO2 + 0.20HO2 + 0.24MACRNOO + 0.20PROPOLNO3';
k(:,i) = 5.00e-19.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPBNO3'; 
fO3(i)=fO3(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fACETOL(i)=fACETOL(i)+0.36; fNO2(i)=fNO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; fACETOL(i)=fACETOL(i)+0.20; fNO2(i)=fNO2(i)+0.20; fHO2(i)=fHO2(i)+0.20; fMACRNOO(i)=fMACRNOO(i)+0.24; fPROPOLNO3(i)=fPROPOLNO3(i)+0.20; 

i=i+1;
Rnames{i} = 'O3 + ISOPBNO3 = MACRNO3 +  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH';
k(:,i) = 5.00e-19.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPBNO3'; 
fO3(i)=fO3(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fCH2OO(i)=fCH2OO(i)+0.24; fCO(i)=fCO(i)+0.40; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; 

i=i+1;
Rnames{i} = 'OH + ISOPBNO3 = INB1O2';
k(:,i) = 2.17e-11.*0.84;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBNO3'; 
fOH(i)=fOH(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fINB1O2(i)=fINB1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBNO3 = INB2O2';
k(:,i) = 2.17e-11.*0.16;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBNO3'; 
fOH(i)=fOH(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fINB2O2(i)=fINB2O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBOH =  + MVK + HCHO + HO2';
k(:,i) = 3.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBOH'; 
fOH(i)=fOH(i)-1; fISOPBOH(i)=fISOPBOH(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCOOH =  + 0.30C527O2 + 0.52HC4ACHO + 0.52HO2 + 0.18M3F + 0.18HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPCOOH'; 
fISOPCOOH(i)=fISOPCOOH(i)-1; fC527O2(i)=fC527O2(i)+0.30; fHC4ACHO(i)=fHC4ACHO(i)+0.52; fHO2(i)=fHO2(i)+0.52; fM3F(i)=fM3F(i)+0.18; fHO2(i)=fHO2(i)+0.18; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPCOOH = HC4CCHO + OH';
k(:,i) = 1.54e-10.*0.05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCOOH'; 
fOH(i)=fOH(i)-1; fISOPCOOH(i)=fISOPCOOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPCOOH = IEPOXC + OH';
k(:,i) = 1.54e-10.*0.93;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCOOH'; 
fOH(i)=fOH(i)-1; fISOPCOOH(i)=fISOPCOOH(i)-1; fIEPOXC(i)=fIEPOXC(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPCOOH = ISOPCO2';
k(:,i) = 1.54e-10.*0.02;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCOOH'; 
fOH(i)=fOH(i)-1; fISOPCOOH(i)=fISOPCOOH(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 + HO2 = C537OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C537O2'; Gstr{i,2} = 'HO2'; 
fC537O2(i)=fC537O2(i)-1; fHO2(i)=fHO2(i)-1; fC537OOH(i)=fC537OOH(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 + NO =  + GLYOX + HYPERACET + OH + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C537O2'; Gstr{i,2} = 'NO'; 
fC537O2(i)=fC537O2(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 + NO3 =  + GLYOX + HYPERACET + OH + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C537O2'; Gstr{i,2} = 'NO3'; 
fC537O2(i)=fC537O2(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 =  + GLYOX + HYPERACET + OH';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C537O2'; Gstr{i,2} = 'RO2';
fC537O2(i)=fC537O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 = DHPMPAL + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C537O2'; 
fC537O2(i)=fC537O2(i)-1; fDHPMPAL(i)=fDHPMPAL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + NO3 = C5PACALD2 + OH + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'NO3'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fNO3(i)=fNO3(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; fOH(i)=fOH(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + O3 = HYPERACET +  + 0.11GLYOO + 0.89OH + 0.89HO2 + 0.89CO + 0.89CO';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'O3'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fO3(i)=fO3(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; fGLYOO(i)=fGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fCO(i)=fCO(i)+0.89; fCO(i)=fCO(i)+0.89; 

i=i+1;
Rnames{i} = 'C5HPALD2 + O3 =  + MGLYOX + OH + OH + GLYOX';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'O3'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + OH = C4MDIAL + OH';
k(:,i) = 5.20e-11.*0.256;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'OH'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fOH(i)=fOH(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + OH = C5PACALD2 + OH';
k(:,i) = 5.20e-11.*0.385;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'OH'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fOH(i)=fOH(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + OH = HPC52O2';
k(:,i) = 5.20e-11.*0.359;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'OH'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fOH(i)=fOH(i)-1; fHPC52O2(i)=fHPC52O2(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 = ACETOL + CO + CO + HO2 + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'C5HPALD2'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 = HMAC + CO + OH + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'C5HPALD2'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fHMAC(i)=fHMAC(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCHO = CH3CO3 + HO2 + CO + HOCH2CHO';
k(:,i) = J18;
Gstr{i,1} = 'HC4CCHO'; 
fHC4CCHO(i)=fHC4CCHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCHO = HC4CCO3 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'HC4CCHO'; 
fHC4CCHO(i)=fHC4CCHO(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HC4CCHO = HC4CCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HC4CCHO'; 
fNO3(i)=fNO3(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC4CCHO =  + 0.11MGLYOO + 0.89OH + 0.89CO + 0.89CH3CO3 + HOCH2CHO';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4CCHO'; 
fO3(i)=fO3(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fMGLYOO(i)=fMGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fCO(i)=fCO(i)+0.89; fCH3CO3(i)=fCH3CO3(i)+0.89; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC4CCHO = MGLYOX +  + 0.11GAOO + 0.89OH + 0.89HO2 + 0.89GLYOX';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4CCHO'; 
fO3(i)=fO3(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGAOO(i)=fGAOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fGLYOX(i)=fGLYOX(i)+0.89; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = C4MDIAL + HO2';
k(:,i) = 6.42e-11.*0.051;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = C57AO2';
k(:,i) = 6.42e-11.*0.247;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fC57AO2(i)=fC57AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = C57O2';
k(:,i) = 6.42e-11.*0.452;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fC57O2(i)=fC57O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = HC4CCO3';
k(:,i) = 6.42e-11.*0.250;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDOOH =  + MACR + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPDOOH'; 
fISOPDOOH(i)=fISOPDOOH(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOOH = HCOC5 + OH';
k(:,i) = 1.15e-10.*0.22;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOOH'; 
fOH(i)=fOH(i)-1; fISOPDOOH(i)=fISOPDOOH(i)-1; fHCOC5(i)=fHCOC5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOOH = IEPOXB + OH';
k(:,i) = 1.15e-10.*0.75;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOOH'; 
fOH(i)=fOH(i)-1; fISOPDOOH(i)=fISOPDOOH(i)-1; fIEPOXB(i)=fIEPOXB(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOOH = ISOPDO2';
k(:,i) = 1.15e-10.*0.03;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOOH'; 
fOH(i)=fOH(i)-1; fISOPDOOH(i)=fISOPDOOH(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDNO3 =  + MACR + HCHO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'ISOPDNO3'; 
fISOPDNO3(i)=fISOPDNO3(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPDNO3 =  + 0.18CH2OO + 0.82HO2 + 0.82CO + 0.82OH + MVKNO3';
k(:,i) = 7.00e-19.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPDNO3'; 
fO3(i)=fO3(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fCH2OO(i)=fCH2OO(i)+0.18; fHO2(i)=fHO2(i)+0.82; fCO(i)=fCO(i)+0.82; fOH(i)=fOH(i)+0.82; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPDNO3 = HCHO +  + 0.18NC4OO + 0.82OH + 0.82NO2 + 0.82BIACETOH';
k(:,i) = 7.00e-19.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPDNO3'; 
fO3(i)=fO3(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNC4OO(i)=fNC4OO(i)+0.18; fOH(i)=fOH(i)+0.82; fNO2(i)=fNO2(i)+0.82; fBIACETOH(i)=fBIACETOH(i)+0.82; 

i=i+1;
Rnames{i} = 'OH + ISOPDNO3 = INDO2';
k(:,i) = 4.15e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDNO3'; 
fOH(i)=fOH(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fINDO2(i)=fINDO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOC5 = CH3CO3 + HCHO + HOCH2CO3';
k(:,i) = J24;
Gstr{i,1} = 'HCOC5'; 
fHCOC5(i)=fHCOC5(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOC5 = C59O2';
k(:,i) = 3.81e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOC5'; 
fOH(i)=fOH(i)-1; fHCOC5(i)=fHCOC5(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + HO2 = INAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'HO2'; 
fINAO2(i)=fINAO2(i)-1; fHO2(i)=fHO2(i)-1; fINAOOH(i)=fINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO = INANO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'NO'; 
fINAO2(i)=fINAO2(i)-1; fNO(i)=fNO(i)-1; fINANO3(i)=fINANO3(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO =  + ACETOL + NO3CH2CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'NO'; 
fINAO2(i)=fINAO2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO3 =  + ACETOL + NO3CH2CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'NO3'; 
fINAO2(i)=fINAO2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 =  + ACETOL + NO3CH2CHO + HO2';
k(:,i) = 8.00e-13.*0.8;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'RO2';
fINAO2(i)=fINAO2(i)-1; fACETOL(i)=fACETOL(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 = INAOH';
k(:,i) = 8.00e-13.*0.2;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'RO2';
fINAO2(i)=fINAO2(i)-1; fINAOH(i)=fINAOH(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + HO2 = C58OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'HO2'; 
fC58O2(i)=fC58O2(i)-1; fHO2(i)=fHO2(i)-1; fC58OOH(i)=fC58OOH(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + NO = C58NO3';
k(:,i) = KRO2NO.*0.019;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'NO'; 
fC58O2(i)=fC58O2(i)-1; fNO(i)=fNO(i)-1; fC58NO3(i)=fC58NO3(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + NO =  + ACETOL + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO.*0.981;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'NO'; 
fC58O2(i)=fC58O2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + NO3 =  + ACETOL + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'NO3'; 
fC58O2(i)=fC58O2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 =  + ACETOL + GLYOX + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'RO2';
fC58O2(i)=fC58O2(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 = C58OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'RO2';
fC58O2(i)=fC58O2(i)-1; fC58OH(i)=fC58OH(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + HO2 = HC4CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'HO2'; 
fHC4CO3(i)=fHC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4CO3H(i)=fHC4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + HO2 = MACR + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'HO2'; 
fHC4CO3(i)=fHC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + NO = MACR + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'NO'; 
fHC4CO3(i)=fHC4CO3(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + NO2 = HC4PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'NO2'; 
fHC4CO3(i)=fHC4CO3(i)-1; fNO2(i)=fNO2(i)-1; fHC4PAN(i)=fHC4PAN(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + NO3 = MACR + HO2 + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'NO3'; 
fHC4CO3(i)=fHC4CO3(i)-1; fNO3(i)=fNO3(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 = MACR + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'RO2';
fHC4CO3(i)=fHC4CO3(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526OOH + OH = NC526O2';
k(:,i) = 2.22e-11;
Gstr{i,1} = 'NC526OOH'; Gstr{i,2} = 'OH'; 
fNC526OOH(i)=fNC526OOH(i)-1; fOH(i)=fOH(i)-1; fNC526O2(i)=fNC526O2(i)+1; 

i=i+1;
Rnames{i} = 'NC526OOH =  + 0.27CO2C3CHO + 0.27HCHO + 0.27NO2 + 0.73NOA + 0.73HCOCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC526OOH'; 
fNC526OOH(i)=fNC526OOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+0.27; fHCHO(i)=fHCHO(i)+0.27; fNO2(i)=fNO2(i)+0.27; fNOA(i)=fNOA(i)+0.73; fHCOCH2O2(i)=fHCOCH2O2(i)+0.73; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC526OOH =  + 0.27CO2C3CHO + 0.27HCHO + 0.27NO2 + 0.73NOA + 0.73HCOCH2O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'NC526OOH'; 
fNC526OOH(i)=fNC526OOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+0.27; fHCHO(i)=fHCHO(i)+0.27; fNO2(i)=fNO2(i)+0.27; fNOA(i)=fNOA(i)+0.73; fHCOCH2O2(i)=fHCOCH2O2(i)+0.73; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + HO2 = CH3COCH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'HO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + HO2 = CO2C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'HO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C3CO3H(i)=fCO2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO = CH3COCH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO2 = CO2C3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fCO2C3PAN(i)=fCO2C3PAN(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO3 = CH3COCH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO3'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 = CH3COCH2O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'RO2';
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + HO2 =  + CH3CO3 + HCHO + OH';
k(:,i) = 1.36e-13.*exp(1250./T).*0.15;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + HO2 = HYPERACET';
k(:,i) = 1.36e-13.*exp(1250./T).*0.85;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + NO =  + CH3CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'NO'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + NO3 =  + CH3CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'NO3'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 = ACETOL';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.2;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 =  + CH3CO3 + HCHO';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.6;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 = MGLYOX';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.2;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O2 + HO2 = C4CO2OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C4CO2O2'; Gstr{i,2} = 'HO2'; 
fC4CO2O2(i)=fC4CO2O2(i)-1; fHO2(i)=fHO2(i)-1; fC4CO2OOH(i)=fC4CO2OOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O2 + NO =  + 0.5GLYOX + 0.5CH3CO3 + 0.5MGLYOX + 0.5HO2 + 0.5CO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C4CO2O2'; Gstr{i,2} = 'NO'; 
fC4CO2O2(i)=fC4CO2O2(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fMGLYOX(i)=fMGLYOX(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O2 + NO3 =  + 0.5GLYOX + 0.5CH3CO3 + 0.5MGLYOX + 0.5HO2 + 0.5CO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C4CO2O2'; Gstr{i,2} = 'NO3'; 
fC4CO2O2(i)=fC4CO2O2(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fMGLYOX(i)=fMGLYOX(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O2 =  + 0.5GLYOX + 0.5CH3CO3 + 0.5MGLYOX + 0.5HO2 + 0.5CO';
k(:,i) = 8.80e-12;
Gstr{i,1} = 'C4CO2O2'; Gstr{i,2} = 'RO2';
fC4CO2O2(i)=fC4CO2O2(i)-1; fGLYOX(i)=fGLYOX(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fMGLYOX(i)=fMGLYOX(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; 

i=i+1;
Rnames{i} = 'CO2C3OO + CO = CO2C3CHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CO2C3OO'; Gstr{i,2} = 'CO'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fCO(i)=fCO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO + NO = CO2C3CHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CO2C3OO'; Gstr{i,2} = 'NO'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fNO(i)=fNO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO + NO2 = CO2C3CHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CO2C3OO'; Gstr{i,2} = 'NO2'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fNO2(i)=fNO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO + SO2 = CO2C3CHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CO2C3OO'; Gstr{i,2} = 'SO2'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fSO2(i)=fSO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO = CO2C3CHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CO2C3OO'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO = CO2C3CO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CO2C3OO'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fCO2C3CO2H(i)=fCO2C3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C530OOH + OH = C530O2';
k(:,i) = 2.55e-11;
Gstr{i,1} = 'C530OOH'; Gstr{i,2} = 'OH'; 
fC530OOH(i)=fC530OOH(i)-1; fOH(i)=fOH(i)-1; fC530O2(i)=fC530O2(i)+1; 

i=i+1;
Rnames{i} = 'C530OOH =  + CO2C3CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C530OOH'; 
fC530OOH(i)=fC530OOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C530OOH =  + CO2C3CHO + HCHO + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C530OOH'; 
fC530OOH(i)=fC530OOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C530NO3 + OH = CO2C3CHO + HCHO + NO2';
k(:,i) = 1.81e-11;
Gstr{i,1} = 'C530NO3'; Gstr{i,2} = 'OH'; 
fC530NO3(i)=fC530NO3(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C530NO3 =  + CO2C3CHO + HCHO + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'C530NO3'; 
fC530NO3(i)=fC530NO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3H + OH =  M3BU3ECO3';
k(:,i) = 5.56e-11;
Gstr{i,1} = 'M3BU3ECO3H'; Gstr{i,2} = 'OH'; 
fM3BU3ECO3H(i)=fM3BU3ECO3H(i)-1; fOH(i)=fOH(i)-1; fM3BU3ECO3(i)=fM3BU3ECO3(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3H = C45O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'M3BU3ECO3H'; 
fM3BU3ECO3H(i)=fM3BU3ECO3H(i)-1; fC45O2(i)=fC45O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3EPAN + OH = MACR + CO + NO2';
k(:,i) = 5.20e-11;
Gstr{i,1} = 'M3BU3EPAN'; Gstr{i,2} = 'OH'; 
fM3BU3EPAN(i)=fM3BU3EPAN(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3EPAN = M3BU3ECO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'M3BU3EPAN'; 
fM3BU3EPAN(i)=fM3BU3EPAN(i)-1; fM3BU3ECO3(i)=fM3BU3ECO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45OOH + OH = MACR + OH';
k(:,i) = 6.30e-11;
Gstr{i,1} = 'C45OOH'; Gstr{i,2} = 'OH'; 
fC45OOH(i)=fC45OOH(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C45OOH =  + MACR + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C45OOH'; 
fC45OOH(i)=fC45OOH(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C45NO3 + OH = MACR + NO2';
k(:,i) = 2.47e-11;
Gstr{i,1} = 'C45NO3'; Gstr{i,2} = 'OH'; 
fC45NO3(i)=fC45NO3(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45NO3 =  + MACR + HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C45NO3'; 
fC45NO3(i)=fC45NO3(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC51OOH + OH = NC51O2';
k(:,i) = 8.98e-12;
Gstr{i,1} = 'NC51OOH'; Gstr{i,2} = 'OH'; 
fNC51OOH(i)=fNC51OOH(i)-1; fOH(i)=fOH(i)-1; fNC51O2(i)=fNC51O2(i)+1; 

i=i+1;
Rnames{i} = 'NC51OOH =  + CO2C3CHO + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC51OOH'; 
fNC51OOH(i)=fNC51OOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC51OOH =  + CO2C3CHO + HCHO + NO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'NC51OOH'; 
fNC51OOH(i)=fNC51OOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + OH = CH3COCH2O2';
k(:,i) = 8.8e-12.*exp(-1320./T) + 1.7e-14.*exp(423./T);
Gstr{i,1} = 'CH3COCH3'; Gstr{i,2} = 'OH'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 = CH3CO3 + CH3O2';
k(:,i) = J21;
Gstr{i,1} = 'CH3COCH3'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH =  + CO2C3CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C51OOH'; 
fC51OOH(i)=fC51OOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH =  + CO2C3CHO + HCHO + HO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C51OOH'; 
fC51OOH(i)=fC51OOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51OOH = HO1CO24C5 + OH';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51OOH'; 
fOH(i)=fOH(i)-1; fC51OOH(i)=fC51OOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51NO3 =  + CO2C3CHO + HCHO + HO2 + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C51NO3'; 
fC51NO3(i)=fC51NO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51NO3 = HO1CO24C5 + NO2';
k(:,i) = 1.55e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51NO3'; 
fOH(i)=fOH(i)-1; fC51NO3(i)=fC51NO3(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51OH = HO1CO24C5 + OH';
k(:,i) = 3.78e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51OH'; 
fOH(i)=fOH(i)-1; fC51OH(i)=fC51OH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO24C5 = CH3COCH2O2 + HOCH2CO3';
k(:,i) = J22.*2;
Gstr{i,1} = 'HO1CO24C5'; 
fHO1CO24C5(i)=fHO1CO24C5(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1CO24C5 = CO24C4CHO + HO2';
k(:,i) = 3.22e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1CO24C5'; 
fOH(i)=fOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2OOH + OH = ACR + OH';
k(:,i) = 5.35e-11;
Gstr{i,1} = 'CH2CHCH2OOH'; Gstr{i,2} = 'OH'; 
fCH2CHCH2OOH(i)=fCH2CHCH2OOH(i)-1; fOH(i)=fOH(i)-1; fACR(i)=fACR(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2OOH =  + ACR + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH2CHCH2OOH'; 
fCH2CHCH2OOH(i)=fCH2CHCH2OOH(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2NO3 + OH = ACR + NO2';
k(:,i) = 1.28e-11;
Gstr{i,1} = 'CH2CHCH2NO3'; Gstr{i,2} = 'OH'; 
fCH2CHCH2NO3(i)=fCH2CHCH2NO3(i)-1; fOH(i)=fOH(i)-1; fACR(i)=fACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2NO3 =  + ACR + HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'CH2CHCH2NO3'; 
fCH2CHCH2NO3(i)=fCH2CHCH2NO3(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACR + NO3 = ACO3 + HNO3';
k(:,i) = 1.72e-13.*exp(-1190./T);
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'NO3'; 
fACR(i)=fACR(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ACR + OH = ACO3';
k(:,i) = 0.68.*2.00E-11;
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'OH'; 
fACR(i)=fACR(i)-1; fOH(i)=fOH(i)-1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'ACR + OH = ACRO2';
k(:,i) = 0.255.*2.00E-11;
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'OH'; 
fACR(i)=fACR(i)-1; fOH(i)=fOH(i)-1; fACRO2(i)=fACRO2(i)+1; 

i=i+1;
Rnames{i} = 'ACR + OH = OCCOHCO2';
k(:,i) = 0.065.*2.00E-11;
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'OH'; 
fACR(i)=fACR(i)-1; fOH(i)=fOH(i)-1; fOCCOHCO2(i)=fOCCOHCO2(i)+1; 

i=i+1;
Rnames{i} = 'ACR = ACO3';
k(:,i) = 0.3.*J18;
Gstr{i,1} = 'ACR'; 
fACR(i)=fACR(i)-1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'ACR = C2H4 + CO';
k(:,i) = 0.4.*J18;
Gstr{i,1} = 'ACR'; 
fACR(i)=fACR(i)-1; fC2H4(i)=fC2H4(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ACR = HCHO + HO2 + CO';
k(:,i) = 0.3.*J18;
Gstr{i,1} = 'ACR'; 
fACR(i)=fACR(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ACR =  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH + GLYOX';
k(:,i) = 0.5.*2.9E-19;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ACR'; 
fO3(i)=fO3(i)-1; fACR(i)=fACR(i)-1; fCH2OO(i)=fCH2OO(i)+0.24; fCO(i)=fCO(i)+0.40; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ACR =  + 0.24GLYOO + 0.20HCHO + 0.20HO2 + 0.20HO2 + 0.20CO + 0.36OH + 0.36CO + 0.36CO + 0.36HO2 + HCHO';
k(:,i) = 0.5.*2.9E-19;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ACR'; 
fO3(i)=fO3(i)-1; fACR(i)=fACR(i)-1; fGLYOO(i)=fGLYOO(i)+0.24; fHCHO(i)=fHCHO(i)+0.20; fHO2(i)=fHO2(i)+0.20; fHO2(i)=fHO2(i)+0.20; fCO(i)=fCO(i)+0.20; fOH(i)=fOH(i)+0.36; fCO(i)=fCO(i)+0.36; fCO(i)=fCO(i)+0.36; fHO2(i)=fHO2(i)+0.36; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + ALLYLOH = ACR + HO2';
k(:,i) = 2.59e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ALLYLOH'; 
fOH(i)=fOH(i)-1; fALLYLOH(i)=fALLYLOH(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + HO2 = C527OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'HO2'; 
fC527O2(i)=fC527O2(i)-1; fHO2(i)=fHO2(i)-1; fC527OOH(i)=fC527OOH(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + NO = C527NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'NO'; 
fC527O2(i)=fC527O2(i)-1; fNO(i)=fNO(i)-1; fC527NO3(i)=fC527NO3(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + NO =  + GLYOX + ACETOL + OH + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'NO'; 
fC527O2(i)=fC527O2(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + NO3 =  + GLYOX + ACETOL + OH + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'NO3'; 
fC527O2(i)=fC527O2(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 =  + GLYOX + ACETOL + OH';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'RO2';
fC527O2(i)=fC527O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 = MACROOH + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C527O2'; 
fC527O2(i)=fC527O2(i)-1; fMACROOH(i)=fMACROOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'M3F + NO3 = C4MDIAL + NO2';
k(:,i) = 1.90e-11;
Gstr{i,1} = 'M3F'; Gstr{i,2} = 'NO3'; 
fM3F(i)=fM3F(i)-1; fNO3(i)=fNO3(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3F + O3 =  + 0.6C531O2 + 0.6OH + 0.4M3FOO';
k(:,i) = 2.00e-17;
Gstr{i,1} = 'M3F'; Gstr{i,2} = 'O3'; 
fM3F(i)=fM3F(i)-1; fO3(i)=fO3(i)-1; fC531O2(i)=fC531O2(i)+0.6; fOH(i)=fOH(i)+0.6; fM3FOO(i)=fM3FOO(i)+0.4; 

i=i+1;
Rnames{i} = 'M3F + OH = C4MDIAL + HO2';
k(:,i) = 9.00e-11;
Gstr{i,1} = 'M3F'; Gstr{i,2} = 'OH'; 
fM3F(i)=fM3F(i)-1; fOH(i)=fOH(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + CO = HOCH2CHO';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'CO'; 
fGAOO(i)=fGAOO(i)-1; fCO(i)=fCO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + NO = HOCH2CHO + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'NO'; 
fGAOO(i)=fGAOO(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + NO2 = HOCH2CHO + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'NO2'; 
fGAOO(i)=fGAOO(i)-1; fNO2(i)=fNO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + SO2 = HOCH2CHO + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'SO2'; 
fGAOO(i)=fGAOO(i)-1; fSO2(i)=fSO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'GAOO = HOCH2CHO + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'GAOO'; 
fGAOO(i)=fGAOO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'GAOO = HOCH2CO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'GAOO'; 
fGAOO(i)=fGAOO(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HO2 + HCHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HOCH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HOCH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CO3H(i)=fHOCH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO = NO2 + HO2 + HCHO';
k(:,i) = KAPNO;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO2 = PHAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fPHAN(i)=fPHAN(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO3 = NO2 + HO2 + HCHO';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO3'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 = HCHO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 = HOCH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO + CO = NOA';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'CO'; 
fNC3OO(i)=fNC3OO(i)-1; fCO(i)=fCO(i)-1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO + NO = NOA + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'NO'; 
fNC3OO(i)=fNC3OO(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO + NO2 = NOA + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'NO2'; 
fNC3OO(i)=fNC3OO(i)-1; fNO2(i)=fNO2(i)-1; fNOA(i)=fNOA(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO + SO2 = NOA + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'SO2'; 
fNC3OO(i)=fNC3OO(i)-1; fSO2(i)=fSO2(i)-1; fNOA(i)=fNOA(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO = NOA + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NC3OO'; 
fNC3OO(i)=fNC3OO(i)-1; fNOA(i)=fNOA(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'INCOOH =  + NOA + HO2 + HOCH2CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'INCOOH'; 
fINCOOH(i)=fINCOOH(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCOOH = INCCO + OH';
k(:,i) = 3.31e-11.*0.89;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCOOH'; 
fOH(i)=fOH(i)-1; fINCOOH(i)=fINCOOH(i)-1; fINCCO(i)=fINCCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCOOH = INCO2';
k(:,i) = 3.31e-11.*0.11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCOOH'; 
fOH(i)=fOH(i)-1; fINCOOH(i)=fINCOOH(i)-1; fINCO2(i)=fINCO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNO3 = INCCO + NO2';
k(:,i) = 1.98e-12.*0.445;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNO3'; 
fOH(i)=fOH(i)-1; fINCNO3(i)=fINCNO3(i)-1; fINCCO(i)=fINCCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNO3 = INCNCHO + HO2';
k(:,i) = 1.98e-12.*0.414;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNO3'; 
fOH(i)=fOH(i)-1; fINCNO3(i)=fINCNO3(i)-1; fINCNCHO(i)=fINCNCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNO3 = NOA + HOCH2CHO + NO2';
k(:,i) = 1.98e-12.*0.141;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNO3'; 
fOH(i)=fOH(i)-1; fINCNO3(i)=fINCNO3(i)-1; fNOA(i)=fNOA(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCCO =  + ACETOL + HOCH2CO3 + NO2';
k(:,i) = J56.*0.91;
Gstr{i,1} = 'INCCO'; 
fINCCO(i)=fINCCO(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCCO = INCGLYOX + HO2';
k(:,i) = 3.30e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCCO'; 
fOH(i)=fOH(i)-1; fINCCO(i)=fINCCO(i)-1; fINCGLYOX(i)=fINCGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCOH = INCCO + HO2';
k(:,i) = 1.53e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCOH'; 
fOH(i)=fOH(i)-1; fINCOH(i)=fINCOH(i)-1; fINCCO(i)=fINCCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4CO2H = NOA + CO + HO2';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4CO2H'; 
fOH(i)=fOH(i)-1; fNC4CO2H(i)=fNC4CO2H(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3H = NOA + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC4CO3H'; 
fNC4CO3H(i)=fNC4CO3H(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4CO3H = NC4CO3';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4CO3H'; 
fOH(i)=fOH(i)-1; fNC4CO3H(i)=fNC4CO3H(i)-1; fNC4CO3(i)=fNC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN18 = NC4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN18'; 
fC5PAN18(i)=fC5PAN18(i)-1; fNC4CO3(i)=fNC4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN18 = NOA + CO + CO + NO2';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN18'; 
fOH(i)=fOH(i)-1; fC5PAN18(i)=fC5PAN18(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + CO = GLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'CO'; 
fGLYOO(i)=fGLYOO(i)-1; fCO(i)=fCO(i)-1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + NO = GLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'NO'; 
fGLYOO(i)=fGLYOO(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + NO2 = GLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'NO2'; 
fGLYOO(i)=fGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + SO2 = GLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'SO2'; 
fGLYOO(i)=fGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO = GLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'GLYOO'; 
fGLYOO(i)=fGLYOO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO = HCOCO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'GLYOO'; 
fGLYOO(i)=fGLYOO(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO + CO = NOA';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NOAOO'; Gstr{i,2} = 'CO'; 
fNOAOO(i)=fNOAOO(i)-1; fCO(i)=fCO(i)-1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO + NO = NOA + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NOAOO'; Gstr{i,2} = 'NO'; 
fNOAOO(i)=fNOAOO(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO + NO2 = NOA + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NOAOO'; Gstr{i,2} = 'NO2'; 
fNOAOO(i)=fNOAOO(i)-1; fNO2(i)=fNO2(i)-1; fNOA(i)=fNOA(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO + SO2 = NOA + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NOAOO'; Gstr{i,2} = 'SO2'; 
fNOAOO(i)=fNOAOO(i)-1; fSO2(i)=fSO2(i)-1; fNOA(i)=fNOA(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO = NOA + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NOAOO'; 
fNOAOO(i)=fNOAOO(i)-1; fNOA(i)=fNOA(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C510OOH =  + NOA + GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C510OOH'; 
fC510OOH(i)=fC510OOH(i)-1; fNOA(i)=fNOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C510OOH = C510O2';
k(:,i) = 2.81e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C510OOH'; 
fOH(i)=fOH(i)-1; fC510OOH(i)=fC510OOH(i)-1; fC510O2(i)=fC510O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C510OH =  + NOA + GLYOX + HO2';
k(:,i) = 2.69e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C510OH'; 
fOH(i)=fOH(i)-1; fC510OH(i)=fC510OH(i)-1; fNOA(i)=fNOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMML = CH3CO3 + HCOOH';
k(:,i) = 4.33e-12.*0.3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMML'; 
fOH(i)=fOH(i)-1; fHMML(i)=fHMML(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMML = MGLYOX + OH';
k(:,i) = 4.33e-12.*0.7;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMML'; 
fOH(i)=fOH(i)-1; fHMML(i)=fHMML(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MAE = CH3COCH2O2';
k(:,i) = 8.83e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MAE'; 
fOH(i)=fOH(i)-1; fMAE(i)=fMAE(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO + OH = CONM2CO3';
k(:,i) = 6.78e-12;
Gstr{i,1} = 'CONM2CHO'; Gstr{i,2} = 'OH'; 
fCONM2CHO(i)=fCONM2CHO(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO = MGLYOX + NO2 + CO + HO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CONM2CHO'; 
fCONM2CHO(i)=fCONM2CHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + HO2 = ACETOL + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'HO2'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fHO2(i)=fHO2(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + HO2 = MACRNCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'HO2'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNCO2H(i)=fMACRNCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + HO2 = MACRNCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'HO2'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNCO3H(i)=fMACRNCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + NO = ACETOL + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'NO'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + NO2 = MACRNPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'NO2'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fNO2(i)=fNO2(i)-1; fMACRNPAN(i)=fMACRNPAN(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + NO3 = ACETOL + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'NO3'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 = ACETOL + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'RO2';
fMACRNCO3(i)=fMACRNCO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 = MACRNCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'RO2';
fMACRNCO3(i)=fMACRNCO3(i)-1; fMACRNCO2H(i)=fMACRNCO2H(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALOH + OH = IPRHOCO3';
k(:,i) = 1.4e-11;
Gstr{i,1} = 'IBUTALOH'; Gstr{i,2} = 'OH'; 
fIBUTALOH(i)=fIBUTALOH(i)-1; fOH(i)=fOH(i)-1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALOH = CH3COCH3 + HO2 + HO2 + CO';
k(:,i) = J17;
Gstr{i,1} = 'IBUTALOH'; 
fIBUTALOH(i)=fIBUTALOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + HO2 = MACRNBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'HO2'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNBCO2H(i)=fMACRNBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + HO2 = MACRNBCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'HO2'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNBCO3H(i)=fMACRNBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + HO2 = NOA + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'HO2'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + NO = NOA + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'NO'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + NO2 = MACRNBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'NO2'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fNO2(i)=fNO2(i)-1; fMACRNBPAN(i)=fMACRNBPAN(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + NO3 = NOA + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'NO3'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fNO3(i)=fNO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 = MACRNBCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'RO2';
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fMACRNBCO2H(i)=fMACRNBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 = NOA + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'RO2';
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + HO2 = CHOMOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'HO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOMOHCO3H(i)=fCHOMOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + HO2 = MGLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'HO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO = MGLYOX + NO2 + HO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO2 = CHOMOHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fCHOMOHPAN(i)=fCHOMOHPAN(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO3 = MGLYOX + NO2 + HO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO3'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 = MGLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'RO2';
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 + OH = CHOPRNO3 + OH';
k(:,i) = 1.69e-12;
Gstr{i,1} = 'PR1O2HNO3'; Gstr{i,2} = 'OH'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fOH(i)=fOH(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 + OH = PRONO3AO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'PR1O2HNO3'; Gstr{i,2} = 'OH'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fOH(i)=fOH(i)-1; fPRONO3AO2(i)=fPRONO3AO2(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 =  + CHOPRNO3 + HO2 + HCHO + CH3CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PR1O2HNO3'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + NO3 = PRNO3CO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'CHOPRNO3'; Gstr{i,2} = 'NO3'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fNO3(i)=fNO3(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + OH = PRNO3CO3';
k(:,i) = 3.55e-12;
Gstr{i,1} = 'CHOPRNO3'; Gstr{i,2} = 'OH'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fOH(i)=fOH(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 =  + CH3CHO + HO2 + CO + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CHOPRNO3'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPOLNO3 + OH = ACETOL + NO2';
k(:,i) = 9.16e-13;
Gstr{i,1} = 'PROPOLNO3'; Gstr{i,2} = 'OH'; 
fPROPOLNO3(i)=fPROPOLNO3(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 + OH = NOA + OH';
k(:,i) = 3.47e-12;
Gstr{i,1} = 'PR2O2HNO3'; Gstr{i,2} = 'OH'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fOH(i)=fOH(i)-1; fNOA(i)=fNOA(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 + OH = PRONO3BO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'PR2O2HNO3'; Gstr{i,2} = 'OH'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fOH(i)=fOH(i)-1; fPRONO3BO2(i)=fPRONO3BO2(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 =  + CH3CHO + HCHO + NO2 + NOA + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PR2O2HNO3'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PROLNO3 + OH = CH3CHOHCHO + NO2';
k(:,i) = 1.71e-12;
Gstr{i,1} = 'PROLNO3'; Gstr{i,2} = 'OH'; 
fPROLNO3(i)=fPROLNO3(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + HO2 = HCOCH2OOH';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'HO2'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + NO = NO2 +  + HCHO + CO + HO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'NO'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + NO3 =  + HCHO + CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'NO3'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 = GLYOX';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 =  + HCHO + CO + HO2';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 = HOCH2CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + CO = CH3CHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'CO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCO(i)=fCO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + NO = CH3CHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + NO2 = CH3CHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO2'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO2(i)=fNO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + SO2 = CH3CHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'SO2'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fSO2(i)=fSO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO = CH3CHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CH3CHOO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO = CH3CO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CH3CHOO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CL + CH4 = CH3O2';
k(:,i) = 6.6e-12.*exp(-1240./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH4'; 
fCL(i)=fCL(i)-1; fCH4(i)=fCH4(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH4 = CH3O2';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4'; 
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + OH = ACETOL + OH';
k(:,i) = 2.44e-11;
Gstr{i,1} = 'HYPROPO2H'; Gstr{i,2} = 'OH'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + OH = HYPROPO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYPROPO2H'; Gstr{i,2} = 'OH'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fOH(i)=fOH(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H =  + CH3CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYPROPO2H'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PROPGLY + OH = ACETOL + HO2';
k(:,i) = 1.20e-11.*0.613;
Gstr{i,1} = 'PROPGLY'; Gstr{i,2} = 'OH'; 
fPROPGLY(i)=fPROPGLY(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPGLY + OH = CH3CHOHCHO + HO2';
k(:,i) = 1.20e-11.*0.387;
Gstr{i,1} = 'PROPGLY'; Gstr{i,2} = 'OH'; 
fPROPGLY(i)=fPROPGLY(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + OH = CH3CHOHCHO + OH';
k(:,i) = 1.83e-11;
Gstr{i,1} = 'IPROPOLO2H'; Gstr{i,2} = 'OH'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + OH = IPROPOLO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'IPROPOLO2H'; Gstr{i,2} = 'OH'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fOH(i)=fOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H =  + CH3CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPROPOLO2H'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + NO3 = CH3CHOHCO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'CH3CHOHCHO'; Gstr{i,2} = 'NO3'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + OH = CH3CHOHCO3';
k(:,i) = 1.7e-11;
Gstr{i,1} = 'CH3CHOHCHO'; Gstr{i,2} = 'OH'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO = CH3CHO + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'CH3CHOHCHO'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO2H = CH3CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CH3COCO2H'; 
fCH3COCO2H(i)=fCH3COCO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3COCO2H = CH3CO3';
k(:,i) = 8.0e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3COCO2H'; 
fOH(i)=fOH(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + HO2 = CO2H3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'HO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + HO2 = MGLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'HO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO = MGLYOX + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO2 = C4PAN6';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN6(i)=fC4PAN6(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO3 = MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO3'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 = MGLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'RO2';
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CHO + OH = CO2N3CO3';
k(:,i) = 7.20e-12;
Gstr{i,1} = 'CO2N3CHO'; Gstr{i,2} = 'OH'; 
fCO2N3CHO(i)=fCO2N3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CHO = GLYOX + CH3CO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CO2N3CHO'; 
fCO2N3CHO(i)=fCO2N3CHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C3CHO = CH3CO3 + CO + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C3CHO = CH3CO3 +  + CO + CO + HO2 + CO + CO + HO2 + CO + OH + HCOCO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO23C3CHO = CH3CO3 + CO + CO + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO23C3CHO'; 
fNO3(i)=fNO3(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO23C3CHO = CH3CO3 + CO + CO';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO23C3CHO'; 
fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + HO2 = ACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fACO2H(i)=fACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + HO2 = ACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fACO3H(i)=fACO3H(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + HO2 = HO2 + CO + HCHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + NO = HO2 + CO + HCHO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO'; 
fACO3(i)=fACO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + NO2 = ACRPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO2'; 
fACO3(i)=fACO3(i)-1; fNO2(i)=fNO2(i)-1; fACRPAN(i)=fACRPAN(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + NO3 = HO2 + CO + HCHO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO3'; 
fACO3(i)=fACO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 = ACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'RO2';
fACO3(i)=fACO3(i)-1; fACO2H(i)=fACO2H(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 = HO2 + CO + HCHO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'RO2';
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2COCHO = HOCH2CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'HOCH2COCHO'; 
fHOCH2COCHO(i)=fHOCH2COCHO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HOCH2COCHO = HOCH2CO3 + CO + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HOCH2COCHO'; 
fNO3(i)=fNO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOCH2COCHO = HOCH2CO3 + CO';
k(:,i) = 1.44e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOCH2COCHO'; 
fOH(i)=fOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + HO2 = MVKOHAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'HO2'; 
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fHO2(i)=fHO2(i)-1; fMVKOHAOOH(i)=fMVKOHAOOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + NO = MVKOHANO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'NO'; 
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fNO(i)=fNO(i)-1; fMVKOHANO3(i)=fMVKOHANO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + NO =  + HOCH2COCHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'NO'; 
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fNO(i)=fNO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + NO3 =  + HOCH2COCHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'NO3'; 
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 = H13CO2CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'RO2';
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 =  + HOCH2COCHO + HCHO + HO2';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'RO2';
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 = MVKOHAOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'RO2';
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fMVKOHAOH(i)=fMVKOHAOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + HO2 = MVKOHBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'HO2'; 
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fHO2(i)=fHO2(i)-1; fMVKOHBOOH(i)=fMVKOHBOOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + NO =  + HOCH2CHO + HOCH2CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'NO'; 
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + NO3 =  + HOCH2CHO + HOCH2CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'NO3'; 
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 = H14CO23C4';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'RO2';
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fH14CO23C4(i)=fH14CO23C4(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 = MVKOHAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'RO2';
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fMVKOHAOH(i)=fMVKOHAOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 =  + HOCH2CHO + HOCH2CO3';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'RO2';
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXA = IEACHO + HO2';
k(:,i) = 8.40e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXA'; 
fOH(i)=fOH(i)-1; fIEPOXA(i)=fIEPOXA(i)-1; fIEACHO(i)=fIEACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + HO2 = C526OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'HO2'; 
fC526O2(i)=fC526O2(i)-1; fHO2(i)=fHO2(i)-1; fC526OOH(i)=fC526OOH(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + NO = C526NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'NO'; 
fC526O2(i)=fC526O2(i)-1; fNO(i)=fNO(i)-1; fC526NO3(i)=fC526NO3(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + NO =  + MGLYOX + HOCH2CHO + OH + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'NO'; 
fC526O2(i)=fC526O2(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + NO3 =  + MGLYOX + HOCH2CHO + OH + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'NO3'; 
fC526O2(i)=fC526O2(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 =  + MGLYOX + HOCH2CHO + OH';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'RO2';
fC526O2(i)=fC526O2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 = HMVKBOOH + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C526O2'; 
fC526O2(i)=fC526O2(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + NO3 = NO3CH2CO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'NO3CH2CHO'; Gstr{i,2} = 'NO3'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fNO3(i)=fNO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + OH = NO3CH2CO3';
k(:,i) = 3.40e-12;
Gstr{i,1} = 'NO3CH2CHO'; Gstr{i,2} = 'OH'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO = NO2 +  + HCHO + CO + HO2';
k(:,i) = J56.*4.3;
Gstr{i,1} = 'NO3CH2CHO'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C536OOH + OH = DHPMEK + CO + OH';
k(:,i) = 6.60e-11;
Gstr{i,1} = 'C536OOH'; Gstr{i,2} = 'OH'; 
fC536OOH(i)=fC536OOH(i)-1; fOH(i)=fOH(i)-1; fDHPMEK(i)=fDHPMEK(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C536OOH = C3MDIALOOH + HCHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'C536OOH'; 
fC536OOH(i)=fC536OOH(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C536OOH = DHPMEK + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C536OOH'; 
fC536OOH(i)=fC536OOH(i)-1; fDHPMEK(i)=fDHPMEK(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C536OOH = MGLYOX + HCOCH2OOH + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'C536OOH'; 
fC536OOH(i)=fC536OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK + OH = BIACETOOH + OH';
k(:,i) = 2.92e-11.*0.56;
Gstr{i,1} = 'DHPMEK'; Gstr{i,2} = 'OH'; 
fDHPMEK(i)=fDHPMEK(i)-1; fOH(i)=fOH(i)-1; fBIACETOOH(i)=fBIACETOOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK + OH = C4CO2OOH + OH';
k(:,i) = 2.92e-11.*0.44;
Gstr{i,1} = 'DHPMEK'; Gstr{i,2} = 'OH'; 
fDHPMEK(i)=fDHPMEK(i)-1; fOH(i)=fOH(i)-1; fC4CO2OOH(i)=fC4CO2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK = CH3CO3 + HCOCH2OOH + OH';
k(:,i) = J41;
Gstr{i,1} = 'DHPMEK'; 
fDHPMEK(i)=fDHPMEK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK = CH3CO3 + HCOCH2OOH + OH';
k(:,i) = J22;
Gstr{i,1} = 'DHPMEK'; 
fDHPMEK(i)=fDHPMEK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK = MGLYOX + HCHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'DHPMEK'; 
fDHPMEK(i)=fDHPMEK(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + O3 =  + 0.11GLYOO + 0.89OH + 0.89HO2 + 0.89CO + 0.89CO + CH3COCO3H';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'O3'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fO3(i)=fO3(i)-1; fGLYOO(i)=fGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fCO(i)=fCO(i)+0.89; fCO(i)=fCO(i)+0.89; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + O3 = GLYOX +  + CH3COCO3 + OH';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'O3'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fO3(i)=fO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3COCO3(i)=fCH3COCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + OH = C534O2';
k(:,i) = 4.72e-11;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'OH'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fOH(i)=fOH(i)-1; fC534O2(i)=fC534O2(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 = CH3CO3 + GLYOX + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'C5PACALD1'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + OH = GLYOX + OH';
k(:,i) = 2.91e-11;
Gstr{i,1} = 'HCOCH2OOH'; Gstr{i,2} = 'OH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + OH = HCOCH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HCOCH2OOH'; Gstr{i,2} = 'OH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH =  + HCHO + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCH2OOH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH = HO2 + CO + HCHO + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCH2OOH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH + OH = CO2H3CHO + CO + OH';
k(:,i) = 4.58e-11;
Gstr{i,1} = 'C4MALOHOOH'; Gstr{i,2} = 'OH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH =  + GLYOX + MGLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4MALOHOOH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH = CO2H3CHO + HO2 + CO + OH';
k(:,i) = J17.*2;
Gstr{i,1} = 'C4MALOHOOH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + NO3 = C3MCODBCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'NO3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fNO3(i)=fNO3(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + NO3 = MC3CODBCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'NO3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fNO3(i)=fNO3(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + O3 =  + 0.11MGLYOO + 0.89OH + 0.89CO + 0.89CH3CO3 + GLYOX';
k(:,i) = 5.00e-18.*0.50;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'O3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fO3(i)=fO3(i)-1; fMGLYOO(i)=fMGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fCO(i)=fCO(i)+0.89; fCH3CO3(i)=fCH3CO3(i)+0.89; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + O3 = MGLYOX +  + 0.11GLYOO + 0.89OH + 0.89HO2 + 0.89CO + 0.89CO';
k(:,i) = 5.00e-18.*0.50;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'O3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGLYOO(i)=fGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fCO(i)=fCO(i)+0.89; fCO(i)=fCO(i)+0.89; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = C3MCODBCO3';
k(:,i) = 4.41e-11.*0.385;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = C4M2ALOHO2';
k(:,i) = 4.41e-11.*0.23;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO2(i)=fC4M2ALOHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = MC3CODBCO3';
k(:,i) = 4.41e-11.*0.385;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL = C3MCODBCO3 + HO2 + CO';
k(:,i) = J4.*0.2.*0.3;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL = MC3CODBCO3 + HO2 + CO';
k(:,i) = J4.*0.2.*0.3;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL = PXYFUONE';
k(:,i) = J4.*0.2.*0.4;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fPXYFUONE(i)=fPXYFUONE(i)+1; 

i=i+1;
Rnames{i} = 'HVMK + OH = CO2H3CHO + HO2';
k(:,i) = 7.04e-11;
Gstr{i,1} = 'HVMK'; Gstr{i,2} = 'OH'; 
fHVMK(i)=fHVMK(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HVMK = CO + HO2 + MGLYOX + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'HVMK'; 
fHVMK(i)=fHVMK(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + HO2 = ACETOL + CO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'HO2'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fHO2(i)=fHO2(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + HO2 = HC4ACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'HO2'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4ACO2H(i)=fHC4ACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + HO2 = HC4ACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'HO2'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4ACO3H(i)=fHC4ACO3H(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + NO = ACETOL + CO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'NO'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + NO2 = C5PAN17';
k(:,i) = KFPAN;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'NO2'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN17(i)=fC5PAN17(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + NO3 = ACETOL + CO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'NO3'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 = ACETOL + HO2 + CO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'RO2';
fHC4ACO3(i)=fHC4ACO3(i)-1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 = C5PACALD2 + HO2';
k(:,i) = 2.20D10.*exp(-8174./T).*exp(1.00D8./T.^3);
Gstr{i,1} = 'HC4ACO3'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 = HC4ACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'RO2';
fHC4ACO3(i)=fHC4ACO3(i)-1; fHC4ACO2H(i)=fHC4ACO2H(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + HO2 = C58AOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'HO2'; 
fC58AO2(i)=fC58AO2(i)-1; fHO2(i)=fHO2(i)-1; fC58AOOH(i)=fC58AOOH(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + NO = C58ANO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'NO'; 
fC58AO2(i)=fC58AO2(i)-1; fNO(i)=fNO(i)-1; fC58ANO3(i)=fC58ANO3(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + NO =  + ACETOL + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'NO'; 
fC58AO2(i)=fC58AO2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + NO3 =  + ACETOL + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'NO3'; 
fC58AO2(i)=fC58AO2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 =  + ACETOL + GLYOX + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'RO2';
fC58AO2(i)=fC58AO2(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 = MACROH + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C58AO2'; 
fC58AO2(i)=fC58AO2(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = C57O2';
k(:,i) = 1.16e-11.*0.370;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fC57O2(i)=fC57O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = C58AO2';
k(:,i) = 1.16e-11.*0.370;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fC58AO2(i)=fC58AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = C59O2';
k(:,i) = 1.16e-11.*0.150;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = IEB1CHO';
k(:,i) = 1.16e-11.*0.055;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fIEB1CHO(i)=fIEB1CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = IEB4CHO';
k(:,i) = 1.16e-11.*0.055;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fIEB4CHO(i)=fIEB4CHO(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + HO2 = INB1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'HO2'; 
fINB1O2(i)=fINB1O2(i)-1; fHO2(i)=fHO2(i)-1; fINB1OOH(i)=fINB1OOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO = INB1NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'NO'; 
fINB1O2(i)=fINB1O2(i)-1; fNO(i)=fNO(i)-1; fINB1NO3(i)=fINB1NO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO =  + HOCH2CHO + ACETOL + NO2 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'NO'; 
fINB1O2(i)=fINB1O2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO3 =  + HOCH2CHO + ACETOL + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'NO3'; 
fINB1O2(i)=fINB1O2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 = INB1CO';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'RO2';
fINB1O2(i)=fINB1O2(i)-1; fINB1CO(i)=fINB1CO(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 =  + HOCH2CHO + ACETOL + NO2';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'RO2';
fINB1O2(i)=fINB1O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 = INB1OH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'RO2';
fINB1O2(i)=fINB1O2(i)-1; fINB1OH(i)=fINB1OH(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + HO2 = INB2OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'HO2'; 
fINB2O2(i)=fINB2O2(i)-1; fHO2(i)=fHO2(i)-1; fINB2OOH(i)=fINB2OOH(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + NO = INANO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'NO'; 
fINB2O2(i)=fINB2O2(i)-1; fNO(i)=fNO(i)-1; fINANO3(i)=fINANO3(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + NO =  + C57NO3 + HO2 + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'NO'; 
fINB2O2(i)=fINB2O2(i)-1; fNO(i)=fNO(i)-1; fC57NO3(i)=fC57NO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 = C58NO3';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'RO2';
fINB2O2(i)=fINB2O2(i)-1; fC58NO3(i)=fC58NO3(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 = INB1OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'RO2';
fINB2O2(i)=fINB2O2(i)-1; fINB1OH(i)=fINB1OH(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 =  + C57NO3 + HO2';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'RO2';
fINB2O2(i)=fINB2O2(i)-1; fC57NO3(i)=fC57NO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXC =  C59O2';
k(:,i) = 1.50e-11.*0.719;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXC'; 
fOH(i)=fOH(i)-1; fIEPOXC(i)=fIEPOXC(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXC = IECCHO + HO2';
k(:,i) = 1.50e-11.*0.281;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXC'; 
fOH(i)=fOH(i)-1; fIEPOXC(i)=fIEPOXC(i)-1; fIECCHO(i)=fIECCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C537OOH + OH = DHPMPAL + CO + OH';
k(:,i) = 5.64e-11;
Gstr{i,1} = 'C537OOH'; Gstr{i,2} = 'OH'; 
fC537OOH(i)=fC537OOH(i)-1; fOH(i)=fOH(i)-1; fDHPMPAL(i)=fDHPMPAL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C537OOH = C4CO2OOH + HCHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'C537OOH'; 
fC537OOH(i)=fC537OOH(i)-1; fC4CO2OOH(i)=fC4CO2OOH(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C537OOH = DHPMPAL + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C537OOH'; 
fC537OOH(i)=fC537OOH(i)-1; fDHPMPAL(i)=fDHPMPAL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C537OOH = GLYOX + HYPERACET + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'C537OOH'; 
fC537OOH(i)=fC537OOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL + OH = C3MDIALOOH + OH';
k(:,i) = 3.77e-11.*0.32;
Gstr{i,1} = 'DHPMPAL'; Gstr{i,2} = 'OH'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fOH(i)=fOH(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL + OH = HYPERACET + CO + OH';
k(:,i) = 3.77e-11.*0.68;
Gstr{i,1} = 'DHPMPAL'; Gstr{i,2} = 'OH'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fOH(i)=fOH(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL = C3MDIALOOH + OH';
k(:,i) = J41;
Gstr{i,1} = 'DHPMPAL'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL = HYPERACET + OH + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'DHPMPAL'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL = MGLYOX + OH + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DHPMPAL'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + O3 =  + 0.11MGLYOO + 0.89OH + 0.89CO + 0.89CH3CO3 + HCOCO3H';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'O3'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fO3(i)=fO3(i)-1; fMGLYOO(i)=fMGLYOO(i)+0.11; fOH(i)=fOH(i)+0.89; fCO(i)=fCO(i)+0.89; fCH3CO3(i)=fCH3CO3(i)+0.89; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + O3 = MGLYOX +  + HCOCO3 + OH';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'O3'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCOCO3(i)=fHCOCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + OH = C535O2';
k(:,i) = 4.72e-11;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'OH'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fOH(i)=fOH(i)-1; fC535O2(i)=fC535O2(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 = CO + HO2 + MGLYOX + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'C5PACALD2'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + OH = CH3COCH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYPERACET'; Gstr{i,2} = 'OH'; 
fHYPERACET(i)=fHYPERACET(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + OH = MGLYOX + OH';
k(:,i) = 8.39e-12;
Gstr{i,1} = 'HYPERACET'; Gstr{i,2} = 'OH'; 
fHYPERACET(i)=fHYPERACET(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET = CH3CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HYPERACET'; 
fHYPERACET(i)=fHYPERACET(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET =  + CH3CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYPERACET'; 
fHYPERACET(i)=fHYPERACET(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + HO2 = HPC52OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'HO2'; 
fHPC52O2(i)=fHPC52O2(i)-1; fHO2(i)=fHO2(i)-1; fHPC52OOH(i)=fHPC52OOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + NO =  + GLYOX + HYPERACET + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'NO'; 
fHPC52O2(i)=fHPC52O2(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + NO3 =  + GLYOX + HYPERACET + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'NO3'; 
fHPC52O2(i)=fHPC52O2(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 =  + GLYOX + HYPERACET + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'RO2';
fHPC52O2(i)=fHPC52O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + HO2 = CH3CO3 + HOCH2CHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'HO2'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + HO2 = HC4CCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'HO2'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4CCO2H(i)=fHC4CCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + HO2 = HC4CCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'HO2'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4CCO3H(i)=fHC4CCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + NO = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'NO'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + NO2 = C5PAN19';
k(:,i) = KFPAN;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'NO2'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN19(i)=fC5PAN19(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + NO3 = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'NO3'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 = C5PACALD1 + HO2';
k(:,i) = 8.14D9.*exp(-8591./T).*exp(1.00D8./T.^3);
Gstr{i,1} = 'HC4CCO3'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 = CH3CO3 + HOCH2CHO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'RO2';
fHC4CCO3(i)=fHC4CCO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 = HC4CCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'RO2';
fHC4CCO3(i)=fHC4CCO3(i)-1; fHC4CCO2H(i)=fHC4CCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 + HO2 = C57AOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'HO2'; 
fC57AO2(i)=fC57AO2(i)-1; fHO2(i)=fHO2(i)-1; fC57AOOH(i)=fC57AOOH(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 + NO =  + HOCH2CHO + MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'NO'; 
fC57AO2(i)=fC57AO2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 + NO = INDHCHO';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'NO'; 
fC57AO2(i)=fC57AO2(i)-1; fNO(i)=fNO(i)-1; fINDHCHO(i)=fINDHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 + NO3 =  + HOCH2CHO + MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'NO3'; 
fC57AO2(i)=fC57AO2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 =  + HOCH2CHO + MGLYOX + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'RO2';
fC57AO2(i)=fC57AO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + HO2 = C57OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'HO2'; 
fC57O2(i)=fC57O2(i)-1; fHO2(i)=fHO2(i)-1; fC57OOH(i)=fC57OOH(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + NO = C57NO3';
k(:,i) = KRO2NO.*0.019;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'NO'; 
fC57O2(i)=fC57O2(i)-1; fNO(i)=fNO(i)-1; fC57NO3(i)=fC57NO3(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + NO =  + MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.981;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'NO'; 
fC57O2(i)=fC57O2(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + NO3 =  + MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'NO3'; 
fC57O2(i)=fC57O2(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 =  + MGLYOX + HOCH2CHO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'RO2';
fC57O2(i)=fC57O2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 = C57OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'RO2';
fC57O2(i)=fC57O2(i)-1; fC57OH(i)=fC57OH(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 = HO12CO3C4 + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C57O2'; 
fC57O2(i)=fC57O2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + HO2 = INDOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'HO2'; 
fINDO2(i)=fINDO2(i)-1; fHO2(i)=fHO2(i)-1; fINDOOH(i)=fINDOOH(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO = INB1NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'NO'; 
fINDO2(i)=fINDO2(i)-1; fNO(i)=fNO(i)-1; fINB1NO3(i)=fINB1NO3(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO =  + ACETOL + HOCH2CHO + NO2 + HCHO + HO2 + MVKNO3 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'NO'; 
fINDO2(i)=fINDO2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO3 =  + ACETOL + HOCH2CHO + NO2 + HCHO + HO2 + MVKNO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'NO3'; 
fINDO2(i)=fINDO2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 =  + ACETOL + HOCH2CHO + NO2 + HCHO + HO2 + MVKNO3';
k(:,i) = 8.00e-13.*0.8;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'RO2';
fINDO2(i)=fINDO2(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 = INDOH';
k(:,i) = 8.00e-13.*0.2;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'RO2';
fINDO2(i)=fINDO2(i)-1; fINDOH(i)=fINDOH(i)+1; 

i=i+1;
Rnames{i} = 'C59O2 + HO2 = C59OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C59O2'; Gstr{i,2} = 'HO2'; 
fC59O2(i)=fC59O2(i)-1; fHO2(i)=fHO2(i)-1; fC59OOH(i)=fC59OOH(i)+1; 

i=i+1;
Rnames{i} = 'C59O2 + NO =  + ACETOL + HOCH2CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C59O2'; Gstr{i,2} = 'NO'; 
fC59O2(i)=fC59O2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C59O2 + NO3 =  + ACETOL + HOCH2CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C59O2'; Gstr{i,2} = 'NO3'; 
fC59O2(i)=fC59O2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C59O2 =  + ACETOL + HOCH2CO3';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C59O2'; Gstr{i,2} = 'RO2';
fC59O2(i)=fC59O2(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'INAOOH =  + ACETOL + NO3CH2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INAOOH'; 
fINAOOH(i)=fINAOOH(i)-1; fACETOL(i)=fACETOL(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAOOH = INAHPCHO + HO2';
k(:,i) = 1.01e-11.*0.65;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAOOH'; 
fOH(i)=fOH(i)-1; fINAOOH(i)=fINAOOH(i)-1; fINAHPCHO(i)=fINAHPCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAOOH = INAO2';
k(:,i) = 1.01e-11.*0.35;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAOOH'; 
fOH(i)=fOH(i)-1; fINAOOH(i)=fINAOOH(i)-1; fINAO2(i)=fINAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = ACETOL + NO2 + NO3CH2CHO';
k(:,i) = 2.00e-12.*0.07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = C58NO3 + NO2';
k(:,i) = 2.00e-12.*0.39;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fC58NO3(i)=fC58NO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = HCHO + NO2 + HMVKANO3';
k(:,i) = 2.00e-12.*0.07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fHMVKANO3(i)=fHMVKANO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = INANCHO + HO2';
k(:,i) = 2.00e-12.*0.33;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fINANCHO(i)=fINANCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = INANCO + HO2';
k(:,i) = 2.00e-12.*0.14;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fINANCO(i)=fINANCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAOH = INAHCHO + HO2';
k(:,i) = 6.68e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAOH'; 
fOH(i)=fOH(i)-1; fINAOH(i)=fINAOH(i)-1; fINAHCHO(i)=fINAHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + OH = CO23C3CHO + NO2';
k(:,i) = 1.30e-13;
Gstr{i,1} = 'CO23C4NO3'; Gstr{i,2} = 'OH'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 = NO3CH2CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO + CO = HMVKANO3';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'NC41OO'; Gstr{i,2} = 'CO'; 
fNC41OO(i)=fNC41OO(i)-1; fCO(i)=fCO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO + NO = HMVKANO3 + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'NC41OO'; Gstr{i,2} = 'NO'; 
fNC41OO(i)=fNC41OO(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO + NO2 = HMVKANO3 + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'NC41OO'; Gstr{i,2} = 'NO2'; 
fNC41OO(i)=fNC41OO(i)-1; fNO2(i)=fNO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO + SO2 = HMVKANO3 + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'NC41OO'; Gstr{i,2} = 'SO2'; 
fNC41OO(i)=fNC41OO(i)-1; fSO2(i)=fSO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO = HMVKANO3 + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'NC41OO'; 
fNC41OO(i)=fNC41OO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C58OOH =  + ACETOL + GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C58OOH'; 
fC58OOH(i)=fC58OOH(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58OOH = C4MALOHOOH + HO2';
k(:,i) = 3.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58OOH'; 
fOH(i)=fOH(i)-1; fC58OOH(i)=fC58OOH(i)-1; fC4MALOHOOH(i)=fC4MALOHOOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3 = ACETOL + GLYOX + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'C58NO3'; 
fC58NO3(i)=fC58NO3(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3 = C58NO3CO3';
k(:,i) = 2.32e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3'; 
fOH(i)=fOH(i)-1; fC58NO3(i)=fC58NO3(i)-1; fC58NO3CO3(i)=fC58NO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58OH =  + ACETOL + GLYOX + HO2';
k(:,i) = 3.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58OH'; 
fOH(i)=fOH(i)-1; fC58OH(i)=fC58OH(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3H + OH =  HC4CO3';
k(:,i) = 9.11e-11;
Gstr{i,1} = 'HC4CO3H'; Gstr{i,2} = 'OH'; 
fHC4CO3H(i)=fHC4CO3H(i)-1; fOH(i)=fOH(i)-1; fHC4CO3(i)=fHC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3H = MACR + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC4CO3H'; 
fHC4CO3H(i)=fHC4CO3H(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4PAN + OH = MACR + CO + NO2';
k(:,i) = 8.75e-11;
Gstr{i,1} = 'HC4PAN'; Gstr{i,2} = 'OH'; 
fHC4PAN(i)=fHC4PAN(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4PAN = HC4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HC4PAN'; 
fHC4PAN(i)=fHC4PAN(i)-1; fHC4CO3(i)=fHC4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + OH = CO2C3CO3';
k(:,i) = 4.18e-12;
Gstr{i,1} = 'CO2C3CO3H'; Gstr{i,2} = 'OH'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fOH(i)=fOH(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H = CH3COCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2C3CO3H'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H = CH3COCH2O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO2C3CO3H'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3PAN + OH = MGLYOX + CO + NO2';
k(:,i) = 5.93e-13;
Gstr{i,1} = 'CO2C3PAN'; Gstr{i,2} = 'OH'; 
fCO2C3PAN(i)=fCO2C3PAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3PAN = CO2C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CO2C3PAN'; 
fCO2C3PAN(i)=fCO2C3PAN(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2OOH + OH = CO23C3CHO + OH';
k(:,i) = 7.83e-11;
Gstr{i,1} = 'C4CO2OOH'; Gstr{i,2} = 'OH'; 
fC4CO2OOH(i)=fC4CO2OOH(i)-1; fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2OOH =  + 0.5GLYOX + 0.5CH3CO3 + 0.5MGLYOX + 0.5HO2 + 0.5CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4CO2OOH'; 
fC4CO2OOH(i)=fC4CO2OOH(i)-1; fGLYOX(i)=fGLYOX(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fMGLYOX(i)=fMGLYOX(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2OOH = CH3CO3 + GLYOX + OH';
k(:,i) = J22;
Gstr{i,1} = 'C4CO2OOH'; 
fC4CO2OOH(i)=fC4CO2OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2OOH = HO2 + CO + MGLYOX + OH';
k(:,i) = J17;
Gstr{i,1} = 'C4CO2OOH'; 
fC4CO2OOH(i)=fC4CO2OOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO2H + OH = CH3COCH2O2';
k(:,i) = 1.14e-12;
Gstr{i,1} = 'CO2C3CO2H'; Gstr{i,2} = 'OH'; 
fCO2C3CO2H(i)=fCO2C3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C4CHO = CO2C3CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO24C4CHO'; 
fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO24C4CHO = CO2C3CO3 + CO + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO24C4CHO'; 
fNO3(i)=fNO3(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO24C4CHO = CO2C3CO3 + CO';
k(:,i) = 1.33e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO24C4CHO'; 
fOH(i)=fOH(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 + HO2 = HOCHOCOOH';
k(:,i) = KRO2HO2.*0.52;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'HO2'; 
fACRO2(i)=fACRO2(i)-1; fHO2(i)=fHO2(i)-1; fHOCHOCOOH(i)=fHOCHOCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 + NO =  + HOCH2CHO + HO2 + CO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'NO'; 
fACRO2(i)=fACRO2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 + NO3 =  + HOCH2CHO + HO2 + CO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'NO3'; 
fACRO2(i)=fACRO2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 =  + HOCH2CHO + HO2 + CO';
k(:,i) = 8.8e-13.*0.6;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'RO2';
fACRO2(i)=fACRO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 = HOCH2CHO + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'ACRO2'; 
fACRO2(i)=fACRO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 = HOCH2COCHO';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'RO2';
fACRO2(i)=fACRO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 = OCCOHCOH';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'RO2';
fACRO2(i)=fACRO2(i)-1; fOCCOHCOH(i)=fOCCOHCOH(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + HO2 = C32OH13CO + O3';
k(:,i) = 0.4.*0.52.*KRO2HO2;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'HO2'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fHO2(i)=fHO2(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + HO2 = OCCOHCOOH';
k(:,i) = 0.6.*0.52.*KRO2HO2;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'HO2'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fHO2(i)=fHO2(i)-1; fOCCOHCOOH(i)=fOCCOHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + NO = C42AOH';
k(:,i) = 0.05.*KRO2NO;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'NO'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fNO(i)=fNO(i)-1; fC42AOH(i)=fC42AOH(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + NO =  + HCHO + GLYOX + HO2 + NO2';
k(:,i) = 0.95.*KRO2NO;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'NO'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + NO3 = C42AOH + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'NO3'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fNO3(i)=fNO3(i)-1; fC42AOH(i)=fC42AOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 = C32OH13CO';
k(:,i) = 2.0e-12.*0.2;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'RO2';
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 =  + HCHO + GLYOX + HO2';
k(:,i) = 2.0e-12.*0.6;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'RO2';
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fHCHO(i)=fHCHO(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 = OCCOHCOH';
k(:,i) = 2.0e-12.*0.2;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'RO2';
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fOCCOHCOH(i)=fOCCOHCOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + NO3 = ETHENO3O2';
k(:,i) = 3.3e-12.*exp(-2880./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'NO3'; 
fC2H4(i)=fC2H4(i)-1; fNO3(i)=fNO3(i)-1; fETHENO3O2(i)=fETHENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + O3 = HCHO +  + 0.37CH2OO + 0.50CO + 0.13HO2 + 0.13CO + 0.13OH';
k(:,i) = 9.1e-15.*exp(-2580./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'O3'; 
fC2H4(i)=fC2H4(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCH2OO(i)=fCH2OO(i)+0.37; fCO(i)=fCO(i)+0.50; fHO2(i)=fHO2(i)+0.13; fCO(i)=fCO(i)+0.13; fOH(i)=fOH(i)+0.13; 

i=i+1;
Rnames{i} = 'C2H4 + OH = HOCH2CH2O2';
k(:,i) = KMT15;
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'OH'; 
fC2H4(i)=fC2H4(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + HO2 = C524OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'HO2'; 
fC524O2(i)=fC524O2(i)-1; fHO2(i)=fHO2(i)-1; fC524OOH(i)=fC524OOH(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO = C524NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'NO'; 
fC524O2(i)=fC524O2(i)-1; fNO(i)=fNO(i)-1; fC524NO3(i)=fC524NO3(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO =  + HMACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'NO'; 
fC524O2(i)=fC524O2(i)-1; fNO(i)=fNO(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO3 =  + HMACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'NO3'; 
fC524O2(i)=fC524O2(i)-1; fNO3(i)=fNO3(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 = C524CO';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'RO2';
fC524O2(i)=fC524O2(i)-1; fC524CO(i)=fC524CO(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 =  + HMACR + HCHO + HO2';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'RO2';
fC524O2(i)=fC524O2(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 = C524OH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'RO2';
fC524O2(i)=fC524O2(i)-1; fC524OH(i)=fC524OH(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 = HMACR + HCHO + OH';
k(:,i) = 1.88D11.*exp(-9752./T);
Gstr{i,1} = 'C524O2'; 
fC524O2(i)=fC524O2(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C527OOH + OH = MACROOH + CO + OH';
k(:,i) = 4.74e-11;
Gstr{i,1} = 'C527OOH'; Gstr{i,2} = 'OH'; 
fC527OOH(i)=fC527OOH(i)-1; fOH(i)=fOH(i)-1; fMACROOH(i)=fMACROOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C527OOH = GLYOX + ACETOL + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'C527OOH'; 
fC527OOH(i)=fC527OOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C527OOH = MACROOH + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C527OOH'; 
fC527OOH(i)=fC527OOH(i)-1; fMACROOH(i)=fMACROOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C527NO3 + OH = MACROOH + CO + NO2';
k(:,i) = 1.18e-11;
Gstr{i,1} = 'C527NO3'; Gstr{i,2} = 'OH'; 
fC527NO3(i)=fC527NO3(i)-1; fOH(i)=fOH(i)-1; fMACROOH(i)=fMACROOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C527NO3 =  + GLYOX + ACETOL + OH + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C527NO3'; 
fC527NO3(i)=fC527NO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO2H + OH = HCHO + HO2';
k(:,i) = 2.73e-12;
Gstr{i,1} = 'HOCH2CO2H'; Gstr{i,2} = 'OH'; 
fHOCH2CO2H(i)=fHOCH2CO2H(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + OH = HOCH2CO3';
k(:,i) = 6.19e-12;
Gstr{i,1} = 'HOCH2CO3H'; Gstr{i,2} = 'OH'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H = HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCH2CO3H'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PHAN + OH = HCHO + CO + NO2';
k(:,i) = 1.12e-12;
Gstr{i,1} = 'PHAN'; Gstr{i,2} = 'OH'; 
fPHAN(i)=fPHAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PHAN = HOCH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PHAN'; 
fPHAN(i)=fPHAN(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCHO + OH = INCGLYOX + NO2';
k(:,i) = 4.52e-12.*0.19;
Gstr{i,1} = 'INCNCHO'; Gstr{i,2} = 'OH'; 
fINCNCHO(i)=fINCNCHO(i)-1; fOH(i)=fOH(i)-1; fINCGLYOX(i)=fINCGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCHO + OH = INCNCO3';
k(:,i) = 4.52e-12.*0.81;
Gstr{i,1} = 'INCNCHO'; Gstr{i,2} = 'OH'; 
fINCNCHO(i)=fINCNCHO(i)-1; fOH(i)=fOH(i)-1; fINCNCO3(i)=fINCNCO3(i)+1; 

i=i+1;
Rnames{i} = 'INCNCHO = GLYOX + NOA + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'INCNCHO'; 
fINCNCHO(i)=fINCNCHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCGLYOX = MACRNBCO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'INCGLYOX'; 
fINCGLYOX(i)=fINCGLYOX(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCGLYOX = MACRNBCO3 + CO';
k(:,i) = 1.34e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCGLYOX'; 
fOH(i)=fOH(i)-1; fINCGLYOX(i)=fINCGLYOX(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO2H = HO2 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'HCOCO2H'; 
fHCOCO2H(i)=fHCOCO2H(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCO2H = CO + HO2';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCO2H'; 
fOH(i)=fOH(i)-1; fHCOCO2H(i)=fHCOCO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HCOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HCOCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HO2 + CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO = HO2 + CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO2 = HO2 + CO + NO3';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO2(i)=fNO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO3 = HO2 + CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO3'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 = CO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'RO2';
fHCOCO3(i)=fHCOCO3(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 = HCOCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'RO2';
fHCOCO3(i)=fHCOCO3(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + HO2 = CONM2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'HO2'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCONM2CO2H(i)=fCONM2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + HO2 = CONM2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'HO2'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCONM2CO3H(i)=fCONM2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + HO2 = MGLYOX + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'HO2'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + NO = MGLYOX + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'NO'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + NO2 = CONM2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'NO2'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fNO2(i)=fNO2(i)-1; fCONM2PAN(i)=fCONM2PAN(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + NO3 = MGLYOX + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'NO3'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 = CONM2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'RO2';
fCONM2CO3(i)=fCONM2CO3(i)-1; fCONM2CO2H(i)=fCONM2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 = MGLYOX + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'RO2';
fCONM2CO3(i)=fCONM2CO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO2H + OH = ACETOL + NO2';
k(:,i) = 1.34e-12.*0.44;
Gstr{i,1} = 'MACRNCO2H'; Gstr{i,2} = 'OH'; 
fMACRNCO2H(i)=fMACRNCO2H(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO2H + OH = CONM2CO2H + HO2';
k(:,i) = 1.34e-12.*0.15;
Gstr{i,1} = 'MACRNCO2H'; Gstr{i,2} = 'OH'; 
fMACRNCO2H(i)=fMACRNCO2H(i)-1; fOH(i)=fOH(i)-1; fCONM2CO2H(i)=fCONM2CO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3H + OH = CONM2CO3H + HO2';
k(:,i) = 4.42e-12.*0.15;
Gstr{i,1} = 'MACRNCO3H'; Gstr{i,2} = 'OH'; 
fMACRNCO3H(i)=fMACRNCO3H(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3H(i)=fCONM2CO3H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3H + OH = MACRNCO3';
k(:,i) = 4.42e-12.*0.85;
Gstr{i,1} = 'MACRNCO3H'; Gstr{i,2} = 'OH'; 
fMACRNCO3H(i)=fMACRNCO3H(i)-1; fOH(i)=fOH(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3H = ACETOL + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACRNCO3H'; 
fMACRNCO3H(i)=fMACRNCO3H(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNPAN + OH = CONM2PAN + HO2';
k(:,i) = 8.21e-13;
Gstr{i,1} = 'MACRNPAN'; Gstr{i,2} = 'OH'; 
fMACRNPAN(i)=fMACRNPAN(i)-1; fOH(i)=fOH(i)-1; fCONM2PAN(i)=fCONM2PAN(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNPAN = MACRNCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MACRNPAN'; 
fMACRNPAN(i)=fMACRNPAN(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + HO2 = CH3COCH3 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'HO2'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + HO2 = IPRHOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'HO2'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fHO2(i)=fHO2(i)-1; fIPRHOCO2H(i)=fIPRHOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + HO2 = IPRHOCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'HO2'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fHO2(i)=fHO2(i)-1; fIPRHOCO3H(i)=fIPRHOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + NO = CH3COCH3 + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'NO'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + NO2 = C4PAN5';
k(:,i) = KFPAN;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'NO2'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN5(i)=fC4PAN5(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + NO3 = CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'NO3'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 = CH3COCH3 + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'RO2';
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 = IPRHOCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'RO2';
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fIPRHOCO2H(i)=fIPRHOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO2H + OH = COHM2CO2H + NO2';
k(:,i) = 1.23e-12.*0.32;
Gstr{i,1} = 'MACRNBCO2H'; Gstr{i,2} = 'OH'; 
fMACRNBCO2H(i)=fMACRNBCO2H(i)-1; fOH(i)=fOH(i)-1; fCOHM2CO2H(i)=fCOHM2CO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO2H + OH = NOA + HO2';
k(:,i) = 1.23e-12.*0.68;
Gstr{i,1} = 'MACRNBCO2H'; Gstr{i,2} = 'OH'; 
fMACRNBCO2H(i)=fMACRNBCO2H(i)-1; fOH(i)=fOH(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3H + OH = COHM2CO3H + NO2';
k(:,i) = 4.31e-12.*0.09;
Gstr{i,1} = 'MACRNBCO3H'; Gstr{i,2} = 'OH'; 
fMACRNBCO3H(i)=fMACRNBCO3H(i)-1; fOH(i)=fOH(i)-1; fCOHM2CO3H(i)=fCOHM2CO3H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3H + OH = MACRNBCO3';
k(:,i) = 4.31e-12.*0.91;
Gstr{i,1} = 'MACRNBCO3H'; Gstr{i,2} = 'OH'; 
fMACRNBCO3H(i)=fMACRNBCO3H(i)-1; fOH(i)=fOH(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3H = NOA + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACRNBCO3H'; 
fMACRNBCO3H(i)=fMACRNBCO3H(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBPAN + OH = COHM2PAN + NO2';
k(:,i) = 7.10e-13;
Gstr{i,1} = 'MACRNBPAN'; Gstr{i,2} = 'OH'; 
fMACRNBPAN(i)=fMACRNBPAN(i)-1; fOH(i)=fOH(i)-1; fCOHM2PAN(i)=fCOHM2PAN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBPAN = MACRNBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MACRNBPAN'; 
fMACRNBPAN(i)=fMACRNBPAN(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H + OH = CHOMOHCO3';
k(:,i) = 6.99e-11;
Gstr{i,1} = 'CHOMOHCO3H'; Gstr{i,2} = 'OH'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fOH(i)=fOH(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H = MGLYOX + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'CHOMOHCO3H'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H = MGLYOX + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'CHOMOHCO3H'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHPAN + OH = MGLYOX + CO + NO2';
k(:,i) = 6.64e-11;
Gstr{i,1} = 'CHOMOHPAN'; Gstr{i,2} = 'OH'; 
fCHOMOHPAN(i)=fCHOMOHPAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHPAN = CHOMOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CHOMOHPAN'; 
fCHOMOHPAN(i)=fCHOMOHPAN(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = CH3CHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = PRNO3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fPRNO3CO2H(i)=fPRNO3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = PRNO3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fPRNO3CO3H(i)=fPRNO3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO = CH3CHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO2 = PRNO3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO2(i)=fNO2(i)-1; fPRNO3PAN(i)=fPRNO3PAN(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO3 = CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO3'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 = CH3CHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'RO2';
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 = PRNO3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'RO2';
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fPRNO3CO2H(i)=fPRNO3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + HO2 = CH3CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'HO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + HO2 = IPROPOLPER';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'HO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fIPROPOLPER(i)=fIPROPOLPER(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO = CH3CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO2 = IPROPOLPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fIPROPOLPAN(i)=fIPROPOLPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO3 = CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO3'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 = CH3CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'RO2';
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3H = CH3CO3 + HO2 + HCOCO3H';
k(:,i) = J22;
Gstr{i,1} = 'CO2H3CO3H'; 
fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3H = MGLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2H3CO3H'; 
fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2H3CO3H = CO2H3CO3';
k(:,i) = 7.34e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2H3CO3H'; 
fOH(i)=fOH(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN6 = CO2H3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN6'; 
fC4PAN6(i)=fC4PAN6(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN6 = MGLYOX + CO + NO2';
k(:,i) = 3.74e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN6'; 
fOH(i)=fOH(i)-1; fC4PAN6(i)=fC4PAN6(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + HO2 = CO2N3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'HO2'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2N3CO3H(i)=fCO2N3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + HO2 = MGLYOX + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'HO2'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + NO = MGLYOX + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'NO'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + NO2 = CO2N3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'NO2'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fNO2(i)=fNO2(i)-1; fCO2N3PAN(i)=fCO2N3PAN(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + NO3 = MGLYOX + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'NO3'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 = MGLYOX + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'RO2';
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACO2H = HO2 + CO + HCHO';
k(:,i) = 8.66e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACO2H'; 
fOH(i)=fOH(i)-1; fACO2H(i)=fACO2H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'ACO3H = HO2 + CO + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ACO3H'; 
fACO3H(i)=fACO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACO3H = ACO3';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACO3H'; 
fOH(i)=fOH(i)-1; fACO3H(i)=fACO3H(i)-1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACO3H = HOCH2CHO + CO + OH';
k(:,i) = 6.58e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACO3H'; 
fOH(i)=fOH(i)-1; fACO3H(i)=fACO3H(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACRPAN = ACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'ACRPAN'; 
fACRPAN(i)=fACRPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACRPAN = HOCH2CHO + CO + NO3';
k(:,i) = 1.47e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACRPAN'; 
fOH(i)=fOH(i)-1; fACRPAN(i)=fACRPAN(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO + CO = HOCH2COCHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'HMGLOO'; Gstr{i,2} = 'CO'; 
fHMGLOO(i)=fHMGLOO(i)-1; fCO(i)=fCO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO + NO = HOCH2COCHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'HMGLOO'; Gstr{i,2} = 'NO'; 
fHMGLOO(i)=fHMGLOO(i)-1; fNO(i)=fNO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO + NO2 = HOCH2COCHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'HMGLOO'; Gstr{i,2} = 'NO2'; 
fHMGLOO(i)=fHMGLOO(i)-1; fNO2(i)=fNO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO + SO2 = HOCH2COCHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'HMGLOO'; Gstr{i,2} = 'SO2'; 
fHMGLOO(i)=fHMGLOO(i)-1; fSO2(i)=fSO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO = HOCH2COCHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'HMGLOO'; 
fHMGLOO(i)=fHMGLOO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO = HOCH2COCO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'HMGLOO'; 
fHMGLOO(i)=fHMGLOO(i)-1; fHOCH2COCO2H(i)=fHOCH2COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOOH + OH = H13CO2CHO + OH';
k(:,i) = 5.98e-11;
Gstr{i,1} = 'MVKOHAOOH'; Gstr{i,2} = 'OH'; 
fMVKOHAOOH(i)=fMVKOHAOOH(i)-1; fOH(i)=fOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOOH =  + HOCH2COCHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MVKOHAOOH'; 
fMVKOHAOOH(i)=fMVKOHAOOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOOH =  + HOCH2COCHO + HCHO + HO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'MVKOHAOOH'; 
fMVKOHAOOH(i)=fMVKOHAOOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHANO3 + OH = H13CO2CHO + NO2';
k(:,i) = 4.37e-12;
Gstr{i,1} = 'MVKOHANO3'; Gstr{i,2} = 'OH'; 
fMVKOHANO3(i)=fMVKOHANO3(i)-1; fOH(i)=fOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CHO = HOCH2CHO + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'H13CO2CHO'; 
fH13CO2CHO(i)=fH13CO2CHO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + H13CO2CHO = H13CO2CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'H13CO2CHO'; 
fNO3(i)=fNO3(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)-1; fH13CO2CO3(i)=fH13CO2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + H13CO2CHO = H13CO2CO3';
k(:,i) = 2.66e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H13CO2CHO'; 
fOH(i)=fOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)-1; fH13CO2CO3(i)=fH13CO2CO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOH + OH = H13CO2CHO + HO2';
k(:,i) = 2.10e-11;
Gstr{i,1} = 'MVKOHAOH'; Gstr{i,2} = 'OH'; 
fMVKOHAOH(i)=fMVKOHAOH(i)-1; fOH(i)=fOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOH = HOCH2CO3 + HOCH2CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'MVKOHAOH'; 
fMVKOHAOH(i)=fMVKOHAOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBOOH + OH = H14CO23C4 + OH';
k(:,i) = 4.39e-12;
Gstr{i,1} = 'MVKOHBOOH'; Gstr{i,2} = 'OH'; 
fMVKOHBOOH(i)=fMVKOHBOOH(i)-1; fOH(i)=fOH(i)-1; fH14CO23C4(i)=fH14CO23C4(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBOOH = HOCH2CHO + HOCH2CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'MVKOHBOOH'; 
fMVKOHBOOH(i)=fMVKOHBOOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBOOH =  + HOCH2CHO + HOCH2CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MVKOHBOOH'; 
fMVKOHBOOH(i)=fMVKOHBOOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H14CO23C4 + OH = H1CO23CHO + HO2';
k(:,i) = 4.44e-12;
Gstr{i,1} = 'H14CO23C4'; Gstr{i,2} = 'OH'; 
fH14CO23C4(i)=fH14CO23C4(i)-1; fOH(i)=fOH(i)-1; fH1CO23CHO(i)=fH1CO23CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H14CO23C4 = HOCH2CO3 + HOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'H14CO23C4'; 
fH14CO23C4(i)=fH14CO23C4(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'IEACHO = HMVKBO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'IEACHO'; 
fIEACHO(i)=fIEACHO(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + IEACHO = IEACO3 + HNO3';
k(:,i) = KNO3AL.*7.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'IEACHO'; 
fNO3(i)=fNO3(i)-1; fIEACHO(i)=fIEACHO(i)-1; fIEACO3(i)=fIEACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEACHO = IEACO3';
k(:,i) = 2.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEACHO'; 
fOH(i)=fOH(i)-1; fIEACHO(i)=fIEACHO(i)-1; fIEACO3(i)=fIEACO3(i)+1; 

i=i+1;
Rnames{i} = 'C526OOH + OH = HMVKBOOH + CO + OH';
k(:,i) = 5.70e-11.*0.46;
Gstr{i,1} = 'C526OOH'; Gstr{i,2} = 'OH'; 
fC526OOH(i)=fC526OOH(i)-1; fOH(i)=fOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C526OOH + OH = IEC2OOH + OH';
k(:,i) = 5.70e-11.*0.54;
Gstr{i,1} = 'C526OOH'; Gstr{i,2} = 'OH'; 
fC526OOH(i)=fC526OOH(i)-1; fOH(i)=fOH(i)-1; fIEC2OOH(i)=fIEC2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C526OOH = HMVKBOOH + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C526OOH'; 
fC526OOH(i)=fC526OOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C526OOH = MGLYOX + HOCH2CHO + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'C526OOH'; 
fC526OOH(i)=fC526OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C526NO3 + OH = HMVKBOOH + CO + NO2';
k(:,i) = 1.56e-11;
Gstr{i,1} = 'C526NO3'; Gstr{i,2} = 'OH'; 
fC526NO3(i)=fC526NO3(i)-1; fOH(i)=fOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C526NO3 =  + MGLYOX + HOCH2CHO + OH + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C526NO3'; 
fC526NO3(i)=fC526NO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO + CO = NO3CH2CHO';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'CO'; 
fNC2OO(i)=fNC2OO(i)-1; fCO(i)=fCO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO + NO = NO3CH2CHO + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'NO'; 
fNC2OO(i)=fNC2OO(i)-1; fNO(i)=fNO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO + NO2 = NO3CH2CHO + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'NO2'; 
fNC2OO(i)=fNC2OO(i)-1; fNO2(i)=fNO2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO + SO2 = NO3CH2CHO + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'SO2'; 
fNC2OO(i)=fNC2OO(i)-1; fSO2(i)=fSO2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO = NO3CH2CHO + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NC2OO'; 
fNC2OO(i)=fNC2OO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO = NO3CH2CO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'NC2OO'; 
fNC2OO(i)=fNC2OO(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO + CO = ACETOL';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'CO'; 
fACLOO(i)=fACLOO(i)-1; fCO(i)=fCO(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO + NO = ACETOL + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'NO'; 
fACLOO(i)=fACLOO(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO + NO2 = ACETOL + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'NO2'; 
fACLOO(i)=fACLOO(i)-1; fNO2(i)=fNO2(i)-1; fACETOL(i)=fACETOL(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO + SO2 = ACETOL + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'SO2'; 
fACLOO(i)=fACLOO(i)-1; fSO2(i)=fSO2(i)-1; fACETOL(i)=fACETOL(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO = ACETOL + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'ACLOO'; 
fACLOO(i)=fACLOO(i)-1; fACETOL(i)=fACETOL(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = HCHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = NO3CH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = NO3CH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fNO3CH2CO3H(i)=fNO3CH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO = HCHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO2 = NO3CH2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fNO3CH2PAN(i)=fNO3CH2PAN(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO3 = HCHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO3'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 = HCHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'RO2';
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 = NO3CH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'RO2';
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOOH + OH = C3MDIALO2';
k(:,i) = 1.35e-10;
Gstr{i,1} = 'C3MDIALOOH'; Gstr{i,2} = 'OH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fOH(i)=fOH(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOOH =  + MGLYOX + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C3MDIALOOH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOOH = MGLYOX + OH + HO2 + CO';
k(:,i) = J17.*2;
Gstr{i,1} = 'C3MDIALOOH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOOH =  + CH3CO3 + HCHO + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BIACETOOH'; 
fBIACETOOH(i)=fBIACETOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOOH =  + CH3CO3 + HCHO + CO + OH';
k(:,i) = J35;
Gstr{i,1} = 'BIACETOOH'; 
fBIACETOOH(i)=fBIACETOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOOH = BIACETO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOOH'; 
fOH(i)=fOH(i)-1; fBIACETOOH(i)=fBIACETOOH(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOOH = CO23C3CHO + OH';
k(:,i) = 5.99e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOOH'; 
fOH(i)=fOH(i)-1; fBIACETOOH(i)=fBIACETOOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H + OH = CH3COCO3';
k(:,i) = 3.69e-12;
Gstr{i,1} = 'CH3COCO3H'; Gstr{i,2} = 'OH'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fOH(i)=fOH(i)-1; fCH3COCO3(i)=fCH3COCO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H = CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3COCO3H'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H = CH3CO3 + OH';
k(:,i) = J35;
Gstr{i,1} = 'CH3COCO3H'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + HO2 = C534OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'HO2'; 
fC534O2(i)=fC534O2(i)-1; fHO2(i)=fHO2(i)-1; fC534OOH(i)=fC534OOH(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + NO =  + CH3COCO3H + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'NO'; 
fC534O2(i)=fC534O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + NO3 =  + CH3COCO3H + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'NO3'; 
fC534O2(i)=fC534O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 =  + CH3COCO3H + GLYOX + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'RO2';
fC534O2(i)=fC534O2(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + HO2 =  + 0.35MGLYOX + 0.35HO2 + 0.35CO + 0.65MMALANHY + 0.65HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'HO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+0.35; fHO2(i)=fHO2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + HO2 = C5PACALD1';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'HO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO =  + 0.35MGLYOX + 0.35HO2 + 0.35CO + 0.65MMALANHY + 0.65HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+0.35; fHO2(i)=fHO2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO2 = C3MCODBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO2(i)=fNO2(i)-1; fC3MCODBPAN(i)=fC3MCODBPAN(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO3 = NO2 +  + 0.35MGLYOX + 0.35HO2 + 0.35CO + 0.65MMALANHY + 0.65HO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO3'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+0.35; fHO2(i)=fHO2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 =  + 0.35MGLYOX + 0.35HO2 + 0.35CO + 0.65MMALANHY + 0.65HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'RO2';
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+0.35; fHO2(i)=fHO2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 = C5PACALD2';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 =  + 0.35GLYOX + 0.35CH3O2 + 0.35CO + 0.65MMALANHY + 0.65HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fGLYOX(i)=fGLYOX(i)+0.35; fCH3O2(i)=fCH3O2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 = MC3ODBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMC3ODBCO2H(i)=fMC3ODBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO =  + 0.35GLYOX + 0.35CH3O2 + 0.35CO + 0.65MMALANHY + 0.65HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+0.35; fCH3O2(i)=fCH3O2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO2 = MC3CODBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO2(i)=fNO2(i)-1; fMC3CODBPAN(i)=fMC3CODBPAN(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO3 =  + 0.35GLYOX + 0.35CH3O2 + 0.35CO + 0.65MMALANHY + 0.65HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO3'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+0.35; fCH3O2(i)=fCH3O2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 =  + 0.35GLYOX + 0.35CH3O2 + 0.35CO + 0.65MMALANHY + 0.65HO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'RO2';
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fGLYOX(i)=fGLYOX(i)+0.35; fCH3O2(i)=fCH3O2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 = MC3ODBCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'RO2';
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fMC3ODBCO2H(i)=fMC3ODBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + HO2 = C4MALOHOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'HO2'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fHO2(i)=fHO2(i)-1; fC4MALOHOOH(i)=fC4MALOHOOH(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + NO =  + GLYOX + MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'NO'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + NO3 =  + GLYOX + MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'NO3'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 = C4M2AL2OH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'RO2';
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fC4M2AL2OH(i)=fC4M2AL2OH(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 =  + GLYOX + MGLYOX + HO2';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'RO2';
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + NO3 = NPXYFUO2';
k(:,i) = 1.00e-12;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'NO3'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fNO3(i)=fNO3(i)-1; fNPXYFUO2(i)=fNPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + O3 = OH + CO + MCOCOMOXO2';
k(:,i) = 8.00e-19;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'O3'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + OH = PXYFUO2';
k(:,i) = 2.42e-11;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'OH'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fOH(i)=fOH(i)-1; fPXYFUO2(i)=fPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACO2H = ACETOL + CO + HO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACO2H'; 
fOH(i)=fOH(i)-1; fHC4ACO2H(i)=fHC4ACO2H(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3H = ACETOL + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC4ACO3H'; 
fHC4ACO3H(i)=fHC4ACO3H(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACO3H = MACROH + CO + OH';
k(:,i) = 3.84e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACO3H'; 
fOH(i)=fOH(i)-1; fHC4ACO3H(i)=fHC4ACO3H(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN17 = HC4ACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN17'; 
fC5PAN17(i)=fC5PAN17(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN17 = MACROH + CO + NO3';
k(:,i) = 7.79e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN17'; 
fOH(i)=fOH(i)-1; fC5PAN17(i)=fC5PAN17(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C58AOOH + OH = MACROH + CO + OH';
k(:,i) = 3.70e-11;
Gstr{i,1} = 'C58AOOH'; Gstr{i,2} = 'OH'; 
fC58AOOH(i)=fC58AOOH(i)-1; fOH(i)=fOH(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C58AOOH =  + ACETOL + GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C58AOOH'; 
fC58AOOH(i)=fC58AOOH(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C58ANO3 + OH = C47CHO + HO2';
k(:,i) = 8.14e-12;
Gstr{i,1} = 'C58ANO3'; Gstr{i,2} = 'OH'; 
fC58ANO3(i)=fC58ANO3(i)-1; fOH(i)=fOH(i)-1; fC47CHO(i)=fC47CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58ANO3 = GLYOX + ACETOL + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C58ANO3'; 
fC58ANO3(i)=fC58ANO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1CHO + OH = C4M2ALOHO2';
k(:,i) = 2.01e-11;
Gstr{i,1} = 'IEB1CHO'; Gstr{i,2} = 'OH'; 
fIEB1CHO(i)=fIEB1CHO(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO2(i)=fC4M2ALOHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB4CHO + OH = C4M2ALOHO2';
k(:,i) = 2.01e-11;
Gstr{i,1} = 'IEB4CHO'; Gstr{i,2} = 'OH'; 
fIEB4CHO(i)=fIEB4CHO(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO2(i)=fC4M2ALOHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO + CO = MACRNO3';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'CO'; 
fMACRNOO(i)=fMACRNOO(i)-1; fCO(i)=fCO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO + NO = MACRNO3 + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'NO'; 
fMACRNOO(i)=fMACRNOO(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO + NO2 = MACRNO3 + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'NO2'; 
fMACRNOO(i)=fMACRNOO(i)-1; fNO2(i)=fNO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO + SO2 = MACRNO3 + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'SO2'; 
fMACRNOO(i)=fMACRNOO(i)-1; fSO2(i)=fSO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO = MACRNCO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'MACRNOO'; 
fMACRNOO(i)=fMACRNOO(i)-1; fMACRNCO2H(i)=fMACRNCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO = MACRNO3 + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MACRNOO'; 
fMACRNOO(i)=fMACRNOO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + OH = INB1CO + OH';
k(:,i) = 1.27e-11.*0.35;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1CO(i)=fINB1CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + OH = INB1HPCHO + HO2';
k(:,i) = 1.27e-11.*0.34;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1HPCHO(i)=fINB1HPCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + OH = INB1O2';
k(:,i) = 1.27e-11.*0.31;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1O2(i)=fINB1O2(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH =  + HOCH2CHO + ACETOL + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB1OOH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NO3 + OH = INB1NACHO + HO2';
k(:,i) = 1.63e-12.*0.50;
Gstr{i,1} = 'INB1NO3'; Gstr{i,2} = 'OH'; 
fINB1NO3(i)=fINB1NO3(i)-1; fOH(i)=fOH(i)-1; fINB1NACHO(i)=fINB1NACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NO3 + OH = INB1NBCHO + HO2';
k(:,i) = 1.63e-12.*0.50;
Gstr{i,1} = 'INB1NO3'; Gstr{i,2} = 'OH'; 
fINB1NO3(i)=fINB1NO3(i)-1; fOH(i)=fOH(i)-1; fINB1NBCHO(i)=fINB1NBCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1CO + OH = INB1GLYOX + HO2';
k(:,i) = 3.27e-12;
Gstr{i,1} = 'INB1CO'; Gstr{i,2} = 'OH'; 
fINB1CO(i)=fINB1CO(i)-1; fOH(i)=fOH(i)-1; fINB1GLYOX(i)=fINB1GLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1CO = ACETOL + NO2 + HOCH2CO3';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'INB1CO'; 
fINB1CO(i)=fINB1CO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1OH + OH = C58NO3 + HO2';
k(:,i) = 6.65e-12.*0.71;
Gstr{i,1} = 'INB1OH'; Gstr{i,2} = 'OH'; 
fINB1OH(i)=fINB1OH(i)-1; fOH(i)=fOH(i)-1; fC58NO3(i)=fC58NO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1OH + OH = INB1CO + HO2';
k(:,i) = 6.65e-12.*0.29;
Gstr{i,1} = 'INB1OH'; Gstr{i,2} = 'OH'; 
fINB1OH(i)=fINB1OH(i)-1; fOH(i)=fOH(i)-1; fINB1CO(i)=fINB1CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB2OOH + OH = C58NO3 + OH';
k(:,i) = 1.59e-11.*0.73;
Gstr{i,1} = 'INB2OOH'; Gstr{i,2} = 'OH'; 
fINB2OOH(i)=fINB2OOH(i)-1; fOH(i)=fOH(i)-1; fC58NO3(i)=fC58NO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB2OOH + OH = INB2O2';
k(:,i) = 1.59e-11.*0.27;
Gstr{i,1} = 'INB2OOH'; Gstr{i,2} = 'OH'; 
fINB2OOH(i)=fINB2OOH(i)-1; fOH(i)=fOH(i)-1; fINB2O2(i)=fINB2O2(i)+1; 

i=i+1;
Rnames{i} = 'INB2OOH =  + C57NO3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB2OOH'; 
fINB2OOH(i)=fINB2OOH(i)-1; fC57NO3(i)=fC57NO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IECCHO = MACRO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'IECCHO'; 
fIECCHO(i)=fIECCHO(i)-1; fMACRO2(i)=fMACRO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + IECCHO = IECCO3 + HNO3';
k(:,i) = KNO3AL.*7.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'IECCHO'; 
fNO3(i)=fNO3(i)-1; fIECCHO(i)=fIECCHO(i)-1; fIECCO3(i)=fIECCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + IECCHO = IECCO3';
k(:,i) = 2.76e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IECCHO'; 
fOH(i)=fOH(i)-1; fIECCHO(i)=fIECCHO(i)-1; fIECCO3(i)=fIECCO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H = HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCO3H'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H = HO2 + CO + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCO3H'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCO3H = HCOCO3';
k(:,i) = 1.58e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCO3H'; 
fOH(i)=fOH(i)-1; fHCOCO3H(i)=fHCOCO3H(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + HO2 = C535OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'HO2'; 
fC535O2(i)=fC535O2(i)-1; fHO2(i)=fHO2(i)-1; fC535OOH(i)=fC535OOH(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + NO =  + HCOCO3H + MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'NO'; 
fC535O2(i)=fC535O2(i)-1; fNO(i)=fNO(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + NO3 =  + HCOCO3H + MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'NO3'; 
fC535O2(i)=fC535O2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 =  + HCOCO3H + MGLYOX + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'RO2';
fC535O2(i)=fC535O2(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52OOH + OH = HPC52CO3';
k(:,i) = 4.40e-11;
Gstr{i,1} = 'HPC52OOH'; Gstr{i,2} = 'OH'; 
fHPC52OOH(i)=fHPC52OOH(i)-1; fOH(i)=fOH(i)-1; fHPC52CO3(i)=fHPC52CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC52OOH = HO2 + DHPMPAL + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HPC52OOH'; 
fHPC52OOH(i)=fHPC52OOH(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HPC52OOH =  + GLYOX + HYPERACET + HO2 + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'HPC52OOH'; 
fHPC52OOH(i)=fHPC52OOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCO2H = CH3CO3 + HOCH2CHO';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCO2H'; 
fOH(i)=fOH(i)-1; fHC4CCO2H(i)=fHC4CCO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3H = HOCH2CHO + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC4CCO3H'; 
fHC4CCO3H(i)=fHC4CCO3H(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCO3H = HO12CO3C4 + CO + OH';
k(:,i) = 3.84e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCO3H'; 
fOH(i)=fOH(i)-1; fHC4CCO3H(i)=fHC4CCO3H(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN19 = HC4CCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN19'; 
fC5PAN19(i)=fC5PAN19(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN19 = HO12CO3C4 + CO + NO3';
k(:,i) = 7.79e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN19'; 
fOH(i)=fOH(i)-1; fC5PAN19(i)=fC5PAN19(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C57AOOH + OH = HMVKBOOH + CO + HO2';
k(:,i) = 4.50e-11;
Gstr{i,1} = 'C57AOOH'; Gstr{i,2} = 'OH'; 
fC57AOOH(i)=fC57AOOH(i)-1; fOH(i)=fOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57AOOH =  + HOCH2CHO + MGLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C57AOOH'; 
fC57AOOH(i)=fC57AOOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHCHO + OH = INDHCO3';
k(:,i) = 2.27e-11;
Gstr{i,1} = 'INDHCHO'; Gstr{i,2} = 'OH'; 
fINDHCHO(i)=fINDHCHO(i)-1; fOH(i)=fOH(i)-1; fINDHCO3(i)=fINDHCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHCHO = MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'INDHCHO'; 
fINDHCHO(i)=fINDHCHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57OOH =  + MGLYOX + HOCH2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C57OOH'; 
fC57OOH(i)=fC57OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C57OOH = HO12CO3C4 + CO + OH';
k(:,i) = 3.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C57OOH'; 
fOH(i)=fOH(i)-1; fC57OOH(i)=fC57OOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3 + OH = C4M2ALOHNO3 + HO2';
k(:,i) = 9.37e-12.*0.54;
Gstr{i,1} = 'C57NO3'; Gstr{i,2} = 'OH'; 
fC57NO3(i)=fC57NO3(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3 + OH = C57NO3CO3';
k(:,i) = 9.37e-12.*0.46;
Gstr{i,1} = 'C57NO3'; Gstr{i,2} = 'OH'; 
fC57NO3(i)=fC57NO3(i)-1; fOH(i)=fOH(i)-1; fC57NO3CO3(i)=fC57NO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3 = MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C57NO3'; 
fC57NO3(i)=fC57NO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C57OH =  + MGLYOX + HOCH2CHO + HO2';
k(:,i) = 3.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C57OH'; 
fOH(i)=fOH(i)-1; fC57OH(i)=fC57OH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO + CO = MVKNO3';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'CO'; 
fNC4OO(i)=fNC4OO(i)-1; fCO(i)=fCO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO + NO = MVKNO3 + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'NO'; 
fNC4OO(i)=fNC4OO(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO + NO2 = MVKNO3 + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'NO2'; 
fNC4OO(i)=fNC4OO(i)-1; fNO2(i)=fNO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO + SO2 = MVKNO3 + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'SO2'; 
fNC4OO(i)=fNC4OO(i)-1; fSO2(i)=fSO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO = MVKNO3 + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NC4OO'; 
fNC4OO(i)=fNC4OO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'INDOOH + OH = INDHPCHO + HO2';
k(:,i) = 9.20e-12.*0.61;
Gstr{i,1} = 'INDOOH'; Gstr{i,2} = 'OH'; 
fINDOOH(i)=fINDOOH(i)-1; fOH(i)=fOH(i)-1; fINDHPCHO(i)=fINDHPCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INDOOH + OH = INDO2';
k(:,i) = 9.20e-12.*0.39;
Gstr{i,1} = 'INDOOH'; Gstr{i,2} = 'OH'; 
fINDOOH(i)=fINDOOH(i)-1; fOH(i)=fOH(i)-1; fINDO2(i)=fINDO2(i)+1; 

i=i+1;
Rnames{i} = 'INDOOH =  + ACETOL + HOCH2CHO + NO2 + HCHO + HO2 + MVKNO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INDOOH'; 
fINDOOH(i)=fINDOOH(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDOH + OH = INDHCHO + HO2';
k(:,i) = 5.60e-12;
Gstr{i,1} = 'INDOH'; Gstr{i,2} = 'OH'; 
fINDOH(i)=fINDOH(i)-1; fOH(i)=fOH(i)-1; fINDHCHO(i)=fINDHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C59OOH =  + ACETOL + HOCH2CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C59OOH'; 
fC59OOH(i)=fC59OOH(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C59OOH = HOCH2CO3 + ACETOL + OH';
k(:,i) = J22;
Gstr{i,1} = 'C59OOH'; 
fC59OOH(i)=fC59OOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C59OOH = C59O2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C59OOH'; 
fOH(i)=fOH(i)-1; fC59OOH(i)=fC59OOH(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C59OOH = IEC2OOH + HO2';
k(:,i) = 1.57e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C59OOH'; 
fOH(i)=fOH(i)-1; fC59OOH(i)=fC59OOH(i)-1; fIEC2OOH(i)=fIEC2OOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCHO = HMVKANO3 + OH + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'INAHPCHO'; 
fINAHPCHO(i)=fINAHPCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCHO = HMVKANO3 + OH + CO + HO2';
k(:,i) = J41;
Gstr{i,1} = 'INAHPCHO'; 
fINAHPCHO(i)=fINAHPCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPCHO = INAHPCO3';
k(:,i) = 2.67e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPCHO'; 
fOH(i)=fOH(i)-1; fINAHPCHO(i)=fINAHPCHO(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCHO = HMVKANO3 + NO2 + CO + HO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'INANCHO'; 
fINANCHO(i)=fINANCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCHO = INANCO3';
k(:,i) = 4.22e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCHO'; 
fOH(i)=fOH(i)-1; fINANCHO(i)=fINANCHO(i)-1; fINANCO3(i)=fINANCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCO = ACETOL + NO2 + NO3CH2CO3';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'INANCO'; 
fINANCO(i)=fINANCO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCO = INANCOCHO + HO2';
k(:,i) = 1.21e-12.*0.56;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCO'; 
fOH(i)=fOH(i)-1; fINANCO(i)=fINANCO(i)-1; fINANCOCHO(i)=fINANCOCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCO = INB1GLYOX + NO2';
k(:,i) = 1.21e-12.*0.44;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCO'; 
fOH(i)=fOH(i)-1; fINANCO(i)=fINANCO(i)-1; fINB1GLYOX(i)=fINB1GLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCHO = HMVKANO3 + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'INAHCHO'; 
fINAHCHO(i)=fINAHCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHCHO = INAHCO3';
k(:,i) = 2.29e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHCHO'; 
fOH(i)=fOH(i)-1; fINAHCHO(i)=fINAHCHO(i)-1; fINAHCO3(i)=fINAHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + HO2 = C58NO3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'HO2'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC58NO3CO2H(i)=fC58NO3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + HO2 = C58NO3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'HO2'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC58NO3CO3H(i)=fC58NO3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + HO2 = MACRNO3 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'HO2'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + NO = MACRNO3 + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'NO'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + NO2 = C58NO3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'NO2'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC58NO3PAN(i)=fC58NO3PAN(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 = C58NO3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'RO2';
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fC58NO3CO2H(i)=fC58NO3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 = MACRNO3 + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'RO2';
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCHOCOOH + OH = HOCH2COCHO + OH';
k(:,i) = 4.77e-11;
Gstr{i,1} = 'HOCHOCOOH'; Gstr{i,2} = 'OH'; 
fHOCHOCOOH(i)=fHOCHOCOOH(i)-1; fOH(i)=fOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCHOCOOH =  + HOCH2CHO + HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCHOCOOH'; 
fHOCHOCOOH(i)=fHOCHOCOOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCOH + OH = A2PANOO';
k(:,i) = 6.22e-11;
Gstr{i,1} = 'OCCOHCOH'; Gstr{i,2} = 'OH'; 
fOCCOHCOH(i)=fOCCOHCOH(i)-1; fOH(i)=fOH(i)-1; fA2PANOO(i)=fA2PANOO(i)+1; 

i=i+1;
Rnames{i} = 'C32OH13CO + OH = HCOCOHCO3';
k(:,i) = 1.36e-10;
Gstr{i,1} = 'C32OH13CO'; Gstr{i,2} = 'OH'; 
fC32OH13CO(i)=fC32OH13CO(i)-1; fOH(i)=fOH(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C32OH13CO = GLYOX + HO2 + HO2 + CO';
k(:,i) = J15.*2;
Gstr{i,1} = 'C32OH13CO'; 
fC32OH13CO(i)=fC32OH13CO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCOOH + OH = OCCOHCO2';
k(:,i) = 9.258E-11;
Gstr{i,1} = 'OCCOHCOOH'; Gstr{i,2} = 'OH'; 
fOCCOHCOOH(i)=fOCCOHCOOH(i)-1; fOH(i)=fOH(i)-1; fOCCOHCO2(i)=fOCCOHCO2(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCOOH =  + HCHO + GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'OCCOHCOOH'; 
fOCCOHCOOH(i)=fOCCOHCOOH(i)-1; fHCHO(i)=fHCHO(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C42AOH = HO2 + CO + HO2 + NO3CH2CHO';
k(:,i) = J15;
Gstr{i,1} = 'C42AOH'; 
fC42AOH(i)=fC42AOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + C42AOH = NMGLYOX + HO2';
k(:,i) = 2.92e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C42AOH'; 
fOH(i)=fOH(i)-1; fC42AOH(i)=fC42AOH(i)-1; fNMGLYOX(i)=fNMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + HO2 = ETHO2HNO3';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'HO2'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fHO2(i)=fHO2(i)-1; fETHO2HNO3(i)=fETHO2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + NO =  + NO2 + HCHO + HCHO + NO3CH2CHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'NO'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + NO3 =  + NO2 + HCHO + HCHO + NO3CH2CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'NO3'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 =  + NO2 + HCHO + HCHO + NO3CH2CHO + HO2';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 = ETHOHNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fETHOHNO3(i)=fETHOHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 = NO3CH2CHO';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + HO2 = HYETHO2H';
k(:,i) = 1.53e-13.*exp(1300./T);
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'HO2'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHYETHO2H(i)=fHYETHO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = ETHOHNO3';
k(:,i) = KRO2NO.*0.005;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fETHOHNO3(i)=fETHOHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO =  + HO2 + HCHO + HCHO + HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO.*0.995;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO3 =  + HO2 + HCHO + HCHO + HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO3'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 = ETHGLY';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.2;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fETHGLY(i)=fETHGLY(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 =  + HO2 + HCHO + HCHO + HO2 + HOCH2CHO';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.6;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 = HOCH2CHO';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.2;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'C524OOH + OH = C524CO + OH';
k(:,i) = 1.18e-10.*0.22;
Gstr{i,1} = 'C524OOH'; Gstr{i,2} = 'OH'; 
fC524OOH(i)=fC524OOH(i)-1; fOH(i)=fOH(i)-1; fC524CO(i)=fC524CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C524OOH + OH = C524O2';
k(:,i) = 1.18e-10.*0.03;
Gstr{i,1} = 'C524OOH'; Gstr{i,2} = 'OH'; 
fC524OOH(i)=fC524OOH(i)-1; fOH(i)=fOH(i)-1; fC524O2(i)=fC524O2(i)+1; 

i=i+1;
Rnames{i} = 'C524OOH + OH = HIEPOXB + OH';
k(:,i) = 1.18e-10.*0.75;
Gstr{i,1} = 'C524OOH'; Gstr{i,2} = 'OH'; 
fC524OOH(i)=fC524OOH(i)-1; fOH(i)=fOH(i)-1; fHIEPOXB(i)=fHIEPOXB(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C524OOH =  + HMACR + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C524OOH'; 
fC524OOH(i)=fC524OOH(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C524NO3 + OH = NC524O2';
k(:,i) = 2.94e-11;
Gstr{i,1} = 'C524NO3'; Gstr{i,2} = 'OH'; 
fC524NO3(i)=fC524NO3(i)-1; fOH(i)=fOH(i)-1; fNC524O2(i)=fNC524O2(i)+1; 

i=i+1;
Rnames{i} = 'C524NO3 =  + HMACR + HCHO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C524NO3'; 
fC524NO3(i)=fC524NO3(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C524CO + OH = C525O2';
k(:,i) = 4.21e-11;
Gstr{i,1} = 'C524CO'; Gstr{i,2} = 'OH'; 
fC524CO(i)=fC524CO(i)-1; fOH(i)=fOH(i)-1; fC525O2(i)=fC525O2(i)+1; 

i=i+1;
Rnames{i} = 'C524CO = HOCH2CO3 + HOCH2CO3 + HCHO';
k(:,i) = J24;
Gstr{i,1} = 'C524CO'; 
fC524CO(i)=fC524CO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C524OH + OH = C524CO + HO2';
k(:,i) = 7.78e-11;
Gstr{i,1} = 'C524OH'; Gstr{i,2} = 'OH'; 
fC524OH(i)=fC524OH(i)-1; fOH(i)=fOH(i)-1; fC524CO(i)=fC524CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + NO3 = HMACO3 + HNO3';
k(:,i) = 3.40e-15;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'NO3'; 
fHMACR(i)=fHMACR(i)-1; fNO3(i)=fNO3(i)-1; fHMACO3(i)=fHMACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + O3 =  + 0.37CH2OO + 0.50CO + 0.13HO2 + 0.13CO + 0.13OH + HOCH2COCHO';
k(:,i) = 7.80e-19.*0.5;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'O3'; 
fHMACR(i)=fHMACR(i)-1; fO3(i)=fO3(i)-1; fCH2OO(i)=fCH2OO(i)+0.37; fCO(i)=fCO(i)+0.50; fHO2(i)=fHO2(i)+0.13; fCO(i)=fCO(i)+0.13; fOH(i)=fOH(i)+0.13; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + O3 = HCHO +  + 0.18HMGLYOO + 0.82HOCH2CO3 + 0.82CO + 0.82HO2';
k(:,i) = 7.80e-19.*0.5;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'O3'; 
fHMACR(i)=fHMACR(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHMGLYOO(i)=fHMGLYOO(i)+0.18; fHOCH2CO3(i)=fHOCH2CO3(i)+0.82; fCO(i)=fCO(i)+0.82; fHO2(i)=fHO2(i)+0.82; 

i=i+1;
Rnames{i} = 'HMACR + OH = HMACO3';
k(:,i) = 4.83e-11.*0.376;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'OH'; 
fHMACR(i)=fHMACR(i)-1; fOH(i)=fOH(i)-1; fHMACO3(i)=fHMACO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + OH = HMACRO2';
k(:,i) = 4.83e-11.*0.624;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'OH'; 
fHMACR(i)=fHMACR(i)-1; fOH(i)=fOH(i)-1; fHMACRO2(i)=fHMACRO2(i)+1; 

i=i+1;
Rnames{i} = 'C531O2 + HO2 = C531OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C531O2'; Gstr{i,2} = 'HO2'; 
fC531O2(i)=fC531O2(i)-1; fHO2(i)=fHO2(i)-1; fC531OOH(i)=fC531OOH(i)+1; 

i=i+1;
Rnames{i} = 'C531O2 + NO =  + C31CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C531O2'; Gstr{i,2} = 'NO'; 
fC531O2(i)=fC531O2(i)-1; fNO(i)=fNO(i)-1; fC31CO3(i)=fC31CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C531O2 + NO3 =  + C31CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C531O2'; Gstr{i,2} = 'NO3'; 
fC531O2(i)=fC531O2(i)-1; fNO3(i)=fNO3(i)-1; fC31CO3(i)=fC31CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C531O2 =  + C31CO3 + HCHO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'C531O2'; Gstr{i,2} = 'RO2';
fC531O2(i)=fC531O2(i)-1; fC31CO3(i)=fC31CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO + CO = C532CO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'M3FOO'; Gstr{i,2} = 'CO'; 
fM3FOO(i)=fM3FOO(i)-1; fCO(i)=fCO(i)-1; fC532CO(i)=fC532CO(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO + NO = C532CO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'M3FOO'; Gstr{i,2} = 'NO'; 
fM3FOO(i)=fM3FOO(i)-1; fNO(i)=fNO(i)-1; fC532CO(i)=fC532CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO + NO2 = C532CO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'M3FOO'; Gstr{i,2} = 'NO2'; 
fM3FOO(i)=fM3FOO(i)-1; fNO2(i)=fNO2(i)-1; fC532CO(i)=fC532CO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO + SO2 = C532CO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'M3FOO'; Gstr{i,2} = 'SO2'; 
fM3FOO(i)=fM3FOO(i)-1; fSO2(i)=fSO2(i)-1; fC532CO(i)=fC532CO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO = C532CO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'M3FOO'; 
fM3FOO(i)=fM3FOO(i)-1; fC532CO(i)=fC532CO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + HO2 = INCNCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'HO2'; 
fINCNCO3(i)=fINCNCO3(i)-1; fHO2(i)=fHO2(i)-1; fINCNCO2H(i)=fINCNCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + HO2 = INCNCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'HO2'; 
fINCNCO3(i)=fINCNCO3(i)-1; fHO2(i)=fHO2(i)-1; fINCNCO3H(i)=fINCNCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + HO2 = MACRNB + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'HO2'; 
fINCNCO3(i)=fINCNCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + NO = MACRNB + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'NO'; 
fINCNCO3(i)=fINCNCO3(i)-1; fNO(i)=fNO(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + NO2 = INCNPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'NO2'; 
fINCNCO3(i)=fINCNCO3(i)-1; fNO2(i)=fNO2(i)-1; fINCNPAN(i)=fINCNPAN(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + NO3 = MACRNB + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'NO3'; 
fINCNCO3(i)=fINCNCO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 = INCNCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'RO2';
fINCNCO3(i)=fINCNCO3(i)-1; fINCNCO2H(i)=fINCNCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 = MACRNB + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'RO2';
fINCNCO3(i)=fINCNCO3(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO2H + OH = MGLYOX + NO2';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CONM2CO2H'; Gstr{i,2} = 'OH'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO2H = CO + HO2 + NO2 + CH3COCO2H';
k(:,i) = J56.*10;
Gstr{i,1} = 'CONM2CO2H'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H + OH = CONM2CO3';
k(:,i) = 6.78e-12;
Gstr{i,1} = 'CONM2CO3H'; Gstr{i,2} = 'OH'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H = CO + HO2 + NO2 + CH3COCO3H';
k(:,i) = J56.*10;
Gstr{i,1} = 'CONM2CO3H'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN + OH = CH3COPAN + CO + NO2';
k(:,i) = 3.18e-12;
Gstr{i,1} = 'CONM2PAN'; Gstr{i,2} = 'OH'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fOH(i)=fOH(i)-1; fCH3COPAN(i)=fCH3COPAN(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN = CONM2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN = CONM2CO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO2H + OH = CH3COCH3 + HO2';
k(:,i) = 1.72e-12;
Gstr{i,1} = 'IPRHOCO2H'; Gstr{i,2} = 'OH'; 
fIPRHOCO2H(i)=fIPRHOCO2H(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3H = CH3COCH3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPRHOCO3H'; 
fIPRHOCO3H(i)=fIPRHOCO3H(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IPRHOCO3H = IPRHOCO3';
k(:,i) = 4.80e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IPRHOCO3H'; 
fOH(i)=fOH(i)-1; fIPRHOCO3H(i)=fIPRHOCO3H(i)-1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN5 = IPRHOCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN5'; 
fC4PAN5(i)=fC4PAN5(i)-1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN5 = CH3COCH3 + CO + NO2';
k(:,i) = 4.75e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN5'; 
fOH(i)=fOH(i)-1; fC4PAN5(i)=fC4PAN5(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO2H + OH = GLYOX + HO2';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'COHM2CO2H'; Gstr{i,2} = 'OH'; 
fCOHM2CO2H(i)=fCOHM2CO2H(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO2H = HCOCO2H + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'COHM2CO2H'; 
fCOHM2CO2H(i)=fCOHM2CO2H(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3H + OH = COHM2CO3';
k(:,i) = 2.47e-11;
Gstr{i,1} = 'COHM2CO3H'; Gstr{i,2} = 'OH'; 
fCOHM2CO3H(i)=fCOHM2CO3H(i)-1; fOH(i)=fOH(i)-1; fCOHM2CO3(i)=fCOHM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3H = GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'COHM2CO3H'; 
fCOHM2CO3H(i)=fCOHM2CO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3H = HCOCO3H + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'COHM2CO3H'; 
fCOHM2CO3H(i)=fCOHM2CO3H(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2PAN + OH = GLYOX + NO3';
k(:,i) = 2.11e-11;
Gstr{i,1} = 'COHM2PAN'; Gstr{i,2} = 'OH'; 
fCOHM2PAN(i)=fCOHM2PAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'COHM2PAN = COHM2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'COHM2PAN'; 
fCOHM2PAN(i)=fCOHM2PAN(i)-1; fCOHM2CO3(i)=fCOHM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2PAN = COHM2CO3 + NO2';
k(:,i) = J17;
Gstr{i,1} = 'COHM2PAN'; 
fCOHM2PAN(i)=fCOHM2PAN(i)-1; fCOHM2CO3(i)=fCOHM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO2H + OH = CH3CHO + NO2';
k(:,i) = 3.14e-13;
Gstr{i,1} = 'PRNO3CO2H'; Gstr{i,2} = 'OH'; 
fPRNO3CO2H(i)=fPRNO3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3H + OH = PRNO3CO3';
k(:,i) = 3.77e-12;
Gstr{i,1} = 'PRNO3CO3H'; Gstr{i,2} = 'OH'; 
fPRNO3CO3H(i)=fPRNO3CO3H(i)-1; fOH(i)=fOH(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3H = CH3CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PRNO3CO3H'; 
fPRNO3CO3H(i)=fPRNO3CO3H(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3PAN + OH = CH3CHO + CO + NO2 + NO2';
k(:,i) = 1.43e-13;
Gstr{i,1} = 'PRNO3PAN'; Gstr{i,2} = 'OH'; 
fPRNO3PAN(i)=fPRNO3PAN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3PAN = PRNO3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PRNO3PAN'; 
fPRNO3PAN(i)=fPRNO3PAN(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPER + OH = CH3CHOHCO3';
k(:,i) = 9.34e-12;
Gstr{i,1} = 'IPROPOLPER'; Gstr{i,2} = 'OH'; 
fIPROPOLPER(i)=fIPROPOLPER(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPER = CH3CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPROPOLPER'; 
fIPROPOLPER(i)=fIPROPOLPER(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPAN + OH = CH3CHO + CO + NO2';
k(:,i) = 2.34e-12;
Gstr{i,1} = 'IPROPOLPAN'; Gstr{i,2} = 'OH'; 
fIPROPOLPAN(i)=fIPROPOLPAN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPAN = CH3CHOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'IPROPOLPAN'; 
fIPROPOLPAN(i)=fIPROPOLPAN(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3H + OH = CO2N3CO3';
k(:,i) = 4.11e-12;
Gstr{i,1} = 'CO2N3CO3H'; Gstr{i,2} = 'OH'; 
fCO2N3CO3H(i)=fCO2N3CO3H(i)-1; fOH(i)=fOH(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3H = MGLYOX + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2N3CO3H'; 
fCO2N3CO3H(i)=fCO2N3CO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3PAN + OH = CO2N3CO3';
k(:,i) = 5.10e-13;
Gstr{i,1} = 'CO2N3PAN'; Gstr{i,2} = 'OH'; 
fCO2N3PAN(i)=fCO2N3PAN(i)-1; fOH(i)=fOH(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3PAN = CO2N3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CO2N3PAN'; 
fCO2N3PAN(i)=fCO2N3PAN(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3PAN = CO2N3CO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CO2N3PAN'; 
fCO2N3PAN(i)=fCO2N3PAN(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2COCO2H + OH = HOCH2CO3';
k(:,i) = 2.89e-12;
Gstr{i,1} = 'HOCH2COCO2H'; Gstr{i,2} = 'OH'; 
fHOCH2COCO2H(i)=fHOCH2COCO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2COCO2H = HOCH2CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'HOCH2COCO2H'; 
fHOCH2COCO2H(i)=fHOCH2COCO2H(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + HO2 = H13CO2CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'HO2'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fHO2(i)=fHO2(i)-1; fH13CO2CO3H(i)=fH13CO2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + HO2 = HOCH2COCHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'HO2'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + NO = HOCH2COCHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'NO'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fNO(i)=fNO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + NO2 = C4PAN10';
k(:,i) = KFPAN;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'NO2'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN10(i)=fC4PAN10(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + NO3 = HOCH2COCHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'NO3'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 = HOCH2COCHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'RO2';
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO + OH = CO + CO + HOCH2CO3';
k(:,i) = 1.44e-11;
Gstr{i,1} = 'H1CO23CHO'; Gstr{i,2} = 'OH'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO = CO + CO + HOCH2CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'H1CO23CHO'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO = CO + CO + HOCH2CO3 + HO2';
k(:,i) = J35;
Gstr{i,1} = 'H1CO23CHO'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + HO2 = HMVKBO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'HO2'; 
fIEACO3(i)=fIEACO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + HO2 = IEACO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'HO2'; 
fIEACO3(i)=fIEACO3(i)-1; fHO2(i)=fHO2(i)-1; fIEACO3H(i)=fIEACO3H(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + NO = HMVKBO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'NO'; 
fIEACO3(i)=fIEACO3(i)-1; fNO(i)=fNO(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + NO2 = IEAPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'NO2'; 
fIEACO3(i)=fIEACO3(i)-1; fNO2(i)=fNO2(i)-1; fIEAPAN(i)=fIEAPAN(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + NO3 = HMVKBO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'NO3'; 
fIEACO3(i)=fIEACO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 = HMVKBO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'RO2';
fIEACO3(i)=fIEACO3(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC2OOH = BIACETOH + OH + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'IEC2OOH'; 
fIEC2OOH(i)=fIEC2OOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC2OOH = MGLYOX + OH + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'IEC2OOH'; 
fIEC2OOH(i)=fIEC2OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEC2OOH = BIACETOH + OH + CO';
k(:,i) = 2.73e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEC2OOH'; 
fOH(i)=fOH(i)-1; fIEC2OOH(i)=fIEC2OOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO2H + OH = HCHO + NO2';
k(:,i) = 1.68e-13;
Gstr{i,1} = 'NO3CH2CO2H'; Gstr{i,2} = 'OH'; 
fNO3CH2CO2H(i)=fNO3CH2CO2H(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3H + OH = NO3CH2CO3';
k(:,i) = 3.63e-12;
Gstr{i,1} = 'NO3CH2CO3H'; Gstr{i,2} = 'OH'; 
fNO3CH2CO3H(i)=fNO3CH2CO3H(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3H = HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NO3CH2CO3H'; 
fNO3CH2CO3H(i)=fNO3CH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2PAN + OH = HCHO + CO + NO2 + NO2';
k(:,i) = 1.12e-14;
Gstr{i,1} = 'NO3CH2PAN'; Gstr{i,2} = 'OH'; 
fNO3CH2PAN(i)=fNO3CH2PAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2PAN = NO3CH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'NO3CH2PAN'; 
fNO3CH2PAN(i)=fNO3CH2PAN(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + HO2 = C3MDIALOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'HO2'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fHO2(i)=fHO2(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + NO =  + MGLYOX + CO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'NO'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + NO3 =  + MGLYOX + CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'NO3'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 =  + MGLYOX + CO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'RO2';
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 = C3MDIALOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'RO2';
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + HO2 = BIACETOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'HO2'; 
fBIACETO2(i)=fBIACETO2(i)-1; fHO2(i)=fHO2(i)-1; fBIACETOOH(i)=fBIACETOOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + NO =  + CH3CO3 + HCHO + CO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'NO'; 
fBIACETO2(i)=fBIACETO2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + NO3 =  + CH3CO3 + HCHO + CO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'NO3'; 
fBIACETO2(i)=fBIACETO2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 =  + CH3CO3 + HCHO + CO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 = BIACETOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 = CO23C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + HO2 = CH3CO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'HO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + HO2 = CH3COCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'HO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO = CH3CO3 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO2 = CH3COPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO2(i)=fNO2(i)-1; fCH3COPAN(i)=fCH3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO3 = CH3CO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO3'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 = CH3CO3';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'RO2';
fCH3COCO3(i)=fCH3COCO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH + OH = C534O2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'C534OOH'; Gstr{i,2} = 'OH'; 
fC534OOH(i)=fC534OOH(i)-1; fOH(i)=fOH(i)-1; fC534O2(i)=fC534O2(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH =  + CH3COCO3H + GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH =  + CH3COCO3H + GLYOX + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH = CO2H3CHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBPAN + OH = MGLYOX + CO + CO + NO2';
k(:,i) = 4.37e-11;
Gstr{i,1} = 'C3MCODBPAN'; Gstr{i,2} = 'OH'; 
fC3MCODBPAN(i)=fC3MCODBPAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBPAN = C3MCODBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3MCODBPAN'; 
fC3MCODBPAN(i)=fC3MCODBPAN(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H + OH =  + 0.35GLYOX + 0.35CH3O2 + 0.35CO + 0.65MMALANHY + 0.65HO2';
k(:,i) = 4.38e-11;
Gstr{i,1} = 'MC3ODBCO2H'; Gstr{i,2} = 'OH'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+0.35; fCH3O2(i)=fCH3O2(i)+0.35; fCO(i)=fCO(i)+0.35; fMMALANHY(i)=fMMALANHY(i)+0.65; fHO2(i)=fHO2(i)+0.65; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H = CH3COCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J18;
Gstr{i,1} = 'MC3ODBCO2H'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H = CH3COCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J19;
Gstr{i,1} = 'MC3ODBCO2H'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBPAN + OH = GLYOX + HCHO + CO + NO2';
k(:,i) = 4.37e-11;
Gstr{i,1} = 'MC3CODBPAN'; Gstr{i,2} = 'OH'; 
fMC3CODBPAN(i)=fMC3CODBPAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBPAN = MC3CODBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MC3CODBPAN'; 
fMC3CODBPAN(i)=fMC3CODBPAN(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2AL2OH + OH =  + GLYOX + MGLYOX + HO2';
k(:,i) = 5.70e-11;
Gstr{i,1} = 'C4M2AL2OH'; Gstr{i,2} = 'OH'; 
fC4M2AL2OH(i)=fC4M2AL2OH(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2AL2OH = CO2H3CHO + HO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'C4M2AL2OH'; 
fC4M2AL2OH(i)=fC4M2AL2OH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + HO2 = NPXYFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'HO2'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fHO2(i)=fHO2(i)-1; fNPXYFUOOH(i)=fNPXYFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + NO =  + C23O3CCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'NO'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fNO(i)=fNO(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + NO3 =  + C23O3CCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'NO3'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fNO3(i)=fNO3(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 =  + C23O3CCHO + NO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'RO2';
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + HO2 = MCOCOMOOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'HO2'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fHO2(i)=fHO2(i)-1; fMCOCOMOOOH(i)=fMCOCOMOOOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + NO =  + HCHO + CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'NO'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + NO3 =  + HCHO + CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'NO3'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 =  + HCHO + CH3CO3';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'RO2';
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + HO2 = PXYFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'HO2'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fHO2(i)=fHO2(i)-1; fPXYFUOOH(i)=fPXYFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + NO =  + C23O3CCHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'NO'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fNO(i)=fNO(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + NO3 =  + C23O3CCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'NO3'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fNO3(i)=fNO3(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 =  + C23O3CCHO + HO2';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'RO2';
fPXYFUO2(i)=fPXYFUO2(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 = PXYFUOH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'RO2';
fPXYFUO2(i)=fPXYFUO2(i)-1; fPXYFUOH(i)=fPXYFUOH(i)+1; 

i=i+1;
Rnames{i} = 'C47CHO + OH = C47CO3';
k(:,i) = 2.49e-11;
Gstr{i,1} = 'C47CHO'; Gstr{i,2} = 'OH'; 
fC47CHO(i)=fC47CHO(i)-1; fOH(i)=fOH(i)-1; fC47CO3(i)=fC47CO3(i)+1; 

i=i+1;
Rnames{i} = 'C47CHO = GLYOX + MGLYOX + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C47CHO'; 
fC47CHO(i)=fC47CHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCHO = ACETOL + GLYOX + OH + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'INB1HPCHO'; 
fINB1HPCHO(i)=fINB1HPCHO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1HPCHO = INB1HPCO3';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1HPCHO'; 
fOH(i)=fOH(i)-1; fINB1HPCHO(i)=fINB1HPCHO(i)-1; fINB1HPCO3(i)=fINB1HPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACHO = ACETOL + GLYOX + NO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'INB1NACHO'; 
fINB1NACHO(i)=fINB1NACHO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1NACHO = INB1NACO3';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1NACHO'; 
fOH(i)=fOH(i)-1; fINB1NACHO(i)=fINB1NACHO(i)-1; fINB1NACO3(i)=fINB1NACO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCHO = MVKNO3 + NO2 + CO + HO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'INB1NBCHO'; 
fINB1NBCHO(i)=fINB1NBCHO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1NBCHO = INB1NBCO3';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1NBCHO'; 
fOH(i)=fOH(i)-1; fINB1NBCHO(i)=fINB1NBCHO(i)-1; fINB1NBCO3(i)=fINB1NBCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1GLYOX + OH = MACRNCO3 + CO';
k(:,i) = 1.35e-11;
Gstr{i,1} = 'INB1GLYOX'; Gstr{i,2} = 'OH'; 
fINB1GLYOX(i)=fINB1GLYOX(i)-1; fOH(i)=fOH(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'INB1GLYOX = MACRNCO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'INB1GLYOX'; 
fINB1GLYOX(i)=fINB1GLYOX(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + HO2 = IECCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'HO2'; 
fIECCO3(i)=fIECCO3(i)-1; fHO2(i)=fHO2(i)-1; fIECCO3H(i)=fIECCO3H(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + HO2 = MACRO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'HO2'; 
fIECCO3(i)=fIECCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRO2(i)=fMACRO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + NO = MACRO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'NO'; 
fIECCO3(i)=fIECCO3(i)-1; fNO(i)=fNO(i)-1; fMACRO2(i)=fMACRO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + NO2 = IECPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'NO2'; 
fIECCO3(i)=fIECCO3(i)-1; fNO2(i)=fNO2(i)-1; fIECPAN(i)=fIECPAN(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + NO3 = MACRO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'NO3'; 
fIECCO3(i)=fIECCO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRO2(i)=fMACRO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 = MACRO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'RO2';
fIECCO3(i)=fIECCO3(i)-1; fMACRO2(i)=fMACRO2(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH + OH = C535O2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'C535OOH'; Gstr{i,2} = 'OH'; 
fC535OOH(i)=fC535OOH(i)-1; fOH(i)=fOH(i)-1; fC535O2(i)=fC535O2(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH = C3MDIALOOH + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH =  + HCOCO3H + MGLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH = CO2H3CO3H + OH + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + HO2 = HO2 + DHPMPAL + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'HO2'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + HO2 = HPC52CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'HO2'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fHO2(i)=fHO2(i)-1; fHPC52CO3H(i)=fHPC52CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + NO = HO2 + DHPMPAL + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'NO'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + NO2 = HPC52PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'NO2'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fNO2(i)=fNO2(i)-1; fHPC52PAN(i)=fHPC52PAN(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + NO3 = HO2 + DHPMPAL + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'NO3'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 = HO2 + DHPMPAL';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'RO2';
fHPC52CO3(i)=fHPC52CO3(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + HO2 = INDHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'HO2'; 
fINDHCO3(i)=fINDHCO3(i)-1; fHO2(i)=fHO2(i)-1; fINDHCO3H(i)=fINDHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + HO2 = MVKNO3 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'HO2'; 
fINDHCO3(i)=fINDHCO3(i)-1; fHO2(i)=fHO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + NO = MVKNO3 + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'NO'; 
fINDHCO3(i)=fINDHCO3(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + NO2 = INDHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'NO2'; 
fINDHCO3(i)=fINDHCO3(i)-1; fNO2(i)=fNO2(i)-1; fINDHPAN(i)=fINDHPAN(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + NO3 = MVKNO3 + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'NO3'; 
fINDHCO3(i)=fINDHCO3(i)-1; fNO3(i)=fNO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 = MVKNO3 + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'RO2';
fINDHCO3(i)=fINDHCO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHNO3 + OH = MMALNACO3';
k(:,i) = 2.53e-11.*0.86;
Gstr{i,1} = 'C4M2ALOHNO3'; Gstr{i,2} = 'OH'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fOH(i)=fOH(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHNO3 + OH = MMALNBCO3';
k(:,i) = 2.53e-11.*0.14;
Gstr{i,1} = 'C4M2ALOHNO3'; Gstr{i,2} = 'OH'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHNO3 = MGLYOX + GLYOX + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C4M2ALOHNO3'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + HO2 = C57NO3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'HO2'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC57NO3CO2H(i)=fC57NO3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + HO2 = C57NO3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'HO2'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC57NO3CO3H(i)=fC57NO3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + HO2 = HO12CO3C4 + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'HO2'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + NO = HO12CO3C4 + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'NO'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fNO(i)=fNO(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + NO2 = C57NO3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'NO2'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC57NO3PAN(i)=fC57NO3PAN(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + NO3 = HO12CO3C4 + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'NO3'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + NO3 = MACRNO3 + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'NO3'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 = C57NO3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'RO2';
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fC57NO3CO2H(i)=fC57NO3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 = HO12CO3C4 + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'RO2';
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCHO + OH = INDHPCO3';
k(:,i) = 2.58e-11;
Gstr{i,1} = 'INDHPCHO'; Gstr{i,2} = 'OH'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fOH(i)=fOH(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCHO = MGLYOX + HOCH2CHO + OH + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'INDHPCHO'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + HO2 = HMVKANO3 + OH + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'HO2'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + HO2 = INAHPCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'HO2'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINAHPCO2H(i)=fINAHPCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + HO2 = INAHPCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'HO2'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINAHPCO3H(i)=fINAHPCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + NO = HMVKANO3 + OH + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'NO'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + NO2 = INAHPPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'NO2'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fNO2(i)=fNO2(i)-1; fINAHPPAN(i)=fINAHPPAN(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + NO3 = HMVKANO3 + OH + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'NO3'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 = HMVKANO3 + OH';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'RO2';
fINAHPCO3(i)=fINAHPCO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 = INAHPCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'RO2';
fINAHPCO3(i)=fINAHPCO3(i)-1; fINAHPCO2H(i)=fINAHPCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + HO2 = HMVKANO3 + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'HO2'; 
fINANCO3(i)=fINANCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + HO2 = INANCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'HO2'; 
fINANCO3(i)=fINANCO3(i)-1; fHO2(i)=fHO2(i)-1; fINANCO2H(i)=fINANCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + HO2 = INANCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'HO2'; 
fINANCO3(i)=fINANCO3(i)-1; fHO2(i)=fHO2(i)-1; fINANCO3H(i)=fINANCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + NO = HMVKANO3 + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'NO'; 
fINANCO3(i)=fINANCO3(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + NO2 = INANPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'NO2'; 
fINANCO3(i)=fINANCO3(i)-1; fNO2(i)=fNO2(i)-1; fINANPAN(i)=fINANPAN(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + NO3 = HMVKANO3 + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'NO3'; 
fINANCO3(i)=fINANCO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 = HMVKANO3 + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'RO2';
fINANCO3(i)=fINANCO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 = INANCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'RO2';
fINANCO3(i)=fINANCO3(i)-1; fINANCO2H(i)=fINANCO2H(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCHO = INANCOCO3';
k(:,i) = 3.79e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCHO'; 
fOH(i)=fOH(i)-1; fINANCOCHO(i)=fINANCOCHO(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + HO2 = HMVKANO3 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'HO2'; 
fINAHCO3(i)=fINAHCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + HO2 = INAHCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'HO2'; 
fINAHCO3(i)=fINAHCO3(i)-1; fHO2(i)=fHO2(i)-1; fINAHCO2H(i)=fINAHCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + HO2 = INAHCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'HO2'; 
fINAHCO3(i)=fINAHCO3(i)-1; fHO2(i)=fHO2(i)-1; fINAHCO3H(i)=fINAHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + NO = HMVKANO3 + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'NO'; 
fINAHCO3(i)=fINAHCO3(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + NO2 = INAHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'NO2'; 
fINAHCO3(i)=fINAHCO3(i)-1; fNO2(i)=fNO2(i)-1; fINAHPAN(i)=fINAHPAN(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + NO3 = HMVKANO3 + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'NO3'; 
fINAHCO3(i)=fINAHCO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 = HMVKANO3 + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'RO2';
fINAHCO3(i)=fINAHCO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 = INAHCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'RO2';
fINAHCO3(i)=fINAHCO3(i)-1; fINAHCO2H(i)=fINAHCO2H(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3CO2H = MMALNACO2H + HO2';
k(:,i) = 2.49e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3CO2H'; 
fOH(i)=fOH(i)-1; fC58NO3CO2H(i)=fC58NO3CO2H(i)-1; fMMALNACO2H(i)=fMMALNACO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3H = MACRNO3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C58NO3CO3H'; 
fC58NO3CO3H(i)=fC58NO3CO3H(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3CO3H = C58NO3CO3';
k(:,i) = 5.57e-12.*0.68;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3CO3H'; 
fOH(i)=fOH(i)-1; fC58NO3CO3H(i)=fC58NO3CO3H(i)-1; fC58NO3CO3(i)=fC58NO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3CO3H = MMALNACO3H + HO2';
k(:,i) = 5.57e-12.*0.32;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3CO3H'; 
fOH(i)=fOH(i)-1; fC58NO3CO3H(i)=fC58NO3CO3H(i)-1; fMMALNACO3H(i)=fMMALNACO3H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3PAN = C58NO3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C58NO3PAN'; 
fC58NO3PAN(i)=fC58NO3PAN(i)-1; fC58NO3CO3(i)=fC58NO3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3PAN = MMALNAPAN + HO2';
k(:,i) = 1.97e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3PAN'; 
fOH(i)=fOH(i)-1; fC58NO3PAN(i)=fC58NO3PAN(i)-1; fMMALNAPAN(i)=fMMALNAPAN(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + HO2 =  + HOCH2CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'HO2'; 
fA2PANOO(i)=fA2PANOO(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + HO2 = C2OHOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'HO2'; 
fA2PANOO(i)=fA2PANOO(i)-1; fHO2(i)=fHO2(i)-1; fC2OHOCO2H(i)=fC2OHOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + HO2 = C2OHOCOOH';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'HO2'; 
fA2PANOO(i)=fA2PANOO(i)-1; fHO2(i)=fHO2(i)-1; fC2OHOCOOH(i)=fC2OHOCOOH(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + NO =  + HOCH2CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'NO'; 
fA2PANOO(i)=fA2PANOO(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + NO2 = A2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'NO2'; 
fA2PANOO(i)=fA2PANOO(i)-1; fNO2(i)=fNO2(i)-1; fA2PAN(i)=fA2PAN(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + NO3 =   + HOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'NO3'; 
fA2PANOO(i)=fA2PANOO(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO =  + HOCH2CHO + HO2';
k(:,i) = 1.00E-11.*0.7;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'RO2';
fA2PANOO(i)=fA2PANOO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO = C2OHOCO2H';
k(:,i) = 1.00E-11.*0.3;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'RO2';
fA2PANOO(i)=fA2PANOO(i)-1; fC2OHOCO2H(i)=fC2OHOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + HO2 = GLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'HO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + HO2 = HCOCOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'HO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCOHCO3H(i)=fHCOCOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO = GLYOX + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO2 = HCOCOHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fHCOCOHPAN(i)=fHCOCOHPAN(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO3 = GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO3'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 = GLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'RO2';
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NMGLYOX = NO2 + HCHO + CO + CO + HO2';
k(:,i) = J53;
Gstr{i,1} = 'NMGLYOX'; 
fNMGLYOX(i)=fNMGLYOX(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NMGLYOX = NO3CH2CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'NMGLYOX'; 
fNMGLYOX(i)=fNMGLYOX(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NMGLYOX = NO3CH2CO3 + CO + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NMGLYOX'; 
fNO3(i)=fNO3(i)-1; fNMGLYOX(i)=fNMGLYOX(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + NMGLYOX = NO3CH2CO3 + CO';
k(:,i) = 1.24e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NMGLYOX'; 
fOH(i)=fOH(i)-1; fNMGLYOX(i)=fNMGLYOX(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + OH = ETHENO3O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'ETHO2HNO3'; Gstr{i,2} = 'OH'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fOH(i)=fOH(i)-1; fETHENO3O2(i)=fETHENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + OH = NO3CH2CHO + OH';
k(:,i) = 1.62e-12;
Gstr{i,1} = 'ETHO2HNO3'; Gstr{i,2} = 'OH'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 =  + NO2 + HCHO + HCHO + NO3CH2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ETHO2HNO3'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHOHNO3 + OH = HOCH2CHO + NO2';
k(:,i) = 8.40e-13;
Gstr{i,1} = 'ETHOHNO3'; Gstr{i,2} = 'OH'; 
fETHOHNO3(i)=fETHOHNO3(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + OH = HOCH2CH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYETHO2H'; Gstr{i,2} = 'OH'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + OH = HOCH2CHO + OH';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'HYETHO2H'; Gstr{i,2} = 'OH'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H =  + HO2 + HCHO + HCHO + HO2 + HOCH2CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYETHO2H'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHGLY + OH = HOCH2CHO + HO2';
k(:,i) = 1.45e-11;
Gstr{i,1} = 'ETHGLY'; Gstr{i,2} = 'OH'; 
fETHGLY(i)=fETHGLY(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEPOXB + OH = HIEB1O2';
k(:,i) = 1.31e-11.*0.667;
Gstr{i,1} = 'HIEPOXB'; Gstr{i,2} = 'OH'; 
fHIEPOXB(i)=fHIEPOXB(i)-1; fOH(i)=fOH(i)-1; fHIEB1O2(i)=fHIEB1O2(i)+1; 

i=i+1;
Rnames{i} = 'HIEPOXB + OH = HIEB2O2';
k(:,i) = 1.31e-11.*0.333;
Gstr{i,1} = 'HIEPOXB'; Gstr{i,2} = 'OH'; 
fHIEPOXB(i)=fHIEPOXB(i)-1; fOH(i)=fOH(i)-1; fHIEB2O2(i)=fHIEB2O2(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + HO2 = NC524OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'HO2'; 
fNC524O2(i)=fNC524O2(i)-1; fHO2(i)=fHO2(i)-1; fNC524OOH(i)=fNC524OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + NO = NC524NO3';
k(:,i) = KRO2NO.*0.072;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'NO'; 
fNC524O2(i)=fNC524O2(i)-1; fNO(i)=fNO(i)-1; fNC524NO3(i)=fNC524NO3(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + NO =  + HMVKNO3 + HCHO + HO2 + HOCH2CHO + NO2 + H13CO2C3 + NO2';
k(:,i) = KRO2NO.*0.928;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'NO'; 
fNC524O2(i)=fNC524O2(i)-1; fNO(i)=fNO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + NO3 =  + HMVKNO3 + HCHO + HO2 + HOCH2CHO + NO2 + H13CO2C3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'NO3'; 
fNC524O2(i)=fNC524O2(i)-1; fNO3(i)=fNO3(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 =  + HMVKNO3 + HCHO + HO2 + HOCH2CHO + NO2 + H13CO2C3';
k(:,i) = 8.00e-13.*0.8;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'RO2';
fNC524O2(i)=fNC524O2(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 = NC524OH';
k(:,i) = 8.00e-13.*0.2;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'RO2';
fNC524O2(i)=fNC524O2(i)-1; fNC524OH(i)=fNC524OH(i)+1; 

i=i+1;
Rnames{i} = 'C525O2 + HO2 = C525OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C525O2'; Gstr{i,2} = 'HO2'; 
fC525O2(i)=fC525O2(i)-1; fHO2(i)=fHO2(i)-1; fC525OOH(i)=fC525OOH(i)+1; 

i=i+1;
Rnames{i} = 'C525O2 + NO =  + HOCH2CO3 + H13CO2C3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C525O2'; Gstr{i,2} = 'NO'; 
fC525O2(i)=fC525O2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C525O2 + NO3 =  + HOCH2CO3 + H13CO2C3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C525O2'; Gstr{i,2} = 'NO3'; 
fC525O2(i)=fC525O2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C525O2 =  + HOCH2CO3 + H13CO2C3';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C525O2'; Gstr{i,2} = 'RO2';
fC525O2(i)=fC525O2(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + HO2 = HMACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'HO2'; 
fHMACO3(i)=fHMACO3(i)-1; fHO2(i)=fHO2(i)-1; fHMACO2H(i)=fHMACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + HO2 = HMACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'HO2'; 
fHMACO3(i)=fHMACO3(i)-1; fHO2(i)=fHO2(i)-1; fHMACO3H(i)=fHMACO3H(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + HO2 = HOCH2CO3 + HCHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'HO2'; 
fHMACO3(i)=fHMACO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + NO = HOCH2CO3 + HCHO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'NO'; 
fHMACO3(i)=fHMACO3(i)-1; fNO(i)=fNO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + NO2 = HMPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'NO2'; 
fHMACO3(i)=fHMACO3(i)-1; fNO2(i)=fNO2(i)-1; fHMPAN(i)=fHMPAN(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + NO3 = HOCH2CO3 + HCHO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'NO3'; 
fHMACO3(i)=fHMACO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 = HMACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'RO2';
fHMACO3(i)=fHMACO3(i)-1; fHMACO2H(i)=fHMACO2H(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 = HOCH2CO3 + HCHO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'RO2';
fHMACO3(i)=fHMACO3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 + HO2 = HMACROOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'HO2'; 
fHMACRO2(i)=fHMACRO2(i)-1; fHO2(i)=fHO2(i)-1; fHMACROOH(i)=fHMACROOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 + NO =  + H13CO2C3 + CO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'NO'; 
fHMACRO2(i)=fHMACRO2(i)-1; fNO(i)=fNO(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 + NO3 =  + H13CO2C3 + CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'NO3'; 
fHMACRO2(i)=fHMACRO2(i)-1; fNO3(i)=fNO3(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 = H13CO2C3 + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'HMACRO2'; 
fHMACRO2(i)=fHMACRO2(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 =  + H13CO2C3 + CO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'RO2';
fHMACRO2(i)=fHMACRO2(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 = HMACROH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'RO2';
fHMACRO2(i)=fHMACRO2(i)-1; fHMACROH(i)=fHMACROH(i)+1; 

i=i+1;
Rnames{i} = 'C531OOH + OH = C531CO + OH';
k(:,i) = 2.31e-11;
Gstr{i,1} = 'C531OOH'; Gstr{i,2} = 'OH'; 
fC531OOH(i)=fC531OOH(i)-1; fOH(i)=fOH(i)-1; fC531CO(i)=fC531CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C531OOH =  + C31CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C531OOH'; 
fC531OOH(i)=fC531OOH(i)-1; fC31CO3(i)=fC31CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C531OOH =  + C31CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C531OOH'; 
fC531OOH(i)=fC531OOH(i)-1; fC31CO3(i)=fC31CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C532CO + OH = C533O2';
k(:,i) = 1.37e-11;
Gstr{i,1} = 'C532CO'; Gstr{i,2} = 'OH'; 
fC532CO(i)=fC532CO(i)-1; fOH(i)=fOH(i)-1; fC533O2(i)=fC533O2(i)+1; 

i=i+1;
Rnames{i} = 'C532CO = C31CO3 + CH3O2';
k(:,i) = J22;
Gstr{i,1} = 'C532CO'; 
fC532CO(i)=fC532CO(i)-1; fC31CO3(i)=fC31CO3(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNCO2H = MACRNB + NO2';
k(:,i) = 1.66e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNCO2H'; 
fOH(i)=fOH(i)-1; fINCNCO2H(i)=fINCNCO2H(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3H = MACRNB + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INCNCO3H'; 
fINCNCO3H(i)=fINCNCO3H(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNCO3H = INCNCO3';
k(:,i) = 4.74e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNCO3H'; 
fOH(i)=fOH(i)-1; fINCNCO3H(i)=fINCNCO3H(i)-1; fINCNCO3(i)=fINCNCO3(i)+1; 

i=i+1;
Rnames{i} = 'INCNPAN = INCNCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INCNPAN'; 
fINCNPAN(i)=fINCNPAN(i)-1; fINCNCO3(i)=fINCNCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNPAN = MACRNB + NO2 + NO3';
k(:,i) = 1.14e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNPAN'; 
fOH(i)=fOH(i)-1; fINCNPAN(i)=fINCNPAN(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3COPAN + OH = HCHO + CO + CO + NO2';
k(:,i) = 1.02e-13;
Gstr{i,1} = 'CH3COPAN'; Gstr{i,2} = 'OH'; 
fCH3COPAN(i)=fCH3COPAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COPAN = CH3COCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CH3COPAN'; 
fCH3COPAN(i)=fCH3COPAN(i)-1; fCH3COCO3(i)=fCH3COCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + HO2 = COHM2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'HO2'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCOHM2CO2H(i)=fCOHM2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + HO2 = COHM2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'HO2'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCOHM2CO3H(i)=fCOHM2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + HO2 = GLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'HO2'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + NO = GLYOX + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'NO'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + NO2 = COHM2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'NO2'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fNO2(i)=fNO2(i)-1; fCOHM2PAN(i)=fCOHM2PAN(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + NO3 = GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'NO3'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 = COHM2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'RO2';
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fCOHM2CO2H(i)=fCOHM2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 = GLYOX + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'RO2';
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3H = HOCH2COCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'H13CO2CO3H'; 
fH13CO2CO3H(i)=fH13CO2CO3H(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + H13CO2CO3H = H13CO2CO3';
k(:,i) = 9.43e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H13CO2CO3H'; 
fOH(i)=fOH(i)-1; fH13CO2CO3H(i)=fH13CO2CO3H(i)-1; fH13CO2CO3(i)=fH13CO2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN10 = H13CO2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN10'; 
fC4PAN10(i)=fC4PAN10(i)-1; fH13CO2CO3(i)=fH13CO2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN10 = HOCH2COCHO + CO + NO2';
k(:,i) = 5.83e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN10'; 
fOH(i)=fOH(i)-1; fC4PAN10(i)=fC4PAN10(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3H = HMVKBO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IEACO3H'; 
fIEACO3H(i)=fIEACO3H(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEACO3H = IEACO3';
k(:,i) = 4.81e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEACO3H'; 
fOH(i)=fOH(i)-1; fIEACO3H(i)=fIEACO3H(i)-1; fIEACO3(i)=fIEACO3(i)+1; 

i=i+1;
Rnames{i} = 'IEAPAN = IEACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'IEAPAN'; 
fIEAPAN(i)=fIEAPAN(i)-1; fIEACO3(i)=fIEACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEAPAN = HMVKBO2 + CO + NO2';
k(:,i) = 1.21e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEAPAN'; 
fOH(i)=fOH(i)-1; fIEAPAN(i)=fIEAPAN(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHY + OH = MMALANHYO2';
k(:,i) = 1.50e-12;
Gstr{i,1} = 'MMALANHY'; Gstr{i,2} = 'OH'; 
fMMALANHY(i)=fMMALANHY(i)-1; fOH(i)=fOH(i)-1; fMMALANHYO2(i)=fMMALANHYO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUOOH + OH = NPXYFUO2';
k(:,i) = 5.16e-12;
Gstr{i,1} = 'NPXYFUOOH'; Gstr{i,2} = 'OH'; 
fNPXYFUOOH(i)=fNPXYFUOOH(i)-1; fOH(i)=fOH(i)-1; fNPXYFUO2(i)=fNPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUOOH =  + C23O3CCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NPXYFUOOH'; 
fNPXYFUOOH(i)=fNPXYFUOOH(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH + OH = MCOCOMOXO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'MCOCOMOOOH'; Gstr{i,2} = 'OH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fOH(i)=fOH(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH = CH3CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MCOCOMOOOH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH =  + HCHO + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MCOCOMOOOH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOOH + OH = PXYFUO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'PXYFUOOH'; Gstr{i,2} = 'OH'; 
fPXYFUOOH(i)=fPXYFUOOH(i)-1; fOH(i)=fOH(i)-1; fPXYFUO2(i)=fPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOOH =  + C23O3CCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PXYFUOOH'; 
fPXYFUOOH(i)=fPXYFUOOH(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOH + OH =  + C23O3CCHO + HO2';
k(:,i) = 2.44e-11;
Gstr{i,1} = 'PXYFUOH'; Gstr{i,2} = 'OH'; 
fPXYFUOH(i)=fPXYFUOH(i)-1; fOH(i)=fOH(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + HO2 = C47CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'HO2'; 
fC47CO3(i)=fC47CO3(i)-1; fHO2(i)=fHO2(i)-1; fC47CO3H(i)=fC47CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + HO2 = CO2N3CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'HO2'; 
fC47CO3(i)=fC47CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + NO = CO2N3CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'NO'; 
fC47CO3(i)=fC47CO3(i)-1; fNO(i)=fNO(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + NO2 = C47PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'NO2'; 
fC47CO3(i)=fC47CO3(i)-1; fNO2(i)=fNO2(i)-1; fC47PAN(i)=fC47PAN(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + NO3 = CO2N3CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'NO3'; 
fC47CO3(i)=fC47CO3(i)-1; fNO3(i)=fNO3(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 = CO2N3CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'RO2';
fC47CO3(i)=fC47CO3(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + HO2 = INB1HPCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'HO2'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1HPCO2H(i)=fINB1HPCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + HO2 = INB1HPCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'HO2'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1HPCO3H(i)=fINB1HPCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + HO2 = MACRNO3 + OH + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'HO2'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + NO = MACRNO3 + OH + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'NO'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + NO2 = INB1HPPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'NO2'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fNO2(i)=fNO2(i)-1; fINB1HPPAN(i)=fINB1HPPAN(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + NO3 = MACRNO3 + OH + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'NO3'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 = INB1HPCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'RO2';
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fINB1HPCO2H(i)=fINB1HPCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 = MACRNO3 + OH';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'RO2';
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + HO2 = INB1NACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'HO2'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1NACO2H(i)=fINB1NACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + HO2 = INB1NACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'HO2'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1NACO3H(i)=fINB1NACO3H(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + HO2 = MACRNO3 + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'HO2'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + NO = MACRNO3 + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'NO'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + NO2 = INB1NAPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'NO2'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fNO2(i)=fNO2(i)-1; fINB1NAPAN(i)=fINB1NAPAN(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + NO3 = MACRNO3 + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'NO3'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 = INB1NACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'RO2';
fINB1NACO3(i)=fINB1NACO3(i)-1; fINB1NACO2H(i)=fINB1NACO2H(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 = MACRNO3 + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'RO2';
fINB1NACO3(i)=fINB1NACO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + HO2 = INB1NBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'HO2'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1NBCO2H(i)=fINB1NBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + HO2 = INB1NBCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'HO2'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1NBCO3H(i)=fINB1NBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + HO2 = MVKNO3 + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'HO2'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + NO = MVKNO3 + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'NO'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + NO2 = INB1NBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'NO2'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fNO2(i)=fNO2(i)-1; fINB1NBPAN(i)=fINB1NBPAN(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + NO3 = MVKNO3 + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'NO3'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fNO3(i)=fNO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 = INB1NBCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'RO2';
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fINB1NBCO2H(i)=fINB1NBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 = MVKNO3 + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'RO2';
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3H = MACRO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IECCO3H'; 
fIECCO3H(i)=fIECCO3H(i)-1; fMACRO2(i)=fMACRO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IECCO3H = IECCO3';
k(:,i) = 1.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IECCO3H'; 
fOH(i)=fOH(i)-1; fIECCO3H(i)=fIECCO3H(i)-1; fIECCO3(i)=fIECCO3(i)+1; 

i=i+1;
Rnames{i} = 'IECPAN = IECCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'IECPAN'; 
fIECPAN(i)=fIECPAN(i)-1; fIECCO3(i)=fIECCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IECPAN = MACRO2 + CO + NO2';
k(:,i) = 6.80e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IECPAN'; 
fOH(i)=fOH(i)-1; fIECPAN(i)=fIECPAN(i)-1; fMACRO2(i)=fMACRO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3H + OH = HPC52CO3';
k(:,i) = 2.69e-11;
Gstr{i,1} = 'HPC52CO3H'; Gstr{i,2} = 'OH'; 
fHPC52CO3H(i)=fHPC52CO3H(i)-1; fOH(i)=fOH(i)-1; fHPC52CO3(i)=fHPC52CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3H = HO2 + DHPMPAL + OH';
k(:,i) = J41.*3;
Gstr{i,1} = 'HPC52CO3H'; 
fHPC52CO3H(i)=fHPC52CO3H(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52PAN + OH = DHPMPAL + CO + NO2';
k(:,i) = 2.33e-11;
Gstr{i,1} = 'HPC52PAN'; Gstr{i,2} = 'OH'; 
fHPC52PAN(i)=fHPC52PAN(i)-1; fOH(i)=fOH(i)-1; fDHPMPAL(i)=fDHPMPAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52PAN = HPC52CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HPC52PAN'; 
fHPC52PAN(i)=fHPC52PAN(i)-1; fHPC52CO3(i)=fHPC52CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3H + OH = INDHCO3';
k(:,i) = 5.66e-12;
Gstr{i,1} = 'INDHCO3H'; Gstr{i,2} = 'OH'; 
fINDHCO3H(i)=fINDHCO3H(i)-1; fOH(i)=fOH(i)-1; fINDHCO3(i)=fINDHCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3H = MVKNO3 + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'INDHCO3H'; 
fINDHCO3H(i)=fINDHCO3H(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPAN + OH = MVKNO3 + NO3';
k(:,i) = 1.96e-12;
Gstr{i,1} = 'INDHPAN'; Gstr{i,2} = 'OH'; 
fINDHPAN(i)=fINDHPAN(i)-1; fOH(i)=fOH(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPAN = INDHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INDHPAN'; 
fINDHPAN(i)=fINDHPAN(i)-1; fINDHCO3(i)=fINDHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + HO2 = CONM2CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'HO2'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fHO2(i)=fHO2(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + HO2 = MMALNACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'HO2'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fHO2(i)=fHO2(i)-1; fMMALNACO2H(i)=fMMALNACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + HO2 = MMALNACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'HO2'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fHO2(i)=fHO2(i)-1; fMMALNACO3H(i)=fMMALNACO3H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + NO = CONM2CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'NO'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fNO(i)=fNO(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + NO2 = MMALNAPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'NO2'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fNO2(i)=fNO2(i)-1; fMMALNAPAN(i)=fMMALNAPAN(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + NO3 = CONM2CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'NO3'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fNO3(i)=fNO3(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 = CONM2CHO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'RO2';
fMMALNACO3(i)=fMMALNACO3(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 = MMALNACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'RO2';
fMMALNACO3(i)=fMMALNACO3(i)-1; fMMALNACO2H(i)=fMMALNACO2H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + HO2 = CO2H3CHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'HO2'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + HO2 = MMALNBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'HO2'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMMALNBCO2H(i)=fMMALNBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + HO2 = MMALNBCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'HO2'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMMALNBCO3H(i)=fMMALNBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + NO = CO2H3CHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'NO'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fNO(i)=fNO(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + NO2 = MMALNBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'NO2'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fNO2(i)=fNO2(i)-1; fMMALNBPAN(i)=fMMALNBPAN(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + NO3 = CO2H3CHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'NO3'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fNO3(i)=fNO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 = CO2H3CHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'RO2';
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 = MMALNBCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'RO2';
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fMMALNBCO2H(i)=fMMALNBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO2H + OH = MMALNBCO2H + HO2';
k(:,i) = 6.52e-12;
Gstr{i,1} = 'C57NO3CO2H'; Gstr{i,2} = 'OH'; 
fC57NO3CO2H(i)=fC57NO3CO2H(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO2H(i)=fMMALNBCO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3H + OH = C57NO3CO3';
k(:,i) = 6.52e-12.*0.39;
Gstr{i,1} = 'C57NO3CO3H'; Gstr{i,2} = 'OH'; 
fC57NO3CO3H(i)=fC57NO3CO3H(i)-1; fOH(i)=fOH(i)-1; fC57NO3CO3(i)=fC57NO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3H + OH = MMALNBCO3H + HO2';
k(:,i) = 6.52e-12.*0.61;
Gstr{i,1} = 'C57NO3CO3H'; Gstr{i,2} = 'OH'; 
fC57NO3CO3H(i)=fC57NO3CO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO3H(i)=fMMALNBCO3H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3H = HO12CO3C4 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C57NO3CO3H'; 
fC57NO3CO3H(i)=fC57NO3CO3H(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3PAN + OH = MMALNBPAN + HO2';
k(:,i) = 6.00e-12;
Gstr{i,1} = 'C57NO3PAN'; Gstr{i,2} = 'OH'; 
fC57NO3PAN(i)=fC57NO3PAN(i)-1; fOH(i)=fOH(i)-1; fMMALNBPAN(i)=fMMALNBPAN(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3PAN = C57NO3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C57NO3PAN'; 
fC57NO3PAN(i)=fC57NO3PAN(i)-1; fC57NO3CO3(i)=fC57NO3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + HO2 = INDHPCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'HO2'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINDHPCO3H(i)=fINDHPCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + HO2 = MVKNO3 + OH + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'HO2'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + NO = MVKNO3 + OH + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'NO'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + NO2 = INDHPPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'NO2'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fNO2(i)=fNO2(i)-1; fINDHPPAN(i)=fINDHPPAN(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + NO3 = MVKNO3 + OH + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'NO3'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fNO3(i)=fNO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 = MVKNO3 + OH';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'RO2';
fINDHPCO3(i)=fINDHPCO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO2H = HMVKANO3 + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'INAHPCO2H'; 
fINAHPCO2H(i)=fINAHPCO2H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPCO2H = HMVKANO3 + OH';
k(:,i) = 6.50e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPCO2H'; 
fOH(i)=fOH(i)-1; fINAHPCO2H(i)=fINAHPCO2H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3H = HMVKANO3 + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'INAHPCO3H'; 
fINAHPCO3H(i)=fINAHPCO3H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPCO3H = INAHPCO3';
k(:,i) = 9.58e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPCO3H'; 
fOH(i)=fOH(i)-1; fINAHPCO3H(i)=fINAHPCO3H(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHPPAN = INAHPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INAHPPAN'; 
fINAHPPAN(i)=fINAHPPAN(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPPAN = INAHPCO3 + NO2';
k(:,i) = J41;
Gstr{i,1} = 'INAHPPAN'; 
fINAHPPAN(i)=fINAHPPAN(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPPAN = HMVKANO3 + OH + CO + NO2';
k(:,i) = 5.98e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPPAN'; 
fOH(i)=fOH(i)-1; fINAHPPAN(i)=fINAHPPAN(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCO2H = HMVKANO3 + NO2';
k(:,i) = 1.36e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCO2H'; 
fOH(i)=fOH(i)-1; fINANCO2H(i)=fINANCO2H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3H = HMVKANO3 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INANCO3H'; 
fINANCO3H(i)=fINANCO3H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCO3H = INANCO3';
k(:,i) = 4.08e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCO3H'; 
fOH(i)=fOH(i)-1; fINANCO3H(i)=fINANCO3H(i)-1; fINANCO3(i)=fINANCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANPAN = INANCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INANPAN'; 
fINANPAN(i)=fINANPAN(i)-1; fINANCO3(i)=fINANCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANPAN = HMVKANO3 + NO2 + CO + NO2';
k(:,i) = 4.85e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANPAN'; 
fOH(i)=fOH(i)-1; fINANPAN(i)=fINANPAN(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + HO2 = INANCOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'HO2'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fINANCOCO2H(i)=fINANCOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + HO2 = INANCOCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'HO2'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fINANCOCO3H(i)=fINANCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + HO2 = NO2 + CO23C4NO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'HO2'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + NO = NO2 + CO23C4NO3 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'NO'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + NO2 = INANCOPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'NO2'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fNO2(i)=fNO2(i)-1; fINANCOPAN(i)=fINANCOPAN(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + NO3 = NO2 + CO23C4NO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'NO3'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 = INANCOCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'RO2';
fINANCOCO3(i)=fINANCOCO3(i)-1; fINANCOCO2H(i)=fINANCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 = NO2 + CO23C4NO3';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'RO2';
fINANCOCO3(i)=fINANCOCO3(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHCO2H = HMVKANO3 + HO2';
k(:,i) = 3.04e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHCO2H'; 
fOH(i)=fOH(i)-1; fINAHCO2H(i)=fINAHCO2H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3H = HMVKANO3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INAHCO3H'; 
fINAHCO3H(i)=fINAHCO3H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHCO3H = INAHCO3';
k(:,i) = 6.12e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHCO3H'; 
fOH(i)=fOH(i)-1; fINAHCO3H(i)=fINAHCO3H(i)-1; fINAHCO3(i)=fINAHCO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHPAN = INAHPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INAHPAN'; 
fINAHPAN(i)=fINAHPAN(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPAN = HMVKANO3 + HO2 + CO + NO2';
k(:,i) = 2.52e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPAN'; 
fOH(i)=fOH(i)-1; fINAHPAN(i)=fINAHPAN(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO2H + OH = CONM2CHO + HO2';
k(:,i) = 4.93e-12;
Gstr{i,1} = 'MMALNACO2H'; Gstr{i,2} = 'OH'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO2H = MGLYOX + NO2 + HCOCO2H + HO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'MMALNACO2H'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H + OH = MMALNACO3';
k(:,i) = 8.01e-12;
Gstr{i,1} = 'MMALNACO3H'; Gstr{i,2} = 'OH'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H = MGLYOX + NO2 + HCOCO3H + HO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'MMALNACO3H'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN + OH = CONM2CHO + HO2 + NO3';
k(:,i) = 4.41e-12;
Gstr{i,1} = 'MMALNAPAN'; Gstr{i,2} = 'OH'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN = MMALNACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN = MMALNACO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2OHOCO2H + OH = C3DIOLO2';
k(:,i) = 1.867E-11;
Gstr{i,1} = 'C2OHOCO2H'; Gstr{i,2} = 'OH'; 
fC2OHOCO2H(i)=fC2OHOCO2H(i)-1; fOH(i)=fOH(i)-1; fC3DIOLO2(i)=fC3DIOLO2(i)+1; 

i=i+1;
Rnames{i} = 'C2OHOCOOH + OH = A2PANOO';
k(:,i) = 1.513E-11;
Gstr{i,1} = 'C2OHOCOOH'; Gstr{i,2} = 'OH'; 
fC2OHOCOOH(i)=fC2OHOCOOH(i)-1; fOH(i)=fOH(i)-1; fA2PANOO(i)=fA2PANOO(i)+1; 

i=i+1;
Rnames{i} = 'C2OHOCOOH = C3DIOLO2';
k(:,i) = J41;
Gstr{i,1} = 'C2OHOCOOH'; 
fC2OHOCOOH(i)=fC2OHOCOOH(i)-1; fC3DIOLO2(i)=fC3DIOLO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PAN + OH = HOCH2CHO + CO + NO2';
k(:,i) = 1.865E-11;
Gstr{i,1} = 'A2PAN'; Gstr{i,2} = 'OH'; 
fA2PAN(i)=fA2PAN(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PAN = A2PANOO + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'A2PAN'; 
fA2PAN(i)=fA2PAN(i)-1; fA2PANOO(i)=fA2PANOO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3H + OH = HCOCOHCO3';
k(:,i) = 7.33e-11;
Gstr{i,1} = 'HCOCOHCO3H'; Gstr{i,2} = 'OH'; 
fHCOCOHCO3H(i)=fHCOCOHCO3H(i)-1; fOH(i)=fOH(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3H = GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCOHCO3H'; 
fHCOCOHCO3H(i)=fHCOCOHCO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHPAN + OH = GLYOX + CO + NO2';
k(:,i) = 6.97e-11;
Gstr{i,1} = 'HCOCOHPAN'; Gstr{i,2} = 'OH'; 
fHCOCOHPAN(i)=fHCOCOHPAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHPAN = HCOCOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HCOCOHPAN'; 
fHCOCOHPAN(i)=fHCOCOHPAN(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O2 + HO2 = HIEB1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HIEB1O2'; Gstr{i,2} = 'HO2'; 
fHIEB1O2(i)=fHIEB1O2(i)-1; fHO2(i)=fHO2(i)-1; fHIEB1OOH(i)=fHIEB1OOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O2 + NO =  + HOCH2COCHO + HOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HIEB1O2'; Gstr{i,2} = 'NO'; 
fHIEB1O2(i)=fHIEB1O2(i)-1; fNO(i)=fNO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O2 + NO3 =  + HOCH2COCHO + HOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HIEB1O2'; Gstr{i,2} = 'NO3'; 
fHIEB1O2(i)=fHIEB1O2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O2 =  + HOCH2COCHO + HOCH2CHO + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'HIEB1O2'; Gstr{i,2} = 'RO2';
fHIEB1O2(i)=fHIEB1O2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O2 + HO2 = HIEB2OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HIEB2O2'; Gstr{i,2} = 'HO2'; 
fHIEB2O2(i)=fHIEB2O2(i)-1; fHO2(i)=fHO2(i)-1; fHIEB2OOH(i)=fHIEB2OOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O2 + NO =  + H13CO2C3 + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HIEB2O2'; Gstr{i,2} = 'NO'; 
fHIEB2O2(i)=fHIEB2O2(i)-1; fNO(i)=fNO(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O2 + NO3 =  + H13CO2C3 + GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HIEB2O2'; Gstr{i,2} = 'NO3'; 
fHIEB2O2(i)=fHIEB2O2(i)-1; fNO3(i)=fNO3(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O2 =  + H13CO2C3 + GLYOX + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'HIEB2O2'; Gstr{i,2} = 'RO2';
fHIEB2O2(i)=fHIEB2O2(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524OOH + OH = HPNC524CO + HO2';
k(:,i) = 1.32e-11.*0.728;
Gstr{i,1} = 'NC524OOH'; Gstr{i,2} = 'OH'; 
fNC524OOH(i)=fNC524OOH(i)-1; fOH(i)=fOH(i)-1; fHPNC524CO(i)=fHPNC524CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524OOH + OH = NC524O2';
k(:,i) = 1.32e-11.*0.272;
Gstr{i,1} = 'NC524OOH'; Gstr{i,2} = 'OH'; 
fNC524OOH(i)=fNC524OOH(i)-1; fOH(i)=fOH(i)-1; fNC524O2(i)=fNC524O2(i)+1; 

i=i+1;
Rnames{i} = 'NC524OOH =  + HMVKNO3 + HCHO + HO2 + HOCH2CHO + NO2 + H13CO2C3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC524OOH'; 
fNC524OOH(i)=fNC524OOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC524NO3 + OH = DNC524CO + HO2';
k(:,i) = 2.43e-12;
Gstr{i,1} = 'NC524NO3'; Gstr{i,2} = 'OH'; 
fNC524NO3(i)=fNC524NO3(i)-1; fOH(i)=fOH(i)-1; fDNC524CO(i)=fDNC524CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524OH + OH = HNC524CO + HO2';
k(:,i) = 9.60e-12;
Gstr{i,1} = 'NC524OH'; Gstr{i,2} = 'OH'; 
fNC524OH(i)=fNC524OH(i)-1; fOH(i)=fOH(i)-1; fHNC524CO(i)=fHNC524CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C525OOH + OH = C525O2';
k(:,i) = 1.37e-11;
Gstr{i,1} = 'C525OOH'; Gstr{i,2} = 'OH'; 
fC525OOH(i)=fC525OOH(i)-1; fOH(i)=fOH(i)-1; fC525O2(i)=fC525O2(i)+1; 

i=i+1;
Rnames{i} = 'C525OOH =  + HOCH2CO3 + H13CO2C3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C525OOH'; 
fC525OOH(i)=fC525OOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACO2H + OH = HOCH2CO3 + HCHO';
k(:,i) = 1.84e-11;
Gstr{i,1} = 'HMACO2H'; Gstr{i,2} = 'OH'; 
fHMACO2H(i)=fHMACO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H + OH = H13CO2C3 + CO + OH';
k(:,i) = 1.63e-11;
Gstr{i,1} = 'HMACO3H'; Gstr{i,2} = 'OH'; 
fHMACO3H(i)=fHMACO3H(i)-1; fOH(i)=fOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H + OH = HMACO3';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'HMACO3H'; Gstr{i,2} = 'OH'; 
fHMACO3H(i)=fHMACO3H(i)-1; fOH(i)=fOH(i)-1; fHMACO3(i)=fHMACO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H = HOCH2CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMACO3H'; 
fHMACO3H(i)=fHMACO3H(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMPAN + OH = H13CO2C3 + CO + NO3';
k(:,i) = 2.90e-11;
Gstr{i,1} = 'HMPAN'; Gstr{i,2} = 'OH'; 
fHMPAN(i)=fHMPAN(i)-1; fOH(i)=fOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMPAN = HMACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HMPAN'; 
fHMPAN(i)=fHMPAN(i)-1; fHMACO3(i)=fHMACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO + CO = HOCH2COCHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'HMGLYOO'; Gstr{i,2} = 'CO'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fCO(i)=fCO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO + NO = HOCH2COCHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'HMGLYOO'; Gstr{i,2} = 'NO'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fNO(i)=fNO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO + NO2 = HOCH2COCHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'HMGLYOO'; Gstr{i,2} = 'NO2'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO + SO2 = HOCH2COCHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'HMGLYOO'; Gstr{i,2} = 'SO2'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO = HOCH2COCHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'HMGLYOO'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HMACROOH + OH = HMACRO2';
k(:,i) = 4.17e-11;
Gstr{i,1} = 'HMACROOH'; Gstr{i,2} = 'OH'; 
fHMACROOH(i)=fHMACROOH(i)-1; fOH(i)=fOH(i)-1; fHMACRO2(i)=fHMACRO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACROOH = H13CO2C3 + CO + HO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'HMACROOH'; 
fHMACROOH(i)=fHMACROOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACROOH =  + H13CO2C3 + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMACROOH'; 
fHMACROOH(i)=fHMACROOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2C3 + OH = HOCH2COCHO + HO2';
k(:,i) = 5.25e-12;
Gstr{i,1} = 'H13CO2C3'; Gstr{i,2} = 'OH'; 
fH13CO2C3(i)=fH13CO2C3(i)-1; fOH(i)=fOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2C3 = HOCH2CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'H13CO2C3'; 
fH13CO2C3(i)=fH13CO2C3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACROH + OH =  + H13CO2C3 + CO + HO2';
k(:,i) = 3.82e-11;
Gstr{i,1} = 'HMACROH'; Gstr{i,2} = 'OH'; 
fHMACROH(i)=fHMACROH(i)-1; fOH(i)=fOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACROH = H13CO2C3 + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'HMACROH'; 
fHMACROH(i)=fHMACROH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C531CO + OH = C31CO3 + CO';
k(:,i) = 2.62e-11;
Gstr{i,1} = 'C531CO'; Gstr{i,2} = 'OH'; 
fC531CO(i)=fC531CO(i)-1; fOH(i)=fOH(i)-1; fC31CO3(i)=fC31CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C531CO = C31CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C531CO'; 
fC531CO(i)=fC531CO(i)-1; fC31CO3(i)=fC31CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + HO2 = C31CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'HO2'; 
fC31CO3(i)=fC31CO3(i)-1; fHO2(i)=fHO2(i)-1; fC31CO3H(i)=fC31CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + HO2 = CHOOCHO + CO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'HO2'; 
fC31CO3(i)=fC31CO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + NO = CHOOCHO + CO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'NO'; 
fC31CO3(i)=fC31CO3(i)-1; fNO(i)=fNO(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + NO2 = C31PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'NO2'; 
fC31CO3(i)=fC31CO3(i)-1; fNO2(i)=fNO2(i)-1; fC31PAN(i)=fC31PAN(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + NO3 = CHOOCHO + CO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'NO3'; 
fC31CO3(i)=fC31CO3(i)-1; fNO3(i)=fNO3(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 = CHOOCHO + CO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'RO2';
fC31CO3(i)=fC31CO3(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C533O2 + HO2 = C533OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C533O2'; Gstr{i,2} = 'HO2'; 
fC533O2(i)=fC533O2(i)-1; fHO2(i)=fHO2(i)-1; fC533OOH(i)=fC533OOH(i)+1; 

i=i+1;
Rnames{i} = 'C533O2 + NO =  + CHOOCHO + MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C533O2'; Gstr{i,2} = 'NO'; 
fC533O2(i)=fC533O2(i)-1; fNO(i)=fNO(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C533O2 + NO3 =  + CHOOCHO + MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C533O2'; Gstr{i,2} = 'NO3'; 
fC533O2(i)=fC533O2(i)-1; fNO3(i)=fNO3(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C533O2 =  + CHOOCHO + MGLYOX + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C533O2'; Gstr{i,2} = 'RO2';
fC533O2(i)=fC533O2(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + HO2 = MMALNHYOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'HO2'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fHO2(i)=fHO2(i)-1; fMMALNHYOOH(i)=fMMALNHYOOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + NO =  + CO2H3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'NO'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fNO(i)=fNO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + NO3 =  + CO2H3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'NO3'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fNO3(i)=fNO3(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 =  + CO2H3CO3';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'RO2';
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 = MMALNHY2OH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'RO2';
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fMMALNHY2OH(i)=fMMALNHY2OH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO + NO3 = C23O3CCO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C23O3CCHO'; Gstr{i,2} = 'NO3'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fNO3(i)=fNO3(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO + OH = C23O3CCO3';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'C23O3CCHO'; Gstr{i,2} = 'OH'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fOH(i)=fOH(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO = CO + MCOCOMOXO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C23O3CCHO'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fCO(i)=fCO(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3H + OH = C47CO3';
k(:,i) = 7.71e-12;
Gstr{i,1} = 'C47CO3H'; Gstr{i,2} = 'OH'; 
fC47CO3H(i)=fC47CO3H(i)-1; fOH(i)=fOH(i)-1; fC47CO3(i)=fC47CO3(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3H = GLYOX + CH3COCO3H + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C47CO3H'; 
fC47CO3H(i)=fC47CO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C47PAN + OH = CO2N3CHO + CO + NO3';
k(:,i) = 4.11e-12;
Gstr{i,1} = 'C47PAN'; Gstr{i,2} = 'OH'; 
fC47PAN(i)=fC47PAN(i)-1; fOH(i)=fOH(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C47PAN = C47CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C47PAN'; 
fC47PAN(i)=fC47PAN(i)-1; fC47CO3(i)=fC47CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C47PAN = C47CO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C47PAN'; 
fC47PAN(i)=fC47PAN(i)-1; fC47CO3(i)=fC47CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO2H + OH = MACRNO3 + OH';
k(:,i) = 7.40e-12;
Gstr{i,1} = 'INB1HPCO2H'; Gstr{i,2} = 'OH'; 
fINB1HPCO2H(i)=fINB1HPCO2H(i)-1; fOH(i)=fOH(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3H + OH = INB1HPCO3';
k(:,i) = 1.09e-11;
Gstr{i,1} = 'INB1HPCO3H'; Gstr{i,2} = 'OH'; 
fINB1HPCO3H(i)=fINB1HPCO3H(i)-1; fOH(i)=fOH(i)-1; fINB1HPCO3(i)=fINB1HPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3H = MACRNO3 + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB1HPCO3H'; 
fINB1HPCO3H(i)=fINB1HPCO3H(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPPAN + OH = MACRNO3 + CO + OH + NO2';
k(:,i) = 7.26e-12;
Gstr{i,1} = 'INB1HPPAN'; Gstr{i,2} = 'OH'; 
fINB1HPPAN(i)=fINB1HPPAN(i)-1; fOH(i)=fOH(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPPAN = INB1HPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INB1HPPAN'; 
fINB1HPPAN(i)=fINB1HPPAN(i)-1; fINB1HPCO3(i)=fINB1HPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO2H + OH = MACRNO3 + NO2';
k(:,i) = 1.72e-12;
Gstr{i,1} = 'INB1NACO2H'; Gstr{i,2} = 'OH'; 
fINB1NACO2H(i)=fINB1NACO2H(i)-1; fOH(i)=fOH(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3H + OH = INB1NACO3';
k(:,i) = 5.18e-12;
Gstr{i,1} = 'INB1NACO3H'; Gstr{i,2} = 'OH'; 
fINB1NACO3H(i)=fINB1NACO3H(i)-1; fOH(i)=fOH(i)-1; fINB1NACO3(i)=fINB1NACO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3H = MACRNO3 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB1NACO3H'; 
fINB1NACO3H(i)=fINB1NACO3H(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NAPAN + OH = MACRNO3 + CO + NO2 + NO2';
k(:,i) = 1.58e-12;
Gstr{i,1} = 'INB1NAPAN'; Gstr{i,2} = 'OH'; 
fINB1NAPAN(i)=fINB1NAPAN(i)-1; fOH(i)=fOH(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NAPAN = INB1NACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INB1NAPAN'; 
fINB1NAPAN(i)=fINB1NAPAN(i)-1; fINB1NACO3(i)=fINB1NACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO2H + OH = MVKNO3 + NO2';
k(:,i) = 1.73e-12;
Gstr{i,1} = 'INB1NBCO2H'; Gstr{i,2} = 'OH'; 
fINB1NBCO2H(i)=fINB1NBCO2H(i)-1; fOH(i)=fOH(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3H + OH = INB1NBCO3';
k(:,i) = 5.19e-12;
Gstr{i,1} = 'INB1NBCO3H'; Gstr{i,2} = 'OH'; 
fINB1NBCO3H(i)=fINB1NBCO3H(i)-1; fOH(i)=fOH(i)-1; fINB1NBCO3(i)=fINB1NBCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3H = MVKNO3 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB1NBCO3H'; 
fINB1NBCO3H(i)=fINB1NBCO3H(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBPAN + OH = MVKNO3 + CO + NO2 + NO2';
k(:,i) = 1.59e-12;
Gstr{i,1} = 'INB1NBPAN'; Gstr{i,2} = 'OH'; 
fINB1NBPAN(i)=fINB1NBPAN(i)-1; fOH(i)=fOH(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBPAN = INB1NBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INB1NBPAN'; 
fINB1NBPAN(i)=fINB1NBPAN(i)-1; fINB1NBCO3(i)=fINB1NBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO2H + OH = CO2H3CHO + NO2';
k(:,i) = 2.23e-11;
Gstr{i,1} = 'MMALNBCO2H'; Gstr{i,2} = 'OH'; 
fMMALNBCO2H(i)=fMMALNBCO2H(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO2H = GLYOX + CH3COCO2H + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'MMALNBCO2H'; 
fMMALNBCO2H(i)=fMMALNBCO2H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H + OH = MMALNBCO3';
k(:,i) = 2.59e-11;
Gstr{i,1} = 'MMALNBCO3H'; Gstr{i,2} = 'OH'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H = GLYOX + CH3COCO3H + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'MMALNBCO3H'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN + OH = CO2H3CHO + NO2 + NO3';
k(:,i) = 2.18e-11;
Gstr{i,1} = 'MMALNBPAN'; Gstr{i,2} = 'OH'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN = MMALNBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MMALNBPAN'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN = MMALNBCO3 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'MMALNBPAN'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3H + OH = INDHPCO3';
k(:,i) = 8.64e-12;
Gstr{i,1} = 'INDHPCO3H'; Gstr{i,2} = 'OH'; 
fINDHPCO3H(i)=fINDHPCO3H(i)-1; fOH(i)=fOH(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3H = MVKNO3 + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'INDHPCO3H'; 
fINDHPCO3H(i)=fINDHPCO3H(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHPPAN + OH = MVKNO3 + NO3';
k(:,i) = 5.04e-12;
Gstr{i,1} = 'INDHPPAN'; Gstr{i,2} = 'OH'; 
fINDHPPAN(i)=fINDHPPAN(i)-1; fOH(i)=fOH(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPPAN = INDHPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INDHPPAN'; 
fINDHPPAN(i)=fINDHPPAN(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPPAN = INDHPCO3 + NO2';
k(:,i) = J41;
Gstr{i,1} = 'INDHPPAN'; 
fINDHPPAN(i)=fINDHPPAN(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO2H = NO3CH2CO3 + CH3COCO2H + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'INANCOCO2H'; 
fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCO2H = NO2 + CO23C4NO3';
k(:,i) = 9.35e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCO2H'; 
fOH(i)=fOH(i)-1; fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3H = NO3CH2CO3 + CH3COCO3H + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'INANCOCO3H'; 
fINANCOCO3H(i)=fINANCOCO3H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCO3H = INANCOCO3';
k(:,i) = 4.02e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCO3H'; 
fOH(i)=fOH(i)-1; fINANCOCO3H(i)=fINANCOCO3H(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN = INANCOCO3  + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN = INANCOCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOPAN = NO3 + CO23C4NO3';
k(:,i) = 4.15e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOPAN'; 
fOH(i)=fOH(i)-1; fINANCOPAN(i)=fINANCOPAN(i)-1; fNO3(i)=fNO3(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO2 + HO2 = C3DIOLOOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'C3DIOLO2'; Gstr{i,2} = 'HO2'; 
fC3DIOLO2(i)=fC3DIOLO2(i)-1; fHO2(i)=fHO2(i)-1; fC3DIOLOOH(i)=fC3DIOLOOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO2 + NO =  + HOCH2CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C3DIOLO2'; Gstr{i,2} = 'NO'; 
fC3DIOLO2(i)=fC3DIOLO2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO2 + NO3 =  + HOCH2CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C3DIOLO2'; Gstr{i,2} = 'NO3'; 
fC3DIOLO2(i)=fC3DIOLO2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO2 =  + HOCH2CHO + HCHO + HO2';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'C3DIOLO2'; Gstr{i,2} = 'RO2';
fC3DIOLO2(i)=fC3DIOLO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1OOH + OH = MVKOHAOH + CO + OH';
k(:,i) = 4.30e-11;
Gstr{i,1} = 'HIEB1OOH'; Gstr{i,2} = 'OH'; 
fHIEB1OOH(i)=fHIEB1OOH(i)-1; fOH(i)=fOH(i)-1; fMVKOHAOH(i)=fMVKOHAOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1OOH =  + HOCH2COCHO + HOCH2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HIEB1OOH'; 
fHIEB1OOH(i)=fHIEB1OOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1OOH = MVKOHAOH + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'HIEB1OOH'; 
fHIEB1OOH(i)=fHIEB1OOH(i)-1; fMVKOHAOH(i)=fMVKOHAOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2OOH + OH = HMACROH + CO + OH';
k(:,i) = 5.74e-11;
Gstr{i,1} = 'HIEB2OOH'; Gstr{i,2} = 'OH'; 
fHIEB2OOH(i)=fHIEB2OOH(i)-1; fOH(i)=fOH(i)-1; fHMACROH(i)=fHMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2OOH =  + H13CO2C3 + GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HIEB2OOH'; 
fHIEB2OOH(i)=fHIEB2OOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2OOH = HMACROH + CO + OH + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HIEB2OOH'; 
fHIEB2OOH(i)=fHIEB2OOH(i)-1; fHMACROH(i)=fHMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPNC524CO + OH = HMVKNO3 + CO + OH';
k(:,i) = 2.98e-11;
Gstr{i,1} = 'HPNC524CO'; Gstr{i,2} = 'OH'; 
fHPNC524CO(i)=fHPNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPNC524CO = HOCH2CHO + HOCH2COCHO + NO2 + OH';
k(:,i) = J56.*4;
Gstr{i,1} = 'HPNC524CO'; 
fHPNC524CO(i)=fHPNC524CO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DNC524CO + OH = HMVKNO3 + CO + NO2';
k(:,i) = 1.93e-11;
Gstr{i,1} = 'DNC524CO'; Gstr{i,2} = 'OH'; 
fDNC524CO(i)=fDNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNC524CO = HMVKNO3 + CO + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'DNC524CO'; 
fDNC524CO(i)=fDNC524CO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 + OH = HMVKNGLYOX + HO2';
k(:,i) = 3.85e-12;
Gstr{i,1} = 'HMVKNO3'; Gstr{i,2} = 'OH'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fOH(i)=fOH(i)-1; fHMVKNGLYOX(i)=fHMVKNGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 = HOCH2CHO + NO2 + CO + CO + HO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'HMVKNO3'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNC524CO + OH = HMVKNO3 + CO + HO2';
k(:,i) = 2.67e-11;
Gstr{i,1} = 'HNC524CO'; Gstr{i,2} = 'OH'; 
fHNC524CO(i)=fHNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNC524CO = HOCH2CHO + HOCH2COCHO + NO2 + HO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'HNC524CO'; 
fHNC524CO(i)=fHNC524CO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3H + OH = C31CO3';
k(:,i) = 1.72e-11;
Gstr{i,1} = 'C31CO3H'; Gstr{i,2} = 'OH'; 
fC31CO3H(i)=fC31CO3H(i)-1; fOH(i)=fOH(i)-1; fC31CO3(i)=fC31CO3(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3H = CHOOCHO + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C31CO3H'; 
fC31CO3H(i)=fC31CO3H(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOOCHO + OH = HO2 + CO';
k(:,i) = 1.80e-13;
Gstr{i,1} = 'CHOOCHO'; Gstr{i,2} = 'OH'; 
fCHOOCHO(i)=fCHOOCHO(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C31PAN + OH = CHOOCHO + CO + NO3';
k(:,i) = 1.36e-11;
Gstr{i,1} = 'C31PAN'; Gstr{i,2} = 'OH'; 
fC31PAN(i)=fC31PAN(i)-1; fOH(i)=fOH(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C31PAN = C31CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C31PAN'; 
fC31PAN(i)=fC31PAN(i)-1; fC31CO3(i)=fC31CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C533OOH + OH = C533O2';
k(:,i) = 2.20e-11;
Gstr{i,1} = 'C533OOH'; Gstr{i,2} = 'OH'; 
fC533OOH(i)=fC533OOH(i)-1; fOH(i)=fOH(i)-1; fC533O2(i)=fC533O2(i)+1; 

i=i+1;
Rnames{i} = 'C533OOH =  + CHOOCHO + MGLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C533OOH'; 
fC533OOH(i)=fC533OOH(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C533OOH =  + CHOOCHO + MGLYOX + HO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C533OOH'; 
fC533OOH(i)=fC533OOH(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHYOOH + OH = MMALANHYO2';
k(:,i) = 1.69e-11;
Gstr{i,1} = 'MMALNHYOOH'; Gstr{i,2} = 'OH'; 
fMMALNHYOOH(i)=fMMALNHYOOH(i)-1; fOH(i)=fOH(i)-1; fMMALANHYO2(i)=fMMALANHYO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHYOOH =  + CO2H3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MMALNHYOOH'; 
fMMALNHYOOH(i)=fMMALNHYOOH(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHY2OH + OH =  + CO2H3CO3';
k(:,i) = 1.34e-11;
Gstr{i,1} = 'MMALNHY2OH'; Gstr{i,2} = 'OH'; 
fMMALNHY2OH(i)=fMMALNHY2OH(i)-1; fOH(i)=fOH(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = C23O3CCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3CCO2H(i)=fC23O3CCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = C23O3CCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3CCO3H(i)=fC23O3CCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = MCOCOMOXO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO = MCOCOMOXO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO(i)=fNO(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO2 = C23O3CPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO2(i)=fNO2(i)-1; fC23O3CPAN(i)=fC23O3CPAN(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO3 = MCOCOMOXO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO3'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO3(i)=fNO3(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 = C23O3CCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'RO2';
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fC23O3CCO2H(i)=fC23O3CCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 = MCOCOMOXO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'RO2';
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLOOH + OH = C3DIOLO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'C3DIOLOOH'; Gstr{i,2} = 'OH'; 
fC3DIOLOOH(i)=fC3DIOLOOH(i)-1; fOH(i)=fOH(i)-1; fC3DIOLO2(i)=fC3DIOLO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLOOH =  + HOCH2CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C3DIOLOOH'; 
fC3DIOLOOH(i)=fC3DIOLOOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNGLYOX + OH = CO + CO + HOCH2CHO + NO2';
k(:,i) = 1.36e-11;
Gstr{i,1} = 'HMVKNGLYOX'; Gstr{i,2} = 'OH'; 
fHMVKNGLYOX(i)=fHMVKNGLYOX(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNGLYOX = CO + CO + HOCH2CHO + NO2 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'HMVKNGLYOX'; 
fHMVKNGLYOX(i)=fHMVKNGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO2H + OH = MCOCOMOXO2';
k(:,i) = 8.76e-13;
Gstr{i,1} = 'C23O3CCO2H'; Gstr{i,2} = 'OH'; 
fC23O3CCO2H(i)=fC23O3CCO2H(i)-1; fOH(i)=fOH(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3H + OH = C23O3CCO3';
k(:,i) = 4.34e-12;
Gstr{i,1} = 'C23O3CCO3H'; Gstr{i,2} = 'OH'; 
fC23O3CCO3H(i)=fC23O3CCO3H(i)-1; fOH(i)=fOH(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3H = OH + MCOCOMOXO2';
k(:,i) = J41;
Gstr{i,1} = 'C23O3CCO3H'; 
fC23O3CCO3H(i)=fC23O3CCO3H(i)-1; fOH(i)=fOH(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CPAN + OH = CO + C23O3CHO + NO2';
k(:,i) = 7.36e-13;
Gstr{i,1} = 'C23O3CPAN'; Gstr{i,2} = 'OH'; 
fC23O3CPAN(i)=fC23O3CPAN(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fC23O3CHO(i)=fC23O3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CPAN = C23O3CCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C23O3CPAN'; 
fC23O3CPAN(i)=fC23O3CPAN(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO + NO3 = CO + CH3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'C23O3CHO'; Gstr{i,2} = 'NO3'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO + OH = CO + CH3CO3';
k(:,i) = 1.27e-11;
Gstr{i,1} = 'C23O3CHO'; Gstr{i,2} = 'OH'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO = CO + HO2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'C23O3CHO'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

