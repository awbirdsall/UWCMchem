% MCMBiogenicRxns.m
% generated from MCMv32_biogenics.txt
% 120713
% # of species = 1085
% # of reactions = 3658

SpeciesToAdd = {...
'NC826OH'; 'C918NO3'; 'C732O2'; 'C4PAN5'; 'C4PAN6'; 'HCC7CO'; 'MBOAOH'; 'C812OH'; 'C627PAN'; 'HO1CO3CHO'; ...
'NORLIMAL'; 'NC3OO'; 'C914OH'; 'CHOPRNO3'; 'CO235C6OOH'; 'C617CO3'; 'LMLKBCO'; 'C524CO'; 'ISOPDOOH'; 'IPROPOL'; ...
'HMVKNO3'; 'C731OOH'; 'IPRHOCO2H'; 'C86O2'; 'ETHGLY'; 'C512O2'; 'MACROH'; 'MACROO'; 'ETHO2HNO3'; 'C617OOH'; ...
'C811PAN'; 'C9DC'; 'CO235C6CO3'; 'C4CODIAL'; 'INB1NBCO2H'; 'C626CO2H'; 'C512CO2H'; 'C4OH2CO3H'; 'C107O2'; 'NOPINANO3'; ...
'MBOBNO3'; 'NOPINAOOH'; 'C622NO3'; 'ACO3H'; 'C721PAN'; 'C44OOH'; 'ACO3B'; 'CO12C4CHO'; 'C718CO2H'; 'C729CO3'; ...
'INAHCO3'; 'KLIMONIC'; 'C914O2'; 'C627OOH'; 'C525OOH'; 'INAHCHO'; 'C624CO3H'; 'C615OH'; 'MBOAO2'; 'C817PAN'; ...
'C816CO3H'; 'INB1HPCO2H'; 'C817CO3'; 'ISOPCOOH'; 'NC826O2'; 'C811O2'; 'C624OH'; 'CHOC3COPAN'; 'INB1NACO3H'; 'IEACO3H'; ...
'PINALOOH'; 'C57NO3'; 'C3DIOLOOH'; 'APINBOOH'; 'INAHPCO3'; 'INDOOH'; 'C919NO3'; 'C615CO'; 'NORLIMO2'; 'C312COCO3'; ...
'HCOCH2CHO'; 'C734CO'; 'C109OOH'; 'NO3'; 'BPINCOOH'; 'NLIMALOH'; 'VGLYOX'; 'C58OOH'; 'H2O2'; 'C58NO3'; ...
'CHOC3COCO3'; 'C629O2'; 'MBOAOOH'; 'INCCO'; 'C624CO3'; 'C312COPAN'; 'PAN'; 'C89CO2H'; 'C926O2'; 'INB1GLYOX'; ...
'H13CO2C3'; 'PRONO3AO2'; 'C519O2'; 'C622O2'; 'CONM2CO3H'; 'C10PAN2'; 'C518CO3H'; 'C513OOH'; 'C512CO3'; 'C617O2'; ...
'C918OH'; 'C731CO2H'; 'C629OH'; 'IEB1O2'; 'CO2H3CO3H'; 'CH3CHO'; 'C916NO3'; 'LIMALBOOH'; 'HMVKBPAN'; 'C44O2'; ...
'NOA'; 'C733OOH'; 'CO25C6CHO'; 'INCOOH'; 'ISOPBOOH'; 'C9DCNO3'; 'C920OOH'; 'C624CHO'; 'C85CO3H'; 'BPINBOOH'; ...
'C816PAN'; 'INAOOH'; 'C914OOH'; 'LMKAO2'; 'PINAL'; 'IEPOXC'; 'NOAOO'; 'IEPOXA'; 'C58NO3CO3'; 'APINCOOH'; ...
'C626NO3'; 'MACROOH'; 'C917O2'; 'C811OH'; 'C511CO3'; 'NC91PAN'; 'INAHPCO3H'; 'CO2N3CHO'; 'C107OH'; 'LMKANO3'; ...
'C89OOH'; 'CO2N3CO3'; 'C109O2'; 'C824CO'; 'C615O2'; 'C515CHO'; 'C512OH'; 'C622CO2H'; 'HCOCH2CO2H'; 'C812O2'; ...
'C626O2'; 'PHAN'; 'C514OH'; 'C916OH'; 'NLMKAOOH'; 'HOCH2COCHO'; 'CH3COCH3'; 'C924O2'; 'MACO2H'; 'CHOC2CO3H'; ...
'C917NO3'; 'C819O2'; 'NC91CO3'; 'C620OH'; 'C732CO'; 'CO123C5CHO'; 'H3C25CCO2H'; 'C514O2'; 'PINONIC'; 'ACRPAN'; ...
'H3C25C6OOH'; 'INB1O2'; 'ISOPCNO3'; 'C728NO3'; 'C109OH'; 'MVK'; 'NBPINBOOH'; 'NC101CO'; 'C626CO3'; 'MACRNCO2H'; ...
'C510O2'; 'IPRHOCO3H'; 'INDO2'; 'NC4OHCPAN'; 'C920CO3'; 'NBPINBO2'; 'C721O2'; 'INB1NACHO'; 'MACRNBPAN'; 'COHM2CO3H'; ...
'C515PAN'; 'NC524OOH'; 'C512CO3H'; 'HMACO2H'; 'HOCH2CHO'; 'LMKBNO3'; 'ISOPANO3'; 'INANCOCHO'; 'PRNO3CO3H'; 'INB1OOH'; ...
'C925OOH'; 'NORPINAL'; 'CO235C6O2'; 'C822CO2H'; 'INANCO3H'; 'H14CO23C4'; 'C624CO'; 'INAOH'; 'MBOBOOH'; 'C924CO'; ...
'H3C2C4CO2H'; 'H3C25C6PAN'; 'CO2C4CHO'; 'NBPINAO2'; 'C810OOH'; 'IECCO3'; 'C615CO2H'; 'PRNO3PAN'; 'H2M2C3CO3H'; 'IBUTOLOHB'; ...
'INDHPPAN'; 'C716O2'; 'MEKAOOH'; 'C515CO3'; 'C923PAN'; 'HMVKBCO3H'; 'HYPROPO2H'; 'C88CO2H'; 'C718O2'; 'C96OH'; ...
'INCOH'; 'C67CO3'; 'H3C25C6OH'; 'C96O2'; 'CO2C3CO3H'; 'C718OH'; 'INANCOCO3H'; 'H3C25C6O2'; 'IPRHOCO3'; 'INCO2'; ...
'INANCOCO3'; 'C98O2'; 'INCNO3'; 'TBUTOLO2'; 'C2OHOCO2H'; 'CH3CHOO'; 'TBUTOLOOH'; 'C623OOH'; 'MACRO2'; 'INB2OOH'; ...
'INCNCHO'; 'INANPAN'; 'INAO2'; 'C513CO'; 'C823PAN'; 'INCNCO3'; 'ISOPDNO3'; 'C88CO3'; 'H1C23C4PAN'; 'C918OOH'; ...
'C98OH'; 'C823CO3H'; 'C619CO'; 'C823CO3'; 'LIMALBCO'; 'IBUTALOH'; 'NMBOBOOH'; 'C735O2'; 'CH3CO3H'; 'MMALNBPAN'; ...
'HIEB1O2'; 'NC826OOH'; 'C9DCOOH'; 'BPINBNO3'; 'C917OH'; 'INANO3'; 'C918PAN'; 'ACO2H'; 'C916OOH'; 'CO2C3CO3'; ...
'C620O2'; 'CO2N3PAN'; 'ISOPBNO3'; 'NC728OOH'; 'APINBOH'; 'APINBOO'; 'HOPINONIC'; 'HO1CO3C4O2'; 'C517OOH'; 'C622OOH'; ...
'C616OH'; 'MIBKHO4CHO'; 'HCOCH2CO3'; 'BPINANO3'; 'C89PAN'; 'BPINAOOH'; 'NC730O2'; 'IECCO3H'; 'C5PAN2'; 'HC4ACHO'; ...
'C614OH'; 'CH4'; 'H3C25CCO3H'; 'HMGLYOO'; 'HCOCO3'; 'NC4CO3'; 'C813O2'; 'HMVKBCO3'; 'HCOCH2O2'; 'H13CO2CO3'; ...
'C618CO2H'; 'C923CO3'; 'MMALNACO3H'; 'C626CO3H'; 'C614O2'; 'C825CO'; 'ACLOO'; 'C627OH'; 'C817OH'; 'C923OOH'; ...
'IEB2O2'; 'NC524NO3'; 'C823OOH'; 'C717OOH'; 'CONM2CO3'; 'C616O2'; 'APINBO2'; 'C88OOH'; 'CHOMOHCO3'; 'IEC1OOH'; ...
'PINALNO3'; 'MBOANO3'; 'NC102OOH'; 'PRONO3BO2'; 'HCOOH'; 'C520OOH'; 'C58NO3PAN'; 'HCOCO2H'; 'C917OOH'; 'ETHENO3O2'; ...
'HIEPOXB'; 'NC730OOH'; 'C519CO2H'; 'HCHO'; 'HMVKAO2'; 'C86OOH'; 'CONM2CO2H'; 'LIMONENE'; 'C619OH'; 'C515OOH'; ...
'MACRNO3'; 'APINANO3'; 'C515CO'; 'C518CO2H'; 'C511OOH'; 'H1C23C4CO3'; 'HMACRO2'; 'C734OH'; 'C55O2'; 'ISOPAOOH'; ...
'CO1M22PAN'; 'C924OH'; 'CO2H3CHO'; 'C718CO3'; 'C822CO3'; 'NC623OOH'; 'C625OH'; 'C920PAN'; 'INAHCO2H'; 'LMLKACO'; ...
'CHOC2H4OOH'; 'C926OH'; 'ALLYLOH'; 'C810NO3'; 'NOPINDCO'; 'IECCHO'; 'C87OOH'; 'C822OOH'; 'C729PAN'; 'IEB2OOH'; ...
'HOCH2CO3'; 'NLMKAO2'; 'MACROHNO3'; 'NMBOAOOH'; 'C9DCO2'; 'C624OOH'; 'C812OOH'; 'C719NO3'; 'IPROPOLO2H'; 'CONM2CHO'; ...
'C87OH'; 'C5PAN9'; 'HOCH2CO2H'; 'C96CO3'; 'MACRNB'; 'NC91CHO'; 'INB1NBCHO'; 'HYPERACET'; 'C731O2'; 'C922O2'; ...
'C826OH'; 'NC71CO'; 'MACRNOO'; 'HC23C4CO3H'; 'CH3OOH'; 'APINCNO3'; 'C619O2'; 'C921O2'; 'C106OOH'; 'CO1M22CO3'; ...
'C821O2'; 'H2M2C3CO3'; 'PROPGLY'; 'C923CO3H'; 'C235C6CO3H'; 'NO3CH2CO3'; 'NC4CHO'; 'C67CO3H'; 'C733O2'; 'C717O2'; ...
'C518PAN'; 'HMVKNGLYOX'; 'NC72OOH'; 'C817NO3'; 'C615CO3H'; 'LMKBO2'; 'C719O2'; 'CH3CHOHCHO'; 'C97OH'; 'C730OH'; ...
'NISOPNO3'; 'IEC2OOH'; 'MVKOHAOH'; 'APINBCO'; 'MVKOHBO2'; 'MGLOO'; 'INDHPCO3'; 'C823OH'; 'INDOH'; 'C524OH'; ...
'C617CHO'; 'LMLKET'; 'MGLYOO'; 'C58NO3CO2H'; 'C524O2'; 'H13CO2CO3H'; 'C88CO'; 'INB1NACO2H'; 'LIMALAOOH'; 'IEAPAN'; ...
'C624PAN'; 'HO14CO2C4'; 'MGLYOX'; 'MVKOHAOOH'; 'C9DCOH'; 'CO1M22CO2H'; 'C719OH'; 'MVKOHAO2'; 'INANCOPAN'; 'HC4CCHO'; ...
'LMKBOO'; 'LMKBOOH'; 'MBOBCO'; 'C96OOH'; 'HOCHOCOOH'; 'C825O2'; 'C717OH'; 'C733OH'; 'MMALNBCO2H'; 'C626OOH'; ...
'CH3O2NO2'; 'C918CHO'; 'MACRNBCO3H'; 'C520OH'; 'H1CO23CHO'; 'HCOC5'; 'C811NO3'; 'MMALNACO2H'; 'APINCOH'; 'MBOOO'; ...
'CHOC2PAN'; 'C98NO3'; 'CO23C4CO3'; 'C6PAN9'; 'C626PAN'; 'GAOO'; 'C717NO3'; 'C7PAN3'; 'C816OOH'; 'PINALOH'; ...
'MACRNBCO3'; 'IEACO3'; 'C625O2'; 'C923NO3'; 'C519CO3'; 'CH3COCO2H'; 'IEPOXB'; 'C57O2'; 'C518CHO'; 'INCGLYOX'; ...
'C824O2'; 'C823NO3'; 'C617OH'; 'NMBOBCO'; 'DNC524CO'; 'NC730OH'; 'NC623O2'; 'NO2'; 'OCCOHCOH'; 'HMACROH'; ...
'IECPAN'; 'NOPINBOH'; 'C2OHOCOOH'; 'CO2C4GLYOX'; 'INB1HPCO3H'; 'BPINENE'; 'NOPINBO2'; 'C510OOH'; 'CO235C6CHO'; 'C5H8'; ...
'KLIMONONIC'; 'C3PAN1'; 'C517CO3H'; 'NC623OH'; 'C59O2'; 'ACETOL'; 'C826OOH'; 'C924OOH'; 'BIACETOOH'; 'IPROPOLO2'; ...
'CONM2PAN'; 'CH3CO3'; 'MACRNBCO2H'; 'INB1HPPAN'; 'C819OOH'; 'LMKAOH'; 'LMLKBOOH'; 'C57OH'; 'C813NO3'; 'IBUTALO2H'; ...
'PINALO2'; 'LIMALOH'; 'HIEB2O2'; 'A2PAN'; 'HPNC524CO'; 'C97OOH'; 'C8BCCO'; 'CO2C4CO2H'; 'APINCO2'; 'CH3COCH2O2'; ...
'MACO3H'; 'C716OOH'; 'CHOC2CO2H'; 'C817O2'; 'C614NO3'; 'C618CO3H'; 'CH3NO3'; 'C622CO3'; 'MMALNBCO3H'; 'C106NO3'; ...
'C97O2'; 'NC101O2'; 'ISOPAOH'; 'HMVKANO3'; 'LIMAL'; 'C918O2'; 'HOC2H4CO2H'; 'MACROHO2'; 'CO23C3CHO'; 'HMVKBO2'; ...
'C517CO3'; 'C923OH'; 'INB1NBCO3H'; 'H13CO2CHO'; 'C729OOH'; 'APINAO2'; 'COHM2CO3'; 'NOPINDO2'; 'HCOCO3H'; 'HC4CCO2H'; ...
'C33CO'; 'C621OOH'; 'C818OOH'; 'LIMKET'; 'CHOC3COOOH'; 'C57NO3CO3'; 'ISOPCO2'; 'INB1HPCO3'; 'C718OOH'; 'NC4OHCO3'; ...
'NOPINDOH'; 'C629OOH'; 'IPROPOLPAN'; 'HNO3'; 'C622OH'; 'MACRNCO3'; 'BPINBO2'; 'C925O2'; 'C622CO3H'; 'INB1HPCHO'; ...
'C822NO3'; 'NAPINBOOH'; 'INB1NO3'; 'ETHOHNO3'; 'GLYOO'; 'C514NO3'; 'C923O2'; 'C618O2'; 'INDHCO3'; 'ISOPAO2'; ...
'A2PANOO'; 'C617CO3H'; 'HIEB1OOH'; 'GLYOX'; 'C733CO'; 'C8BCOOH'; 'HC4CCO3'; 'HMACR'; 'INCNCO2H'; 'APINAOOH'; ...
'C3H6'; 'C822O2'; 'LIMAO2'; 'CO2N3CO3H'; 'C96NO3'; 'C920CO3H'; 'LIMCOH'; 'C719OOH'; 'HC4ACO3'; 'C817CO3H'; ...
'MACROHOOH'; 'NC91CO3H'; 'INDHCHO'; 'TBUTOLNO3'; 'C920O2'; 'LIMALBOH'; 'CO23C4NO3'; 'C512NO3'; 'C57OOH'; 'C718NO3'; ...
'CH2OO'; 'COHM2PAN'; 'CO235C5CHO'; 'CH3CHOHCO3'; 'C731PAN'; 'C731NO3'; 'COHM2CO2H'; 'C55OOH'; 'C734O2'; 'H1C23C4CHO'; ...
'C511CO3H'; 'C732NO3'; 'MMALNACO3'; 'C816CO3'; 'PINIC'; 'C822OH'; 'LIMONONIC'; 'LIMONIC'; 'C5PAN19'; 'C5PAN18'; ...
'C824OOH'; 'NMBOBO2'; 'C5PAN11'; 'CO1M22CHO'; 'C825OOH'; 'NORLIMOOH'; 'C5PAN17'; 'C735OOH'; 'C67CHO'; 'C921OOH'; ...
'C821OOH'; 'CHOC2H4O2'; 'C820O2'; 'C817CO'; 'C525O2'; 'C2H4'; 'HCOCOHCO3'; 'C512OOH'; 'INB1NBCO3'; 'NC101OOH'; ...
'C730OOH'; 'CO13C4OH'; 'NOPINBOOH'; 'C826O2'; 'NC61CO3H'; 'NISOPOOH'; 'LIMALBO2'; 'C732OH'; 'C626CHO'; 'C87CO3'; ...
'C730O2'; 'HO12CO3C4'; 'LIMAOH'; 'C729CO3H'; 'CH3COCO3'; 'LIMCO2'; 'C817OOH'; 'C85O2'; 'C728OH'; 'C824OH'; ...
'NLIMO2'; 'C625OOH'; 'C519OOH'; 'LIMBCO'; 'INDHCO3H'; 'NLIMALO2'; 'C813OOH'; 'LIMALNO3'; 'INANCO'; 'NC728O2'; ...
'IEC1O2'; 'CO1M22CO3H'; 'LIMCOOH'; 'ALCOCH2OOH'; 'C88PAN'; 'C826NO3'; 'NC71O2'; 'C822PAN'; 'C89NO3'; 'C720OH'; ...
'C618PAN'; 'C732CO3'; 'NOPINCOH'; 'C3DIOLO2'; 'NO3CH2CHO'; 'INB2O2'; 'C718PAN'; 'C926OOH'; 'MVKOHANO3'; 'NOPINCOOH'; ...
'C622CHO'; 'CO2C4CO3H'; 'NC102O2'; 'NO3CH2CO2H'; 'CO'; 'C721OOH'; 'CL'; 'C735OH'; 'NOPINCO2'; 'INANCHO'; ...
'C720O2'; 'INAHPPAN'; 'C512PAN'; 'CO23C4CO3H'; 'NAPINAOOH'; 'C42AOH'; 'C727PAN'; 'C88CHO'; 'IEB1OOH'; 'C722O2'; ...
'MBOACO'; 'HC4ACO2H'; 'NC728OH'; 'C628OOH'; 'C728OOH'; 'C87CO2H'; 'LIMALACO'; 'C728O2'; 'LMLKAO2'; 'C825OH'; ...
'LIMALO2'; 'HMVKBCHO'; 'NOPINAO2'; 'HMVKBCO2H'; 'HIEB2OOH'; 'HO13CO4C5'; 'C8BCNO3'; 'C519PAN'; 'NOPINDOOH'; 'C810OH'; ...
'NC71OOH'; 'C517CHO'; 'LIMBOOH'; 'LIMANO3'; 'HNC524CO'; 'HCOCH2OOH'; 'BPINCOH'; 'C85CO3'; 'MVKNO3'; 'MBO'; ...
'C727CO3H'; 'C624CO2H'; 'C85OOH'; 'ISOPBOH'; 'C811CO3H'; 'C87CO'; 'MEKAO2'; 'C720OOH'; 'C727O2'; 'ISOPDOH'; ...
'C58O2'; 'C915OOH'; 'C109CO'; 'C519CO3H'; 'HMGLOO'; 'C108NO3'; 'NO3CH2CO3H'; 'C716OH'; 'C918CO3H'; 'C4OH2CO3'; ...
'C58OH'; 'CO2C4CO3'; 'ISOPDO2'; 'C624O2'; 'SO3'; 'SO2'; 'C727OOH'; 'BPINCO2'; 'C727CO3'; 'ISOPBO2'; ...
'HOC2H4CHO'; 'C87CO3H'; 'C57NO3CO2H'; 'MPAN'; 'PR2O2HNO3'; 'C729NO3'; 'BPINCNO3'; 'CO25C6CO3H'; 'C729CHO'; 'HMVKAOOH'; ...
'C813OH'; 'INAHCO3H'; 'NC4CO3H'; 'H1C23C4OOH'; 'HCOCOHCO3H'; 'NOPINAOH'; 'LMKBCO'; 'C58NO3CO3H'; 'INANCOCO2H'; 'LIMALAOH'; ...
'MEKAOH'; 'H3C2C4CO3'; 'CH3OH'; 'NOPINBNO3'; 'C732CO3H'; 'BIACETO2'; 'C617PAN'; 'C87PAN'; 'LIMBOO'; 'HMACO3'; ...
'H1C23C4O2'; 'C722OOH'; 'O3'; 'INDHPCHO'; 'HYETHO2H'; 'INB1NAPAN'; 'C57NO3CO3H'; 'HOCH2CO3H'; 'C511CHO'; 'C617CO2H'; ...
'BPINAO2'; 'INAHPCHO'; 'C816O2'; 'INCNPAN'; 'NLIMOOH'; 'LMLKAOH'; 'BPINAOH'; 'LMLKAOOH'; 'C816CO'; 'HCOCOHPAN'; ...
'C9PAN2'; 'CH3COCO3H'; 'C413COOOH'; 'C107OOH'; 'C32OH13CO'; 'NMBOAO2'; 'HMACO3H'; 'LIMBO2'; 'OH'; 'BIACETOH'; ...
'CH3O2'; 'HMVKBOOH'; 'C718CO3H'; 'LIMALAO2'; 'C9DCCO'; 'CO25C6CO2H'; 'APINENE'; 'C721CO3'; 'C4OH2CPAN'; 'C87O2'; ...
'PR1O2HNO3'; 'APINBNO3'; 'CO2C3PAN'; 'C919OH'; 'MBOBO2'; 'C510OH'; 'C8BCOH'; 'H3C25C6CO3'; 'HYPROPO2'; 'C517NO3'; ...
'C513O2'; 'MACO3'; 'C916O2'; 'MEKANO3'; 'C721CHO'; 'C915OH'; 'C811CO3'; 'C59OOH'; 'NC4OO'; 'HOCH2CH2O2'; ...
'IEACHO'; 'C8BC'; 'C89CO3H'; 'C3PAN2'; 'C312COCO3H'; 'C729CO2H'; 'NAPINAO2'; 'C98OOH'; 'C623NO3'; 'INCNCO3H'; ...
'NC61CO3'; 'C734OOH'; 'NC6PAN1'; 'OCCOHCO2'; 'INB1NACO3'; 'C615PAN'; 'NOPINCNO3'; 'C624NO3'; 'C915O2'; 'HOC2H4CO3H'; ...
'MVKOH'; 'ACO3'; 'C57NO3PAN'; 'C89CO3'; 'PROLNO3'; 'MVKOO'; 'CHOC2CO3'; 'LMKAOOH'; 'NOPINOO'; 'H2'; ...
'C8BCO2'; 'HO1CO34C5'; 'C919OOH'; 'NC4OHCO3H'; 'C729O2'; 'LIMALOOH'; 'C810O2'; 'NC2OO'; 'HC4CCO3H'; 'LIMCNO3'; ...
'CO25C6CO3'; 'NMGLYOX'; 'CH3COPAN'; 'NLIMALOOH'; 'C520O2'; 'CHOMOHPAN'; 'C615CO3'; 'LMLKBOH'; 'MMALNBCO3'; 'HOCH2COCO2H'; ...
'CHOCOCH2O2'; 'C614CO'; 'ACR'; 'C518CO3'; 'HOC2H4CO3'; 'H3C25C5CHO'; 'INDHPAN'; 'C619OOH'; 'C914CO'; 'C620OOH'; ...
'INB1NBPAN'; 'C616OOH'; 'C628O2'; 'CO23C4CHO'; 'NO'; 'HMACROOH'; 'HOCO3C4OOH'; 'HC4ACO3H'; 'C88O2'; 'C623OH'; ...
'C517PAN'; 'C89OH'; 'LIMBNO3'; 'NC524OH'; 'CH3CO2H'; 'MVKOOH'; 'NC524O2'; 'C4M2ALOHNO3'; 'CO2C3CHO'; 'C623O2'; ...
'MMALNAPAN'; 'C820OOH'; 'GLYPAN'; 'INAHPCO2H'; 'C922OOH'; 'C731CO3'; 'C614OOH'; 'NOPINBCO'; 'PRNO3CO3'; 'C514OOH'; ...
'C524NO3'; 'LIMAOOH'; 'C811OOH'; 'HCOCH2CO3H'; 'OCCOHCOOH'; 'C823O2'; 'LMLKBO2'; 'PERPINONIC'; 'CO13C4CHO'; 'C627O2'; ...
'C727CO'; 'C622PAN'; 'C731OH'; 'CO2H3CO3'; 'C517O2'; 'INANCO3'; 'C511O2'; 'C628OH'; 'H3C2C4PAN'; 'PROPOLNO3'; ...
'C818CO'; 'C732PAN'; 'C515CO3H'; 'C106OH'; 'C618OOH'; 'C731CO3H'; 'INB1OH'; 'C4MCONO3OH'; 'MVKOHBOOH'; 'C823CO'; ...
'C517CO2H'; 'NOPINONE'; 'C89O2'; 'C621O2'; 'C88OH'; 'C108O2'; 'C618CO3'; 'C511PAN'; 'CHOMOHCO3H'; 'C919O2'; ...
'INAHPAN'; 'C818OH'; 'C720NO3'; 'HO2'; 'C915NO3'; 'NISOPO2'; 'NC4CO2H'; 'C108OOH'; 'CHOC3COO2'; 'C615OOH'; ...
'C513OH'; 'NAPINBO2'; 'PRNO3CO2H'; 'MACR'; 'C519CHO'; 'C822CO3H'; 'C818O2'; 'INANCO2H'; 'MVKO2'; 'MACRNCO3H'; ...
'H3C2C4CO3H'; 'C108OH'; 'C3MDIALOH'; 'MBOCOCO'; 'INB1CO'; 'C918CO3'; 'C732OOH'; 'C730NO3'; 'C4PAN10'; 'NO3CH2PAN'; ...
'IPROPOLPER'; 'C524OOH'; 'INDHPCO3H'; 'MACRNPAN'; 'C106O2'; 'IBUTALCO2'; 'C721CO3H'; 'CO13C3CO2H'; 'HMPAN'; 'NC72O2'; ...
'C515O2'; 'NORPINIC'; 'C88CO3H'; 'NBPINAOOH'; 'C517OH'; };

RO2ToAdd = {...
'NMBOAO2'; 'NMBOBO2'; 'MBOAO2'; 'MBOBO2'; 'CH3O2'; 'NISOPO2'; 'ISOPAO2'; 'ISOPBO2'; 'ISOPCO2'; 'ISOPDO2'; ...
'NAPINAO2'; 'NAPINBO2'; 'APINAO2'; 'APINBO2'; 'APINCO2'; 'NBPINAO2'; 'NBPINBO2'; 'BPINAO2'; 'BPINBO2'; 'BPINCO2'; ...
'NLIMO2'; 'LIMAO2'; 'LIMBO2'; 'LIMCO2'; 'IPRHOCO3'; 'MACO3'; 'MACRO2'; 'MACROHO2'; 'CH3CO3'; 'HMVKAO2'; ...
'HMVKBO2'; 'MVKO2'; 'C107O2'; 'C109O2'; 'C96O2'; 'NOPINAO2'; 'NOPINBO2'; 'NOPINCO2'; 'NOPINDO2'; 'LIMALAO2'; ...
'LIMALBO2'; 'C923O2'; 'NC4OHCO3'; 'CH3COCH2O2'; 'IPROPOLO2'; 'C4OH2CO3'; 'INCO2'; 'NC4CO3'; 'C510O2'; 'PRONO3AO2'; ...
'PRONO3BO2'; 'HYPROPO2'; 'INAO2'; 'C524O2'; 'HC4ACO3'; 'C58O2'; 'INB1O2'; 'INB2O2'; 'HC4CCO3'; 'C57O2'; ...
'INDO2'; 'HOCH2CO3'; 'C59O2'; 'NC101O2'; 'C96CO3'; 'C720O2'; 'NC91CO3'; 'C8BCO2'; 'C918CO3'; 'C923CO3'; ...
'NO3CH2CO3'; 'HCOCO3'; 'CHOMOHCO3'; 'HCOCH2O2'; 'CO2H3CO3'; 'ACO3'; 'MVKOHAO2'; 'MVKOHBO2'; 'IEB1O2'; 'IEB2O2'; ...
'MACRNCO3'; 'IEC1O2'; 'PINALO2'; 'C108O2'; 'C89CO3'; 'C920CO3'; 'C920O2'; 'C97O2'; 'C85CO3'; 'C85O2'; ...
'C719O2'; 'C918O2'; 'C9DCO2'; 'C915O2'; 'C917O2'; 'NLIMALO2'; 'LIMALO2'; 'C729CO3'; 'C822CO3'; 'C924O2'; ...
'C816CO3'; 'NORLIMO2'; 'C816O2'; 'NLMKAO2'; 'LMKAO2'; 'LMKBO2'; 'CH3CHOHCO3'; 'PRNO3CO3'; 'IEACO3'; 'NC524O2'; ...
'C525O2'; 'C58NO3CO3'; 'CONM2CO3'; 'IECCO3'; 'CO2N3CO3'; 'NC102O2'; 'C512CO3'; 'C89O2'; 'C926O2'; 'C817CO3'; ...
'C817O2'; 'NC826O2'; 'C826O2'; 'C729O2'; 'LMLKAO2'; 'LMLKBO2'; 'INCNCO3'; 'MACRNBCO3'; 'H13CO2CO3'; 'ACO3B'; ...
'OCCOHCO2'; 'INAHPCO3'; 'INANCO3'; 'INAHCO3'; 'HIEB1O2'; 'HIEB2O2'; 'HMACO3'; 'HMACRO2'; 'INB1HPCO3'; 'INB1NACO3'; ...
'INB1NBCO3'; 'C57NO3CO3'; 'INDHPCO3'; 'INDHCO3'; 'C106O2'; 'C717O2'; 'C811CO3'; 'C921O2'; 'C98O2'; 'C86O2'; ...
'C919O2'; 'C914O2'; 'C916O2'; 'C88CO3'; 'C88O2'; 'C512O2'; 'C619O2'; 'C626CO3'; 'C626O2'; 'C735O2'; ...
'C822O2'; 'C823CO3'; 'C925O2'; 'C622CO3'; 'MEKAO2'; 'ETHENO3O2'; 'HOCH2CH2O2'; 'INANCOCO3'; 'MMALNACO3'; 'MMALNBCO3'; ...
'CO235C6CO3'; 'CHOC3COCO3'; 'NC71O2'; 'C811O2'; 'CHOC3COO2'; 'H3C25C6CO3'; 'H3C25C6O2'; 'HCOCH2CO3'; 'C810O2'; 'C818O2'; ...
'C727CO3'; 'NC728O2'; 'C728O2'; 'C622O2'; 'C823O2'; 'C819O2'; 'C731CO3'; 'A2PANOO'; 'HCOCOHCO3'; 'CH3COCO3'; ...
'CO235C6O2'; 'C716O2'; 'C922O2'; 'C614O2'; 'C511O2'; 'C620O2'; 'C87CO3'; 'C616O2'; 'C718CO3'; 'C513O2'; ...
'CO25C6CO3'; 'C727O2'; 'C511CO3'; 'C517CO3'; 'C517O2'; 'C628O2'; 'C824O2'; 'HO1CO3C4O2'; 'CO2C3CO3'; 'COHM2CO3'; ...
'C812O2'; 'C721CO3'; 'C721O2'; 'BIACETO2'; 'H3C2C4CO3'; 'C87O2'; 'CHOC2CO3'; 'C718O2'; 'C514O2'; 'C820O2'; ...
'C518CO3'; 'NC623O2'; 'C623O2'; 'C825O2'; 'CO2C4CO3'; 'C731O2'; 'C732CO3'; 'C3DIOLO2'; 'CO23C4CO3'; 'C312COCO3'; ...
'CHOCOCH2O2'; 'NC72O2'; 'C621O2'; 'C515CO3'; 'C515O2'; 'CHOC2H4O2'; 'HOC2H4CO3'; 'C821O2'; 'HMVKBCO3'; 'C520O2'; ...
'C624CO3'; 'C732O2'; 'C813O2'; 'C722O2'; 'C615CO3'; 'C617CO3'; 'C618CO3'; 'C617O2'; 'C618O2'; 'NC730O2'; ...
'C730O2'; 'C624O2'; 'C733O2'; 'NC61CO3'; 'C615O2'; 'C519CO3'; 'C629O2'; 'C734O2'; 'C44O2'; 'H1C23C4CO3'; ...
'H1C23C4O2'; 'CO1M22CO3'; 'C55O2'; 'C67CO3'; 'C519O2'; 'C625O2'; 'IBUTALCO2'; 'TBUTOLO2'; 'H2M2C3CO3'; };

AddSpecies

i=i+1;
Rnames{i} = 'MBO + NO3 = NMBOAO2';
k(:,i) = 4.6e-14.*exp(-400./T).*0.65;
Gstr{i,1} = 'MBO'; Gstr{i,2} = 'NO3'; 
fMBO(i)=fMBO(i)-1; fNO3(i)=fNO3(i)-1; fNMBOAO2(i)=fNMBOAO2(i)+1; 

i=i+1;
Rnames{i} = 'MBO + NO3 = NMBOBO2';
k(:,i) = 4.6e-14.*exp(-400./T).*0.35;
Gstr{i,1} = 'MBO'; Gstr{i,2} = 'NO3'; 
fMBO(i)=fMBO(i)-1; fNO3(i)=fNO3(i)-1; fNMBOBO2(i)=fNMBOBO2(i)+1; 

i=i+1;
Rnames{i} = 'MBO + O3 = HCHO +  + 0.36CH3COCH3 + 0.36HO2 + 0.36CO + 0.36OH + 0.20CH3COCH3 + 0.20HO2 + 0.20HO2 + 0.20IPROPOL + 0.24MBOOO';
k(:,i) = 1.0e-17.*0.3;
Gstr{i,1} = 'MBO'; Gstr{i,2} = 'O3'; 
fMBO(i)=fMBO(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+0.36; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; fCH3COCH3(i)=fCH3COCH3(i)+0.20; fHO2(i)=fHO2(i)+0.20; fHO2(i)=fHO2(i)+0.20; fIPROPOL(i)=fIPROPOL(i)+0.20; fMBOOO(i)=fMBOOO(i)+0.24; 

i=i+1;
Rnames{i} = 'MBO + O3 = IBUTALOH +  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH';
k(:,i) = 1.0e-17.*0.7;
Gstr{i,1} = 'MBO'; Gstr{i,2} = 'O3'; 
fMBO(i)=fMBO(i)-1; fO3(i)=fO3(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fCH2OO(i)=fCH2OO(i)+0.24; fCO(i)=fCO(i)+0.40; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; 

i=i+1;
Rnames{i} = 'MBO + OH = MBOAO2';
k(:,i) = 8.1e-12.*exp(610./T).*0.67;
Gstr{i,1} = 'MBO'; Gstr{i,2} = 'OH'; 
fMBO(i)=fMBO(i)-1; fOH(i)=fOH(i)-1; fMBOAO2(i)=fMBOAO2(i)+1; 

i=i+1;
Rnames{i} = 'MBO + OH = MBOBO2';
k(:,i) = 8.1e-12.*exp(610./T).*0.33;
Gstr{i,1} = 'MBO'; Gstr{i,2} = 'OH'; 
fMBO(i)=fMBO(i)-1; fOH(i)=fOH(i)-1; fMBOBO2(i)=fMBOBO2(i)+1; 

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
Rnames{i} = 'NO3 + C5H8 = NISOPO2';
k(:,i) = 3.15e-12.*exp(-450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C5H8'; 
fNO3(i)=fNO3(i)-1; fC5H8(i)=fC5H8(i)-1; fNISOPO2(i)=fNISOPO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 =  + 0.22CH2OO + 0.51CO + 0.27HO2 + 0.27CO + 0.27OH + MACR';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.3;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fCH2OO(i)=fCH2OO(i)+0.22; fCO(i)=fCO(i)+0.51; fHO2(i)=fHO2(i)+0.27; fCO(i)=fCO(i)+0.27; fOH(i)=fOH(i)+0.27; fMACR(i)=fMACR(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 =  + 0.22CH2OO + 0.51CO + 0.27HO2 + 0.27CO + 0.27OH + MVK';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.2;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fCH2OO(i)=fCH2OO(i)+0.22; fCO(i)=fCO(i)+0.51; fHO2(i)=fHO2(i)+0.27; fCO(i)=fCO(i)+0.27; fOH(i)=fOH(i)+0.27; fMVK(i)=fMVK(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 = HCHO +  + 0.255C3H6 + 0.255CH3CO3 + 0.255HCHO + 0.255HO2 + 0.22MACROO + 0.27OH + 0.27CO + 0.27CH3CO3 + 0.27HCHO';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.3;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fHCHO(i)=fHCHO(i)+1; fC3H6(i)=fC3H6(i)+0.255; fCH3CO3(i)=fCH3CO3(i)+0.255; fHCHO(i)=fHCHO(i)+0.255; fHO2(i)=fHO2(i)+0.255; fMACROO(i)=fMACROO(i)+0.22; fOH(i)=fOH(i)+0.27; fCO(i)=fCO(i)+0.27; fCH3CO3(i)=fCH3CO3(i)+0.27; fHCHO(i)=fHCHO(i)+0.27; 

i=i+1;
Rnames{i} = 'O3 + C5H8 = HCHO +  + 0.255C3H6 + 0.255CH3O2 + 0.255HCHO + 0.255CO + 0.255HO2 + 0.22MVKOO + 0.27OH + 0.27MVKO2';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.2;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fHCHO(i)=fHCHO(i)+1; fC3H6(i)=fC3H6(i)+0.255; fCH3O2(i)=fCH3O2(i)+0.255; fHCHO(i)=fHCHO(i)+0.255; fCO(i)=fCO(i)+0.255; fHO2(i)=fHO2(i)+0.255; fMVKOO(i)=fMVKOO(i)+0.22; fOH(i)=fOH(i)+0.27; fMVKO2(i)=fMVKO2(i)+0.27; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOPAO2';
k(:,i) = 2.7e-11.*exp(390./T).*0.148;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOPBO2';
k(:,i) = 2.7e-11.*exp(390./T).*0.444;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOPCO2';
k(:,i) = 2.7e-11.*exp(390./T).*0.102;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOPDO2';
k(:,i) = 2.7e-11.*exp(390./T).*0.306;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + NO3 = NAPINAO2';
k(:,i) = 1.2e-12.*exp(490./T).*0.65;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'NO3'; 
fAPINENE(i)=fAPINENE(i)-1; fNO3(i)=fNO3(i)-1; fNAPINAO2(i)=fNAPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + NO3 = NAPINBO2';
k(:,i) = 1.2e-12.*exp(490./T).*0.35;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'NO3'; 
fAPINENE(i)=fAPINENE(i)-1; fNO3(i)=fNO3(i)-1; fNAPINBO2(i)=fNAPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + O3 =  + 0.55C107O2 + 0.55OH + 0.45C109O2 + 0.45OH';
k(:,i) = 6.3e-16.*exp(-580./T).*0.6;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'O3'; 
fAPINENE(i)=fAPINENE(i)-1; fO3(i)=fO3(i)-1; fC107O2(i)=fC107O2(i)+0.55; fOH(i)=fOH(i)+0.55; fC109O2(i)=fC109O2(i)+0.45; fOH(i)=fOH(i)+0.45; 

i=i+1;
Rnames{i} = 'APINENE + O3 =  + 0.50APINBOO + 0.50C96O2 + 0.50OH + 0.50CO';
k(:,i) = 6.3e-16.*exp(-580./T).*0.4;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'O3'; 
fAPINENE(i)=fAPINENE(i)-1; fO3(i)=fO3(i)-1; fAPINBOO(i)=fAPINBOO(i)+0.50; fC96O2(i)=fC96O2(i)+0.50; fOH(i)=fOH(i)+0.50; fCO(i)=fCO(i)+0.50; 

i=i+1;
Rnames{i} = 'APINENE + OH = APINAO2';
k(:,i) = 1.2e-11.*exp(440./T).*0.572;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'OH'; 
fAPINENE(i)=fAPINENE(i)-1; fOH(i)=fOH(i)-1; fAPINAO2(i)=fAPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + OH = APINBO2';
k(:,i) = 1.2e-11.*exp(440./T).*0.353;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'OH'; 
fAPINENE(i)=fAPINENE(i)-1; fOH(i)=fOH(i)-1; fAPINBO2(i)=fAPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + OH = APINCO2';
k(:,i) = 1.2e-11.*exp(440./T).*0.075;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'OH'; 
fAPINENE(i)=fAPINENE(i)-1; fOH(i)=fOH(i)-1; fAPINCO2(i)=fAPINCO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + NO3 = NBPINAO2';
k(:,i) = 2.51e-12.*0.8;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'NO3'; 
fBPINENE(i)=fBPINENE(i)-1; fNO3(i)=fNO3(i)-1; fNBPINAO2(i)=fNBPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + NO3 = NBPINBO2';
k(:,i) = 2.51e-12.*0.2;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'NO3'; 
fBPINENE(i)=fBPINENE(i)-1; fNO3(i)=fNO3(i)-1; fNBPINBO2(i)=fNBPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + O3 = NOPINONE +  + 0.370CH2OO + 0.500CO + 0.130HO2 + 0.130CO + 0.130OH';
k(:,i) = 1.50e-17.*0.4;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'O3'; 
fBPINENE(i)=fBPINENE(i)-1; fO3(i)=fO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fCH2OO(i)=fCH2OO(i)+0.370; fCO(i)=fCO(i)+0.500; fHO2(i)=fHO2(i)+0.130; fCO(i)=fCO(i)+0.130; fOH(i)=fOH(i)+0.130; 

i=i+1;
Rnames{i} = 'BPINENE + O3 =  + 0.330C8BC + 0.500NOPINDO2 + 0.500OH + 0.170NOPINOO + HCHO';
k(:,i) = 1.50e-17.*0.6;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'O3'; 
fBPINENE(i)=fBPINENE(i)-1; fO3(i)=fO3(i)-1; fC8BC(i)=fC8BC(i)+0.330; fNOPINDO2(i)=fNOPINDO2(i)+0.500; fOH(i)=fOH(i)+0.500; fNOPINOO(i)=fNOPINOO(i)+0.170; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + OH = BPINAO2';
k(:,i) = 2.38e-11.*exp(357./T).*0.849;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'OH'; 
fBPINENE(i)=fBPINENE(i)-1; fOH(i)=fOH(i)-1; fBPINAO2(i)=fBPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + OH = BPINBO2';
k(:,i) = 2.38e-11.*exp(357./T).*0.076;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'OH'; 
fBPINENE(i)=fBPINENE(i)-1; fOH(i)=fOH(i)-1; fBPINBO2(i)=fBPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + OH = BPINCO2';
k(:,i) = 2.38e-11.*exp(357./T).*0.075;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'OH'; 
fBPINENE(i)=fBPINENE(i)-1; fOH(i)=fOH(i)-1; fBPINCO2(i)=fBPINCO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMONENE + NO3 = NLIMO2';
k(:,i) = 1.22e-11;
Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'NO3'; 
fLIMONENE(i)=fLIMONENE(i)-1; fNO3(i)=fNO3(i)-1; fNLIMO2(i)=fNLIMO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMONENE + O3 =  + 0.5LIMALAO2 + 0.5OH + 0.5LIMALBO2 + 0.5OH';
k(:,i) = 2.95e-15.*exp(-783./T).*0.730;
Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'O3'; 
fLIMONENE(i)=fLIMONENE(i)-1; fO3(i)=fO3(i)-1; fLIMALAO2(i)=fLIMALAO2(i)+0.5; fOH(i)=fOH(i)+0.5; fLIMALBO2(i)=fLIMALBO2(i)+0.5; fOH(i)=fOH(i)+0.5; 

i=i+1;
Rnames{i} = 'LIMONENE + O3 =  + 0.5C923O2 + 0.5CO + 0.5OH + 0.5LIMBOO';
k(:,i) = 2.95e-15.*exp(-783./T).*0.270;
Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'O3'; 
fLIMONENE(i)=fLIMONENE(i)-1; fO3(i)=fO3(i)-1; fC923O2(i)=fC923O2(i)+0.5; fCO(i)=fCO(i)+0.5; fOH(i)=fOH(i)+0.5; fLIMBOO(i)=fLIMBOO(i)+0.5; 

i=i+1;
Rnames{i} = 'LIMONENE + OH = LIMAO2';
k(:,i) = 4.28e-11.*exp(401./T).*0.408;
Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'OH'; 
fLIMONENE(i)=fLIMONENE(i)-1; fOH(i)=fOH(i)-1; fLIMAO2(i)=fLIMAO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMONENE + OH = LIMBO2';
k(:,i) = 4.28e-11.*exp(401./T).*0.222;
Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'OH'; 
fLIMONENE(i)=fLIMONENE(i)-1; fOH(i)=fOH(i)-1; fLIMBO2(i)=fLIMBO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMONENE + OH = LIMCO2';
k(:,i) = 4.28e-11.*exp(401./T).*0.370;
Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'OH'; 
fLIMONENE(i)=fLIMONENE(i)-1; fOH(i)=fOH(i)-1; fLIMCO2(i)=fLIMCO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAO2 + HO2 = NMBOAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NMBOAO2'; Gstr{i,2} = 'HO2'; 
fNMBOAO2(i)=fNMBOAO2(i)-1; fHO2(i)=fHO2(i)-1; fNMBOAOOH(i)=fNMBOAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAO2 + NO =  + NO3CH2CHO + CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NMBOAO2'; Gstr{i,2} = 'NO'; 
fNMBOAO2(i)=fNMBOAO2(i)-1; fNO(i)=fNO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAO2 + NO3 =  + NO3CH2CHO + CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NMBOAO2'; Gstr{i,2} = 'NO3'; 
fNMBOAO2(i)=fNMBOAO2(i)-1; fNO3(i)=fNO3(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAO2 = C4MCONO3OH';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'NMBOAO2'; Gstr{i,2} = 'RO2';
fNMBOAO2(i)=fNMBOAO2(i)-1; fC4MCONO3OH(i)=fC4MCONO3OH(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAO2 = MBOBNO3';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'NMBOAO2'; Gstr{i,2} = 'RO2';
fNMBOAO2(i)=fNMBOAO2(i)-1; fMBOBNO3(i)=fMBOBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAO2 =  + NO3CH2CHO + CH3COCH3 + HO2';
k(:,i) = 8.8e-13.*0.6;
Gstr{i,1} = 'NMBOAO2'; Gstr{i,2} = 'RO2';
fNMBOAO2(i)=fNMBOAO2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBO2 + HO2 = NMBOBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NMBOBO2'; Gstr{i,2} = 'HO2'; 
fNMBOBO2(i)=fNMBOBO2(i)-1; fHO2(i)=fHO2(i)-1; fNMBOBOOH(i)=fNMBOBOOH(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBO2 + NO =  + IBUTALOH + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NMBOBO2'; Gstr{i,2} = 'NO'; 
fNMBOBO2(i)=fNMBOBO2(i)-1; fNO(i)=fNO(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBO2 + NO3 =  + IBUTALOH + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NMBOBO2'; Gstr{i,2} = 'NO3'; 
fNMBOBO2(i)=fNMBOBO2(i)-1; fNO3(i)=fNO3(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBO2 = MBOANO3';
k(:,i) = 1.3e-12.*0.2;
Gstr{i,1} = 'NMBOBO2'; Gstr{i,2} = 'RO2';
fNMBOBO2(i)=fNMBOBO2(i)-1; fMBOANO3(i)=fMBOANO3(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBO2 = NMBOBCO';
k(:,i) = 1.3e-12.*0.2;
Gstr{i,1} = 'NMBOBO2'; Gstr{i,2} = 'RO2';
fNMBOBO2(i)=fNMBOBO2(i)-1; fNMBOBCO(i)=fNMBOBCO(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBO2 =  + IBUTALOH + HCHO + NO2';
k(:,i) = 1.3e-12.*0.6;
Gstr{i,1} = 'NMBOBO2'; Gstr{i,2} = 'RO2';
fNMBOBO2(i)=fNMBOBO2(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'MBOAO2 + HO2 = MBOAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'MBOAO2'; Gstr{i,2} = 'HO2'; 
fMBOAO2(i)=fMBOAO2(i)-1; fHO2(i)=fHO2(i)-1; fMBOAOOH(i)=fMBOAOOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOAO2 + NO = MBOANO3';
k(:,i) = KRO2NO.*0.064;
Gstr{i,1} = 'MBOAO2'; Gstr{i,2} = 'NO'; 
fMBOAO2(i)=fMBOAO2(i)-1; fNO(i)=fNO(i)-1; fMBOANO3(i)=fMBOANO3(i)+1; 

i=i+1;
Rnames{i} = 'MBOAO2 + NO =  + HOCH2CHO + CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO.*0.936;
Gstr{i,1} = 'MBOAO2'; Gstr{i,2} = 'NO'; 
fMBOAO2(i)=fMBOAO2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOAO2 + NO3 =  + HOCH2CHO + CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MBOAO2'; Gstr{i,2} = 'NO3'; 
fMBOAO2(i)=fMBOAO2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOAO2 = MBOACO';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'MBOAO2'; Gstr{i,2} = 'RO2';
fMBOAO2(i)=fMBOAO2(i)-1; fMBOACO(i)=fMBOACO(i)+1; 

i=i+1;
Rnames{i} = 'MBOAO2 =  + HOCH2CHO + CH3COCH3 + HO2';
k(:,i) = 8.8e-13.*0.6;
Gstr{i,1} = 'MBOAO2'; Gstr{i,2} = 'RO2';
fMBOAO2(i)=fMBOAO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOAO2 = MBOAOH';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'MBOAO2'; Gstr{i,2} = 'RO2';
fMBOAO2(i)=fMBOAO2(i)-1; fMBOAOH(i)=fMBOAOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOBO2 + HO2 = MBOBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'MBOBO2'; Gstr{i,2} = 'HO2'; 
fMBOBO2(i)=fMBOBO2(i)-1; fHO2(i)=fHO2(i)-1; fMBOBOOH(i)=fMBOBOOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOBO2 + NO = MBOBNO3';
k(:,i) = KRO2NO.*0.026;
Gstr{i,1} = 'MBOBO2'; Gstr{i,2} = 'NO'; 
fMBOBO2(i)=fMBOBO2(i)-1; fNO(i)=fNO(i)-1; fMBOBNO3(i)=fMBOBNO3(i)+1; 

i=i+1;
Rnames{i} = 'MBOBO2 + NO =  + IBUTALOH + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.974;
Gstr{i,1} = 'MBOBO2'; Gstr{i,2} = 'NO'; 
fMBOBO2(i)=fMBOBO2(i)-1; fNO(i)=fNO(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOBO2 + NO3 =  + IBUTALOH + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MBOBO2'; Gstr{i,2} = 'NO3'; 
fMBOBO2(i)=fMBOBO2(i)-1; fNO3(i)=fNO3(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOBO2 = MBOAOH';
k(:,i) = 2.0e-12.*0.2;
Gstr{i,1} = 'MBOBO2'; Gstr{i,2} = 'RO2';
fMBOBO2(i)=fMBOBO2(i)-1; fMBOAOH(i)=fMBOAOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOBO2 = MBOBCO';
k(:,i) = 2.0e-12.*0.2;
Gstr{i,1} = 'MBOBO2'; Gstr{i,2} = 'RO2';
fMBOBO2(i)=fMBOBO2(i)-1; fMBOBCO(i)=fMBOBCO(i)+1; 

i=i+1;
Rnames{i} = 'MBOBO2 =  + IBUTALOH + HCHO + HO2';
k(:,i) = 2.0e-12.*0.6;
Gstr{i,1} = 'MBOBO2'; Gstr{i,2} = 'RO2';
fMBOBO2(i)=fMBOBO2(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'ISOPAO2 + HO2 = ISOPAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'HO2'; 
fISOPAO2(i)=fISOPAO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPAOOH(i)=fISOPAOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO = ISOPANO3';
k(:,i) = KRO2NO.*0.100;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO(i)=fNO(i)-1; fISOPANO3(i)=fISOPANO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO =  + 0.25C524O2 + 0.75HC4CCHO + 0.75HO2 + NO2';
k(:,i) = KRO2NO.*0.900;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO(i)=fNO(i)-1; fC524O2(i)=fC524O2(i)+0.25; fHC4CCHO(i)=fHC4CCHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO3 =  + 0.25C524O2 + 0.75HC4CCHO + 0.75HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO3'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO3(i)=fNO3(i)-1; fC524O2(i)=fC524O2(i)+0.25; fHC4CCHO(i)=fHC4CCHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 = HC4ACHO';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 =  + 0.25C524O2 + 0.75HC4CCHO + 0.75HO2';
k(:,i) = 2.40e-12.*0.8;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fC524O2(i)=fC524O2(i)+0.25; fHC4CCHO(i)=fHC4CCHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; 

i=i+1;
Rnames{i} = 'ISOPAO2 = ISOPAOH';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + HO2 = ISOPBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'HO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPBOOH(i)=fISOPBOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO = ISOPBNO3';
k(:,i) = KRO2NO.*0.066;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO(i)=fNO(i)-1; fISOPBNO3(i)=fISOPBNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO =  + MVK + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.934;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO(i)=fNO(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO3 =  + MVK + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO3'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO3(i)=fNO3(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'ISOPCO2 + HO2 = ISOPCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'HO2'; 
fISOPCO2(i)=fISOPCO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPCOOH(i)=fISOPCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO = ISOPCNO3';
k(:,i) = KRO2NO.*0.100;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO(i)=fNO(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO =  + 0.75HC4ACHO + 0.75HO2 + 0.25HC4CCHO + 0.25HO2 + NO2';
k(:,i) = KRO2NO.*0.900;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO(i)=fNO(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fHC4CCHO(i)=fHC4CCHO(i)+0.25; fHO2(i)=fHO2(i)+0.25; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO3 =  + 0.75HC4ACHO + 0.75HO2 + 0.25HC4CCHO + 0.25HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO3'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO3(i)=fNO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fHC4CCHO(i)=fHC4CCHO(i)+0.25; fHO2(i)=fHO2(i)+0.25; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'ISOPCO2 =  + 0.75HC4ACHO + 0.75HO2 + 0.25HC4CCHO + 0.25HO2';
k(:,i) = 2.00e-12.*0.8;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'RO2';
fISOPCO2(i)=fISOPCO2(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fHC4CCHO(i)=fHC4CCHO(i)+0.25; fHO2(i)=fHO2(i)+0.25; 

i=i+1;
Rnames{i} = 'ISOPDO2 + HO2 = ISOPDOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'HO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPDOOH(i)=fISOPDOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO = ISOPDNO3';
k(:,i) = KRO2NO.*0.134;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO(i)=fNO(i)-1; fISOPDNO3(i)=fISOPDNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO =  + MACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.866;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO3 =  + MACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO3'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO3(i)=fNO3(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'NAPINAO2 + HO2 = NAPINAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'HO2'; 
fNAPINAO2(i)=fNAPINAO2(i)-1; fHO2(i)=fHO2(i)-1; fNAPINAOOH(i)=fNAPINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 + NO =  + PINAL + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'NO'; 
fNAPINAO2(i)=fNAPINAO2(i)-1; fNO(i)=fNO(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 + NO3 =  + PINAL + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'NO3'; 
fNAPINAO2(i)=fNAPINAO2(i)-1; fNO3(i)=fNO3(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 = APINBNO3';
k(:,i) = 6.70e-15.*0.1;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'RO2';
fNAPINAO2(i)=fNAPINAO2(i)-1; fAPINBNO3(i)=fAPINBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 =  + PINAL + NO2';
k(:,i) = 6.70e-15.*0.9;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'RO2';
fNAPINAO2(i)=fNAPINAO2(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + HO2 = NAPINBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'HO2'; 
fNAPINBO2(i)=fNAPINBO2(i)-1; fHO2(i)=fHO2(i)-1; fNAPINBOOH(i)=fNAPINBOOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + NO =  + NC101CO + HO2 + PINAL + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'NO'; 
fNAPINBO2(i)=fNAPINBO2(i)-1; fNO(i)=fNO(i)-1; fNC101CO(i)=fNC101CO(i)+1; fHO2(i)=fHO2(i)+1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + NO3 =  + NC101CO + HO2 + PINAL + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'NO3'; 
fNAPINBO2(i)=fNAPINBO2(i)-1; fNO3(i)=fNO3(i)-1; fNC101CO(i)=fNC101CO(i)+1; fHO2(i)=fHO2(i)+1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 = APINANO3';
k(:,i) = 2.50e-13.*0.1;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'RO2';
fNAPINBO2(i)=fNAPINBO2(i)-1; fAPINANO3(i)=fAPINANO3(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 =  + NC101CO + HO2 + PINAL + NO2';
k(:,i) = 2.50e-13.*0.8;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'RO2';
fNAPINBO2(i)=fNAPINBO2(i)-1; fNC101CO(i)=fNC101CO(i)+1; fHO2(i)=fHO2(i)+1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 = NC101CO';
k(:,i) = 2.50e-13.*0.1;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'RO2';
fNAPINBO2(i)=fNAPINBO2(i)-1; fNC101CO(i)=fNC101CO(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + HO2 = APINAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'HO2'; 
fAPINAO2(i)=fAPINAO2(i)-1; fHO2(i)=fHO2(i)-1; fAPINAOOH(i)=fAPINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + NO = APINANO3';
k(:,i) = KRO2NO.*0.230;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'NO'; 
fAPINAO2(i)=fAPINAO2(i)-1; fNO(i)=fNO(i)-1; fAPINANO3(i)=fAPINANO3(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + NO =  + PINAL + HO2 + NO2';
k(:,i) = KRO2NO.*0.770;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'NO'; 
fAPINAO2(i)=fAPINAO2(i)-1; fNO(i)=fNO(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + NO3 =  + PINAL + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'NO3'; 
fAPINAO2(i)=fAPINAO2(i)-1; fNO3(i)=fNO3(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 =  + PINAL + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'RO2';
fAPINAO2(i)=fAPINAO2(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 = APINBOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'RO2';
fAPINAO2(i)=fAPINAO2(i)-1; fAPINBOH(i)=fAPINBOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + HO2 = APINBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'HO2'; 
fAPINBO2(i)=fAPINBO2(i)-1; fHO2(i)=fHO2(i)-1; fAPINBOOH(i)=fAPINBOOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + NO = APINBNO3';
k(:,i) = KRO2NO.*0.230;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'NO'; 
fAPINBO2(i)=fAPINBO2(i)-1; fNO(i)=fNO(i)-1; fAPINBNO3(i)=fAPINBNO3(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + NO =  + PINAL + HO2 + NO2';
k(:,i) = KRO2NO.*0.770;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'NO'; 
fAPINBO2(i)=fAPINBO2(i)-1; fNO(i)=fNO(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + NO3 =  + PINAL + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'NO3'; 
fAPINBO2(i)=fAPINBO2(i)-1; fNO3(i)=fNO3(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 = APINBCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'RO2';
fAPINBO2(i)=fAPINBO2(i)-1; fAPINBCO(i)=fAPINBCO(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 =  + PINAL + HO2';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'RO2';
fAPINBO2(i)=fAPINBO2(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 = APINBOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'RO2';
fAPINBO2(i)=fAPINBO2(i)-1; fAPINBOH(i)=fAPINBOH(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + HO2 = APINCOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'HO2'; 
fAPINCO2(i)=fAPINCO2(i)-1; fHO2(i)=fHO2(i)-1; fAPINCOOH(i)=fAPINCOOH(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + NO = APINCNO3';
k(:,i) = KRO2NO.*0.125;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'NO'; 
fAPINCO2(i)=fAPINCO2(i)-1; fNO(i)=fNO(i)-1; fAPINCNO3(i)=fAPINCNO3(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + NO =  + CH3COCH3 + C720O2 + NO2';
k(:,i) = KRO2NO.*0.875;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'NO'; 
fAPINCO2(i)=fAPINCO2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC720O2(i)=fC720O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + NO3 =  + CH3COCH3 + C720O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'NO3'; 
fAPINCO2(i)=fAPINCO2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC720O2(i)=fC720O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 =  + CH3COCH3 + C720O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'RO2';
fAPINCO2(i)=fAPINCO2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC720O2(i)=fC720O2(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 = APINCOH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'RO2';
fAPINCO2(i)=fAPINCO2(i)-1; fAPINCOH(i)=fAPINCOH(i)+1; 

i=i+1;
Rnames{i} = 'NBPINAO2 + HO2 = NBPINAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NBPINAO2'; Gstr{i,2} = 'HO2'; 
fNBPINAO2(i)=fNBPINAO2(i)-1; fHO2(i)=fHO2(i)-1; fNBPINAOOH(i)=fNBPINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBPINAO2 + NO =  + NOPINONE + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NBPINAO2'; Gstr{i,2} = 'NO'; 
fNBPINAO2(i)=fNBPINAO2(i)-1; fNO(i)=fNO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINAO2 + NO3 =  + NOPINONE + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBPINAO2'; Gstr{i,2} = 'NO3'; 
fNBPINAO2(i)=fNBPINAO2(i)-1; fNO3(i)=fNO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINAO2 = BPINBNO3';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'NBPINAO2'; Gstr{i,2} = 'RO2';
fNBPINAO2(i)=fNBPINAO2(i)-1; fBPINBNO3(i)=fBPINBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NBPINAO2 =  + NOPINONE + HCHO + NO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'NBPINAO2'; Gstr{i,2} = 'RO2';
fNBPINAO2(i)=fNBPINAO2(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINBO2 + HO2 = NBPINBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NBPINBO2'; Gstr{i,2} = 'HO2'; 
fNBPINBO2(i)=fNBPINBO2(i)-1; fHO2(i)=fHO2(i)-1; fNBPINBOOH(i)=fNBPINBOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBPINBO2 + NO =  + NOPINONE + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NBPINBO2'; Gstr{i,2} = 'NO'; 
fNBPINBO2(i)=fNBPINBO2(i)-1; fNO(i)=fNO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINBO2 + NO3 =  + NOPINONE + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBPINBO2'; Gstr{i,2} = 'NO3'; 
fNBPINBO2(i)=fNBPINBO2(i)-1; fNO3(i)=fNO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINBO2 = BPINANO3';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'NBPINBO2'; Gstr{i,2} = 'RO2';
fNBPINBO2(i)=fNBPINBO2(i)-1; fBPINANO3(i)=fBPINANO3(i)+1; 

i=i+1;
Rnames{i} = 'NBPINBO2 =  + NOPINONE + HCHO + NO2';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'NBPINBO2'; Gstr{i,2} = 'RO2';
fNBPINBO2(i)=fNBPINBO2(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINBO2 = NC91CHO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'NBPINBO2'; Gstr{i,2} = 'RO2';
fNBPINBO2(i)=fNBPINBO2(i)-1; fNC91CHO(i)=fNC91CHO(i)+1; 

i=i+1;
Rnames{i} = 'NOPINONE + OH = NOPINAO2';
k(:,i) = 1.55e-11.*0.535;
Gstr{i,1} = 'NOPINONE'; Gstr{i,2} = 'OH'; 
fNOPINONE(i)=fNOPINONE(i)-1; fOH(i)=fOH(i)-1; fNOPINAO2(i)=fNOPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINONE + OH = NOPINBO2';
k(:,i) = 1.55e-11.*0.199;
Gstr{i,1} = 'NOPINONE'; Gstr{i,2} = 'OH'; 
fNOPINONE(i)=fNOPINONE(i)-1; fOH(i)=fOH(i)-1; fNOPINBO2(i)=fNOPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINONE + OH = NOPINCO2';
k(:,i) = 1.55e-11.*0.130;
Gstr{i,1} = 'NOPINONE'; Gstr{i,2} = 'OH'; 
fNOPINONE(i)=fNOPINONE(i)-1; fOH(i)=fOH(i)-1; fNOPINCO2(i)=fNOPINCO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINONE + OH = NOPINDO2';
k(:,i) = 1.55e-11.*0.136;
Gstr{i,1} = 'NOPINONE'; Gstr{i,2} = 'OH'; 
fNOPINONE(i)=fNOPINONE(i)-1; fOH(i)=fOH(i)-1; fNOPINDO2(i)=fNOPINDO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINAO2 + HO2 = BPINAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'BPINAO2'; Gstr{i,2} = 'HO2'; 
fBPINAO2(i)=fBPINAO2(i)-1; fHO2(i)=fHO2(i)-1; fBPINAOOH(i)=fBPINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINAO2 + NO = BPINANO3';
k(:,i) = KRO2NO.*0.240;
Gstr{i,1} = 'BPINAO2'; Gstr{i,2} = 'NO'; 
fBPINAO2(i)=fBPINAO2(i)-1; fNO(i)=fNO(i)-1; fBPINANO3(i)=fBPINANO3(i)+1; 

i=i+1;
Rnames{i} = 'BPINAO2 + NO =  + NOPINONE + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.760;
Gstr{i,1} = 'BPINAO2'; Gstr{i,2} = 'NO'; 
fBPINAO2(i)=fBPINAO2(i)-1; fNO(i)=fNO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINAO2 + NO3 =  + NOPINONE + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BPINAO2'; Gstr{i,2} = 'NO3'; 
fBPINAO2(i)=fBPINAO2(i)-1; fNO3(i)=fNO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINAO2 =  + NOPINONE + HCHO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'BPINAO2'; Gstr{i,2} = 'RO2';
fBPINAO2(i)=fBPINAO2(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINAO2 = BPINAOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'BPINAO2'; Gstr{i,2} = 'RO2';
fBPINAO2(i)=fBPINAO2(i)-1; fBPINAOH(i)=fBPINAOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINBO2 + HO2 = BPINBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'BPINBO2'; Gstr{i,2} = 'HO2'; 
fBPINBO2(i)=fBPINBO2(i)-1; fHO2(i)=fHO2(i)-1; fBPINBOOH(i)=fBPINBOOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINBO2 + NO = BPINBNO3';
k(:,i) = KRO2NO.*0.240;
Gstr{i,1} = 'BPINBO2'; Gstr{i,2} = 'NO'; 
fBPINBO2(i)=fBPINBO2(i)-1; fNO(i)=fNO(i)-1; fBPINBNO3(i)=fBPINBNO3(i)+1; 

i=i+1;
Rnames{i} = 'BPINBO2 + NO =  + NOPINONE + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.760;
Gstr{i,1} = 'BPINBO2'; Gstr{i,2} = 'NO'; 
fBPINBO2(i)=fBPINBO2(i)-1; fNO(i)=fNO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINBO2 + NO3 =  + NOPINONE + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BPINBO2'; Gstr{i,2} = 'NO3'; 
fBPINBO2(i)=fBPINBO2(i)-1; fNO3(i)=fNO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINBO2 = BPINAOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'BPINBO2'; Gstr{i,2} = 'RO2';
fBPINBO2(i)=fBPINBO2(i)-1; fBPINAOH(i)=fBPINAOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINBO2 =  + NOPINONE + HCHO + HO2';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'BPINBO2'; Gstr{i,2} = 'RO2';
fBPINBO2(i)=fBPINBO2(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINBO2 = C918CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'BPINBO2'; Gstr{i,2} = 'RO2';
fBPINBO2(i)=fBPINBO2(i)-1; fC918CHO(i)=fC918CHO(i)+1; 

i=i+1;
Rnames{i} = 'BPINCO2 + HO2 = BPINCOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'BPINCO2'; Gstr{i,2} = 'HO2'; 
fBPINCO2(i)=fBPINCO2(i)-1; fHO2(i)=fHO2(i)-1; fBPINCOOH(i)=fBPINCOOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINCO2 + NO = BPINCNO3';
k(:,i) = KRO2NO.*0.125;
Gstr{i,1} = 'BPINCO2'; Gstr{i,2} = 'NO'; 
fBPINCO2(i)=fBPINCO2(i)-1; fNO(i)=fNO(i)-1; fBPINCNO3(i)=fBPINCNO3(i)+1; 

i=i+1;
Rnames{i} = 'BPINCO2 + NO =  + C720O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO.*0.875;
Gstr{i,1} = 'BPINCO2'; Gstr{i,2} = 'NO'; 
fBPINCO2(i)=fBPINCO2(i)-1; fNO(i)=fNO(i)-1; fC720O2(i)=fC720O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINCO2 + NO3 =  + C720O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BPINCO2'; Gstr{i,2} = 'NO3'; 
fBPINCO2(i)=fBPINCO2(i)-1; fNO3(i)=fNO3(i)-1; fC720O2(i)=fC720O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINCO2 =  + C720O2 + CH3COCH3';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'BPINCO2'; Gstr{i,2} = 'RO2';
fBPINCO2(i)=fBPINCO2(i)-1; fC720O2(i)=fC720O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'BPINCO2 = BPINCOH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'BPINCO2'; Gstr{i,2} = 'RO2';
fBPINCO2(i)=fBPINCO2(i)-1; fBPINCOH(i)=fBPINCOH(i)+1; 

i=i+1;
Rnames{i} = 'NLIMO2 + HO2 = NLIMOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NLIMO2'; Gstr{i,2} = 'HO2'; 
fNLIMO2(i)=fNLIMO2(i)-1; fHO2(i)=fHO2(i)-1; fNLIMOOH(i)=fNLIMOOH(i)+1; 

i=i+1;
Rnames{i} = 'NLIMO2 + NO =  + LIMAL + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NLIMO2'; Gstr{i,2} = 'NO'; 
fNLIMO2(i)=fNLIMO2(i)-1; fNO(i)=fNO(i)-1; fLIMAL(i)=fLIMAL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLIMO2 + NO3 =  + LIMAL + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NLIMO2'; Gstr{i,2} = 'NO3'; 
fNLIMO2(i)=fNLIMO2(i)-1; fNO3(i)=fNO3(i)-1; fLIMAL(i)=fLIMAL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLIMO2 = LIMBNO3';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'NLIMO2'; Gstr{i,2} = 'RO2';
fNLIMO2(i)=fNLIMO2(i)-1; fLIMBNO3(i)=fLIMBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NLIMO2 =  + LIMAL + NO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'NLIMO2'; Gstr{i,2} = 'RO2';
fNLIMO2(i)=fNLIMO2(i)-1; fLIMAL(i)=fLIMAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAO2 + HO2 = LIMAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LIMAO2'; Gstr{i,2} = 'HO2'; 
fLIMAO2(i)=fLIMAO2(i)-1; fHO2(i)=fHO2(i)-1; fLIMAOOH(i)=fLIMAOOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMAO2 + NO = LIMANO3';
k(:,i) = KRO2NO.*0.228;
Gstr{i,1} = 'LIMAO2'; Gstr{i,2} = 'NO'; 
fLIMAO2(i)=fLIMAO2(i)-1; fNO(i)=fNO(i)-1; fLIMANO3(i)=fLIMANO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMAO2 + NO =  + LIMAL + HO2 + NO2';
k(:,i) = KRO2NO.*0.772;
Gstr{i,1} = 'LIMAO2'; Gstr{i,2} = 'NO'; 
fLIMAO2(i)=fLIMAO2(i)-1; fNO(i)=fNO(i)-1; fLIMAL(i)=fLIMAL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAO2 + NO3 =  + LIMAL + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LIMAO2'; Gstr{i,2} = 'NO3'; 
fLIMAO2(i)=fLIMAO2(i)-1; fNO3(i)=fNO3(i)-1; fLIMAL(i)=fLIMAL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAO2 =  + LIMAL + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'LIMAO2'; Gstr{i,2} = 'RO2';
fLIMAO2(i)=fLIMAO2(i)-1; fLIMAL(i)=fLIMAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAO2 = LIMAOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'LIMAO2'; Gstr{i,2} = 'RO2';
fLIMAO2(i)=fLIMAO2(i)-1; fLIMAOH(i)=fLIMAOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMBO2 + HO2 = LIMBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LIMBO2'; Gstr{i,2} = 'HO2'; 
fLIMBO2(i)=fLIMBO2(i)-1; fHO2(i)=fHO2(i)-1; fLIMBOOH(i)=fLIMBOOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMBO2 + NO = LIMBNO3';
k(:,i) = KRO2NO.*0.228;
Gstr{i,1} = 'LIMBO2'; Gstr{i,2} = 'NO'; 
fLIMBO2(i)=fLIMBO2(i)-1; fNO(i)=fNO(i)-1; fLIMBNO3(i)=fLIMBNO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMBO2 + NO =  + LIMAL + HO2 + NO2';
k(:,i) = KRO2NO.*0.772;
Gstr{i,1} = 'LIMBO2'; Gstr{i,2} = 'NO'; 
fLIMBO2(i)=fLIMBO2(i)-1; fNO(i)=fNO(i)-1; fLIMAL(i)=fLIMAL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMBO2 + NO3 =  + LIMAL + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LIMBO2'; Gstr{i,2} = 'NO3'; 
fLIMBO2(i)=fLIMBO2(i)-1; fNO3(i)=fNO3(i)-1; fLIMAL(i)=fLIMAL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMBO2 = LIMAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'LIMBO2'; Gstr{i,2} = 'RO2';
fLIMBO2(i)=fLIMBO2(i)-1; fLIMAOH(i)=fLIMAOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMBO2 = LIMBCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'LIMBO2'; Gstr{i,2} = 'RO2';
fLIMBO2(i)=fLIMBO2(i)-1; fLIMBCO(i)=fLIMBCO(i)+1; 

i=i+1;
Rnames{i} = 'LIMBO2 =  + LIMAL + HO2';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'LIMBO2'; Gstr{i,2} = 'RO2';
fLIMBO2(i)=fLIMBO2(i)-1; fLIMAL(i)=fLIMAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMCO2 + HO2 = LIMCOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LIMCO2'; Gstr{i,2} = 'HO2'; 
fLIMCO2(i)=fLIMCO2(i)-1; fHO2(i)=fHO2(i)-1; fLIMCOOH(i)=fLIMCOOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMCO2 + NO = LIMCNO3';
k(:,i) = KRO2NO.*0.228;
Gstr{i,1} = 'LIMCO2'; Gstr{i,2} = 'NO'; 
fLIMCO2(i)=fLIMCO2(i)-1; fNO(i)=fNO(i)-1; fLIMCNO3(i)=fLIMCNO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMCO2 + NO =  + LIMKET + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.772;
Gstr{i,1} = 'LIMCO2'; Gstr{i,2} = 'NO'; 
fLIMCO2(i)=fLIMCO2(i)-1; fNO(i)=fNO(i)-1; fLIMKET(i)=fLIMKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMCO2 + NO3 =  + LIMKET + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LIMCO2'; Gstr{i,2} = 'NO3'; 
fLIMCO2(i)=fLIMCO2(i)-1; fNO3(i)=fNO3(i)-1; fLIMKET(i)=fLIMKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMCO2 =  + LIMKET + HCHO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'LIMCO2'; Gstr{i,2} = 'RO2';
fLIMCO2(i)=fLIMCO2(i)-1; fLIMKET(i)=fLIMKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMCO2 = LIMCOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'LIMCO2'; Gstr{i,2} = 'RO2';
fLIMCO2(i)=fLIMCO2(i)-1; fLIMCOH(i)=fLIMCOH(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAOOH + OH = C4MCONO3OH + OH';
k(:,i) = 4.89e-12;
Gstr{i,1} = 'NMBOAOOH'; Gstr{i,2} = 'OH'; 
fNMBOAOOH(i)=fNMBOAOOH(i)-1; fOH(i)=fOH(i)-1; fC4MCONO3OH(i)=fC4MCONO3OH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAOOH + OH = NMBOAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NMBOAOOH'; Gstr{i,2} = 'OH'; 
fNMBOAOOH(i)=fNMBOAOOH(i)-1; fOH(i)=fOH(i)-1; fNMBOAO2(i)=fNMBOAO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOAOOH =  + NO3CH2CHO + CH3COCH3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NMBOAOOH'; 
fNMBOAOOH(i)=fNMBOAOOH(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MCONO3OH + OH =  + CH3COCH3 + NO3CH2CO3';
k(:,i) = 1.23e-12;
Gstr{i,1} = 'C4MCONO3OH'; Gstr{i,2} = 'OH'; 
fC4MCONO3OH(i)=fC4MCONO3OH(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'MBOBNO3 + OH = MBOBCO + NO2';
k(:,i) = 2.69e-12;
Gstr{i,1} = 'MBOBNO3'; Gstr{i,2} = 'OH'; 
fMBOBNO3(i)=fMBOBNO3(i)-1; fOH(i)=fOH(i)-1; fMBOBCO(i)=fMBOBCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBOOH + OH = NMBOBCO + OH';
k(:,i) = 2.52e-12;
Gstr{i,1} = 'NMBOBOOH'; Gstr{i,2} = 'OH'; 
fNMBOBOOH(i)=fNMBOBOOH(i)-1; fOH(i)=fOH(i)-1; fNMBOBCO(i)=fNMBOBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBOOH + OH = NMBOBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NMBOBOOH'; Gstr{i,2} = 'OH'; 
fNMBOBOOH(i)=fNMBOBOOH(i)-1; fOH(i)=fOH(i)-1; fNMBOBO2(i)=fNMBOBO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBOOH =  + IBUTALOH + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NMBOBOOH'; 
fNMBOBOOH(i)=fNMBOBOOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOANO3 + OH = MBOACO + NO2';
k(:,i) = 1.75e-12;
Gstr{i,1} = 'MBOANO3'; Gstr{i,2} = 'OH'; 
fMBOANO3(i)=fMBOANO3(i)-1; fOH(i)=fOH(i)-1; fMBOACO(i)=fMBOACO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMBOBCO + OH = NC4OHCO3';
k(:,i) = 4.26e-12;
Gstr{i,1} = 'NMBOBCO'; Gstr{i,2} = 'OH'; 
fNMBOBCO(i)=fNMBOBCO(i)-1; fOH(i)=fOH(i)-1; fNC4OHCO3(i)=fNC4OHCO3(i)+1; 

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
Rnames{i} = 'IPROPOL + OH = CH3COCH3 + HO2';
k(:,i) = 2.6e-12.*exp(200./T).*0.861;
Gstr{i,1} = 'IPROPOL'; Gstr{i,2} = 'OH'; 
fIPROPOL(i)=fIPROPOL(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOL + OH = IPROPOLO2';
k(:,i) = 2.6e-12.*exp(200./T).*0.139;
Gstr{i,1} = 'IPROPOL'; Gstr{i,2} = 'OH'; 
fIPROPOL(i)=fIPROPOL(i)-1; fOH(i)=fOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOOO + CO = IBUTALOH';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'MBOOO'; Gstr{i,2} = 'CO'; 
fMBOOO(i)=fMBOOO(i)-1; fCO(i)=fCO(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOOO + NO = IBUTALOH + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'MBOOO'; Gstr{i,2} = 'NO'; 
fMBOOO(i)=fMBOOO(i)-1; fNO(i)=fNO(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOOO + NO2 = IBUTALOH + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'MBOOO'; Gstr{i,2} = 'NO2'; 
fMBOOO(i)=fMBOOO(i)-1; fNO2(i)=fNO2(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MBOOO + SO2 = IBUTALOH + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'MBOOO'; Gstr{i,2} = 'SO2'; 
fMBOOO(i)=fMBOOO(i)-1; fSO2(i)=fSO2(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MBOOO = IBUTALOH + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'MBOOO'; 
fMBOOO(i)=fMBOOO(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MBOOO = IPRHOCO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'MBOOO'; 
fMBOOO(i)=fMBOOO(i)-1; fIPRHOCO2H(i)=fIPRHOCO2H(i)+1; 

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
Rnames{i} = 'MBOAOOH + OH = MBOACO + OH';
k(:,i) = 2.93e-11;
Gstr{i,1} = 'MBOAOOH'; Gstr{i,2} = 'OH'; 
fMBOAOOH(i)=fMBOAOOH(i)-1; fOH(i)=fOH(i)-1; fMBOACO(i)=fMBOACO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOAOOH + OH = MBOAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MBOAOOH'; Gstr{i,2} = 'OH'; 
fMBOAOOH(i)=fMBOAOOH(i)-1; fOH(i)=fOH(i)-1; fMBOAO2(i)=fMBOAO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOAOOH =  + HOCH2CHO + CH3COCH3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MBOAOOH'; 
fMBOAOOH(i)=fMBOAOOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOACO + OH = MBOCOCO + HO2';
k(:,i) = 3.79e-12;
Gstr{i,1} = 'MBOACO'; Gstr{i,2} = 'OH'; 
fMBOACO(i)=fMBOACO(i)-1; fOH(i)=fOH(i)-1; fMBOCOCO(i)=fMBOCOCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOACO = HCHO + HO2 + IPRHOCO3';
k(:,i) = J22;
Gstr{i,1} = 'MBOACO'; 
fMBOACO(i)=fMBOACO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; 

i=i+1;
Rnames{i} = 'MBOAOH + OH = MBOACO + HO2';
k(:,i) = 1.51e-11;
Gstr{i,1} = 'MBOAOH'; Gstr{i,2} = 'OH'; 
fMBOAOH(i)=fMBOAOH(i)-1; fOH(i)=fOH(i)-1; fMBOACO(i)=fMBOACO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOBOOH + OH = MBOBCO + OH';
k(:,i) = 2.05e-12;
Gstr{i,1} = 'MBOBOOH'; Gstr{i,2} = 'OH'; 
fMBOBOOH(i)=fMBOBOOH(i)-1; fOH(i)=fOH(i)-1; fMBOBCO(i)=fMBOBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOBOOH + OH = MBOBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MBOBOOH'; Gstr{i,2} = 'OH'; 
fMBOBOOH(i)=fMBOBOOH(i)-1; fOH(i)=fOH(i)-1; fMBOBO2(i)=fMBOBO2(i)+1; 

i=i+1;
Rnames{i} = 'MBOBOOH =  + IBUTALOH + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MBOBOOH'; 
fMBOBOOH(i)=fMBOBOOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MBOBCO + OH = C4OH2CO3';
k(:,i) = 2.75e-11;
Gstr{i,1} = 'MBOBCO'; Gstr{i,2} = 'OH'; 
fMBOBCO(i)=fMBOBCO(i)-1; fOH(i)=fOH(i)-1; fC4OH2CO3(i)=fC4OH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'MBOBCO = CO + HO2 + HO2 + IBUTALOH';
k(:,i) = J17;
Gstr{i,1} = 'MBOBCO'; 
fMBOBCO(i)=fMBOBCO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fIBUTALOH(i)=fIBUTALOH(i)+1; 

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
Rnames{i} = 'ISOPCNO3 =  + 0.75HC4ACHO + 0.75HO2 + 0.25HC4CCHO + 0.25HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'ISOPCNO3'; 
fISOPCNO3(i)=fISOPCNO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fHC4CCHO(i)=fHC4CCHO(i)+0.25; fHO2(i)=fHO2(i)+0.25; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPCNO3 =  + 0.11GAOO + 0.89OH + 0.89HO2 + 0.89CO + 0.89HCHO + NOA';
k(:,i) = 5.30e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPCNO3'; 
fO3(i)=fO3(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fGAOO(i)=fGAOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fCO(i)=fCO(i)+0.89; fHCHO(i)=fHCHO(i)+0.89; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPCNO3 = HOCH2CHO +  + 0.11NC3OO + 0.89OH + 0.89NO2 + 0.89MGLYOX';
k(:,i) = 5.30e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPCNO3'; 
fO3(i)=fO3(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNC3OO(i)=fNC3OO(i)+0.11; fOH(i)=fOH(i)+0.89; fNO2(i)=fNO2(i)+0.89; fMGLYOX(i)=fMGLYOX(i)+0.89; 

i=i+1;
Rnames{i} = 'OH + ISOPCNO3 = INCO2';
k(:,i) = 6.93e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCNO3'; 
fOH(i)=fOH(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fINCO2(i)=fINCO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CHO = NOA + CO + CO + HO2 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'NC4CHO'; 
fNC4CHO(i)=fNC4CHO(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'MACRO2 + NO =  + ACETOL + CO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO'; 
fMACRO2(i)=fMACRO2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + NO3 =  + ACETOL + CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO3'; 
fMACRO2(i)=fMACRO2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'MACROHO2 + NO = MACROHNO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'NO'; 
fMACROHO2(i)=fMACROHO2(i)-1; fNO(i)=fNO(i)-1; fMACROHNO3(i)=fMACROHNO3(i)+1; 

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
Rnames{i} = 'HMVKBO2 + HO2 = HMVKBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'HO2'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + NO =  + CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KRO2NO;
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
Rnames{i} = 'ISOPAOOH =  + 0.25C524O2 + 0.75HC4CCHO + 0.75HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPAOOH'; 
fISOPAOOH(i)=fISOPAOOH(i)-1; fC524O2(i)=fC524O2(i)+0.25; fHC4CCHO(i)=fHC4CCHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'ISOPANO3 =  + 0.25C524O2 + 0.75HC4CCHO + 0.75HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'ISOPANO3'; 
fISOPANO3(i)=fISOPANO3(i)-1; fC524O2(i)=fC524O2(i)+0.25; fHC4CCHO(i)=fHC4CCHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPANO3 = ACETOL +  + 0.11NC2OO + 0.89OH + 0.89NO2 + 0.89GLYOX';
k(:,i) = 5.30e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPANO3'; 
fO3(i)=fO3(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNC2OO(i)=fNC2OO(i)+0.11; fOH(i)=fOH(i)+0.89; fNO2(i)=fNO2(i)+0.89; fGLYOX(i)=fGLYOX(i)+0.89; 

i=i+1;
Rnames{i} = 'O3 + ISOPANO3 =  + 0.11ACLOO + 0.89OH + 0.89HO2 + 0.89MGLYOX + NO3CH2CHO';
k(:,i) = 5.30e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPANO3'; 
fO3(i)=fO3(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fACLOO(i)=fACLOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fMGLYOX(i)=fMGLYOX(i)+0.89; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPANO3 = INAO2';
k(:,i) = 6.93e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPANO3'; 
fOH(i)=fOH(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fINAO2(i)=fINAO2(i)+1; 

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
Rnames{i} = 'OH + HC4ACHO = C58O2';
k(:,i) = 4.52e-11.*0.52;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fC58O2(i)=fC58O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = HC4ACO3';
k(:,i) = 4.52e-11.*0.48;
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
k(:,i) = 1.06e-16.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPBNO3'; 
fO3(i)=fO3(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fACETOL(i)=fACETOL(i)+0.36; fNO2(i)=fNO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; fACETOL(i)=fACETOL(i)+0.20; fNO2(i)=fNO2(i)+0.20; fHO2(i)=fHO2(i)+0.20; fMACRNOO(i)=fMACRNOO(i)+0.24; fPROPOLNO3(i)=fPROPOLNO3(i)+0.20; 

i=i+1;
Rnames{i} = 'O3 + ISOPBNO3 = MACRNO3 +  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH';
k(:,i) = 1.06e-16.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPBNO3'; 
fO3(i)=fO3(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fCH2OO(i)=fCH2OO(i)+0.24; fCO(i)=fCO(i)+0.40; fHO2(i)=fHO2(i)+0.36; fCO(i)=fCO(i)+0.36; fOH(i)=fOH(i)+0.36; 

i=i+1;
Rnames{i} = 'OH + ISOPBNO3 = INB1O2';
k(:,i) = 1.36e-11.*0.72;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBNO3'; 
fOH(i)=fOH(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fINB1O2(i)=fINB1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBNO3 = INB2O2';
k(:,i) = 1.36e-11.*0.28;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBNO3'; 
fOH(i)=fOH(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fINB2O2(i)=fINB2O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBOH =  + MVK + HCHO + HO2';
k(:,i) = 3.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBOH'; 
fOH(i)=fOH(i)-1; fISOPBOH(i)=fISOPBOH(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCOOH =  + 0.75HC4ACHO + 0.75HO2 + 0.25HC4CCHO + 0.25HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPCOOH'; 
fISOPCOOH(i)=fISOPCOOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+0.75; fHO2(i)=fHO2(i)+0.75; fHC4CCHO(i)=fHC4CCHO(i)+0.25; fHO2(i)=fHO2(i)+0.25; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'O3 + HC4CCHO = MGLYOX +  + 0.11GAOO + 0.89OH + 0.89HO2 + 0.89CO + 0.89HCHO';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4CCHO'; 
fO3(i)=fO3(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGAOO(i)=fGAOO(i)+0.11; fOH(i)=fOH(i)+0.89; fHO2(i)=fHO2(i)+0.89; fCO(i)=fCO(i)+0.89; fHCHO(i)=fHCHO(i)+0.89; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = C57O2';
k(:,i) = 4.52e-11.*0.52;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fC57O2(i)=fC57O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = HC4CCO3';
k(:,i) = 4.52e-11.*0.48;
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
k(:,i) = 1.06e-16.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPDNO3'; 
fO3(i)=fO3(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fCH2OO(i)=fCH2OO(i)+0.18; fHO2(i)=fHO2(i)+0.82; fCO(i)=fCO(i)+0.82; fOH(i)=fOH(i)+0.82; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPDNO3 = HCHO +  + 0.18NC4OO + 0.82OH + 0.82NO2 + 0.82BIACETOH';
k(:,i) = 1.06e-16.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPDNO3'; 
fO3(i)=fO3(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNC4OO(i)=fNC4OO(i)+0.18; fOH(i)=fOH(i)+0.82; fNO2(i)=fNO2(i)+0.82; fBIACETOH(i)=fBIACETOH(i)+0.82; 

i=i+1;
Rnames{i} = 'OH + ISOPDNO3 = INDO2';
k(:,i) = 2.54e-11;
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
Rnames{i} = 'OH + ISOPDOH = HCOC5 + HO2';
k(:,i) = 7.38e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOH'; 
fOH(i)=fOH(i)-1; fISOPDOH(i)=fISOPDOH(i)-1; fHCOC5(i)=fHCOC5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAOOH + OH = NAPINAO2';
k(:,i) = 6.87e-12;
Gstr{i,1} = 'NAPINAOOH'; Gstr{i,2} = 'OH'; 
fNAPINAOOH(i)=fNAPINAOOH(i)-1; fOH(i)=fOH(i)-1; fNAPINAO2(i)=fNAPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAOOH =  + PINAL + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NAPINAOOH'; 
fNAPINAOOH(i)=fNAPINAOOH(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBNO3 + OH = APINBCO + NO2';
k(:,i) = 3.64e-12;
Gstr{i,1} = 'APINBNO3'; Gstr{i,2} = 'OH'; 
fAPINBNO3(i)=fAPINBNO3(i)-1; fOH(i)=fOH(i)-1; fAPINBCO(i)=fAPINBCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBOOH + OH = NAPINBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NAPINBOOH'; Gstr{i,2} = 'OH'; 
fNAPINBOOH(i)=fNAPINBOOH(i)-1; fOH(i)=fOH(i)-1; fNAPINBO2(i)=fNAPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBOOH + OH = NC101CO + OH';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'NAPINBOOH'; Gstr{i,2} = 'OH'; 
fNAPINBOOH(i)=fNAPINBOOH(i)-1; fOH(i)=fOH(i)-1; fNC101CO(i)=fNC101CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBOOH =  + NC101CO + HO2 + PINAL + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NAPINBOOH'; 
fNAPINBOOH(i)=fNAPINBOOH(i)-1; fNC101CO(i)=fNC101CO(i)+1; fHO2(i)=fHO2(i)+1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINANO3 + OH = PINAL + NO2';
k(:,i) = 5.50e-12;
Gstr{i,1} = 'APINANO3'; Gstr{i,2} = 'OH'; 
fAPINANO3(i)=fAPINANO3(i)-1; fOH(i)=fOH(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC101CO + OH = NC101O2';
k(:,i) = 5.55e-12;
Gstr{i,1} = 'NC101CO'; Gstr{i,2} = 'OH'; 
fNC101CO(i)=fNC101CO(i)-1; fOH(i)=fOH(i)-1; fNC101O2(i)=fNC101O2(i)+1; 

i=i+1;
Rnames{i} = 'NC101CO = C96CO3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'NC101CO'; 
fNC101CO(i)=fNC101CO(i)-1; fC96CO3(i)=fC96CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 + HO2 = C107OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'HO2'; 
fC107O2(i)=fC107O2(i)-1; fHO2(i)=fHO2(i)-1; fC107OOH(i)=fC107OOH(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 + NO =  + C108O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'NO'; 
fC107O2(i)=fC107O2(i)-1; fNO(i)=fNO(i)-1; fC108O2(i)=fC108O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 + NO3 =  + C108O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'NO3'; 
fC107O2(i)=fC107O2(i)-1; fNO3(i)=fNO3(i)-1; fC108O2(i)=fC108O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 =  + C108O2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'RO2';
fC107O2(i)=fC107O2(i)-1; fC108O2(i)=fC108O2(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 = C107OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'RO2';
fC107O2(i)=fC107O2(i)-1; fC107OH(i)=fC107OH(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + HO2 = C109OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'HO2'; 
fC109O2(i)=fC109O2(i)-1; fHO2(i)=fHO2(i)-1; fC109OOH(i)=fC109OOH(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + NO =  + 0.80C89CO3 + 0.80HCHO + 0.20C920CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'NO'; 
fC109O2(i)=fC109O2(i)-1; fNO(i)=fNO(i)-1; fC89CO3(i)=fC89CO3(i)+0.80; fHCHO(i)=fHCHO(i)+0.80; fC920CO3(i)=fC920CO3(i)+0.20; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + NO3 =  + 0.80C89CO3 + 0.80HCHO + 0.20C920CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'NO3'; 
fC109O2(i)=fC109O2(i)-1; fNO3(i)=fNO3(i)-1; fC89CO3(i)=fC89CO3(i)+0.80; fHCHO(i)=fHCHO(i)+0.80; fC920CO3(i)=fC920CO3(i)+0.20; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 = C109CO';
k(:,i) = 2.00e-12.*0.05;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'RO2';
fC109O2(i)=fC109O2(i)-1; fC109CO(i)=fC109CO(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 =  + 0.80C89CO3 + 0.80HCHO + 0.20C920CO3';
k(:,i) = 2.00e-12.*0.90;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'RO2';
fC109O2(i)=fC109O2(i)-1; fC89CO3(i)=fC89CO3(i)+0.80; fHCHO(i)=fHCHO(i)+0.80; fC920CO3(i)=fC920CO3(i)+0.20; 

i=i+1;
Rnames{i} = 'C109O2 = C109OH';
k(:,i) = 2.00e-12.*0.05;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'RO2';
fC109O2(i)=fC109O2(i)-1; fC109OH(i)=fC109OH(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO + CO = PINAL';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'APINBOO'; Gstr{i,2} = 'CO'; 
fAPINBOO(i)=fAPINBOO(i)-1; fCO(i)=fCO(i)-1; fPINAL(i)=fPINAL(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO + NO = PINAL + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'APINBOO'; Gstr{i,2} = 'NO'; 
fAPINBOO(i)=fAPINBOO(i)-1; fNO(i)=fNO(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO + NO2 = PINAL + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'APINBOO'; Gstr{i,2} = 'NO2'; 
fAPINBOO(i)=fAPINBOO(i)-1; fNO2(i)=fNO2(i)-1; fPINAL(i)=fPINAL(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO + SO2 = PINAL + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'APINBOO'; Gstr{i,2} = 'SO2'; 
fAPINBOO(i)=fAPINBOO(i)-1; fSO2(i)=fSO2(i)-1; fPINAL(i)=fPINAL(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO = PINAL + H2O2';
k(:,i) = 1.40e-17.*H2O;
Gstr{i,1} = 'APINBOO'; 
fAPINBOO(i)=fAPINBOO(i)-1; fPINAL(i)=fPINAL(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO = PINONIC';
k(:,i) = 2.00e-18.*H2O;
Gstr{i,1} = 'APINBOO'; 
fAPINBOO(i)=fAPINBOO(i)-1; fPINONIC(i)=fPINONIC(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + HO2 = C96OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'HO2'; 
fC96O2(i)=fC96O2(i)-1; fHO2(i)=fHO2(i)-1; fC96OOH(i)=fC96OOH(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + NO = C96NO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'NO'; 
fC96O2(i)=fC96O2(i)-1; fNO(i)=fNO(i)-1; fC96NO3(i)=fC96NO3(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + NO =  + C97O2 + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'NO'; 
fC96O2(i)=fC96O2(i)-1; fNO(i)=fNO(i)-1; fC97O2(i)=fC97O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + NO3 =  + C97O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'NO3'; 
fC96O2(i)=fC96O2(i)-1; fNO3(i)=fNO3(i)-1; fC97O2(i)=fC97O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 =  + C97O2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'RO2';
fC96O2(i)=fC96O2(i)-1; fC97O2(i)=fC97O2(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 = C96OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'RO2';
fC96O2(i)=fC96O2(i)-1; fC96OH(i)=fC96OH(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 = NORPINAL';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'RO2';
fC96O2(i)=fC96O2(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; 

i=i+1;
Rnames{i} = 'APINAOOH + OH = APINAO2';
k(:,i) = 1.83e-11;
Gstr{i,1} = 'APINAOOH'; Gstr{i,2} = 'OH'; 
fAPINAOOH(i)=fAPINAOOH(i)-1; fOH(i)=fOH(i)-1; fAPINAO2(i)=fAPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'APINAOOH =  + PINAL + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'APINAOOH'; 
fAPINAOOH(i)=fAPINAOOH(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBOH + OH = APINBCO + HO2';
k(:,i) = 1.49e-11;
Gstr{i,1} = 'APINBOH'; Gstr{i,2} = 'OH'; 
fAPINBOH(i)=fAPINBOH(i)-1; fOH(i)=fOH(i)-1; fAPINBCO(i)=fAPINBCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBOOH + OH = APINBCO + OH';
k(:,i) = 3.28e-11;
Gstr{i,1} = 'APINBOOH'; Gstr{i,2} = 'OH'; 
fAPINBOOH(i)=fAPINBOOH(i)-1; fOH(i)=fOH(i)-1; fAPINBCO(i)=fAPINBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBOOH =  + PINAL + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'APINBOOH'; 
fAPINBOOH(i)=fAPINBOOH(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBCO + OH = C96CO3';
k(:,i) = 8.18e-12;
Gstr{i,1} = 'APINBCO'; Gstr{i,2} = 'OH'; 
fAPINBCO(i)=fAPINBCO(i)-1; fOH(i)=fOH(i)-1; fC96CO3(i)=fC96CO3(i)+1; 

i=i+1;
Rnames{i} = 'APINCOOH + OH = APINCO2';
k(:,i) = 1.03e-10;
Gstr{i,1} = 'APINCOOH'; Gstr{i,2} = 'OH'; 
fAPINCOOH(i)=fAPINCOOH(i)-1; fOH(i)=fOH(i)-1; fAPINCO2(i)=fAPINCO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCOOH =  + CH3COCH3 + C720O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'APINCOOH'; 
fAPINCOOH(i)=fAPINCOOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC720O2(i)=fC720O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINCNO3 + OH = CH3COCH3 + HCC7CO + NO2';
k(:,i) = 9.87e-11;
Gstr{i,1} = 'APINCNO3'; Gstr{i,2} = 'OH'; 
fAPINCNO3(i)=fAPINCNO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCC7CO(i)=fHCC7CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCNO3 =  + CH3COCH3 + C720O2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'APINCNO3'; 
fAPINCNO3(i)=fAPINCNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC720O2(i)=fC720O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCOH + OH =  + CH3COCH3 + C720O2';
k(:,i) = 9.91e-11;
Gstr{i,1} = 'APINCOH'; Gstr{i,2} = 'OH'; 
fAPINCOH(i)=fAPINCOH(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC720O2(i)=fC720O2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINAOOH + OH = NBPINAO2';
k(:,i) = 9.58e-12;
Gstr{i,1} = 'NBPINAOOH'; Gstr{i,2} = 'OH'; 
fNBPINAOOH(i)=fNBPINAOOH(i)-1; fOH(i)=fOH(i)-1; fNBPINAO2(i)=fNBPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINAOOH =  + NOPINONE + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBPINAOOH'; 
fNBPINAOOH(i)=fNBPINAOOH(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINBNO3 + OH = C918CHO + NO2';
k(:,i) = 6.12e-12;
Gstr{i,1} = 'BPINBNO3'; Gstr{i,2} = 'OH'; 
fBPINBNO3(i)=fBPINBNO3(i)-1; fOH(i)=fOH(i)-1; fC918CHO(i)=fC918CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBPINBOOH + OH = NC91CHO + OH';
k(:,i) = 9.08e-12;
Gstr{i,1} = 'NBPINBOOH'; Gstr{i,2} = 'OH'; 
fNBPINBOOH(i)=fNBPINBOOH(i)-1; fOH(i)=fOH(i)-1; fNC91CHO(i)=fNC91CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBPINBOOH =  + NOPINONE + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBPINBOOH'; 
fNBPINBOOH(i)=fNBPINBOOH(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINANO3 + OH = NOPINONE + HCHO + NO2';
k(:,i) = 4.70e-12;
Gstr{i,1} = 'BPINANO3'; Gstr{i,2} = 'OH'; 
fBPINANO3(i)=fBPINANO3(i)-1; fOH(i)=fOH(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC91CHO + NO3 = NC91CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'NC91CHO'; Gstr{i,2} = 'NO3'; 
fNC91CHO(i)=fNC91CHO(i)-1; fNO3(i)=fNO3(i)-1; fNC91CO3(i)=fNC91CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC91CHO + OH = NC91CO3';
k(:,i) = 8.63e-12;
Gstr{i,1} = 'NC91CHO'; Gstr{i,2} = 'OH'; 
fNC91CHO(i)=fNC91CHO(i)-1; fOH(i)=fOH(i)-1; fNC91CO3(i)=fNC91CO3(i)+1; 

i=i+1;
Rnames{i} = 'NC91CHO = NOPINONE + CO + HO2 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'NC91CHO'; 
fNC91CHO(i)=fNC91CHO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAO2 + HO2 = NOPINAOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'NOPINAO2'; Gstr{i,2} = 'HO2'; 
fNOPINAO2(i)=fNOPINAO2(i)-1; fHO2(i)=fHO2(i)-1; fNOPINAOOH(i)=fNOPINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAO2 + NO = NOPINANO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'NOPINAO2'; Gstr{i,2} = 'NO'; 
fNOPINAO2(i)=fNOPINAO2(i)-1; fNO(i)=fNO(i)-1; fNOPINANO3(i)=fNOPINANO3(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAO2 + NO =  + C918O2 + C9DC + HO2 + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'NOPINAO2'; Gstr{i,2} = 'NO'; 
fNOPINAO2(i)=fNOPINAO2(i)-1; fNO(i)=fNO(i)-1; fC918O2(i)=fC918O2(i)+1; fC9DC(i)=fC9DC(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAO2 + NO3 =  + C918O2 + C9DC + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NOPINAO2'; Gstr{i,2} = 'NO3'; 
fNOPINAO2(i)=fNOPINAO2(i)-1; fNO3(i)=fNO3(i)-1; fC918O2(i)=fC918O2(i)+1; fC9DC(i)=fC9DC(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAO2 = C9DC';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'NOPINAO2'; Gstr{i,2} = 'RO2';
fNOPINAO2(i)=fNOPINAO2(i)-1; fC9DC(i)=fC9DC(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAO2 =  + C918O2 + C9DC + HO2';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'NOPINAO2'; Gstr{i,2} = 'RO2';
fNOPINAO2(i)=fNOPINAO2(i)-1; fC918O2(i)=fC918O2(i)+1; fC9DC(i)=fC9DC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAO2 = NOPINAOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'NOPINAO2'; Gstr{i,2} = 'RO2';
fNOPINAO2(i)=fNOPINAO2(i)-1; fNOPINAOH(i)=fNOPINAOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBO2 + HO2 = NOPINBOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'NOPINBO2'; Gstr{i,2} = 'HO2'; 
fNOPINBO2(i)=fNOPINBO2(i)-1; fHO2(i)=fHO2(i)-1; fNOPINBOOH(i)=fNOPINBOOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBO2 + NO = NOPINBNO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'NOPINBO2'; Gstr{i,2} = 'NO'; 
fNOPINBO2(i)=fNOPINBO2(i)-1; fNO(i)=fNO(i)-1; fNOPINBNO3(i)=fNOPINBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBO2 + NO =  + C915O2 + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'NOPINBO2'; Gstr{i,2} = 'NO'; 
fNOPINBO2(i)=fNOPINBO2(i)-1; fNO(i)=fNO(i)-1; fC915O2(i)=fC915O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBO2 + NO3 =  + C915O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NOPINBO2'; Gstr{i,2} = 'NO3'; 
fNOPINBO2(i)=fNOPINBO2(i)-1; fNO3(i)=fNO3(i)-1; fC915O2(i)=fC915O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBO2 = NOPINBCO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'NOPINBO2'; Gstr{i,2} = 'RO2';
fNOPINBO2(i)=fNOPINBO2(i)-1; fNOPINBCO(i)=fNOPINBCO(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBO2 =  + C915O2';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'NOPINBO2'; Gstr{i,2} = 'RO2';
fNOPINBO2(i)=fNOPINBO2(i)-1; fC915O2(i)=fC915O2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBO2 = NOPINBOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'NOPINBO2'; Gstr{i,2} = 'RO2';
fNOPINBO2(i)=fNOPINBO2(i)-1; fNOPINBOH(i)=fNOPINBOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCO2 + HO2 = NOPINCOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'NOPINCO2'; Gstr{i,2} = 'HO2'; 
fNOPINCO2(i)=fNOPINCO2(i)-1; fHO2(i)=fHO2(i)-1; fNOPINCOOH(i)=fNOPINCOOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCO2 + NO = NOPINCNO3';
k(:,i) = KRO2NO.*0.118;
Gstr{i,1} = 'NOPINCO2'; Gstr{i,2} = 'NO'; 
fNOPINCO2(i)=fNOPINCO2(i)-1; fNO(i)=fNO(i)-1; fNOPINCNO3(i)=fNOPINCNO3(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCO2 + NO =  + C917O2 + NO2';
k(:,i) = KRO2NO.*0.882;
Gstr{i,1} = 'NOPINCO2'; Gstr{i,2} = 'NO'; 
fNOPINCO2(i)=fNOPINCO2(i)-1; fNO(i)=fNO(i)-1; fC917O2(i)=fC917O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCO2 + NO3 =  + C917O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NOPINCO2'; Gstr{i,2} = 'NO3'; 
fNOPINCO2(i)=fNOPINCO2(i)-1; fNO3(i)=fNO3(i)-1; fC917O2(i)=fC917O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCO2 =  + C917O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'NOPINCO2'; Gstr{i,2} = 'RO2';
fNOPINCO2(i)=fNOPINCO2(i)-1; fC917O2(i)=fC917O2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCO2 = NOPINCOH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'NOPINCO2'; Gstr{i,2} = 'RO2';
fNOPINCO2(i)=fNOPINCO2(i)-1; fNOPINCOH(i)=fNOPINCOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDO2 + HO2 = NOPINDOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'NOPINDO2'; Gstr{i,2} = 'HO2'; 
fNOPINDO2(i)=fNOPINDO2(i)-1; fHO2(i)=fHO2(i)-1; fNOPINDOOH(i)=fNOPINDOOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDO2 + NO =  + C89CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NOPINDO2'; Gstr{i,2} = 'NO'; 
fNOPINDO2(i)=fNOPINDO2(i)-1; fNO(i)=fNO(i)-1; fC89CO3(i)=fC89CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDO2 + NO3 =  + C89CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NOPINDO2'; Gstr{i,2} = 'NO3'; 
fNOPINDO2(i)=fNOPINDO2(i)-1; fNO3(i)=fNO3(i)-1; fC89CO3(i)=fC89CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDO2 = NOPINDCO';
k(:,i) = 2.00e-12.*0.05;
Gstr{i,1} = 'NOPINDO2'; Gstr{i,2} = 'RO2';
fNOPINDO2(i)=fNOPINDO2(i)-1; fNOPINDCO(i)=fNOPINDCO(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDO2 =  + C89CO3';
k(:,i) = 2.00e-12.*0.9;
Gstr{i,1} = 'NOPINDO2'; Gstr{i,2} = 'RO2';
fNOPINDO2(i)=fNOPINDO2(i)-1; fC89CO3(i)=fC89CO3(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDO2 = NOPINDOH';
k(:,i) = 2.00e-12.*0.05;
Gstr{i,1} = 'NOPINDO2'; Gstr{i,2} = 'RO2';
fNOPINDO2(i)=fNOPINDO2(i)-1; fNOPINDOH(i)=fNOPINDOH(i)+1; 

i=i+1;
Rnames{i} = 'C8BC + OH = C8BCO2';
k(:,i) = 3.04e-12;
Gstr{i,1} = 'C8BC'; Gstr{i,2} = 'OH'; 
fC8BC(i)=fC8BC(i)-1; fOH(i)=fOH(i)-1; fC8BCO2(i)=fC8BCO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINOO + CO = NOPINONE';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'NOPINOO'; Gstr{i,2} = 'CO'; 
fNOPINOO(i)=fNOPINOO(i)-1; fCO(i)=fCO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; 

i=i+1;
Rnames{i} = 'NOPINOO + NO = NOPINONE + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'NOPINOO'; Gstr{i,2} = 'NO'; 
fNOPINOO(i)=fNOPINOO(i)-1; fNO(i)=fNO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINOO + NO2 = NOPINONE + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'NOPINOO'; Gstr{i,2} = 'NO2'; 
fNOPINOO(i)=fNOPINOO(i)-1; fNO2(i)=fNO2(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NOPINOO + SO2 = NOPINONE + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'NOPINOO'; Gstr{i,2} = 'SO2'; 
fNOPINOO(i)=fNOPINOO(i)-1; fSO2(i)=fSO2(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NOPINOO = NOPINONE + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'NOPINOO'; 
fNOPINOO(i)=fNOPINOO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'BPINAOOH + OH = BPINAO2';
k(:,i) = 1.33e-11;
Gstr{i,1} = 'BPINAOOH'; Gstr{i,2} = 'OH'; 
fBPINAOOH(i)=fBPINAOOH(i)-1; fOH(i)=fOH(i)-1; fBPINAO2(i)=fBPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINAOOH =  + NOPINONE + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'BPINAOOH'; 
fBPINAOOH(i)=fBPINAOOH(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINAOH + OH = C918CHO + HO2';
k(:,i) = 9.88e-12;
Gstr{i,1} = 'BPINAOH'; Gstr{i,2} = 'OH'; 
fBPINAOH(i)=fBPINAOH(i)-1; fOH(i)=fOH(i)-1; fC918CHO(i)=fC918CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINBOOH + OH = C918CHO + OH';
k(:,i) = 1.90e-11;
Gstr{i,1} = 'BPINBOOH'; Gstr{i,2} = 'OH'; 
fBPINBOOH(i)=fBPINBOOH(i)-1; fOH(i)=fOH(i)-1; fC918CHO(i)=fC918CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINBOOH =  + NOPINONE + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'BPINBOOH'; 
fBPINBOOH(i)=fBPINBOOH(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C918CHO + NO3 = C918CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C918CHO'; Gstr{i,2} = 'NO3'; 
fC918CHO(i)=fC918CHO(i)-1; fNO3(i)=fNO3(i)-1; fC918CO3(i)=fC918CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C918CHO + OH = C918CO3';
k(:,i) = 3.17e-11;
Gstr{i,1} = 'C918CHO'; Gstr{i,2} = 'OH'; 
fC918CHO(i)=fC918CHO(i)-1; fOH(i)=fOH(i)-1; fC918CO3(i)=fC918CO3(i)+1; 

i=i+1;
Rnames{i} = 'C918CHO = NOPINONE + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C918CHO'; 
fC918CHO(i)=fC918CHO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINCOOH + OH = BPINCO2';
k(:,i) = 9.72e-11;
Gstr{i,1} = 'BPINCOOH'; Gstr{i,2} = 'OH'; 
fBPINCOOH(i)=fBPINCOOH(i)-1; fOH(i)=fOH(i)-1; fBPINCO2(i)=fBPINCO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINCOOH =  + C720O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'BPINCOOH'; 
fBPINCOOH(i)=fBPINCOOH(i)-1; fC720O2(i)=fC720O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BPINCNO3 + OH = HCC7CO + CH3COCH3 + NO2';
k(:,i) = 9.38e-11;
Gstr{i,1} = 'BPINCNO3'; Gstr{i,2} = 'OH'; 
fBPINCNO3(i)=fBPINCNO3(i)-1; fOH(i)=fOH(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINCNO3 =  + C720O2 + CH3COCH3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'BPINCNO3'; 
fBPINCNO3(i)=fBPINCNO3(i)-1; fC720O2(i)=fC720O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BPINCOH + OH =  + C720O2 + CH3COCH3';
k(:,i) = 9.37e-11;
Gstr{i,1} = 'BPINCOH'; Gstr{i,2} = 'OH'; 
fBPINCOH(i)=fBPINCOH(i)-1; fOH(i)=fOH(i)-1; fC720O2(i)=fC720O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'NLIMOOH + OH = NLIMO2';
k(:,i) = 4.28e-11;
Gstr{i,1} = 'NLIMOOH'; Gstr{i,2} = 'OH'; 
fNLIMOOH(i)=fNLIMOOH(i)-1; fOH(i)=fOH(i)-1; fNLIMO2(i)=fNLIMO2(i)+1; 

i=i+1;
Rnames{i} = 'NLIMOOH =  + LIMAL + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NLIMOOH'; 
fNLIMOOH(i)=fNLIMOOH(i)-1; fLIMAL(i)=fLIMAL(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMBNO3 + OH = LIMBCO + NO2';
k(:,i) = 5.91e-11;
Gstr{i,1} = 'LIMBNO3'; Gstr{i,2} = 'OH'; 
fLIMBNO3(i)=fLIMBNO3(i)-1; fOH(i)=fOH(i)-1; fLIMBCO(i)=fLIMBCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAO2 + HO2 = LIMALAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LIMALAO2'; Gstr{i,2} = 'HO2'; 
fLIMALAO2(i)=fLIMALAO2(i)-1; fHO2(i)=fHO2(i)-1; fLIMALAOOH(i)=fLIMALAOOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAO2 + NO =  + C729CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'LIMALAO2'; Gstr{i,2} = 'NO'; 
fLIMALAO2(i)=fLIMALAO2(i)-1; fNO(i)=fNO(i)-1; fC729CHO(i)=fC729CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAO2 + NO3 =  + C729CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LIMALAO2'; Gstr{i,2} = 'NO3'; 
fLIMALAO2(i)=fLIMALAO2(i)-1; fNO3(i)=fNO3(i)-1; fC729CHO(i)=fC729CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAO2 = LIMALACO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'LIMALAO2'; Gstr{i,2} = 'RO2';
fLIMALAO2(i)=fLIMALAO2(i)-1; fLIMALACO(i)=fLIMALACO(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAO2 =  + C729CHO + CH3CO3';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'LIMALAO2'; Gstr{i,2} = 'RO2';
fLIMALAO2(i)=fLIMALAO2(i)-1; fC729CHO(i)=fC729CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAO2 = LIMALAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'LIMALAO2'; Gstr{i,2} = 'RO2';
fLIMALAO2(i)=fLIMALAO2(i)-1; fLIMALAOH(i)=fLIMALAOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBO2 + HO2 = LIMALBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LIMALBO2'; Gstr{i,2} = 'HO2'; 
fLIMALBO2(i)=fLIMALBO2(i)-1; fHO2(i)=fHO2(i)-1; fLIMALBOOH(i)=fLIMALBOOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBO2 + NO =  + C822CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'LIMALBO2'; Gstr{i,2} = 'NO'; 
fLIMALBO2(i)=fLIMALBO2(i)-1; fNO(i)=fNO(i)-1; fC822CO3(i)=fC822CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBO2 + NO3 =  + C822CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LIMALBO2'; Gstr{i,2} = 'NO3'; 
fLIMALBO2(i)=fLIMALBO2(i)-1; fNO3(i)=fNO3(i)-1; fC822CO3(i)=fC822CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBO2 = LIMALBCO';
k(:,i) = 8.80e-13.*0.05;
Gstr{i,1} = 'LIMALBO2'; Gstr{i,2} = 'RO2';
fLIMALBO2(i)=fLIMALBO2(i)-1; fLIMALBCO(i)=fLIMALBCO(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBO2 =  + C822CO3 + HCHO';
k(:,i) = 8.80e-13.*0.9;
Gstr{i,1} = 'LIMALBO2'; Gstr{i,2} = 'RO2';
fLIMALBO2(i)=fLIMALBO2(i)-1; fC822CO3(i)=fC822CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBO2 = LIMALBOH';
k(:,i) = 8.80e-13.*0.05;
Gstr{i,1} = 'LIMALBO2'; Gstr{i,2} = 'RO2';
fLIMALBO2(i)=fLIMALBO2(i)-1; fLIMALBOH(i)=fLIMALBOH(i)+1; 

i=i+1;
Rnames{i} = 'C923O2 + HO2 = C923OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C923O2'; Gstr{i,2} = 'HO2'; 
fC923O2(i)=fC923O2(i)-1; fHO2(i)=fHO2(i)-1; fC923OOH(i)=fC923OOH(i)+1; 

i=i+1;
Rnames{i} = 'C923O2 + NO = C923NO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'C923O2'; Gstr{i,2} = 'NO'; 
fC923O2(i)=fC923O2(i)-1; fNO(i)=fNO(i)-1; fC923NO3(i)=fC923NO3(i)+1; 

i=i+1;
Rnames{i} = 'C923O2 + NO =  + C924O2 + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'C923O2'; Gstr{i,2} = 'NO'; 
fC923O2(i)=fC923O2(i)-1; fNO(i)=fNO(i)-1; fC924O2(i)=fC924O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C923O2 + NO3 =  + C924O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C923O2'; Gstr{i,2} = 'NO3'; 
fC923O2(i)=fC923O2(i)-1; fNO3(i)=fNO3(i)-1; fC924O2(i)=fC924O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C923O2 =  + C924O2';
k(:,i) = 1.32e-12.*0.6;
Gstr{i,1} = 'C923O2'; Gstr{i,2} = 'RO2';
fC923O2(i)=fC923O2(i)-1; fC924O2(i)=fC924O2(i)+1; 

i=i+1;
Rnames{i} = 'C923O2 = C923OH';
k(:,i) = 1.32e-12.*0.2;
Gstr{i,1} = 'C923O2'; Gstr{i,2} = 'RO2';
fC923O2(i)=fC923O2(i)-1; fC923OH(i)=fC923OH(i)+1; 

i=i+1;
Rnames{i} = 'C923O2 = NORLIMAL';
k(:,i) = 1.32e-12.*0.2;
Gstr{i,1} = 'C923O2'; Gstr{i,2} = 'RO2';
fC923O2(i)=fC923O2(i)-1; fNORLIMAL(i)=fNORLIMAL(i)+1; 

i=i+1;
Rnames{i} = 'LIMBOO + CO = LIMAL';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'LIMBOO'; Gstr{i,2} = 'CO'; 
fLIMBOO(i)=fLIMBOO(i)-1; fCO(i)=fCO(i)-1; fLIMAL(i)=fLIMAL(i)+1; 

i=i+1;
Rnames{i} = 'LIMBOO + NO = LIMAL + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'LIMBOO'; Gstr{i,2} = 'NO'; 
fLIMBOO(i)=fLIMBOO(i)-1; fNO(i)=fNO(i)-1; fLIMAL(i)=fLIMAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMBOO + NO2 = LIMAL + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'LIMBOO'; Gstr{i,2} = 'NO2'; 
fLIMBOO(i)=fLIMBOO(i)-1; fNO2(i)=fNO2(i)-1; fLIMAL(i)=fLIMAL(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMBOO + SO2 = LIMAL + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'LIMBOO'; Gstr{i,2} = 'SO2'; 
fLIMBOO(i)=fLIMBOO(i)-1; fSO2(i)=fSO2(i)-1; fLIMAL(i)=fLIMAL(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMBOO = LIMAL + H2O2';
k(:,i) = 1.40e-17.*H2O;
Gstr{i,1} = 'LIMBOO'; 
fLIMBOO(i)=fLIMBOO(i)-1; fLIMAL(i)=fLIMAL(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'LIMBOO = LIMONONIC';
k(:,i) = 2.00e-18.*H2O;
Gstr{i,1} = 'LIMBOO'; 
fLIMBOO(i)=fLIMBOO(i)-1; fLIMONONIC(i)=fLIMONONIC(i)+1; 

i=i+1;
Rnames{i} = 'LIMAOOH + OH = LIMAO2';
k(:,i) = 7.36e-11;
Gstr{i,1} = 'LIMAOOH'; Gstr{i,2} = 'OH'; 
fLIMAOOH(i)=fLIMAOOH(i)-1; fOH(i)=fOH(i)-1; fLIMAO2(i)=fLIMAO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAOOH =  + LIMAL + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'LIMAOOH'; 
fLIMAOOH(i)=fLIMAOOH(i)-1; fLIMAL(i)=fLIMAL(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMANO3 + OH = LIMAL + NO2';
k(:,i) = 6.20e-11;
Gstr{i,1} = 'LIMANO3'; Gstr{i,2} = 'OH'; 
fLIMANO3(i)=fLIMANO3(i)-1; fOH(i)=fOH(i)-1; fLIMAL(i)=fLIMAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAOH + OH = LIMBCO + HO2';
k(:,i) = 7.02e-11;
Gstr{i,1} = 'LIMAOH'; Gstr{i,2} = 'OH'; 
fLIMAOH(i)=fLIMAOH(i)-1; fOH(i)=fOH(i)-1; fLIMBCO(i)=fLIMBCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMBOOH + OH = LIMBCO + OH';
k(:,i) = 1.04e-10;
Gstr{i,1} = 'LIMBOOH'; Gstr{i,2} = 'OH'; 
fLIMBOOH(i)=fLIMBOOH(i)-1; fOH(i)=fOH(i)-1; fLIMBCO(i)=fLIMBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMBOOH =  + LIMAL + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'LIMBOOH'; 
fLIMBOOH(i)=fLIMBOOH(i)-1; fLIMAL(i)=fLIMAL(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMBCO + OH = C923CO3';
k(:,i) = 6.70e-11;
Gstr{i,1} = 'LIMBCO'; Gstr{i,2} = 'OH'; 
fLIMBCO(i)=fLIMBCO(i)-1; fOH(i)=fOH(i)-1; fC923CO3(i)=fC923CO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMCOOH + OH = LIMCO2';
k(:,i) = 1.03e-10;
Gstr{i,1} = 'LIMCOOH'; Gstr{i,2} = 'OH'; 
fLIMCOOH(i)=fLIMCOOH(i)-1; fOH(i)=fOH(i)-1; fLIMCO2(i)=fLIMCO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMCOOH =  + LIMKET + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'LIMCOOH'; 
fLIMCOOH(i)=fLIMCOOH(i)-1; fLIMKET(i)=fLIMKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMCNO3 + OH = LIMKET + HCHO + NO2';
k(:,i) = 9.31e-11;
Gstr{i,1} = 'LIMCNO3'; Gstr{i,2} = 'OH'; 
fLIMCNO3(i)=fLIMCNO3(i)-1; fOH(i)=fOH(i)-1; fLIMKET(i)=fLIMKET(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMCOH + OH = LIMKET + HCHO + HO2';
k(:,i) = 9.94e-11;
Gstr{i,1} = 'LIMCOH'; Gstr{i,2} = 'OH'; 
fLIMCOH(i)=fLIMCOH(i)-1; fOH(i)=fOH(i)-1; fLIMKET(i)=fLIMKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'NO3CH2CHO = HO2 + CO + HCHO + NO2';
k(:,i) = J57;
Gstr{i,1} = 'NO3CH2CHO'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO = NO2 +  + HCHO + CO + HO2';
k(:,i) = J56;
Gstr{i,1} = 'NO3CH2CHO'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCO3 + HO2 = IBUTALOH + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NC4OHCO3'; Gstr{i,2} = 'HO2'; 
fNC4OHCO3(i)=fNC4OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCO3 + HO2 = NC4OHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'NC4OHCO3'; Gstr{i,2} = 'HO2'; 
fNC4OHCO3(i)=fNC4OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fNC4OHCO3H(i)=fNC4OHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCO3 + NO = IBUTALOH + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NC4OHCO3'; Gstr{i,2} = 'NO'; 
fNC4OHCO3(i)=fNC4OHCO3(i)-1; fNO(i)=fNO(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCO3 + NO2 = NC4OHCPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'NC4OHCO3'; Gstr{i,2} = 'NO2'; 
fNC4OHCO3(i)=fNC4OHCO3(i)-1; fNO2(i)=fNO2(i)-1; fNC4OHCPAN(i)=fNC4OHCPAN(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCO3 + NO3 = IBUTALOH + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NC4OHCO3'; Gstr{i,2} = 'NO3'; 
fNC4OHCO3(i)=fNC4OHCO3(i)-1; fNO3(i)=fNO3(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCO3 = IBUTALOH + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'NC4OHCO3'; Gstr{i,2} = 'RO2';
fNC4OHCO3(i)=fNC4OHCO3(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'HCOOH + OH = HO2';
k(:,i) = 4.5e-13;
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH'; 
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'MBOCOCO + OH = CO + IPRHOCO3';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'MBOCOCO'; Gstr{i,2} = 'OH'; 
fMBOCOCO(i)=fMBOCOCO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; 

i=i+1;
Rnames{i} = 'MBOCOCO = CO + HO2 + IPRHOCO3';
k(:,i) = J34;
Gstr{i,1} = 'MBOCOCO'; 
fMBOCOCO(i)=fMBOCOCO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CO3 + HO2 = C4OH2CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C4OH2CO3'; Gstr{i,2} = 'HO2'; 
fC4OH2CO3(i)=fC4OH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fC4OH2CO3H(i)=fC4OH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CO3 + HO2 = IBUTALOH + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C4OH2CO3'; Gstr{i,2} = 'HO2'; 
fC4OH2CO3(i)=fC4OH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CO3 + NO = IBUTALOH + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C4OH2CO3'; Gstr{i,2} = 'NO'; 
fC4OH2CO3(i)=fC4OH2CO3(i)-1; fNO(i)=fNO(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CO3 + NO2 = C4OH2CPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C4OH2CO3'; Gstr{i,2} = 'NO2'; 
fC4OH2CO3(i)=fC4OH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4OH2CPAN(i)=fC4OH2CPAN(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CO3 + NO3 = IBUTALOH + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C4OH2CO3'; Gstr{i,2} = 'NO3'; 
fC4OH2CO3(i)=fC4OH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CO3 = IBUTALOH + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C4OH2CO3'; Gstr{i,2} = 'RO2';
fC4OH2CO3(i)=fC4OH2CO3(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA + OH = MGLYOX + NO2';
k(:,i) = 1e-12;
Gstr{i,1} = 'NOA'; Gstr{i,2} = 'OH'; 
fNOA(i)=fNOA(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA = CH3CO3 + HCHO + NO2';
k(:,i) = J57;
Gstr{i,1} = 'NOA'; 
fNOA(i)=fNOA(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA =  + CH3CO3 + HCHO + NO2';
k(:,i) = J56;
Gstr{i,1} = 'NOA'; 
fNOA(i)=fNOA(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + HO2 = INCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'HO2'; 
fINCO2(i)=fINCO2(i)-1; fHO2(i)=fHO2(i)-1; fINCOOH(i)=fINCOOH(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO = INCNO3';
k(:,i) = KRO2NO.*0.145;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'NO'; 
fINCO2(i)=fINCO2(i)-1; fNO(i)=fNO(i)-1; fINCNO3(i)=fINCNO3(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO =  + NOA + HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO.*0.855;
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
Rnames{i} = 'NO3 + GLYOX = CO + CO + HO2 + HNO3';
k(:,i) = KNO3AL.*0.6;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'GLYOX'; 
fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + GLYOX = HCOCO3 + HNO3';
k(:,i) = KNO3AL.*0.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'GLYOX'; 
fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYOX = CO + CO + HO2';
k(:,i) = 3.1e-12.*exp(340./T).*0.6;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYOX'; 
fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYOX = HCOCO3';
k(:,i) = 3.1e-12.*exp(340./T).*0.4;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYOX'; 
fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

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
Rnames{i} = 'OH + MACO3H = MACO3';
k(:,i) = 1.661e-11;
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
Rnames{i} = 'OH + MPAN = ACETOL + CO + NO2';
k(:,i) = 2.9e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MPAN'; 
fOH(i)=fOH(i)-1; fMPAN(i)=fMPAN(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'MACROHNO3 + OH = NOA + CO + HO2';
k(:,i) = 2.18e-11;
Gstr{i,1} = 'MACROHNO3'; Gstr{i,2} = 'OH'; 
fMACROHNO3(i)=fMACROHNO3(i)-1; fOH(i)=fOH(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHNO3 =  + MGLYOX + HCHO + HO2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'MACROHNO3'; 
fMACROHNO3(i)=fMACROHNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHNO3 = NOA + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MACROHNO3'; 
fMACROHNO3(i)=fMACROHNO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH + OH = CHOMOHCO3';
k(:,i) = 1.32e-10;
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
Rnames{i} = 'OH + IEPOXA = IEACHO + HO2';
k(:,i) = 5.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXA'; 
fOH(i)=fOH(i)-1; fIEPOXA(i)=fIEPOXA(i)-1; fIEACHO(i)=fIEACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + OH = MGLYOX + HO2';
k(:,i) = 1.6e-12.*exp(-305./T);
Gstr{i,1} = 'ACETOL'; Gstr{i,2} = 'OH'; 
fACETOL(i)=fACETOL(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL = CH3CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'ACETOL'; 
fACETOL(i)=fACETOL(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + HO2 = INAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'HO2'; 
fINAO2(i)=fINAO2(i)-1; fHO2(i)=fHO2(i)-1; fINAOOH(i)=fINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO = INANO3';
k(:,i) = KRO2NO.*0.072;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'NO'; 
fINAO2(i)=fINAO2(i)-1; fNO(i)=fNO(i)-1; fINANO3(i)=fINANO3(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO =  + ACETOL + NO3CH2CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.928;
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
Rnames{i} = 'C524O2 + HO2 = C524OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'HO2'; 
fC524O2(i)=fC524O2(i)-1; fHO2(i)=fHO2(i)-1; fC524OOH(i)=fC524OOH(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO = C524NO3';
k(:,i) = KRO2NO.*0.134;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'NO'; 
fC524O2(i)=fC524O2(i)-1; fNO(i)=fNO(i)-1; fC524NO3(i)=fC524NO3(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO =  + HMACR + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.866;
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
Rnames{i} = 'HC4ACO3 = HC4ACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'RO2';
fHC4ACO3(i)=fHC4ACO3(i)-1; fHC4ACO2H(i)=fHC4ACO2H(i)+1; 

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
Rnames{i} = 'OH + IEPOXB = IEB1O2';
k(:,i) = 9.05e-12.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fIEB1O2(i)=fIEB1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = IEB2O2';
k(:,i) = 9.05e-12.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fIEB2O2(i)=fIEB2O2(i)+1; 

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
k(:,i) = J17;
Gstr{i,1} = 'MACRNO3'; 
fMACRNO3(i)=fMACRNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + HO2 = INB1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'HO2'; 
fINB1O2(i)=fINB1O2(i)-1; fHO2(i)=fHO2(i)-1; fINB1OOH(i)=fINB1OOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO = INB1NO3';
k(:,i) = KRO2NO.*0.145;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'NO'; 
fINB1O2(i)=fINB1O2(i)-1; fNO(i)=fNO(i)-1; fINB1NO3(i)=fINB1NO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO =  + HOCH2CHO + ACETOL + NO2 + NO2';
k(:,i) = KRO2NO.*0.855;
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
k(:,i) = KRO2NO.*0.064;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'NO'; 
fINB2O2(i)=fINB2O2(i)-1; fNO(i)=fNO(i)-1; fINANO3(i)=fINANO3(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + NO =  + C57NO3 + HO2 + NO2';
k(:,i) = KRO2NO.*0.936;
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
Rnames{i} = 'OH + IEPOXC = IEC1O2';
k(:,i) = 1.50e-11.*0.719;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXC'; 
fOH(i)=fOH(i)-1; fIEPOXC(i)=fIEPOXC(i)-1; fIEC1O2(i)=fIEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXC = IECCHO + HO2';
k(:,i) = 1.50e-11.*0.281;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXC'; 
fOH(i)=fOH(i)-1; fIEPOXC(i)=fIEPOXC(i)-1; fIECCHO(i)=fIECCHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'C57O2 + HO2 = C57OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'HO2'; 
fC57O2(i)=fC57O2(i)-1; fHO2(i)=fHO2(i)-1; fC57OOH(i)=fC57OOH(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + NO =  + MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO;
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
k(:,i) = J56;
Gstr{i,1} = 'MVKNO3'; 
fMVKNO3(i)=fMVKNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = J57;
Gstr{i,1} = 'MVKNO3'; 
fMVKNO3(i)=fMVKNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + HO2 = INDOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'HO2'; 
fINDO2(i)=fINDO2(i)-1; fHO2(i)=fHO2(i)-1; fINDOOH(i)=fINDOOH(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO = INB1NO3';
k(:,i) = KRO2NO.*0.072;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'NO'; 
fINDO2(i)=fINDO2(i)-1; fNO(i)=fNO(i)-1; fINB1NO3(i)=fINB1NO3(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO =  + ACETOL + HOCH2CHO + NO2 + HCHO + HO2 + MVKNO3 + NO2';
k(:,i) = KRO2NO.*0.928;
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
Rnames{i} = 'PINAL + NO3 = C96CO3 + HNO3';
k(:,i) = 2.0e-14;
Gstr{i,1} = 'PINAL'; Gstr{i,2} = 'NO3'; 
fPINAL(i)=fPINAL(i)-1; fNO3(i)=fNO3(i)-1; fC96CO3(i)=fC96CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'PINAL + OH = C96CO3';
k(:,i) = 5.2e-12.*exp(600./T).*0.772;
Gstr{i,1} = 'PINAL'; Gstr{i,2} = 'OH'; 
fPINAL(i)=fPINAL(i)-1; fOH(i)=fOH(i)-1; fC96CO3(i)=fC96CO3(i)+1; 

i=i+1;
Rnames{i} = 'PINAL + OH = PINALO2';
k(:,i) = 5.2e-12.*exp(600./T).*0.228;
Gstr{i,1} = 'PINAL'; Gstr{i,2} = 'OH'; 
fPINAL(i)=fPINAL(i)-1; fOH(i)=fOH(i)-1; fPINALO2(i)=fPINALO2(i)+1; 

i=i+1;
Rnames{i} = 'PINAL = C96O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'PINAL'; 
fPINAL(i)=fPINAL(i)-1; fC96O2(i)=fC96O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC101O2 + HO2 = NC101OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NC101O2'; Gstr{i,2} = 'HO2'; 
fNC101O2(i)=fNC101O2(i)-1; fHO2(i)=fHO2(i)-1; fNC101OOH(i)=fNC101OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC101O2 + NO =  + NC102O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC101O2'; Gstr{i,2} = 'NO'; 
fNC101O2(i)=fNC101O2(i)-1; fNO(i)=fNO(i)-1; fNC102O2(i)=fNC102O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC101O2 + NO3 =  + NC102O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC101O2'; Gstr{i,2} = 'NO3'; 
fNC101O2(i)=fNC101O2(i)-1; fNO3(i)=fNO3(i)-1; fNC102O2(i)=fNC102O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC101O2 =  + NC102O2';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'NC101O2'; Gstr{i,2} = 'RO2';
fNC101O2(i)=fNC101O2(i)-1; fNC102O2(i)=fNC102O2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + HO2 = C96O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'HO2'; 
fC96CO3(i)=fC96CO3(i)-1; fHO2(i)=fHO2(i)-1; fC96O2(i)=fC96O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + HO2 = PERPINONIC';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'HO2'; 
fC96CO3(i)=fC96CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERPINONIC(i)=fPERPINONIC(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + HO2 = PINONIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'HO2'; 
fC96CO3(i)=fC96CO3(i)-1; fHO2(i)=fHO2(i)-1; fPINONIC(i)=fPINONIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + NO = C96O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'NO'; 
fC96CO3(i)=fC96CO3(i)-1; fNO(i)=fNO(i)-1; fC96O2(i)=fC96O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + NO2 = C10PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'NO2'; 
fC96CO3(i)=fC96CO3(i)-1; fNO2(i)=fNO2(i)-1; fC10PAN2(i)=fC10PAN2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + NO3 = C96O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'NO3'; 
fC96CO3(i)=fC96CO3(i)-1; fNO3(i)=fNO3(i)-1; fC96O2(i)=fC96O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 = C96O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'RO2';
fC96CO3(i)=fC96CO3(i)-1; fC96O2(i)=fC96O2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 = PINONIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'RO2';
fC96CO3(i)=fC96CO3(i)-1; fPINONIC(i)=fPINONIC(i)+1; 

i=i+1;
Rnames{i} = 'C107OOH + OH = C107O2';
k(:,i) = 3.01e-11;
Gstr{i,1} = 'C107OOH'; Gstr{i,2} = 'OH'; 
fC107OOH(i)=fC107OOH(i)-1; fOH(i)=fOH(i)-1; fC107O2(i)=fC107O2(i)+1; 

i=i+1;
Rnames{i} = 'C107OOH =  + C108O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C107OOH'; 
fC107OOH(i)=fC107OOH(i)-1; fC108O2(i)=fC108O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C107OOH =  + C108O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C107OOH'; 
fC107OOH(i)=fC107OOH(i)-1; fC108O2(i)=fC108O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C107OH + OH =  + C108O2';
k(:,i) = 2.66e-11;
Gstr{i,1} = 'C107OH'; Gstr{i,2} = 'OH'; 
fC107OH(i)=fC107OH(i)-1; fOH(i)=fOH(i)-1; fC108O2(i)=fC108O2(i)+1; 

i=i+1;
Rnames{i} = 'C107OH =  + C108O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C107OH'; 
fC107OH(i)=fC107OH(i)-1; fC108O2(i)=fC108O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109OOH + OH = C109CO + OH';
k(:,i) = 5.47e-11;
Gstr{i,1} = 'C109OOH'; Gstr{i,2} = 'OH'; 
fC109OOH(i)=fC109OOH(i)-1; fOH(i)=fOH(i)-1; fC109CO(i)=fC109CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C109OOH =  + 0.80C89CO3 + 0.80HCHO + 0.20C920CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C109OOH'; 
fC109OOH(i)=fC109OOH(i)-1; fC89CO3(i)=fC89CO3(i)+0.80; fHCHO(i)=fHCHO(i)+0.80; fC920CO3(i)=fC920CO3(i)+0.20; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C109OOH =  + 0.80C89CO3 + 0.80HCHO + 0.20C920CO3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C109OOH'; 
fC109OOH(i)=fC109OOH(i)-1; fC89CO3(i)=fC89CO3(i)+0.80; fHCHO(i)=fHCHO(i)+0.80; fC920CO3(i)=fC920CO3(i)+0.20; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C109OOH = C89CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C109OOH'; 
fC109OOH(i)=fC109OOH(i)-1; fC89CO3(i)=fC89CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C109CO + OH = C89CO3 + CO';
k(:,i) = 5.47e-11;
Gstr{i,1} = 'C109CO'; Gstr{i,2} = 'OH'; 
fC109CO(i)=fC109CO(i)-1; fOH(i)=fOH(i)-1; fC89CO3(i)=fC89CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C109CO = C89CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C109CO'; 
fC109CO(i)=fC109CO(i)-1; fC89CO3(i)=fC89CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109CO = C89CO3 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C109CO'; 
fC109CO(i)=fC109CO(i)-1; fC89CO3(i)=fC89CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109OH + OH = C109CO + HO2';
k(:,i) = 4.45e-11;
Gstr{i,1} = 'C109OH'; Gstr{i,2} = 'OH'; 
fC109OH(i)=fC109OH(i)-1; fOH(i)=fOH(i)-1; fC109CO(i)=fC109CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109OH = C89CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C109OH'; 
fC109OH(i)=fC109OH(i)-1; fC89CO3(i)=fC89CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109OH = C920O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C109OH'; 
fC109OH(i)=fC109OH(i)-1; fC920O2(i)=fC920O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PINONIC + OH = C96O2';
k(:,i) = 6.65e-12;
Gstr{i,1} = 'PINONIC'; Gstr{i,2} = 'OH'; 
fPINONIC(i)=fPINONIC(i)-1; fOH(i)=fOH(i)-1; fC96O2(i)=fC96O2(i)+1; 

i=i+1;
Rnames{i} = 'PINONIC = C96O2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'PINONIC'; 
fPINONIC(i)=fPINONIC(i)-1; fC96O2(i)=fC96O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C96OOH + OH = C96O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C96OOH'; Gstr{i,2} = 'OH'; 
fC96OOH(i)=fC96OOH(i)-1; fOH(i)=fOH(i)-1; fC96O2(i)=fC96O2(i)+1; 

i=i+1;
Rnames{i} = 'C96OOH + OH = NORPINAL + OH';
k(:,i) = 1.30e-11;
Gstr{i,1} = 'C96OOH'; Gstr{i,2} = 'OH'; 
fC96OOH(i)=fC96OOH(i)-1; fOH(i)=fOH(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C96OOH =  + C97O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C96OOH'; 
fC96OOH(i)=fC96OOH(i)-1; fC97O2(i)=fC97O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C96OOH =  + C97O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C96OOH'; 
fC96OOH(i)=fC96OOH(i)-1; fC97O2(i)=fC97O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C96NO3 + OH = NORPINAL + NO2';
k(:,i) = 2.88e-12;
Gstr{i,1} = 'C96NO3'; Gstr{i,2} = 'OH'; 
fC96NO3(i)=fC96NO3(i)-1; fOH(i)=fOH(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96NO3 =  + C97O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C96NO3'; 
fC96NO3(i)=fC96NO3(i)-1; fC97O2(i)=fC97O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96NO3 =  + C97O2 + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C96NO3'; 
fC96NO3(i)=fC96NO3(i)-1; fC97O2(i)=fC97O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96OH + OH = NORPINAL + HO2';
k(:,i) = 7.67e-12;
Gstr{i,1} = 'C96OH'; Gstr{i,2} = 'OH'; 
fC96OH(i)=fC96OH(i)-1; fOH(i)=fOH(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C96OH =  + C97O2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C96OH'; 
fC96OH(i)=fC96OH(i)-1; fC97O2(i)=fC97O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NORPINAL + NO3 = C85CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'NORPINAL'; Gstr{i,2} = 'NO3'; 
fNORPINAL(i)=fNORPINAL(i)-1; fNO3(i)=fNO3(i)-1; fC85CO3(i)=fC85CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NORPINAL + OH = C85CO3';
k(:,i) = 2.64e-11;
Gstr{i,1} = 'NORPINAL'; Gstr{i,2} = 'OH'; 
fNORPINAL(i)=fNORPINAL(i)-1; fOH(i)=fOH(i)-1; fC85CO3(i)=fC85CO3(i)+1; 

i=i+1;
Rnames{i} = 'NORPINAL = C85O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'NORPINAL'; 
fNORPINAL(i)=fNORPINAL(i)-1; fC85O2(i)=fC85O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCC7CO + OH = C719O2';
k(:,i) = 1.19e-10;
Gstr{i,1} = 'HCC7CO'; Gstr{i,2} = 'OH'; 
fHCC7CO(i)=fHCC7CO(i)-1; fOH(i)=fOH(i)-1; fC719O2(i)=fC719O2(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + HO2 = C720OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'HO2'; 
fC720O2(i)=fC720O2(i)-1; fHO2(i)=fHO2(i)-1; fC720OOH(i)=fC720OOH(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + NO = C720NO3';
k(:,i) = KRO2NO.*0.278;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'NO'; 
fC720O2(i)=fC720O2(i)-1; fNO(i)=fNO(i)-1; fC720NO3(i)=fC720NO3(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + NO =  + HCC7CO + HO2 + NO2';
k(:,i) = KRO2NO.*0.722;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'NO'; 
fC720O2(i)=fC720O2(i)-1; fNO(i)=fNO(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + NO3 =  + HCC7CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'NO3'; 
fC720O2(i)=fC720O2(i)-1; fNO3(i)=fNO3(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 =  + HCC7CO + HO2';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'RO2';
fC720O2(i)=fC720O2(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 = C720OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'RO2';
fC720O2(i)=fC720O2(i)-1; fC720OH(i)=fC720OH(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 = HCC7CO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'RO2';
fC720O2(i)=fC720O2(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; 

i=i+1;
Rnames{i} = 'NC91CO3 + HO2 = NC91CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'NC91CO3'; Gstr{i,2} = 'HO2'; 
fNC91CO3(i)=fNC91CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC91CO3H(i)=fNC91CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NC91CO3 + HO2 = NOPINONE + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NC91CO3'; Gstr{i,2} = 'HO2'; 
fNC91CO3(i)=fNC91CO3(i)-1; fHO2(i)=fHO2(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC91CO3 + NO = NOPINONE + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NC91CO3'; Gstr{i,2} = 'NO'; 
fNC91CO3(i)=fNC91CO3(i)-1; fNO(i)=fNO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC91CO3 + NO2 = NC91PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'NC91CO3'; Gstr{i,2} = 'NO2'; 
fNC91CO3(i)=fNC91CO3(i)-1; fNO2(i)=fNO2(i)-1; fNC91PAN(i)=fNC91PAN(i)+1; 

i=i+1;
Rnames{i} = 'NC91CO3 + NO3 = NOPINONE + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NC91CO3'; Gstr{i,2} = 'NO3'; 
fNC91CO3(i)=fNC91CO3(i)-1; fNO3(i)=fNO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC91CO3 = NOPINONE + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'NC91CO3'; Gstr{i,2} = 'RO2';
fNC91CO3(i)=fNC91CO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAOOH + OH = C9DC + OH';
k(:,i) = 8.59e-11;
Gstr{i,1} = 'NOPINAOOH'; Gstr{i,2} = 'OH'; 
fNOPINAOOH(i)=fNOPINAOOH(i)-1; fOH(i)=fOH(i)-1; fC9DC(i)=fC9DC(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAOOH =  + C918O2 + C9DC + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NOPINAOOH'; 
fNOPINAOOH(i)=fNOPINAOOH(i)-1; fC918O2(i)=fC918O2(i)+1; fC9DC(i)=fC9DC(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINANO3 + OH = C9DC + NO2';
k(:,i) = 3.24e-12;
Gstr{i,1} = 'NOPINANO3'; Gstr{i,2} = 'OH'; 
fNOPINANO3(i)=fNOPINANO3(i)-1; fOH(i)=fOH(i)-1; fC9DC(i)=fC9DC(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINANO3 =  + C918O2 + C9DC + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NOPINANO3'; 
fNOPINANO3(i)=fNOPINANO3(i)-1; fC918O2(i)=fC918O2(i)+1; fC9DC(i)=fC9DC(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C9DC + OH = C9DCO2';
k(:,i) = 6.07e-12;
Gstr{i,1} = 'C9DC'; Gstr{i,2} = 'OH'; 
fC9DC(i)=fC9DC(i)-1; fOH(i)=fOH(i)-1; fC9DCO2(i)=fC9DCO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINAOH + OH = C9DC + HO2';
k(:,i) = 3.68e-11;
Gstr{i,1} = 'NOPINAOH'; Gstr{i,2} = 'OH'; 
fNOPINAOH(i)=fNOPINAOH(i)-1; fOH(i)=fOH(i)-1; fC9DC(i)=fC9DC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBOOH + OH = NOPINBCO + OH';
k(:,i) = 3.44e-11;
Gstr{i,1} = 'NOPINBOOH'; Gstr{i,2} = 'OH'; 
fNOPINBOOH(i)=fNOPINBOOH(i)-1; fOH(i)=fOH(i)-1; fNOPINBCO(i)=fNOPINBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBOOH =  + C915O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NOPINBOOH'; 
fNOPINBOOH(i)=fNOPINBOOH(i)-1; fC915O2(i)=fC915O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBNO3 + OH = NOPINBCO + NO2';
k(:,i) = 6.05e-12;
Gstr{i,1} = 'NOPINBNO3'; Gstr{i,2} = 'OH'; 
fNOPINBNO3(i)=fNOPINBNO3(i)-1; fOH(i)=fOH(i)-1; fNOPINBCO(i)=fNOPINBCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBNO3 =  + C915O2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NOPINBNO3'; 
fNOPINBNO3(i)=fNOPINBNO3(i)-1; fC915O2(i)=fC915O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBCO + OH = C915O2';
k(:,i) = 1.64e-11;
Gstr{i,1} = 'NOPINBCO'; Gstr{i,2} = 'OH'; 
fNOPINBCO(i)=fNOPINBCO(i)-1; fOH(i)=fOH(i)-1; fC915O2(i)=fC915O2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINBOH + OH = NOPINBCO + HO2';
k(:,i) = 1.81e-11;
Gstr{i,1} = 'NOPINBOH'; Gstr{i,2} = 'OH'; 
fNOPINBOH(i)=fNOPINBOH(i)-1; fOH(i)=fOH(i)-1; fNOPINBCO(i)=fNOPINBCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCOOH + OH = NOPINCO2';
k(:,i) = 1.11e-11;
Gstr{i,1} = 'NOPINCOOH'; Gstr{i,2} = 'OH'; 
fNOPINCOOH(i)=fNOPINCOOH(i)-1; fOH(i)=fOH(i)-1; fNOPINCO2(i)=fNOPINCO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCOOH =  + C917O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NOPINCOOH'; 
fNOPINCOOH(i)=fNOPINCOOH(i)-1; fC917O2(i)=fC917O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCNO3 + OH = CH3COCH3 + C619CO + NO2';
k(:,i) = 6.37e-12;
Gstr{i,1} = 'NOPINCNO3'; Gstr{i,2} = 'OH'; 
fNOPINCNO3(i)=fNOPINCNO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC619CO(i)=fC619CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCNO3 =  + C917O2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'NOPINCNO3'; 
fNOPINCNO3(i)=fNOPINCNO3(i)-1; fC917O2(i)=fC917O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINCOH + OH =  + C917O2';
k(:,i) = 7.69e-12;
Gstr{i,1} = 'NOPINCOH'; Gstr{i,2} = 'OH'; 
fNOPINCOH(i)=fNOPINCOH(i)-1; fOH(i)=fOH(i)-1; fC917O2(i)=fC917O2(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDOOH + OH = NOPINDCO + OH';
k(:,i) = 2.63e-11;
Gstr{i,1} = 'NOPINDOOH'; Gstr{i,2} = 'OH'; 
fNOPINDOOH(i)=fNOPINDOOH(i)-1; fOH(i)=fOH(i)-1; fNOPINDCO(i)=fNOPINDCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDOOH =  + C89CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NOPINDOOH'; 
fNOPINDOOH(i)=fNOPINDOOH(i)-1; fC89CO3(i)=fC89CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDCO + OH = C89CO3';
k(:,i) = 3.07e-12;
Gstr{i,1} = 'NOPINDCO'; Gstr{i,2} = 'OH'; 
fNOPINDCO(i)=fNOPINDCO(i)-1; fOH(i)=fOH(i)-1; fC89CO3(i)=fC89CO3(i)+1; 

i=i+1;
Rnames{i} = 'NOPINDOH + OH = NOPINDCO + HO2';
k(:,i) = 1.41e-11;
Gstr{i,1} = 'NOPINDOH'; Gstr{i,2} = 'OH'; 
fNOPINDOH(i)=fNOPINDOH(i)-1; fOH(i)=fOH(i)-1; fNOPINDCO(i)=fNOPINDCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C8BCO2 + HO2 = C8BCOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C8BCO2'; Gstr{i,2} = 'HO2'; 
fC8BCO2(i)=fC8BCO2(i)-1; fHO2(i)=fHO2(i)-1; fC8BCOOH(i)=fC8BCOOH(i)+1; 

i=i+1;
Rnames{i} = 'C8BCO2 + NO = C8BCNO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C8BCO2'; Gstr{i,2} = 'NO'; 
fC8BCO2(i)=fC8BCO2(i)-1; fNO(i)=fNO(i)-1; fC8BCNO3(i)=fC8BCNO3(i)+1; 

i=i+1;
Rnames{i} = 'C8BCO2 + NO =  + C89O2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C8BCO2'; Gstr{i,2} = 'NO'; 
fC8BCO2(i)=fC8BCO2(i)-1; fNO(i)=fNO(i)-1; fC89O2(i)=fC89O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C8BCO2 + NO3 =  + C89O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C8BCO2'; Gstr{i,2} = 'NO3'; 
fC8BCO2(i)=fC8BCO2(i)-1; fNO3(i)=fNO3(i)-1; fC89O2(i)=fC89O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C8BCO2 = C8BCCO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C8BCO2'; Gstr{i,2} = 'RO2';
fC8BCO2(i)=fC8BCO2(i)-1; fC8BCCO(i)=fC8BCCO(i)+1; 

i=i+1;
Rnames{i} = 'C8BCO2 =  + C89O2';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C8BCO2'; Gstr{i,2} = 'RO2';
fC8BCO2(i)=fC8BCO2(i)-1; fC89O2(i)=fC89O2(i)+1; 

i=i+1;
Rnames{i} = 'C8BCO2 = C8BCOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C8BCO2'; Gstr{i,2} = 'RO2';
fC8BCO2(i)=fC8BCO2(i)-1; fC8BCOH(i)=fC8BCOH(i)+1; 

i=i+1;
Rnames{i} = 'C918CO3 + HO2 = C918CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C918CO3'; Gstr{i,2} = 'HO2'; 
fC918CO3(i)=fC918CO3(i)-1; fHO2(i)=fHO2(i)-1; fC918CO3H(i)=fC918CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C918CO3 + HO2 = NOPINONE + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C918CO3'; Gstr{i,2} = 'HO2'; 
fC918CO3(i)=fC918CO3(i)-1; fHO2(i)=fHO2(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C918CO3 + NO = NOPINONE + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C918CO3'; Gstr{i,2} = 'NO'; 
fC918CO3(i)=fC918CO3(i)-1; fNO(i)=fNO(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918CO3 + NO2 = C918PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C918CO3'; Gstr{i,2} = 'NO2'; 
fC918CO3(i)=fC918CO3(i)-1; fNO2(i)=fNO2(i)-1; fC918PAN(i)=fC918PAN(i)+1; 

i=i+1;
Rnames{i} = 'C918CO3 + NO3 = NOPINONE + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C918CO3'; Gstr{i,2} = 'NO3'; 
fC918CO3(i)=fC918CO3(i)-1; fNO3(i)=fNO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918CO3 = NOPINONE + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C918CO3'; Gstr{i,2} = 'RO2';
fC918CO3(i)=fC918CO3(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAL + NO3 = C923CO3 + HNO3';
k(:,i) = 2.60e-13.*0.092;
Gstr{i,1} = 'LIMAL'; Gstr{i,2} = 'NO3'; 
fLIMAL(i)=fLIMAL(i)-1; fNO3(i)=fNO3(i)-1; fC923CO3(i)=fC923CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMAL + NO3 = NLIMALO2';
k(:,i) = 2.60e-13.*0.988;
Gstr{i,1} = 'LIMAL'; Gstr{i,2} = 'NO3'; 
fLIMAL(i)=fLIMAL(i)-1; fNO3(i)=fNO3(i)-1; fNLIMALO2(i)=fNLIMALO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAL + O3 =  + C926O2 + OH + HCHO';
k(:,i) = 8.30e-18.*0.670;
Gstr{i,1} = 'LIMAL'; Gstr{i,2} = 'O3'; 
fLIMAL(i)=fLIMAL(i)-1; fO3(i)=fO3(i)-1; fC926O2(i)=fC926O2(i)+1; fOH(i)=fOH(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'LIMAL + O3 = LMLKET +  + 0.370CH2OO + 0.500CO + 0.130HO2 + 0.130CO + 0.130OH';
k(:,i) = 8.30e-18.*0.330;
Gstr{i,1} = 'LIMAL'; Gstr{i,2} = 'O3'; 
fLIMAL(i)=fLIMAL(i)-1; fO3(i)=fO3(i)-1; fLMLKET(i)=fLMLKET(i)+1; fCH2OO(i)=fCH2OO(i)+0.370; fCO(i)=fCO(i)+0.500; fHO2(i)=fHO2(i)+0.130; fCO(i)=fCO(i)+0.130; fOH(i)=fOH(i)+0.130; 

i=i+1;
Rnames{i} = 'LIMAL + OH = C923CO3';
k(:,i) = 1.10e-10.*0.288;
Gstr{i,1} = 'LIMAL'; Gstr{i,2} = 'OH'; 
fLIMAL(i)=fLIMAL(i)-1; fOH(i)=fOH(i)-1; fC923CO3(i)=fC923CO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMAL + OH = LIMALO2';
k(:,i) = 1.10e-10.*0.712;
Gstr{i,1} = 'LIMAL'; Gstr{i,2} = 'OH'; 
fLIMAL(i)=fLIMAL(i)-1; fOH(i)=fOH(i)-1; fLIMALO2(i)=fLIMALO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMAL = C923O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'LIMAL'; 
fLIMAL(i)=fLIMAL(i)-1; fC923O2(i)=fC923O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAOOH + OH = LIMALACO + OH';
k(:,i) = 1.06e-10;
Gstr{i,1} = 'LIMALAOOH'; Gstr{i,2} = 'OH'; 
fLIMALAOOH(i)=fLIMALAOOH(i)-1; fOH(i)=fOH(i)-1; fLIMALACO(i)=fLIMALACO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAOOH = C729CHO + OH + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'LIMALAOOH'; 
fLIMALAOOH(i)=fLIMALAOOH(i)-1; fC729CHO(i)=fC729CHO(i)+1; fOH(i)=fOH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAOOH =  + C729CHO + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'LIMALAOOH'; 
fLIMALAOOH(i)=fLIMALAOOH(i)-1; fC729CHO(i)=fC729CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALACO + OH = C729CHO + CH3CO3';
k(:,i) = 8.34e-11;
Gstr{i,1} = 'LIMALACO'; Gstr{i,2} = 'OH'; 
fLIMALACO(i)=fLIMALACO(i)-1; fOH(i)=fOH(i)-1; fC729CHO(i)=fC729CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMALACO = C729CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'LIMALACO'; 
fLIMALACO(i)=fLIMALACO(i)-1; fC729CO3(i)=fC729CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAOH + OH = LIMALACO + HO2';
k(:,i) = 9.34e-11;
Gstr{i,1} = 'LIMALAOH'; Gstr{i,2} = 'OH'; 
fLIMALAOH(i)=fLIMALAOH(i)-1; fOH(i)=fOH(i)-1; fLIMALACO(i)=fLIMALACO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALAOH = C729CHO + HO2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'LIMALAOH'; 
fLIMALAOH(i)=fLIMALAOH(i)-1; fC729CHO(i)=fC729CHO(i)+1; fHO2(i)=fHO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBOOH + OH = LIMALBCO + OH';
k(:,i) = 9.73e-11;
Gstr{i,1} = 'LIMALBOOH'; Gstr{i,2} = 'OH'; 
fLIMALBOOH(i)=fLIMALBOOH(i)-1; fOH(i)=fOH(i)-1; fLIMALBCO(i)=fLIMALBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBOOH = C822CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'LIMALBOOH'; 
fLIMALBOOH(i)=fLIMALBOOH(i)-1; fC822CO3(i)=fC822CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBOOH =  + C822CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'LIMALBOOH'; 
fLIMALBOOH(i)=fLIMALBOOH(i)-1; fC822CO3(i)=fC822CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBCO + OH = C822CO3 + CO';
k(:,i) = 1.01e-10;
Gstr{i,1} = 'LIMALBCO'; Gstr{i,2} = 'OH'; 
fLIMALBCO(i)=fLIMALBCO(i)-1; fOH(i)=fOH(i)-1; fC822CO3(i)=fC822CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBCO = C822CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'LIMALBCO'; 
fLIMALBCO(i)=fLIMALBCO(i)-1; fC822CO3(i)=fC822CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBOH + OH = LIMALBCO + HO2';
k(:,i) = 9.04e-11;
Gstr{i,1} = 'LIMALBOH'; Gstr{i,2} = 'OH'; 
fLIMALBOH(i)=fLIMALBOH(i)-1; fOH(i)=fOH(i)-1; fLIMALBCO(i)=fLIMALBCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALBOH = C822CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'LIMALBOH'; 
fLIMALBOH(i)=fLIMALBOH(i)-1; fC822CO3(i)=fC822CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C923OOH + OH = NORLIMAL + OH';
k(:,i) = 7.39e-11;
Gstr{i,1} = 'C923OOH'; Gstr{i,2} = 'OH'; 
fC923OOH(i)=fC923OOH(i)-1; fOH(i)=fOH(i)-1; fNORLIMAL(i)=fNORLIMAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C923OOH =  + C924O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C923OOH'; 
fC923OOH(i)=fC923OOH(i)-1; fC924O2(i)=fC924O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C923NO3 + OH = NORLIMAL + NO2';
k(:,i) = 5.82e-11;
Gstr{i,1} = 'C923NO3'; Gstr{i,2} = 'OH'; 
fC923NO3(i)=fC923NO3(i)-1; fOH(i)=fOH(i)-1; fNORLIMAL(i)=fNORLIMAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C923NO3 =  + C924O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C923NO3'; 
fC923NO3(i)=fC923NO3(i)-1; fC924O2(i)=fC924O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C923OH + OH = NORLIMAL + HO2';
k(:,i) = 6.91e-11;
Gstr{i,1} = 'C923OH'; Gstr{i,2} = 'OH'; 
fC923OH(i)=fC923OH(i)-1; fOH(i)=fOH(i)-1; fNORLIMAL(i)=fNORLIMAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMAL + OH = C816CO3';
k(:,i) = 8.00e-11.*0.288;
Gstr{i,1} = 'NORLIMAL'; Gstr{i,2} = 'OH'; 
fNORLIMAL(i)=fNORLIMAL(i)-1; fOH(i)=fOH(i)-1; fC816CO3(i)=fC816CO3(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMAL + OH = NORLIMO2';
k(:,i) = 8.00e-11.*0.712;
Gstr{i,1} = 'NORLIMAL'; Gstr{i,2} = 'OH'; 
fNORLIMAL(i)=fNORLIMAL(i)-1; fOH(i)=fOH(i)-1; fNORLIMO2(i)=fNORLIMO2(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMAL = C816O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'NORLIMAL'; 
fNORLIMAL(i)=fNORLIMAL(i)-1; fC816O2(i)=fC816O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMONONIC + OH = C923O2';
k(:,i) = 6.98e-11;
Gstr{i,1} = 'LIMONONIC'; Gstr{i,2} = 'OH'; 
fLIMONONIC(i)=fLIMONONIC(i)-1; fOH(i)=fOH(i)-1; fC923O2(i)=fC923O2(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3 + HO2 = C923CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C923CO3'; Gstr{i,2} = 'HO2'; 
fC923CO3(i)=fC923CO3(i)-1; fHO2(i)=fHO2(i)-1; fC923CO3H(i)=fC923CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3 + HO2 = C923O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C923CO3'; Gstr{i,2} = 'HO2'; 
fC923CO3(i)=fC923CO3(i)-1; fHO2(i)=fHO2(i)-1; fC923O2(i)=fC923O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3 + HO2 = LIMONONIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C923CO3'; Gstr{i,2} = 'HO2'; 
fC923CO3(i)=fC923CO3(i)-1; fHO2(i)=fHO2(i)-1; fLIMONONIC(i)=fLIMONONIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3 + NO = C923O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C923CO3'; Gstr{i,2} = 'NO'; 
fC923CO3(i)=fC923CO3(i)-1; fNO(i)=fNO(i)-1; fC923O2(i)=fC923O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3 + NO2 = C923PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C923CO3'; Gstr{i,2} = 'NO2'; 
fC923CO3(i)=fC923CO3(i)-1; fNO2(i)=fNO2(i)-1; fC923PAN(i)=fC923PAN(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3 + NO3 = C923O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C923CO3'; Gstr{i,2} = 'NO3'; 
fC923CO3(i)=fC923CO3(i)-1; fNO3(i)=fNO3(i)-1; fC923O2(i)=fC923O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3 = C923O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C923CO3'; Gstr{i,2} = 'RO2';
fC923CO3(i)=fC923CO3(i)-1; fC923O2(i)=fC923O2(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3 = LIMONONIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C923CO3'; Gstr{i,2} = 'RO2';
fC923CO3(i)=fC923CO3(i)-1; fLIMONONIC(i)=fLIMONONIC(i)+1; 

i=i+1;
Rnames{i} = 'LIMKET + NO3 = NLMKAO2';
k(:,i) = 9.40e-12;
Gstr{i,1} = 'LIMKET'; Gstr{i,2} = 'NO3'; 
fLIMKET(i)=fLIMKET(i)-1; fNO3(i)=fNO3(i)-1; fNLMKAO2(i)=fNLMKAO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMKET + O3 =  + 0.5LMLKAO2 + 0.5OH + 0.5LMLKBO2 + 0.5OH';
k(:,i) = 1.50e-16.*0.730;
Gstr{i,1} = 'LIMKET'; Gstr{i,2} = 'O3'; 
fLIMKET(i)=fLIMKET(i)-1; fO3(i)=fO3(i)-1; fLMLKAO2(i)=fLMLKAO2(i)+0.5; fOH(i)=fOH(i)+0.5; fLMLKBO2(i)=fLMLKBO2(i)+0.5; fOH(i)=fOH(i)+0.5; 

i=i+1;
Rnames{i} = 'LIMKET + O3 =  + 0.5C817O2 + 0.5CO + 0.5OH + 0.5LMKBOO';
k(:,i) = 1.50e-16.*0.270;
Gstr{i,1} = 'LIMKET'; Gstr{i,2} = 'O3'; 
fLIMKET(i)=fLIMKET(i)-1; fO3(i)=fO3(i)-1; fC817O2(i)=fC817O2(i)+0.5; fCO(i)=fCO(i)+0.5; fOH(i)=fOH(i)+0.5; fLMKBOO(i)=fLMKBOO(i)+0.5; 

i=i+1;
Rnames{i} = 'LIMKET + OH = LMKAO2';
k(:,i) = 9.97e-11.*0.647;
Gstr{i,1} = 'LIMKET'; Gstr{i,2} = 'OH'; 
fLIMKET(i)=fLIMKET(i)-1; fOH(i)=fOH(i)-1; fLMKAO2(i)=fLMKAO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMKET + OH = LMKBO2';
k(:,i) = 9.97e-11.*0.353;
Gstr{i,1} = 'LIMKET'; Gstr{i,2} = 'OH'; 
fLIMKET(i)=fLIMKET(i)-1; fOH(i)=fOH(i)-1; fLMKBO2(i)=fLMKBO2(i)+1; 

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
Rnames{i} = 'NC4OHCO3H + OH = NC4OHCO3';
k(:,i) = 4.50e-12;
Gstr{i,1} = 'NC4OHCO3H'; Gstr{i,2} = 'OH'; 
fNC4OHCO3H(i)=fNC4OHCO3H(i)-1; fOH(i)=fOH(i)-1; fNC4OHCO3(i)=fNC4OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCO3H = IBUTALOH + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC4OHCO3H'; 
fNC4OHCO3H(i)=fNC4OHCO3H(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCPAN + OH = IBUTALOH + CO + NO2 + NO2';
k(:,i) = 1.27e-12;
Gstr{i,1} = 'NC4OHCPAN'; Gstr{i,2} = 'OH'; 
fNC4OHCPAN(i)=fNC4OHCPAN(i)-1; fOH(i)=fOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OHCPAN = NC4OHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'NC4OHCPAN'; 
fNC4OHCPAN(i)=fNC4OHCPAN(i)-1; fNC4OHCO3(i)=fNC4OHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'PROLNO3 + OH = CH3CHOHCHO + NO2';
k(:,i) = 1.71e-12;
Gstr{i,1} = 'PROLNO3'; Gstr{i,2} = 'OH'; 
fPROLNO3(i)=fPROLNO3(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'C4OH2CO3H + OH = C4OH2CO3';
k(:,i) = 1.05e-11;
Gstr{i,1} = 'C4OH2CO3H'; Gstr{i,2} = 'OH'; 
fC4OH2CO3H(i)=fC4OH2CO3H(i)-1; fOH(i)=fOH(i)-1; fC4OH2CO3(i)=fC4OH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CO3H = IBUTALOH + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4OH2CO3H'; 
fC4OH2CO3H(i)=fC4OH2CO3H(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CPAN + OH = IBUTALOH + CO + NO2';
k(:,i) = 7.24e-12;
Gstr{i,1} = 'C4OH2CPAN'; Gstr{i,2} = 'OH'; 
fC4OH2CPAN(i)=fC4OH2CPAN(i)-1; fOH(i)=fOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4OH2CPAN = C4OH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4OH2CPAN'; 
fC4OH2CPAN(i)=fC4OH2CPAN(i)-1; fC4OH2CO3(i)=fC4OH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'HCOCO3 + NO2 = GLYPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO2(i)=fNO2(i)-1; fGLYPAN(i)=fGLYPAN(i)+1; 

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
Rnames{i} = 'CHOPRNO3 = HO2 + CO + CH3CHO + NO2';
k(:,i) = J57;
Gstr{i,1} = 'CHOPRNO3'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 =  + CH3CHO + HO2 + CO + NO2';
k(:,i) = J56;
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
Rnames{i} = 'CO23C3CHO = CH3CO3 + CO + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C3CHO = CH3CO3 + HCOCO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCO3(i)=fHCOCO3(i)+1; 

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
Rnames{i} = 'OH + ALLYLOH = ACR + HO2';
k(:,i) = 2.59e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ALLYLOH'; 
fOH(i)=fOH(i)-1; fALLYLOH(i)=fALLYLOH(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'C524NO3 + OH =  + HMACR + HCHO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C524NO3'; Gstr{i,2} = 'OH'; 
fC524NO3(i)=fC524NO3(i)-1; fOH(i)=fOH(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C524NO3 + OH = NC524O2';
k(:,i) = 2.94e-11;
Gstr{i,1} = 'C524NO3'; Gstr{i,2} = 'OH'; 
fC524NO3(i)=fC524NO3(i)-1; fOH(i)=fOH(i)-1; fNC524O2(i)=fNC524O2(i)+1; 

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
Rnames{i} = 'OH + HC4ACO3H = HC4ACO3';
k(:,i) = 2.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACO3H'; 
fOH(i)=fOH(i)-1; fHC4ACO3H(i)=fHC4ACO3H(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN17 = HC4ACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN17'; 
fC5PAN17(i)=fC5PAN17(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN17 = MACROH + CO + NO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN17'; 
fOH(i)=fOH(i)-1; fC5PAN17(i)=fC5PAN17(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58OOH =  + ACETOL + GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C58OOH'; 
fC58OOH(i)=fC58OOH(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58OOH = C58O2';
k(:,i) = 3.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58OOH'; 
fOH(i)=fOH(i)-1; fC58OOH(i)=fC58OOH(i)-1; fC58O2(i)=fC58O2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3 = HO2 + CO + MACRNO3 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C58NO3'; 
fC58NO3(i)=fC58NO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'IEB1O2 + HO2 = IEB1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'IEB1O2'; Gstr{i,2} = 'HO2'; 
fIEB1O2(i)=fIEB1O2(i)-1; fHO2(i)=fHO2(i)-1; fIEB1OOH(i)=fIEB1OOH(i)+1; 

i=i+1;
Rnames{i} = 'IEB1O2 + NO =  + MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'IEB1O2'; Gstr{i,2} = 'NO'; 
fIEB1O2(i)=fIEB1O2(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1O2 + NO3 =  + MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IEB1O2'; Gstr{i,2} = 'NO3'; 
fIEB1O2(i)=fIEB1O2(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1O2 =  + MGLYOX + HOCH2CHO + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'IEB1O2'; Gstr{i,2} = 'RO2';
fIEB1O2(i)=fIEB1O2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O2 + HO2 = IEB2OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'IEB2O2'; Gstr{i,2} = 'HO2'; 
fIEB2O2(i)=fIEB2O2(i)-1; fHO2(i)=fHO2(i)-1; fIEB2OOH(i)=fIEB2OOH(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O2 + NO =  + GLYOX + ACETOL + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'IEB2O2'; Gstr{i,2} = 'NO'; 
fIEB2O2(i)=fIEB2O2(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O2 + NO3 =  + GLYOX + ACETOL + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IEB2O2'; Gstr{i,2} = 'NO3'; 
fIEB2O2(i)=fIEB2O2(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O2 =  + GLYOX + ACETOL + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'IEB2O2'; Gstr{i,2} = 'RO2';
fIEB2O2(i)=fIEB2O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'CONM2CHO + OH = CONM2CO3';
k(:,i) = 6.78e-12;
Gstr{i,1} = 'CONM2CHO'; Gstr{i,2} = 'OH'; 
fCONM2CHO(i)=fCONM2CHO(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO = MGLYOX + NO2 + CO + HO2';
k(:,i) = J56;
Gstr{i,1} = 'CONM2CHO'; 
fCONM2CHO(i)=fCONM2CHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO = MGLYOX + NO2 + CO + HO2';
k(:,i) = J57.*2;
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
Rnames{i} = 'INB1OOH + OH = INB1CO + OH';
k(:,i) = 1.27e-11.*0.35;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1CO(i)=fINB1CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + OH = INB1HPCHO';
k(:,i) = 1.27e-11.*0.34;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1HPCHO(i)=fINB1HPCHO(i)+1; 

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
k(:,i) = J56;
Gstr{i,1} = 'INB1CO'; 
fINB1CO(i)=fINB1CO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1CO = ACETOL + NO2 + HOCH2CO3';
k(:,i) = J57;
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
Rnames{i} = 'IEC1O2 + HO2 = IEC1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'IEC1O2'; Gstr{i,2} = 'HO2'; 
fIEC1O2(i)=fIEC1O2(i)-1; fHO2(i)=fHO2(i)-1; fIEC1OOH(i)=fIEC1OOH(i)+1; 

i=i+1;
Rnames{i} = 'IEC1O2 + NO =  + BIACETOH + HCHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'IEC1O2'; Gstr{i,2} = 'NO'; 
fIEC1O2(i)=fIEC1O2(i)-1; fNO(i)=fNO(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC1O2 + NO3 =  + BIACETOH + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IEC1O2'; Gstr{i,2} = 'NO3'; 
fIEC1O2(i)=fIEC1O2(i)-1; fNO3(i)=fNO3(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC1O2 =  + BIACETOH + HCHO + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'IEC1O2'; Gstr{i,2} = 'RO2';
fIEC1O2(i)=fIEC1O2(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'OH + HC4CCO3H = HC4CCO3';
k(:,i) = 2.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCO3H'; 
fOH(i)=fOH(i)-1; fHC4CCO3H(i)=fHC4CCO3H(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN19 = HC4CCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN19'; 
fC5PAN19(i)=fC5PAN19(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN19 = HO12CO3C4 + CO + NO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN19'; 
fOH(i)=fOH(i)-1; fC5PAN19(i)=fC5PAN19(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57OOH =  + MGLYOX + HOCH2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C57OOH'; 
fC57OOH(i)=fC57OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C57OOH = C57O2';
k(:,i) = 3.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C57OOH'; 
fOH(i)=fOH(i)-1; fC57OOH(i)=fC57OOH(i)-1; fC57O2(i)=fC57O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C57OH =  + MGLYOX + HOCH2CHO + HO2';
k(:,i) = 3.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C57OH'; 
fOH(i)=fOH(i)-1; fC57OH(i)=fC57OH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CHO + OH = CO2N3CO3';
k(:,i) = 7.20e-12;
Gstr{i,1} = 'CO2N3CHO'; Gstr{i,2} = 'OH'; 
fCO2N3CHO(i)=fCO2N3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CHO = CO + HO2 + MGLYOX + NO2';
k(:,i) = J15;
Gstr{i,1} = 'CO2N3CHO'; 
fCO2N3CHO(i)=fCO2N3CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

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
k(:,i) = 9.70e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C59OOH'; 
fOH(i)=fOH(i)-1; fC59OOH(i)=fC59OOH(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + HO2 = PINALOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'HO2'; 
fPINALO2(i)=fPINALO2(i)-1; fHO2(i)=fHO2(i)-1; fPINALOOH(i)=fPINALOOH(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + NO = PINALNO3';
k(:,i) = KRO2NO.*0.050;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'NO'; 
fPINALO2(i)=fPINALO2(i)-1; fNO(i)=fNO(i)-1; fPINALNO3(i)=fPINALNO3(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + NO =  + C106O2 + NO2';
k(:,i) = KRO2NO.*0.950;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'NO'; 
fPINALO2(i)=fPINALO2(i)-1; fNO(i)=fNO(i)-1; fC106O2(i)=fC106O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + NO3 =  + C106O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'NO3'; 
fPINALO2(i)=fPINALO2(i)-1; fNO3(i)=fNO3(i)-1; fC106O2(i)=fC106O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 =  + C106O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'RO2';
fPINALO2(i)=fPINALO2(i)-1; fC106O2(i)=fC106O2(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 = PINALOH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'RO2';
fPINALO2(i)=fPINALO2(i)-1; fPINALOH(i)=fPINALOH(i)+1; 

i=i+1;
Rnames{i} = 'NC101OOH + OH = NC101O2';
k(:,i) = 5.94e-12;
Gstr{i,1} = 'NC101OOH'; Gstr{i,2} = 'OH'; 
fNC101OOH(i)=fNC101OOH(i)-1; fOH(i)=fOH(i)-1; fNC101O2(i)=fNC101O2(i)+1; 

i=i+1;
Rnames{i} = 'NC101OOH =  + NC102O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC101OOH'; 
fNC101OOH(i)=fNC101OOH(i)-1; fNC102O2(i)=fNC102O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PERPINONIC + OH = C96CO3';
k(:,i) = 9.73e-12;
Gstr{i,1} = 'PERPINONIC'; Gstr{i,2} = 'OH'; 
fPERPINONIC(i)=fPERPINONIC(i)-1; fOH(i)=fOH(i)-1; fC96CO3(i)=fC96CO3(i)+1; 

i=i+1;
Rnames{i} = 'PERPINONIC = C96O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERPINONIC'; 
fPERPINONIC(i)=fPERPINONIC(i)-1; fC96O2(i)=fC96O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PERPINONIC = C96O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'PERPINONIC'; 
fPERPINONIC(i)=fPERPINONIC(i)-1; fC96O2(i)=fC96O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C10PAN2 + OH = NORPINAL + CO + NO2';
k(:,i) = 3.66e-12;
Gstr{i,1} = 'C10PAN2'; Gstr{i,2} = 'OH'; 
fC10PAN2(i)=fC10PAN2(i)-1; fOH(i)=fOH(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C10PAN2 = C96CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C10PAN2'; 
fC10PAN2(i)=fC10PAN2(i)-1; fC96CO3(i)=fC96CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + HO2 = C108OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'HO2'; 
fC108O2(i)=fC108O2(i)-1; fHO2(i)=fHO2(i)-1; fC108OOH(i)=fC108OOH(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + NO = C108NO3';
k(:,i) = KRO2NO.*0.125;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'NO'; 
fC108O2(i)=fC108O2(i)-1; fNO(i)=fNO(i)-1; fC108NO3(i)=fC108NO3(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + NO =  + C717O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO.*0.875;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'NO'; 
fC108O2(i)=fC108O2(i)-1; fNO(i)=fNO(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + NO3 =  + C717O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'NO3'; 
fC108O2(i)=fC108O2(i)-1; fNO3(i)=fNO3(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 =  + C717O2 + CH3COCH3';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'RO2';
fC108O2(i)=fC108O2(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 = C108OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'RO2';
fC108O2(i)=fC108O2(i)-1; fC108OH(i)=fC108OH(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + HO2 =  + 0.80C811CO3 + 0.20C89O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'HO2'; 
fC89CO3(i)=fC89CO3(i)-1; fHO2(i)=fHO2(i)-1; fC811CO3(i)=fC811CO3(i)+0.80; fC89O2(i)=fC89O2(i)+0.20; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + HO2 = C89CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'HO2'; 
fC89CO3(i)=fC89CO3(i)-1; fHO2(i)=fHO2(i)-1; fC89CO2H(i)=fC89CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + HO2 = C89CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'HO2'; 
fC89CO3(i)=fC89CO3(i)-1; fHO2(i)=fHO2(i)-1; fC89CO3H(i)=fC89CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + NO =  + 0.80C811CO3 + 0.20C89O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'NO'; 
fC89CO3(i)=fC89CO3(i)-1; fNO(i)=fNO(i)-1; fC811CO3(i)=fC811CO3(i)+0.80; fC89O2(i)=fC89O2(i)+0.20; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + NO2 = C89PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'NO2'; 
fC89CO3(i)=fC89CO3(i)-1; fNO2(i)=fNO2(i)-1; fC89PAN(i)=fC89PAN(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + NO3 =  + 0.80C811CO3 + 0.20C89O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'NO3'; 
fC89CO3(i)=fC89CO3(i)-1; fNO3(i)=fNO3(i)-1; fC811CO3(i)=fC811CO3(i)+0.80; fC89O2(i)=fC89O2(i)+0.20; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 =  + 0.80C811CO3 + 0.20C89O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'RO2';
fC89CO3(i)=fC89CO3(i)-1; fC811CO3(i)=fC811CO3(i)+0.80; fC89O2(i)=fC89O2(i)+0.20; 

i=i+1;
Rnames{i} = 'C89CO3 = C89CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'RO2';
fC89CO3(i)=fC89CO3(i)-1; fC89CO2H(i)=fC89CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + HO2 = C920CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'HO2'; 
fC920CO3(i)=fC920CO3(i)-1; fHO2(i)=fHO2(i)-1; fC920CO3H(i)=fC920CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + HO2 = C920O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'HO2'; 
fC920CO3(i)=fC920CO3(i)-1; fHO2(i)=fHO2(i)-1; fC920O2(i)=fC920O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + HO2 = HOPINONIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'HO2'; 
fC920CO3(i)=fC920CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOPINONIC(i)=fHOPINONIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + NO = C920O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'NO'; 
fC920CO3(i)=fC920CO3(i)-1; fNO(i)=fNO(i)-1; fC920O2(i)=fC920O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + NO2 = C920PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'NO2'; 
fC920CO3(i)=fC920CO3(i)-1; fNO2(i)=fNO2(i)-1; fC920PAN(i)=fC920PAN(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + NO3 = C920O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'NO3'; 
fC920CO3(i)=fC920CO3(i)-1; fNO3(i)=fNO3(i)-1; fC920O2(i)=fC920O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 = C920O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'RO2';
fC920CO3(i)=fC920CO3(i)-1; fC920O2(i)=fC920O2(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 = HOPINONIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'RO2';
fC920CO3(i)=fC920CO3(i)-1; fHOPINONIC(i)=fHOPINONIC(i)+1; 

i=i+1;
Rnames{i} = 'C920O2 + HO2 = C920OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C920O2'; Gstr{i,2} = 'HO2'; 
fC920O2(i)=fC920O2(i)-1; fHO2(i)=fHO2(i)-1; fC920OOH(i)=fC920OOH(i)+1; 

i=i+1;
Rnames{i} = 'C920O2 + NO =  + C921O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C920O2'; Gstr{i,2} = 'NO'; 
fC920O2(i)=fC920O2(i)-1; fNO(i)=fNO(i)-1; fC921O2(i)=fC921O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920O2 + NO3 =  + C921O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C920O2'; Gstr{i,2} = 'NO3'; 
fC920O2(i)=fC920O2(i)-1; fNO3(i)=fNO3(i)-1; fC921O2(i)=fC921O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920O2 =  + C921O2';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'C920O2'; Gstr{i,2} = 'RO2';
fC920O2(i)=fC920O2(i)-1; fC921O2(i)=fC921O2(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 + HO2 = C97OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'HO2'; 
fC97O2(i)=fC97O2(i)-1; fHO2(i)=fHO2(i)-1; fC97OOH(i)=fC97OOH(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 + NO =  + C98O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'NO'; 
fC97O2(i)=fC97O2(i)-1; fNO(i)=fNO(i)-1; fC98O2(i)=fC98O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 + NO3 =  + C98O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'NO3'; 
fC97O2(i)=fC97O2(i)-1; fNO3(i)=fNO3(i)-1; fC98O2(i)=fC98O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 =  + C98O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'RO2';
fC97O2(i)=fC97O2(i)-1; fC98O2(i)=fC98O2(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 = C97OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'RO2';
fC97O2(i)=fC97O2(i)-1; fC97OH(i)=fC97OH(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + HO2 = C85CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'HO2'; 
fC85CO3(i)=fC85CO3(i)-1; fHO2(i)=fHO2(i)-1; fC85CO3H(i)=fC85CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + HO2 = C85O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'HO2'; 
fC85CO3(i)=fC85CO3(i)-1; fHO2(i)=fHO2(i)-1; fC85O2(i)=fC85O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + NO = C85O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'NO'; 
fC85CO3(i)=fC85CO3(i)-1; fNO(i)=fNO(i)-1; fC85O2(i)=fC85O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + NO2 = C9PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'NO2'; 
fC85CO3(i)=fC85CO3(i)-1; fNO2(i)=fNO2(i)-1; fC9PAN2(i)=fC9PAN2(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + NO3 = C85O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'NO3'; 
fC85CO3(i)=fC85CO3(i)-1; fNO3(i)=fNO3(i)-1; fC85O2(i)=fC85O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 = C85O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'RO2';
fC85CO3(i)=fC85CO3(i)-1; fC85O2(i)=fC85O2(i)+1; 

i=i+1;
Rnames{i} = 'C85O2 + HO2 = C85OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C85O2'; Gstr{i,2} = 'HO2'; 
fC85O2(i)=fC85O2(i)-1; fHO2(i)=fHO2(i)-1; fC85OOH(i)=fC85OOH(i)+1; 

i=i+1;
Rnames{i} = 'C85O2 + NO =  + C86O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C85O2'; Gstr{i,2} = 'NO'; 
fC85O2(i)=fC85O2(i)-1; fNO(i)=fNO(i)-1; fC86O2(i)=fC86O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85O2 + NO3 =  + C86O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C85O2'; Gstr{i,2} = 'NO3'; 
fC85O2(i)=fC85O2(i)-1; fNO3(i)=fNO3(i)-1; fC86O2(i)=fC86O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85O2 =  + C86O2';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C85O2'; Gstr{i,2} = 'RO2';
fC85O2(i)=fC85O2(i)-1; fC86O2(i)=fC86O2(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + HO2 = C719OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'HO2'; 
fC719O2(i)=fC719O2(i)-1; fHO2(i)=fHO2(i)-1; fC719OOH(i)=fC719OOH(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + NO = C719NO3';
k(:,i) = KRO2NO.*0.042;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'NO'; 
fC719O2(i)=fC719O2(i)-1; fNO(i)=fNO(i)-1; fC719NO3(i)=fC719NO3(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + NO =  + C716OH + HO2 + NO2';
k(:,i) = KRO2NO.*0.958;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'NO'; 
fC719O2(i)=fC719O2(i)-1; fNO(i)=fNO(i)-1; fC716OH(i)=fC716OH(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + NO3 =  + C716OH + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'NO3'; 
fC719O2(i)=fC719O2(i)-1; fNO3(i)=fNO3(i)-1; fC716OH(i)=fC716OH(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 =  + C716OH + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'RO2';
fC719O2(i)=fC719O2(i)-1; fC716OH(i)=fC716OH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 = C719OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'RO2';
fC719O2(i)=fC719O2(i)-1; fC719OH(i)=fC719OH(i)+1; 

i=i+1;
Rnames{i} = 'C720OOH + OH = HCC7CO + OH';
k(:,i) = 1.27e-10;
Gstr{i,1} = 'C720OOH'; Gstr{i,2} = 'OH'; 
fC720OOH(i)=fC720OOH(i)-1; fOH(i)=fOH(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C720OOH =  + HCC7CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C720OOH'; 
fC720OOH(i)=fC720OOH(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C720NO3 + OH = HCC7CO + NO2';
k(:,i) = 9.60e-11;
Gstr{i,1} = 'C720NO3'; Gstr{i,2} = 'OH'; 
fC720NO3(i)=fC720NO3(i)-1; fOH(i)=fOH(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C720NO3 =  + HCC7CO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C720NO3'; 
fC720NO3(i)=fC720NO3(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C720OH + OH = HCC7CO + HO2';
k(:,i) = 1.09e-10;
Gstr{i,1} = 'C720OH'; Gstr{i,2} = 'OH'; 
fC720OH(i)=fC720OH(i)-1; fOH(i)=fOH(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC91CO3H + OH = NC91CO3';
k(:,i) = 8.85e-12;
Gstr{i,1} = 'NC91CO3H'; Gstr{i,2} = 'OH'; 
fNC91CO3H(i)=fNC91CO3H(i)-1; fOH(i)=fOH(i)-1; fNC91CO3(i)=fNC91CO3(i)+1; 

i=i+1;
Rnames{i} = 'NC91CO3H = NOPINONE + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC91CO3H'; 
fNC91CO3H(i)=fNC91CO3H(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC91PAN + OH = NOPINONE + CO + NO2 + NO2';
k(:,i) = 4.90e-12;
Gstr{i,1} = 'NC91PAN'; Gstr{i,2} = 'OH'; 
fNC91PAN(i)=fNC91PAN(i)-1; fOH(i)=fOH(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC91PAN = NC91CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'NC91PAN'; 
fNC91PAN(i)=fNC91PAN(i)-1; fNC91CO3(i)=fNC91CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918O2 + HO2 = C918OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C918O2'; Gstr{i,2} = 'HO2'; 
fC918O2(i)=fC918O2(i)-1; fHO2(i)=fHO2(i)-1; fC918OOH(i)=fC918OOH(i)+1; 

i=i+1;
Rnames{i} = 'C918O2 + NO = C918NO3';
k(:,i) = KRO2NO.*0.047;
Gstr{i,1} = 'C918O2'; Gstr{i,2} = 'NO'; 
fC918O2(i)=fC918O2(i)-1; fNO(i)=fNO(i)-1; fC918NO3(i)=fC918NO3(i)+1; 

i=i+1;
Rnames{i} = 'C918O2 + NO =  + C919O2 + NO2';
k(:,i) = KRO2NO.*0.953;
Gstr{i,1} = 'C918O2'; Gstr{i,2} = 'NO'; 
fC918O2(i)=fC918O2(i)-1; fNO(i)=fNO(i)-1; fC919O2(i)=fC919O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918O2 + NO3 =  + C919O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C918O2'; Gstr{i,2} = 'NO3'; 
fC918O2(i)=fC918O2(i)-1; fNO3(i)=fNO3(i)-1; fC919O2(i)=fC919O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918O2 =  + C919O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C918O2'; Gstr{i,2} = 'RO2';
fC918O2(i)=fC918O2(i)-1; fC919O2(i)=fC919O2(i)+1; 

i=i+1;
Rnames{i} = 'C918O2 = C918OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C918O2'; Gstr{i,2} = 'RO2';
fC918O2(i)=fC918O2(i)-1; fC918OH(i)=fC918OH(i)+1; 

i=i+1;
Rnames{i} = 'C9DCO2 + HO2 = C9DCOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C9DCO2'; Gstr{i,2} = 'HO2'; 
fC9DCO2(i)=fC9DCO2(i)-1; fHO2(i)=fHO2(i)-1; fC9DCOOH(i)=fC9DCOOH(i)+1; 

i=i+1;
Rnames{i} = 'C9DCO2 + NO = C9DCNO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'C9DCO2'; Gstr{i,2} = 'NO'; 
fC9DCO2(i)=fC9DCO2(i)-1; fNO(i)=fNO(i)-1; fC9DCNO3(i)=fC9DCNO3(i)+1; 

i=i+1;
Rnames{i} = 'C9DCO2 + NO =  + C914O2 + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'C9DCO2'; Gstr{i,2} = 'NO'; 
fC9DCO2(i)=fC9DCO2(i)-1; fNO(i)=fNO(i)-1; fC914O2(i)=fC914O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C9DCO2 + NO3 =  + C914O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C9DCO2'; Gstr{i,2} = 'NO3'; 
fC9DCO2(i)=fC9DCO2(i)-1; fNO3(i)=fNO3(i)-1; fC914O2(i)=fC914O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C9DCO2 = C9DCCO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C9DCO2'; Gstr{i,2} = 'RO2';
fC9DCO2(i)=fC9DCO2(i)-1; fC9DCCO(i)=fC9DCCO(i)+1; 

i=i+1;
Rnames{i} = 'C9DCO2 =  + C914O2';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C9DCO2'; Gstr{i,2} = 'RO2';
fC9DCO2(i)=fC9DCO2(i)-1; fC914O2(i)=fC914O2(i)+1; 

i=i+1;
Rnames{i} = 'C9DCO2 = C9DCOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C9DCO2'; Gstr{i,2} = 'RO2';
fC9DCO2(i)=fC9DCO2(i)-1; fC9DCOH(i)=fC9DCOH(i)+1; 

i=i+1;
Rnames{i} = 'C915O2 + HO2 = C915OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C915O2'; Gstr{i,2} = 'HO2'; 
fC915O2(i)=fC915O2(i)-1; fHO2(i)=fHO2(i)-1; fC915OOH(i)=fC915OOH(i)+1; 

i=i+1;
Rnames{i} = 'C915O2 + NO = C915NO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'C915O2'; Gstr{i,2} = 'NO'; 
fC915O2(i)=fC915O2(i)-1; fNO(i)=fNO(i)-1; fC915NO3(i)=fC915NO3(i)+1; 

i=i+1;
Rnames{i} = 'C915O2 + NO =  + C88CHO + HO2 + C916O2 + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'C915O2'; Gstr{i,2} = 'NO'; 
fC915O2(i)=fC915O2(i)-1; fNO(i)=fNO(i)-1; fC88CHO(i)=fC88CHO(i)+1; fHO2(i)=fHO2(i)+1; fC916O2(i)=fC916O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C915O2 + NO3 =  + C88CHO + HO2 + C916O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C915O2'; Gstr{i,2} = 'NO3'; 
fC915O2(i)=fC915O2(i)-1; fNO3(i)=fNO3(i)-1; fC88CHO(i)=fC88CHO(i)+1; fHO2(i)=fHO2(i)+1; fC916O2(i)=fC916O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C915O2 = C88CHO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C915O2'; Gstr{i,2} = 'RO2';
fC915O2(i)=fC915O2(i)-1; fC88CHO(i)=fC88CHO(i)+1; 

i=i+1;
Rnames{i} = 'C915O2 =  + C88CHO + HO2 + C916O2';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C915O2'; Gstr{i,2} = 'RO2';
fC915O2(i)=fC915O2(i)-1; fC88CHO(i)=fC88CHO(i)+1; fHO2(i)=fHO2(i)+1; fC916O2(i)=fC916O2(i)+1; 

i=i+1;
Rnames{i} = 'C915O2 = C915OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C915O2'; Gstr{i,2} = 'RO2';
fC915O2(i)=fC915O2(i)-1; fC915OH(i)=fC915OH(i)+1; 

i=i+1;
Rnames{i} = 'C619CO + OH = C512CO3';
k(:,i) = 5.99e-12;
Gstr{i,1} = 'C619CO'; Gstr{i,2} = 'OH'; 
fC619CO(i)=fC619CO(i)-1; fOH(i)=fOH(i)-1; fC512CO3(i)=fC512CO3(i)+1; 

i=i+1;
Rnames{i} = 'C917O2 + HO2 = C917OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C917O2'; Gstr{i,2} = 'HO2'; 
fC917O2(i)=fC917O2(i)-1; fHO2(i)=fHO2(i)-1; fC917OOH(i)=fC917OOH(i)+1; 

i=i+1;
Rnames{i} = 'C917O2 + NO = C917NO3';
k(:,i) = KRO2NO.*0.118;
Gstr{i,1} = 'C917O2'; Gstr{i,2} = 'NO'; 
fC917O2(i)=fC917O2(i)-1; fNO(i)=fNO(i)-1; fC917NO3(i)=fC917NO3(i)+1; 

i=i+1;
Rnames{i} = 'C917O2 + NO =  + C619O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO.*0.882;
Gstr{i,1} = 'C917O2'; Gstr{i,2} = 'NO'; 
fC917O2(i)=fC917O2(i)-1; fNO(i)=fNO(i)-1; fC619O2(i)=fC619O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C917O2 + NO3 =  + C619O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C917O2'; Gstr{i,2} = 'NO3'; 
fC917O2(i)=fC917O2(i)-1; fNO3(i)=fNO3(i)-1; fC619O2(i)=fC619O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C917O2 =  + C619O2 + CH3COCH3';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C917O2'; Gstr{i,2} = 'RO2';
fC917O2(i)=fC917O2(i)-1; fC619O2(i)=fC619O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C917O2 = C917OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C917O2'; Gstr{i,2} = 'RO2';
fC917O2(i)=fC917O2(i)-1; fC917OH(i)=fC917OH(i)+1; 

i=i+1;
Rnames{i} = 'C8BCOOH + OH = C8BCCO + OH';
k(:,i) = 1.62e-11;
Gstr{i,1} = 'C8BCOOH'; Gstr{i,2} = 'OH'; 
fC8BCOOH(i)=fC8BCOOH(i)-1; fOH(i)=fOH(i)-1; fC8BCCO(i)=fC8BCCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C8BCOOH =  + C89O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C8BCOOH'; 
fC8BCOOH(i)=fC8BCOOH(i)-1; fC89O2(i)=fC89O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C8BCNO3 + OH = C8BCCO + NO2';
k(:,i) = 1.84e-12;
Gstr{i,1} = 'C8BCNO3'; Gstr{i,2} = 'OH'; 
fC8BCNO3(i)=fC8BCNO3(i)-1; fOH(i)=fOH(i)-1; fC8BCCO(i)=fC8BCCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C8BCNO3 =  + C89O2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C8BCNO3'; 
fC8BCNO3(i)=fC8BCNO3(i)-1; fC89O2(i)=fC89O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C8BCCO + OH = C89O2';
k(:,i) = 3.94e-12;
Gstr{i,1} = 'C8BCCO'; Gstr{i,2} = 'OH'; 
fC8BCCO(i)=fC8BCCO(i)-1; fOH(i)=fOH(i)-1; fC89O2(i)=fC89O2(i)+1; 

i=i+1;
Rnames{i} = 'C8BCOH + OH = C8BCCO + HO2';
k(:,i) = 6.81e-12;
Gstr{i,1} = 'C8BCOH'; Gstr{i,2} = 'OH'; 
fC8BCOH(i)=fC8BCOH(i)-1; fOH(i)=fOH(i)-1; fC8BCCO(i)=fC8BCCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C918CO3H + OH = C918CO3';
k(:,i) = 1.46e-11;
Gstr{i,1} = 'C918CO3H'; Gstr{i,2} = 'OH'; 
fC918CO3H(i)=fC918CO3H(i)-1; fOH(i)=fOH(i)-1; fC918CO3(i)=fC918CO3(i)+1; 

i=i+1;
Rnames{i} = 'C918CO3H = NOPINONE + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C918CO3H'; 
fC918CO3H(i)=fC918CO3H(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C918PAN + OH = NOPINONE + CO + NO2';
k(:,i) = 5.71e-12;
Gstr{i,1} = 'C918PAN'; Gstr{i,2} = 'OH'; 
fC918PAN(i)=fC918PAN(i)-1; fOH(i)=fOH(i)-1; fNOPINONE(i)=fNOPINONE(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918PAN = C918CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C918PAN'; 
fC918PAN(i)=fC918PAN(i)-1; fC918CO3(i)=fC918CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLIMALO2 + HO2 = NLIMALOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NLIMALO2'; Gstr{i,2} = 'HO2'; 
fNLIMALO2(i)=fNLIMALO2(i)-1; fHO2(i)=fHO2(i)-1; fNLIMALOOH(i)=fNLIMALOOH(i)+1; 

i=i+1;
Rnames{i} = 'NLIMALO2 + NO =  + LMLKET + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NLIMALO2'; Gstr{i,2} = 'NO'; 
fNLIMALO2(i)=fNLIMALO2(i)-1; fNO(i)=fNO(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLIMALO2 + NO3 =  + LMLKET + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NLIMALO2'; Gstr{i,2} = 'NO3'; 
fNLIMALO2(i)=fNLIMALO2(i)-1; fNO3(i)=fNO3(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLIMALO2 =  + LMLKET + HCHO + NO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'NLIMALO2'; Gstr{i,2} = 'RO2';
fNLIMALO2(i)=fNLIMALO2(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLIMALO2 = NLIMALOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'NLIMALO2'; Gstr{i,2} = 'RO2';
fNLIMALO2(i)=fNLIMALO2(i)-1; fNLIMALOH(i)=fNLIMALOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKET + NO3 = C817CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'LMLKET'; Gstr{i,2} = 'NO3'; 
fLMLKET(i)=fLMLKET(i)-1; fNO3(i)=fNO3(i)-1; fC817CO3(i)=fC817CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'LMLKET + OH = C817CO3';
k(:,i) = 3.60e-11.*0.748;
Gstr{i,1} = 'LMLKET'; Gstr{i,2} = 'OH'; 
fLMLKET(i)=fLMLKET(i)-1; fOH(i)=fOH(i)-1; fC817CO3(i)=fC817CO3(i)+1; 

i=i+1;
Rnames{i} = 'LMLKET + OH = C926O2';
k(:,i) = 3.60e-11.*0.252;
Gstr{i,1} = 'LMLKET'; Gstr{i,2} = 'OH'; 
fLMLKET(i)=fLMLKET(i)-1; fOH(i)=fOH(i)-1; fC926O2(i)=fC926O2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKET = C817O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'LMLKET'; 
fLMLKET(i)=fLMLKET(i)-1; fC817O2(i)=fC817O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALO2 + HO2 = LIMALOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LIMALO2'; Gstr{i,2} = 'HO2'; 
fLIMALO2(i)=fLIMALO2(i)-1; fHO2(i)=fHO2(i)-1; fLIMALOOH(i)=fLIMALOOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALO2 + NO = LIMALNO3';
k(:,i) = KRO2NO.*0.059;
Gstr{i,1} = 'LIMALO2'; Gstr{i,2} = 'NO'; 
fLIMALO2(i)=fLIMALO2(i)-1; fNO(i)=fNO(i)-1; fLIMALNO3(i)=fLIMALNO3(i)+1; 

i=i+1;
Rnames{i} = 'LIMALO2 + NO =  + LMLKET + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.941;
Gstr{i,1} = 'LIMALO2'; Gstr{i,2} = 'NO'; 
fLIMALO2(i)=fLIMALO2(i)-1; fNO(i)=fNO(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALO2 + NO3 =  + LMLKET + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LIMALO2'; Gstr{i,2} = 'NO3'; 
fLIMALO2(i)=fLIMALO2(i)-1; fNO3(i)=fNO3(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALO2 =  + LMLKET + HCHO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'LIMALO2'; Gstr{i,2} = 'RO2';
fLIMALO2(i)=fLIMALO2(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALO2 = LIMALOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'LIMALO2'; Gstr{i,2} = 'RO2';
fLIMALO2(i)=fLIMALO2(i)-1; fLIMALOH(i)=fLIMALOH(i)+1; 

i=i+1;
Rnames{i} = 'C729CHO + NO3 = C729CO3 + HNO3';
k(:,i) = KNO3AL.*17.0;
Gstr{i,1} = 'C729CHO'; Gstr{i,2} = 'NO3'; 
fC729CHO(i)=fC729CHO(i)-1; fNO3(i)=fNO3(i)-1; fC729CO3(i)=fC729CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C729CHO + NO3 = NC826O2';
k(:,i) = 3.30e-13;
Gstr{i,1} = 'C729CHO'; Gstr{i,2} = 'NO3'; 
fC729CHO(i)=fC729CHO(i)-1; fNO3(i)=fNO3(i)-1; fNC826O2(i)=fNC826O2(i)+1; 

i=i+1;
Rnames{i} = 'C729CHO + O3 = C626CHO +  + 0.370CH2OO + 0.500CO + 0.130HO2 + 0.130CO + 0.130OH';
k(:,i) = 1.30e-17.*0.330;
Gstr{i,1} = 'C729CHO'; Gstr{i,2} = 'O3'; 
fC729CHO(i)=fC729CHO(i)-1; fO3(i)=fO3(i)-1; fC626CHO(i)=fC626CHO(i)+1; fCH2OO(i)=fCH2OO(i)+0.370; fCO(i)=fCO(i)+0.500; fHO2(i)=fHO2(i)+0.130; fCO(i)=fCO(i)+0.130; fOH(i)=fOH(i)+0.130; 

i=i+1;
Rnames{i} = 'C729CHO + O3 =  + C735O2 + OH + HCHO';
k(:,i) = 1.30e-17.*0.670;
Gstr{i,1} = 'C729CHO'; Gstr{i,2} = 'O3'; 
fC729CHO(i)=fC729CHO(i)-1; fO3(i)=fO3(i)-1; fC735O2(i)=fC735O2(i)+1; fOH(i)=fOH(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C729CHO + OH = C729CO3';
k(:,i) = 1.06e-10.*0.447;
Gstr{i,1} = 'C729CHO'; Gstr{i,2} = 'OH'; 
fC729CHO(i)=fC729CHO(i)-1; fOH(i)=fOH(i)-1; fC729CO3(i)=fC729CO3(i)+1; 

i=i+1;
Rnames{i} = 'C729CHO + OH = C826O2';
k(:,i) = 1.06e-10.*0.553;
Gstr{i,1} = 'C729CHO'; Gstr{i,2} = 'OH'; 
fC729CHO(i)=fC729CHO(i)-1; fOH(i)=fOH(i)-1; fC826O2(i)=fC826O2(i)+1; 

i=i+1;
Rnames{i} = 'C729CHO = C729O2 + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C729CHO'; 
fC729CHO(i)=fC729CHO(i)-1; fC729O2(i)=fC729O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3 + HO2 = C729CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C729CO3'; Gstr{i,2} = 'HO2'; 
fC729CO3(i)=fC729CO3(i)-1; fHO2(i)=fHO2(i)-1; fC729CO2H(i)=fC729CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3 + HO2 = C729CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C729CO3'; Gstr{i,2} = 'HO2'; 
fC729CO3(i)=fC729CO3(i)-1; fHO2(i)=fHO2(i)-1; fC729CO3H(i)=fC729CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3 + HO2 = C729O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C729CO3'; Gstr{i,2} = 'HO2'; 
fC729CO3(i)=fC729CO3(i)-1; fHO2(i)=fHO2(i)-1; fC729O2(i)=fC729O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3 + NO = C729O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C729CO3'; Gstr{i,2} = 'NO'; 
fC729CO3(i)=fC729CO3(i)-1; fNO(i)=fNO(i)-1; fC729O2(i)=fC729O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3 + NO2 = C729PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C729CO3'; Gstr{i,2} = 'NO2'; 
fC729CO3(i)=fC729CO3(i)-1; fNO2(i)=fNO2(i)-1; fC729PAN(i)=fC729PAN(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3 + NO3 = C729O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C729CO3'; Gstr{i,2} = 'NO3'; 
fC729CO3(i)=fC729CO3(i)-1; fNO3(i)=fNO3(i)-1; fC729O2(i)=fC729O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3 = C729CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C729CO3'; Gstr{i,2} = 'RO2';
fC729CO3(i)=fC729CO3(i)-1; fC729CO2H(i)=fC729CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3 = C729O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C729CO3'; Gstr{i,2} = 'RO2';
fC729CO3(i)=fC729CO3(i)-1; fC729O2(i)=fC729O2(i)+1; 

i=i+1;
Rnames{i} = 'C822CO3 + HO2 =  + 0.2C822O2 + 0.8C823CO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C822CO3'; Gstr{i,2} = 'HO2'; 
fC822CO3(i)=fC822CO3(i)-1; fHO2(i)=fHO2(i)-1; fC822O2(i)=fC822O2(i)+0.2; fC823CO3(i)=fC823CO3(i)+0.8; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C822CO3 + HO2 = C822CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C822CO3'; Gstr{i,2} = 'HO2'; 
fC822CO3(i)=fC822CO3(i)-1; fHO2(i)=fHO2(i)-1; fC822CO2H(i)=fC822CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C822CO3 + HO2 = C822CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C822CO3'; Gstr{i,2} = 'HO2'; 
fC822CO3(i)=fC822CO3(i)-1; fHO2(i)=fHO2(i)-1; fC822CO3H(i)=fC822CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C822CO3 + NO =  + 0.2C822O2 + 0.8C823CO3 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C822CO3'; Gstr{i,2} = 'NO'; 
fC822CO3(i)=fC822CO3(i)-1; fNO(i)=fNO(i)-1; fC822O2(i)=fC822O2(i)+0.2; fC823CO3(i)=fC823CO3(i)+0.8; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C822CO3 + NO2 = C822PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C822CO3'; Gstr{i,2} = 'NO2'; 
fC822CO3(i)=fC822CO3(i)-1; fNO2(i)=fNO2(i)-1; fC822PAN(i)=fC822PAN(i)+1; 

i=i+1;
Rnames{i} = 'C822CO3 + NO3 =  + 0.2C822O2 + 0.8C823CO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C822CO3'; Gstr{i,2} = 'NO3'; 
fC822CO3(i)=fC822CO3(i)-1; fNO3(i)=fNO3(i)-1; fC822O2(i)=fC822O2(i)+0.2; fC823CO3(i)=fC823CO3(i)+0.8; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C822CO3 =  + 0.2C822O2 + 0.8C823CO3';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C822CO3'; Gstr{i,2} = 'RO2';
fC822CO3(i)=fC822CO3(i)-1; fC822O2(i)=fC822O2(i)+0.2; fC823CO3(i)=fC823CO3(i)+0.8; 

i=i+1;
Rnames{i} = 'C822CO3 = C822CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C822CO3'; Gstr{i,2} = 'RO2';
fC822CO3(i)=fC822CO3(i)-1; fC822CO2H(i)=fC822CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C924O2 + HO2 = C924OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C924O2'; Gstr{i,2} = 'HO2'; 
fC924O2(i)=fC924O2(i)-1; fHO2(i)=fHO2(i)-1; fC924OOH(i)=fC924OOH(i)+1; 

i=i+1;
Rnames{i} = 'C924O2 + NO =  + CH3CO3 + C622CHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C924O2'; Gstr{i,2} = 'NO'; 
fC924O2(i)=fC924O2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC622CHO(i)=fC622CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C924O2 + NO3 =  + CH3CO3 + C622CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C924O2'; Gstr{i,2} = 'NO3'; 
fC924O2(i)=fC924O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC622CHO(i)=fC622CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C924O2 = C924CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C924O2'; Gstr{i,2} = 'RO2';
fC924O2(i)=fC924O2(i)-1; fC924CO(i)=fC924CO(i)+1; 

i=i+1;
Rnames{i} = 'C924O2 =  + CH3CO3 + C622CHO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C924O2'; Gstr{i,2} = 'RO2';
fC924O2(i)=fC924O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC622CHO(i)=fC622CHO(i)+1; 

i=i+1;
Rnames{i} = 'C924O2 = C924OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C924O2'; Gstr{i,2} = 'RO2';
fC924O2(i)=fC924O2(i)-1; fC924OH(i)=fC924OH(i)+1; 

i=i+1;
Rnames{i} = 'C816CO3 + HO2 = C816CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C816CO3'; Gstr{i,2} = 'HO2'; 
fC816CO3(i)=fC816CO3(i)-1; fHO2(i)=fHO2(i)-1; fC816CO3H(i)=fC816CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C816CO3 + HO2 = C816O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C816CO3'; Gstr{i,2} = 'HO2'; 
fC816CO3(i)=fC816CO3(i)-1; fHO2(i)=fHO2(i)-1; fC816O2(i)=fC816O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C816CO3 + NO = C816O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C816CO3'; Gstr{i,2} = 'NO'; 
fC816CO3(i)=fC816CO3(i)-1; fNO(i)=fNO(i)-1; fC816O2(i)=fC816O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C816CO3 + NO2 = C816PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C816CO3'; Gstr{i,2} = 'NO2'; 
fC816CO3(i)=fC816CO3(i)-1; fNO2(i)=fNO2(i)-1; fC816PAN(i)=fC816PAN(i)+1; 

i=i+1;
Rnames{i} = 'C816CO3 + NO3 = C816O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C816CO3'; Gstr{i,2} = 'NO3'; 
fC816CO3(i)=fC816CO3(i)-1; fNO3(i)=fNO3(i)-1; fC816O2(i)=fC816O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C816CO3 = C816O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C816CO3'; Gstr{i,2} = 'RO2';
fC816CO3(i)=fC816CO3(i)-1; fC816O2(i)=fC816O2(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMO2 + HO2 = NORLIMOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'NORLIMO2'; Gstr{i,2} = 'HO2'; 
fNORLIMO2(i)=fNORLIMO2(i)-1; fHO2(i)=fHO2(i)-1; fNORLIMOOH(i)=fNORLIMOOH(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMO2 + NO =  + C817CO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NORLIMO2'; Gstr{i,2} = 'NO'; 
fNORLIMO2(i)=fNORLIMO2(i)-1; fNO(i)=fNO(i)-1; fC817CO(i)=fC817CO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMO2 + NO3 =  + C817CO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NORLIMO2'; Gstr{i,2} = 'NO3'; 
fNORLIMO2(i)=fNORLIMO2(i)-1; fNO3(i)=fNO3(i)-1; fC817CO(i)=fC817CO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMO2 =  + C817CO + HCHO + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NORLIMO2'; Gstr{i,2} = 'RO2';
fNORLIMO2(i)=fNORLIMO2(i)-1; fC817CO(i)=fC817CO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C816O2 + HO2 = C816OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C816O2'; Gstr{i,2} = 'HO2'; 
fC816O2(i)=fC816O2(i)-1; fHO2(i)=fHO2(i)-1; fC816OOH(i)=fC816OOH(i)+1; 

i=i+1;
Rnames{i} = 'C816O2 + NO =  + C816CO + HO2 + MACR + MEKAO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C816O2'; Gstr{i,2} = 'NO'; 
fC816O2(i)=fC816O2(i)-1; fNO(i)=fNO(i)-1; fC816CO(i)=fC816CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C816O2 + NO3 =  + C816CO + HO2 + MACR + MEKAO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C816O2'; Gstr{i,2} = 'NO3'; 
fC816O2(i)=fC816O2(i)-1; fNO3(i)=fNO3(i)-1; fC816CO(i)=fC816CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C816O2 =  + C816CO + HO2 + MACR + MEKAO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'C816O2'; Gstr{i,2} = 'RO2';
fC816O2(i)=fC816O2(i)-1; fC816CO(i)=fC816CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3H + OH = C923CO3';
k(:,i) = 7.29e-11;
Gstr{i,1} = 'C923CO3H'; Gstr{i,2} = 'OH'; 
fC923CO3H(i)=fC923CO3H(i)-1; fOH(i)=fOH(i)-1; fC923CO3(i)=fC923CO3(i)+1; 

i=i+1;
Rnames{i} = 'C923CO3H = C923O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C923CO3H'; 
fC923CO3H(i)=fC923CO3H(i)-1; fC923O2(i)=fC923O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C923PAN + OH = NORLIMAL + CO + NO2';
k(:,i) = 6.93e-11;
Gstr{i,1} = 'C923PAN'; Gstr{i,2} = 'OH'; 
fC923PAN(i)=fC923PAN(i)-1; fOH(i)=fOH(i)-1; fNORLIMAL(i)=fNORLIMAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C923PAN = C923CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C923PAN'; 
fC923PAN(i)=fC923PAN(i)-1; fC923CO3(i)=fC923CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLMKAO2 + HO2 = NLMKAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NLMKAO2'; Gstr{i,2} = 'HO2'; 
fNLMKAO2(i)=fNLMKAO2(i)-1; fHO2(i)=fHO2(i)-1; fNLMKAOOH(i)=fNLMKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NLMKAO2 + NO =  + LMLKET + NO2 + NO2';
k(:,i) = KRO2NO.*0.760;
Gstr{i,1} = 'NLMKAO2'; Gstr{i,2} = 'NO'; 
fNLMKAO2(i)=fNLMKAO2(i)-1; fNO(i)=fNO(i)-1; fLMLKET(i)=fLMLKET(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLMKAO2 + NO3 =  + LMLKET + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NLMKAO2'; Gstr{i,2} = 'NO3'; 
fNLMKAO2(i)=fNLMKAO2(i)-1; fNO3(i)=fNO3(i)-1; fLMLKET(i)=fLMLKET(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NLMKAO2 = LMKBNO3';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'NLMKAO2'; Gstr{i,2} = 'RO2';
fNLMKAO2(i)=fNLMKAO2(i)-1; fLMKBNO3(i)=fLMKBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NLMKAO2 =  + LMLKET + NO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'NLMKAO2'; Gstr{i,2} = 'RO2';
fNLMKAO2(i)=fNLMKAO2(i)-1; fLMLKET(i)=fLMLKET(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKAO2 + HO2 = LMKAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LMKAO2'; Gstr{i,2} = 'HO2'; 
fLMKAO2(i)=fLMKAO2(i)-1; fHO2(i)=fHO2(i)-1; fLMKAOOH(i)=fLMKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKAO2 + NO = LMKANO3';
k(:,i) = KRO2NO.*0.240;
Gstr{i,1} = 'LMKAO2'; Gstr{i,2} = 'NO'; 
fLMKAO2(i)=fLMKAO2(i)-1; fNO(i)=fNO(i)-1; fLMKANO3(i)=fLMKANO3(i)+1; 

i=i+1;
Rnames{i} = 'LMKAO2 + NO =  + LMLKET + HO2 + NO2';
k(:,i) = KRO2NO.*0.760;
Gstr{i,1} = 'LMKAO2'; Gstr{i,2} = 'NO'; 
fLMKAO2(i)=fLMKAO2(i)-1; fNO(i)=fNO(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKAO2 + NO3 =  + LMLKET + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LMKAO2'; Gstr{i,2} = 'NO3'; 
fLMKAO2(i)=fLMKAO2(i)-1; fNO3(i)=fNO3(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKAO2 =  + LMLKET + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'LMKAO2'; Gstr{i,2} = 'RO2';
fLMKAO2(i)=fLMKAO2(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKAO2 = LMKAOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'LMKAO2'; Gstr{i,2} = 'RO2';
fLMKAO2(i)=fLMKAO2(i)-1; fLMKAOH(i)=fLMKAOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKBO2 + HO2 = LMKBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LMKBO2'; Gstr{i,2} = 'HO2'; 
fLMKBO2(i)=fLMKBO2(i)-1; fHO2(i)=fHO2(i)-1; fLMKBOOH(i)=fLMKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKBO2 + NO = LMKBNO3';
k(:,i) = KRO2NO.*0.240;
Gstr{i,1} = 'LMKBO2'; Gstr{i,2} = 'NO'; 
fLMKBO2(i)=fLMKBO2(i)-1; fNO(i)=fNO(i)-1; fLMKBNO3(i)=fLMKBNO3(i)+1; 

i=i+1;
Rnames{i} = 'LMKBO2 + NO =  + LMLKET + HO2 + NO2';
k(:,i) = KRO2NO.*0.760;
Gstr{i,1} = 'LMKBO2'; Gstr{i,2} = 'NO'; 
fLMKBO2(i)=fLMKBO2(i)-1; fNO(i)=fNO(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKBO2 + NO3 =  + LMLKET + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LMKBO2'; Gstr{i,2} = 'NO3'; 
fLMKBO2(i)=fLMKBO2(i)-1; fNO3(i)=fNO3(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKBO2 = LMKAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'LMKBO2'; Gstr{i,2} = 'RO2';
fLMKBO2(i)=fLMKBO2(i)-1; fLMKAOH(i)=fLMKAOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKBO2 = LMKBCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'LMKBO2'; Gstr{i,2} = 'RO2';
fLMKBO2(i)=fLMKBO2(i)-1; fLMKBCO(i)=fLMKBCO(i)+1; 

i=i+1;
Rnames{i} = 'LMKBO2 =  + LMLKET + HO2';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'LMKBO2'; Gstr{i,2} = 'RO2';
fLMKBO2(i)=fLMKBO2(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'INCNCHO = MACRNB + CO + NO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'INCNCHO'; 
fINCNCHO(i)=fINCNCHO(i)-1; fMACRNB(i)=fMACRNB(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'GLYPAN = HCOCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'GLYPAN'; 
fGLYPAN(i)=fGLYPAN(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYPAN = CO + CO + NO2';
k(:,i) = 1.22e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYPAN'; 
fOH(i)=fOH(i)-1; fGLYPAN(i)=fGLYPAN(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

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
k(:,i) = 1.22e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACO3H'; 
fOH(i)=fOH(i)-1; fACO3H(i)=fACO3H(i)-1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'ACRPAN = ACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'ACRPAN'; 
fACRPAN(i)=fACRPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACRPAN = HOCH2CHO + CO + NO2';
k(:,i) = 8.63e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACRPAN'; 
fOH(i)=fOH(i)-1; fACRPAN(i)=fACRPAN(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'ACR + OH = ACO3B';
k(:,i) = 0.255.*2.00E-11;
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'OH'; 
fACR(i)=fACR(i)-1; fOH(i)=fOH(i)-1; fACO3B(i)=fACO3B(i)+1; 

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
k(:,i) = J17;
Gstr{i,1} = 'INANCHO'; 
fINANCHO(i)=fINANCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCHO = INANCO3';
k(:,i) = 4.22e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCHO'; 
fOH(i)=fOH(i)-1; fINANCHO(i)=fINANCHO(i)-1; fINANCO3(i)=fINANCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCO = ACETOL + NO2 + NO3CH2CO3';
k(:,i) = J56;
Gstr{i,1} = 'INANCO'; 
fINANCO(i)=fINANCO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCO = ACETOL + NO2 + NO3CH2CO3';
k(:,i) = J57;
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
Rnames{i} = 'IEB1OOH = HO12CO3C4 + OH + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'IEB1OOH'; 
fIEB1OOH(i)=fIEB1OOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1OOH =  + MGLYOX + HOCH2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IEB1OOH'; 
fIEB1OOH(i)=fIEB1OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEB1OOH = HO12CO3C4 + OH + CO';
k(:,i) = 3.90e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEB1OOH'; 
fOH(i)=fOH(i)-1; fIEB1OOH(i)=fIEB1OOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'IEB2OOH =  + GLYOX + ACETOL + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IEB2OOH'; 
fIEB2OOH(i)=fIEB2OOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IEB2OOH = MACROH + OH + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'IEB2OOH'; 
fIEB2OOH(i)=fIEB2OOH(i)-1; fMACROH(i)=fMACROH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEB2OOH = MACROH + OH + CO';
k(:,i) = 5.34e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEB2OOH'; 
fOH(i)=fOH(i)-1; fIEB2OOH(i)=fIEB2OOH(i)-1; fMACROH(i)=fMACROH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

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
Rnames{i} = 'INB1HPCHO = MACRNO3 + OH + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'INB1HPCHO'; 
fINB1HPCHO(i)=fINB1HPCHO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1HPCHO = INB1HPCO3';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1HPCHO'; 
fOH(i)=fOH(i)-1; fINB1HPCHO(i)=fINB1HPCHO(i)-1; fINB1HPCO3(i)=fINB1HPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACHO = MACRNO3 + NO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'INB1NACHO'; 
fINB1NACHO(i)=fINB1NACHO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1NACHO = INB1NACO3';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1NACHO'; 
fOH(i)=fOH(i)-1; fINB1NACHO(i)=fINB1NACHO(i)-1; fINB1NACO3(i)=fINB1NACO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCHO = MVKNO3 + NO2 + CO + HO2';
k(:,i) = J17;
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
Rnames{i} = 'C57NO3 = HO2 + CO + HO12CO3C4 + NO2';
k(:,i) = J17;
Gstr{i,1} = 'C57NO3'; 
fC57NO3(i)=fC57NO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC1OOH = ACETOL + OH + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'IEC1OOH'; 
fIEC1OOH(i)=fIEC1OOH(i)-1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'IEC1OOH =  + BIACETOH + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IEC1OOH'; 
fIEC1OOH(i)=fIEC1OOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEC1OOH = IEC1O2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEC1OOH'; 
fOH(i)=fOH(i)-1; fIEC1OOH(i)=fIEC1OOH(i)-1; fIEC1O2(i)=fIEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEC1OOH = IEC2OOH + HO2';
k(:,i) = 1.57e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEC1OOH'; 
fOH(i)=fOH(i)-1; fIEC1OOH(i)=fIEC1OOH(i)-1; fIEC2OOH(i)=fIEC2OOH(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'INDHPCHO + OH = INDHPCO3';
k(:,i) = 2.58e-11;
Gstr{i,1} = 'INDHPCHO'; Gstr{i,2} = 'OH'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fOH(i)=fOH(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCHO = CO + HO2 + MVKNO3 + OH';
k(:,i) = J17;
Gstr{i,1} = 'INDHPCHO'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCHO = CO + HO2 + MVKNO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INDHPCHO'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHCHO + OH = INDHCO3';
k(:,i) = 2.27e-11;
Gstr{i,1} = 'INDHCHO'; Gstr{i,2} = 'OH'; 
fINDHCHO(i)=fINDHCHO(i)-1; fOH(i)=fOH(i)-1; fINDHCO3(i)=fINDHCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHCHO = CO + HO2 + MVKNO3 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'INDHCHO'; 
fINDHCHO(i)=fINDHCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALOOH + OH = PINALO2';
k(:,i) = 2.75e-11;
Gstr{i,1} = 'PINALOOH'; Gstr{i,2} = 'OH'; 
fPINALOOH(i)=fPINALOOH(i)-1; fOH(i)=fOH(i)-1; fPINALO2(i)=fPINALO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALOOH =  + C106O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PINALOOH'; 
fPINALOOH(i)=fPINALOOH(i)-1; fC106O2(i)=fC106O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PINALOOH =  + C106O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'PINALOOH'; 
fPINALOOH(i)=fPINALOOH(i)-1; fC106O2(i)=fC106O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PINALNO3 + OH = CO235C6CHO + CH3COCH3 + NO2';
k(:,i) = 2.25e-11;
Gstr{i,1} = 'PINALNO3'; Gstr{i,2} = 'OH'; 
fPINALNO3(i)=fPINALNO3(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALNO3 =  + C106O2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'PINALNO3'; 
fPINALNO3(i)=fPINALNO3(i)-1; fC106O2(i)=fC106O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALNO3 =  + C106O2 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'PINALNO3'; 
fPINALNO3(i)=fPINALNO3(i)-1; fC106O2(i)=fC106O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALOH + OH =  + C106O2';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'PINALOH'; Gstr{i,2} = 'OH'; 
fPINALOH(i)=fPINALOH(i)-1; fOH(i)=fOH(i)-1; fC106O2(i)=fC106O2(i)+1; 

i=i+1;
Rnames{i} = 'PINALOH =  + C106O2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'PINALOH'; 
fPINALOH(i)=fPINALOH(i)-1; fC106O2(i)=fC106O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC102O2 + HO2 = NC102OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NC102O2'; Gstr{i,2} = 'HO2'; 
fNC102O2(i)=fNC102O2(i)-1; fHO2(i)=fHO2(i)-1; fNC102OOH(i)=fNC102OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC102O2 + NO =  + NC71O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC102O2'; Gstr{i,2} = 'NO'; 
fNC102O2(i)=fNC102O2(i)-1; fNO(i)=fNO(i)-1; fNC71O2(i)=fNC71O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC102O2 + NO3 =  + NC71O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC102O2'; Gstr{i,2} = 'NO3'; 
fNC102O2(i)=fNC102O2(i)-1; fNO3(i)=fNO3(i)-1; fNC71O2(i)=fNC71O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC102O2 =  + NC71O2 + CH3COCH3';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'NC102O2'; Gstr{i,2} = 'RO2';
fNC102O2(i)=fNC102O2(i)-1; fNC71O2(i)=fNC71O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C108OOH + OH = C108O2';
k(:,i) = 6.28e-11;
Gstr{i,1} = 'C108OOH'; Gstr{i,2} = 'OH'; 
fC108OOH(i)=fC108OOH(i)-1; fOH(i)=fOH(i)-1; fC108O2(i)=fC108O2(i)+1; 

i=i+1;
Rnames{i} = 'C108OOH =  + C717O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C108OOH'; 
fC108OOH(i)=fC108OOH(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C108OOH =  + C717O2 + CH3COCH3 + OH';
k(:,i) = J35;
Gstr{i,1} = 'C108OOH'; 
fC108OOH(i)=fC108OOH(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C108NO3 + OH = CO235C6CHO + CH3COCH3 + NO2';
k(:,i) = 2.85e-11;
Gstr{i,1} = 'C108NO3'; Gstr{i,2} = 'OH'; 
fC108NO3(i)=fC108NO3(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108NO3 =  + C717O2 + CH3COCH3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C108NO3'; 
fC108NO3(i)=fC108NO3(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108NO3 =  + C717O2 + CH3COCH3 + NO2';
k(:,i) = J35;
Gstr{i,1} = 'C108NO3'; 
fC108NO3(i)=fC108NO3(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108OH + OH =  + C717O2 + CH3COCH3';
k(:,i) = 5.93e-11;
Gstr{i,1} = 'C108OH'; Gstr{i,2} = 'OH'; 
fC108OH(i)=fC108OH(i)-1; fOH(i)=fOH(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C108OH =  + C717O2 + CH3COCH3 + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C108OH'; 
fC108OH(i)=fC108OH(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO2H + OH =  + 0.80C811CO3 + 0.20C89O2';
k(:,i) = 2.69e-11;
Gstr{i,1} = 'C89CO2H'; Gstr{i,2} = 'OH'; 
fC89CO2H(i)=fC89CO2H(i)-1; fOH(i)=fOH(i)-1; fC811CO3(i)=fC811CO3(i)+0.80; fC89O2(i)=fC89O2(i)+0.20; 

i=i+1;
Rnames{i} = 'C89CO2H =  + 0.80C811CO3 + 0.20C89O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C89CO2H'; 
fC89CO2H(i)=fC89CO2H(i)-1; fC811CO3(i)=fC811CO3(i)+0.80; fC89O2(i)=fC89O2(i)+0.20; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3H + OH = C89CO3';
k(:,i) = 3.00e-11;
Gstr{i,1} = 'C89CO3H'; Gstr{i,2} = 'OH'; 
fC89CO3H(i)=fC89CO3H(i)-1; fOH(i)=fOH(i)-1; fC89CO3(i)=fC89CO3(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3H =  + 0.80C811CO3 + 0.20C89O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C89CO3H'; 
fC89CO3H(i)=fC89CO3H(i)-1; fC811CO3(i)=fC811CO3(i)+0.80; fC89O2(i)=fC89O2(i)+0.20; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3H =  + 0.80C811CO3 + 0.20C89O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C89CO3H'; 
fC89CO3H(i)=fC89CO3H(i)-1; fC811CO3(i)=fC811CO3(i)+0.80; fC89O2(i)=fC89O2(i)+0.20; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89PAN + OH = CH3COCH3 + CO13C4CHO + CO + NO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'C89PAN'; Gstr{i,2} = 'OH'; 
fC89PAN(i)=fC89PAN(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89PAN = C89CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C89PAN'; 
fC89PAN(i)=fC89PAN(i)-1; fC89CO3(i)=fC89CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3H + OH = C920CO3';
k(:,i) = 9.16e-12;
Gstr{i,1} = 'C920CO3H'; Gstr{i,2} = 'OH'; 
fC920CO3H(i)=fC920CO3H(i)-1; fOH(i)=fOH(i)-1; fC920CO3(i)=fC920CO3(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3H = C920O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C920CO3H'; 
fC920CO3H(i)=fC920CO3H(i)-1; fC920O2(i)=fC920O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3H = C920O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C920CO3H'; 
fC920CO3H(i)=fC920CO3H(i)-1; fC920O2(i)=fC920O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOPINONIC + OH = C920O2';
k(:,i) = 5.70e-12;
Gstr{i,1} = 'HOPINONIC'; Gstr{i,2} = 'OH'; 
fHOPINONIC(i)=fHOPINONIC(i)-1; fOH(i)=fOH(i)-1; fC920O2(i)=fC920O2(i)+1; 

i=i+1;
Rnames{i} = 'HOPINONIC = C920O2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HOPINONIC'; 
fHOPINONIC(i)=fHOPINONIC(i)-1; fC920O2(i)=fC920O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C920PAN + OH = C109OH + CO + NO2';
k(:,i) = 5.56e-12;
Gstr{i,1} = 'C920PAN'; Gstr{i,2} = 'OH'; 
fC920PAN(i)=fC920PAN(i)-1; fOH(i)=fOH(i)-1; fC109OH(i)=fC109OH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920PAN = C920CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C920PAN'; 
fC920PAN(i)=fC920PAN(i)-1; fC920CO3(i)=fC920CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920OOH + OH = C920O2';
k(:,i) = 2.36e-11;
Gstr{i,1} = 'C920OOH'; Gstr{i,2} = 'OH'; 
fC920OOH(i)=fC920OOH(i)-1; fOH(i)=fOH(i)-1; fC920O2(i)=fC920O2(i)+1; 

i=i+1;
Rnames{i} = 'C920OOH =  + C921O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C920OOH'; 
fC920OOH(i)=fC920OOH(i)-1; fC921O2(i)=fC921O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C920OOH =  + C921O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C920OOH'; 
fC920OOH(i)=fC920OOH(i)-1; fC921O2(i)=fC921O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C97OOH + OH = C97O2';
k(:,i) = 1.05e-11;
Gstr{i,1} = 'C97OOH'; Gstr{i,2} = 'OH'; 
fC97OOH(i)=fC97OOH(i)-1; fOH(i)=fOH(i)-1; fC97O2(i)=fC97O2(i)+1; 

i=i+1;
Rnames{i} = 'C97OOH =  + C98O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C97OOH'; 
fC97OOH(i)=fC97OOH(i)-1; fC98O2(i)=fC98O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C97OOH =  + C98O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C97OOH'; 
fC97OOH(i)=fC97OOH(i)-1; fC98O2(i)=fC98O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C97OH + OH =  + C98O2';
k(:,i) = 7.20e-12;
Gstr{i,1} = 'C97OH'; Gstr{i,2} = 'OH'; 
fC97OH(i)=fC97OH(i)-1; fOH(i)=fOH(i)-1; fC98O2(i)=fC98O2(i)+1; 

i=i+1;
Rnames{i} = 'C97OH =  + C98O2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C97OH'; 
fC97OH(i)=fC97OH(i)-1; fC98O2(i)=fC98O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3H + OH = C85CO3';
k(:,i) = 1.02e-11;
Gstr{i,1} = 'C85CO3H'; Gstr{i,2} = 'OH'; 
fC85CO3H(i)=fC85CO3H(i)-1; fOH(i)=fOH(i)-1; fC85CO3(i)=fC85CO3(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3H = C85O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C85CO3H'; 
fC85CO3H(i)=fC85CO3H(i)-1; fC85O2(i)=fC85O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3H = C85O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C85CO3H'; 
fC85CO3H(i)=fC85CO3H(i)-1; fC85O2(i)=fC85O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C9PAN2 + OH = C85OOH + CO + NO2';
k(:,i) = 6.60e-12;
Gstr{i,1} = 'C9PAN2'; Gstr{i,2} = 'OH'; 
fC9PAN2(i)=fC9PAN2(i)-1; fOH(i)=fOH(i)-1; fC85OOH(i)=fC85OOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C9PAN2 = C85CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C9PAN2'; 
fC9PAN2(i)=fC9PAN2(i)-1; fC85CO3(i)=fC85CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85OOH + OH = C85O2';
k(:,i) = 1.29e-11;
Gstr{i,1} = 'C85OOH'; Gstr{i,2} = 'OH'; 
fC85OOH(i)=fC85OOH(i)-1; fOH(i)=fOH(i)-1; fC85O2(i)=fC85O2(i)+1; 

i=i+1;
Rnames{i} = 'C85OOH =  + C86O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C85OOH'; 
fC85OOH(i)=fC85OOH(i)-1; fC86O2(i)=fC86O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C85OOH =  + C86O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C85OOH'; 
fC85OOH(i)=fC85OOH(i)-1; fC86O2(i)=fC86O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C719OOH + OH = C719O2';
k(:,i) = 7.06e-11;
Gstr{i,1} = 'C719OOH'; Gstr{i,2} = 'OH'; 
fC719OOH(i)=fC719OOH(i)-1; fOH(i)=fOH(i)-1; fC719O2(i)=fC719O2(i)+1; 

i=i+1;
Rnames{i} = 'C719OOH =  + C716OH + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C719OOH'; 
fC719OOH(i)=fC719OOH(i)-1; fC716OH(i)=fC716OH(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C719NO3 + OH = C716OH + NO2';
k(:,i) = 1.26e-11;
Gstr{i,1} = 'C719NO3'; Gstr{i,2} = 'OH'; 
fC719NO3(i)=fC719NO3(i)-1; fOH(i)=fOH(i)-1; fC716OH(i)=fC716OH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C719OH + OH =  + C716OH + HO2';
k(:,i) = 6.72e-11;
Gstr{i,1} = 'C719OH'; Gstr{i,2} = 'OH'; 
fC719OH(i)=fC719OH(i)-1; fOH(i)=fOH(i)-1; fC716OH(i)=fC716OH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C918OOH + OH = C918O2';
k(:,i) = 7.91e-11;
Gstr{i,1} = 'C918OOH'; Gstr{i,2} = 'OH'; 
fC918OOH(i)=fC918OOH(i)-1; fOH(i)=fOH(i)-1; fC918O2(i)=fC918O2(i)+1; 

i=i+1;
Rnames{i} = 'C918OOH =  + C919O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C918OOH'; 
fC918OOH(i)=fC918OOH(i)-1; fC919O2(i)=fC919O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C918OOH =  + C919O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C918OOH'; 
fC918OOH(i)=fC918OOH(i)-1; fC919O2(i)=fC919O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C918NO3 + OH = HCOCH2CHO + HCOCH2CHO + CH3COCH3 + NO2';
k(:,i) = 6.79e-11;
Gstr{i,1} = 'C918NO3'; Gstr{i,2} = 'OH'; 
fC918NO3(i)=fC918NO3(i)-1; fOH(i)=fOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918NO3 =  + C919O2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C918NO3'; 
fC918NO3(i)=fC918NO3(i)-1; fC919O2(i)=fC919O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918NO3 =  + C919O2 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C918NO3'; 
fC918NO3(i)=fC918NO3(i)-1; fC919O2(i)=fC919O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C918OH + OH =  + C919O2';
k(:,i) = 7.16e-11;
Gstr{i,1} = 'C918OH'; Gstr{i,2} = 'OH'; 
fC918OH(i)=fC918OH(i)-1; fOH(i)=fOH(i)-1; fC919O2(i)=fC919O2(i)+1; 

i=i+1;
Rnames{i} = 'C918OH =  + C919O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C918OH'; 
fC918OH(i)=fC918OH(i)-1; fC919O2(i)=fC919O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C9DCOOH + OH = C9DCCO + OH';
k(:,i) = 7.50e-11;
Gstr{i,1} = 'C9DCOOH'; Gstr{i,2} = 'OH'; 
fC9DCOOH(i)=fC9DCOOH(i)-1; fOH(i)=fOH(i)-1; fC9DCCO(i)=fC9DCCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C9DCOOH =  + C914O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C9DCOOH'; 
fC9DCOOH(i)=fC9DCOOH(i)-1; fC914O2(i)=fC914O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C9DCNO3 + OH = C9DCCO + NO2';
k(:,i) = 1.58e-12;
Gstr{i,1} = 'C9DCNO3'; Gstr{i,2} = 'OH'; 
fC9DCNO3(i)=fC9DCNO3(i)-1; fOH(i)=fOH(i)-1; fC9DCCO(i)=fC9DCCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C9DCNO3 =  + C914O2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C9DCNO3'; 
fC9DCNO3(i)=fC9DCNO3(i)-1; fC914O2(i)=fC914O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C9DCCO + OH = C914O2';
k(:,i) = 1.32e-12;
Gstr{i,1} = 'C9DCCO'; Gstr{i,2} = 'OH'; 
fC9DCCO(i)=fC9DCCO(i)-1; fOH(i)=fOH(i)-1; fC914O2(i)=fC914O2(i)+1; 

i=i+1;
Rnames{i} = 'C9DCOH + OH = C9DCCO + HO2';
k(:,i) = 3.11e-11;
Gstr{i,1} = 'C9DCOH'; Gstr{i,2} = 'OH'; 
fC9DCOH(i)=fC9DCOH(i)-1; fOH(i)=fOH(i)-1; fC9DCCO(i)=fC9DCCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C915OOH + OH = C88CHO + OH';
k(:,i) = 1.01e-10;
Gstr{i,1} = 'C915OOH'; Gstr{i,2} = 'OH'; 
fC915OOH(i)=fC915OOH(i)-1; fOH(i)=fOH(i)-1; fC88CHO(i)=fC88CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C915OOH =  + C88CHO + HO2 + C916O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C915OOH'; 
fC915OOH(i)=fC915OOH(i)-1; fC88CHO(i)=fC88CHO(i)+1; fHO2(i)=fHO2(i)+1; fC916O2(i)=fC916O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C915OOH =  + C88CHO + HO2 + C916O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C915OOH'; 
fC915OOH(i)=fC915OOH(i)-1; fC88CHO(i)=fC88CHO(i)+1; fHO2(i)=fHO2(i)+1; fC916O2(i)=fC916O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C915NO3 + OH = C88CHO + NO2';
k(:,i) = 6.96e-11;
Gstr{i,1} = 'C915NO3'; Gstr{i,2} = 'OH'; 
fC915NO3(i)=fC915NO3(i)-1; fOH(i)=fOH(i)-1; fC88CHO(i)=fC88CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C915NO3 =  + C88CHO + HO2 + C916O2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C915NO3'; 
fC915NO3(i)=fC915NO3(i)-1; fC88CHO(i)=fC88CHO(i)+1; fHO2(i)=fHO2(i)+1; fC916O2(i)=fC916O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C915NO3 =  + C88CHO + HO2 + C916O2 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C915NO3'; 
fC915NO3(i)=fC915NO3(i)-1; fC88CHO(i)=fC88CHO(i)+1; fHO2(i)=fHO2(i)+1; fC916O2(i)=fC916O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C88CHO + NO3 = C88CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C88CHO'; Gstr{i,2} = 'NO3'; 
fC88CHO(i)=fC88CHO(i)-1; fNO3(i)=fNO3(i)-1; fC88CO3(i)=fC88CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C88CHO + OH = C88CO3';
k(:,i) = 7.30e-11;
Gstr{i,1} = 'C88CHO'; Gstr{i,2} = 'OH'; 
fC88CHO(i)=fC88CHO(i)-1; fOH(i)=fOH(i)-1; fC88CO3(i)=fC88CO3(i)+1; 

i=i+1;
Rnames{i} = 'C88CHO = C88O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C88CHO'; 
fC88CHO(i)=fC88CHO(i)-1; fC88O2(i)=fC88O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C915OH + OH = C88CHO + HO2';
k(:,i) = 8.33e-11;
Gstr{i,1} = 'C915OH'; Gstr{i,2} = 'OH'; 
fC915OH(i)=fC915OH(i)-1; fOH(i)=fOH(i)-1; fC88CHO(i)=fC88CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3 + HO2 = C512CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C512CO3'; Gstr{i,2} = 'HO2'; 
fC512CO3(i)=fC512CO3(i)-1; fHO2(i)=fHO2(i)-1; fC512CO2H(i)=fC512CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3 + HO2 = C512CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C512CO3'; Gstr{i,2} = 'HO2'; 
fC512CO3(i)=fC512CO3(i)-1; fHO2(i)=fHO2(i)-1; fC512CO3H(i)=fC512CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3 + HO2 = C512O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C512CO3'; Gstr{i,2} = 'HO2'; 
fC512CO3(i)=fC512CO3(i)-1; fHO2(i)=fHO2(i)-1; fC512O2(i)=fC512O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3 + NO = C512O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C512CO3'; Gstr{i,2} = 'NO'; 
fC512CO3(i)=fC512CO3(i)-1; fNO(i)=fNO(i)-1; fC512O2(i)=fC512O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3 + NO2 = C512PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C512CO3'; Gstr{i,2} = 'NO2'; 
fC512CO3(i)=fC512CO3(i)-1; fNO2(i)=fNO2(i)-1; fC512PAN(i)=fC512PAN(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3 + NO3 = C512O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C512CO3'; Gstr{i,2} = 'NO3'; 
fC512CO3(i)=fC512CO3(i)-1; fNO3(i)=fNO3(i)-1; fC512O2(i)=fC512O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3 = C512CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C512CO3'; Gstr{i,2} = 'RO2';
fC512CO3(i)=fC512CO3(i)-1; fC512CO2H(i)=fC512CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3 = C512O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C512CO3'; Gstr{i,2} = 'RO2';
fC512CO3(i)=fC512CO3(i)-1; fC512O2(i)=fC512O2(i)+1; 

i=i+1;
Rnames{i} = 'C917OOH + OH = C917O2';
k(:,i) = 1.91e-11;
Gstr{i,1} = 'C917OOH'; Gstr{i,2} = 'OH'; 
fC917OOH(i)=fC917OOH(i)-1; fOH(i)=fOH(i)-1; fC917O2(i)=fC917O2(i)+1; 

i=i+1;
Rnames{i} = 'C917OOH =  + C619O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C917OOH'; 
fC917OOH(i)=fC917OOH(i)-1; fC619O2(i)=fC619O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C917NO3 + OH = CH3COCH3 + C619CO + NO2';
k(:,i) = 9.97e-12;
Gstr{i,1} = 'C917NO3'; Gstr{i,2} = 'OH'; 
fC917NO3(i)=fC917NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC619CO(i)=fC619CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C917NO3 =  + C619O2 + CH3COCH3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C917NO3'; 
fC917NO3(i)=fC917NO3(i)-1; fC619O2(i)=fC619O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C917OH + OH =  + C619O2 + CH3COCH3';
k(:,i) = 1.56e-11;
Gstr{i,1} = 'C917OH'; Gstr{i,2} = 'OH'; 
fC917OH(i)=fC917OH(i)-1; fOH(i)=fOH(i)-1; fC619O2(i)=fC619O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + HO2 = C89OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'HO2'; 
fC89O2(i)=fC89O2(i)-1; fHO2(i)=fHO2(i)-1; fC89OOH(i)=fC89OOH(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + NO = C89NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'NO'; 
fC89O2(i)=fC89O2(i)-1; fNO(i)=fNO(i)-1; fC89NO3(i)=fC89NO3(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + NO =  + C810O2 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'NO'; 
fC89O2(i)=fC89O2(i)-1; fNO(i)=fNO(i)-1; fC810O2(i)=fC810O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + NO3 =  + C810O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'NO3'; 
fC89O2(i)=fC89O2(i)-1; fNO3(i)=fNO3(i)-1; fC810O2(i)=fC810O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 =  + C810O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'RO2';
fC89O2(i)=fC89O2(i)-1; fC810O2(i)=fC810O2(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 = C89OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'RO2';
fC89O2(i)=fC89O2(i)-1; fC89OH(i)=fC89OH(i)+1; 

i=i+1;
Rnames{i} = 'NLIMALOOH + OH = NLIMALO2';
k(:,i) = 4.28e-11;
Gstr{i,1} = 'NLIMALOOH'; Gstr{i,2} = 'OH'; 
fNLIMALOOH(i)=fNLIMALOOH(i)-1; fOH(i)=fOH(i)-1; fNLIMALO2(i)=fNLIMALO2(i)+1; 

i=i+1;
Rnames{i} = 'NLIMALOOH =  + LMLKET + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NLIMALOOH'; 
fNLIMALOOH(i)=fNLIMALOOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NLIMALOH + OH = LMLKET + HCHO + NO2';
k(:,i) = 3.93e-11;
Gstr{i,1} = 'NLIMALOH'; Gstr{i,2} = 'OH'; 
fNLIMALOH(i)=fNLIMALOH(i)-1; fOH(i)=fOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C926O2 + HO2 = C926OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C926O2'; Gstr{i,2} = 'HO2'; 
fC926O2(i)=fC926O2(i)-1; fHO2(i)=fHO2(i)-1; fC926OOH(i)=fC926OOH(i)+1; 

i=i+1;
Rnames{i} = 'C926O2 + NO =  + CH3CO3 + CO25C6CHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C926O2'; Gstr{i,2} = 'NO'; 
fC926O2(i)=fC926O2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO25C6CHO(i)=fCO25C6CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C926O2 + NO3 =  + CH3CO3 + CO25C6CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C926O2'; Gstr{i,2} = 'NO3'; 
fC926O2(i)=fC926O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO25C6CHO(i)=fCO25C6CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C926O2 =  + CH3CO3 + CO25C6CHO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C926O2'; Gstr{i,2} = 'RO2';
fC926O2(i)=fC926O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO25C6CHO(i)=fCO25C6CHO(i)+1; 

i=i+1;
Rnames{i} = 'C926O2 = C926OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C926O2'; Gstr{i,2} = 'RO2';
fC926O2(i)=fC926O2(i)-1; fC926OH(i)=fC926OH(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3 + HO2 = C817CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C817CO3'; Gstr{i,2} = 'HO2'; 
fC817CO3(i)=fC817CO3(i)-1; fHO2(i)=fHO2(i)-1; fC817CO3H(i)=fC817CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3 + HO2 = C817O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C817CO3'; Gstr{i,2} = 'HO2'; 
fC817CO3(i)=fC817CO3(i)-1; fHO2(i)=fHO2(i)-1; fC817O2(i)=fC817O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3 + HO2 = KLIMONONIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C817CO3'; Gstr{i,2} = 'HO2'; 
fC817CO3(i)=fC817CO3(i)-1; fHO2(i)=fHO2(i)-1; fKLIMONONIC(i)=fKLIMONONIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3 + NO = C817O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C817CO3'; Gstr{i,2} = 'NO'; 
fC817CO3(i)=fC817CO3(i)-1; fNO(i)=fNO(i)-1; fC817O2(i)=fC817O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3 + NO2 = C817PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C817CO3'; Gstr{i,2} = 'NO2'; 
fC817CO3(i)=fC817CO3(i)-1; fNO2(i)=fNO2(i)-1; fC817PAN(i)=fC817PAN(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3 + NO3 = C817O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C817CO3'; Gstr{i,2} = 'NO3'; 
fC817CO3(i)=fC817CO3(i)-1; fNO3(i)=fNO3(i)-1; fC817O2(i)=fC817O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3 = C817O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C817CO3'; Gstr{i,2} = 'RO2';
fC817CO3(i)=fC817CO3(i)-1; fC817O2(i)=fC817O2(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3 = KLIMONONIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C817CO3'; Gstr{i,2} = 'RO2';
fC817CO3(i)=fC817CO3(i)-1; fKLIMONONIC(i)=fKLIMONONIC(i)+1; 

i=i+1;
Rnames{i} = 'C817O2 + HO2 = C817OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C817O2'; Gstr{i,2} = 'HO2'; 
fC817O2(i)=fC817O2(i)-1; fHO2(i)=fHO2(i)-1; fC817OOH(i)=fC817OOH(i)+1; 

i=i+1;
Rnames{i} = 'C817O2 + NO = C817NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C817O2'; Gstr{i,2} = 'NO'; 
fC817O2(i)=fC817O2(i)-1; fNO(i)=fNO(i)-1; fC817NO3(i)=fC817NO3(i)+1; 

i=i+1;
Rnames{i} = 'C817O2 + NO =  + C818O2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C817O2'; Gstr{i,2} = 'NO'; 
fC817O2(i)=fC817O2(i)-1; fNO(i)=fNO(i)-1; fC818O2(i)=fC818O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817O2 + NO3 =  + C818O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C817O2'; Gstr{i,2} = 'NO3'; 
fC817O2(i)=fC817O2(i)-1; fNO3(i)=fNO3(i)-1; fC818O2(i)=fC818O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817O2 = C817CO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C817O2'; Gstr{i,2} = 'RO2';
fC817O2(i)=fC817O2(i)-1; fC817CO(i)=fC817CO(i)+1; 

i=i+1;
Rnames{i} = 'C817O2 =  + C818O2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C817O2'; Gstr{i,2} = 'RO2';
fC817O2(i)=fC817O2(i)-1; fC818O2(i)=fC818O2(i)+1; 

i=i+1;
Rnames{i} = 'C817O2 = C817OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C817O2'; Gstr{i,2} = 'RO2';
fC817O2(i)=fC817O2(i)-1; fC817OH(i)=fC817OH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALOOH + OH = LIMALO2';
k(:,i) = 4.65e-11;
Gstr{i,1} = 'LIMALOOH'; Gstr{i,2} = 'OH'; 
fLIMALOOH(i)=fLIMALOOH(i)-1; fOH(i)=fOH(i)-1; fLIMALO2(i)=fLIMALO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALOOH =  + LMLKET + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'LIMALOOH'; 
fLIMALOOH(i)=fLIMALOOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LIMALNO3 + OH = LMLKET + HCHO + NO2';
k(:,i) = 3.01e-11;
Gstr{i,1} = 'LIMALNO3'; Gstr{i,2} = 'OH'; 
fLIMALNO3(i)=fLIMALNO3(i)-1; fOH(i)=fOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMALOH + OH = LMLKET + HCHO + HO2';
k(:,i) = 4.31e-11;
Gstr{i,1} = 'LIMALOH'; Gstr{i,2} = 'OH'; 
fLIMALOH(i)=fLIMALOH(i)-1; fOH(i)=fOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC826O2 + HO2 = NC826OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'NC826O2'; Gstr{i,2} = 'HO2'; 
fNC826O2(i)=fNC826O2(i)-1; fHO2(i)=fHO2(i)-1; fNC826OOH(i)=fNC826OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC826O2 + NO =  + C626CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC826O2'; Gstr{i,2} = 'NO'; 
fNC826O2(i)=fNC826O2(i)-1; fNO(i)=fNO(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC826O2 + NO3 =  + C626CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC826O2'; Gstr{i,2} = 'NO3'; 
fNC826O2(i)=fNC826O2(i)-1; fNO3(i)=fNO3(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC826O2 =  + C626CHO + HCHO + NO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'NC826O2'; Gstr{i,2} = 'RO2';
fNC826O2(i)=fNC826O2(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC826O2 = NC826OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'NC826O2'; Gstr{i,2} = 'RO2';
fNC826O2(i)=fNC826O2(i)-1; fNC826OH(i)=fNC826OH(i)+1; 

i=i+1;
Rnames{i} = 'C626CHO + NO3 = C626CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C626CHO'; Gstr{i,2} = 'NO3'; 
fC626CHO(i)=fC626CHO(i)-1; fNO3(i)=fNO3(i)-1; fC626CO3(i)=fC626CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C626CHO + OH = C626CO3';
k(:,i) = 5.41e-11;
Gstr{i,1} = 'C626CHO'; Gstr{i,2} = 'OH'; 
fC626CHO(i)=fC626CHO(i)-1; fOH(i)=fOH(i)-1; fC626CO3(i)=fC626CO3(i)+1; 

i=i+1;
Rnames{i} = 'C626CHO = C626O2 + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C626CHO'; 
fC626CHO(i)=fC626CHO(i)-1; fC626O2(i)=fC626O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C826O2 + HO2 = C826OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C826O2'; Gstr{i,2} = 'HO2'; 
fC826O2(i)=fC826O2(i)-1; fHO2(i)=fHO2(i)-1; fC826OOH(i)=fC826OOH(i)+1; 

i=i+1;
Rnames{i} = 'C826O2 + NO = C826NO3';
k(:,i) = KRO2NO.*0.069;
Gstr{i,1} = 'C826O2'; Gstr{i,2} = 'NO'; 
fC826O2(i)=fC826O2(i)-1; fNO(i)=fNO(i)-1; fC826NO3(i)=fC826NO3(i)+1; 

i=i+1;
Rnames{i} = 'C826O2 + NO =  + C626CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.931;
Gstr{i,1} = 'C826O2'; Gstr{i,2} = 'NO'; 
fC826O2(i)=fC826O2(i)-1; fNO(i)=fNO(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C826O2 + NO3 =  + C626CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C826O2'; Gstr{i,2} = 'NO3'; 
fC826O2(i)=fC826O2(i)-1; fNO3(i)=fNO3(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C826O2 =  + C626CHO + HCHO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C826O2'; Gstr{i,2} = 'RO2';
fC826O2(i)=fC826O2(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C826O2 = C826OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C826O2'; Gstr{i,2} = 'RO2';
fC826O2(i)=fC826O2(i)-1; fC826OH(i)=fC826OH(i)+1; 

i=i+1;
Rnames{i} = 'C729O2 + HO2 = C729OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C729O2'; Gstr{i,2} = 'HO2'; 
fC729O2(i)=fC729O2(i)-1; fHO2(i)=fHO2(i)-1; fC729OOH(i)=fC729OOH(i)+1; 

i=i+1;
Rnames{i} = 'C729O2 + NO = C729NO3';
k(:,i) = KRO2NO.*0.111;
Gstr{i,1} = 'C729O2'; Gstr{i,2} = 'NO'; 
fC729O2(i)=fC729O2(i)-1; fNO(i)=fNO(i)-1; fC729NO3(i)=fC729NO3(i)+1; 

i=i+1;
Rnames{i} = 'C729O2 + NO =  + C622CO3 + NO2';
k(:,i) = KRO2NO.*0.889;
Gstr{i,1} = 'C729O2'; Gstr{i,2} = 'NO'; 
fC729O2(i)=fC729O2(i)-1; fNO(i)=fNO(i)-1; fC622CO3(i)=fC622CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C729O2 + NO3 =  + C622CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C729O2'; Gstr{i,2} = 'NO3'; 
fC729O2(i)=fC729O2(i)-1; fNO3(i)=fNO3(i)-1; fC622CO3(i)=fC622CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C729O2 = C622CHO';
k(:,i) = 1.30e-12.*0.4;
Gstr{i,1} = 'C729O2'; Gstr{i,2} = 'RO2';
fC729O2(i)=fC729O2(i)-1; fC622CHO(i)=fC622CHO(i)+1; 

i=i+1;
Rnames{i} = 'C729O2 =  + C622CO3';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C729O2'; Gstr{i,2} = 'RO2';
fC729O2(i)=fC729O2(i)-1; fC622CO3(i)=fC622CO3(i)+1; 

i=i+1;
Rnames{i} = 'C729CO2H + OH = C729O2';
k(:,i) = 8.38e-11;
Gstr{i,1} = 'C729CO2H'; Gstr{i,2} = 'OH'; 
fC729CO2H(i)=fC729CO2H(i)-1; fOH(i)=fOH(i)-1; fC729O2(i)=fC729O2(i)+1; 

i=i+1;
Rnames{i} = 'C729CO2H = C729O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C729CO2H'; 
fC729CO2H(i)=fC729CO2H(i)-1; fC729O2(i)=fC729O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3H + OH = C729CO3';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'C729CO3H'; Gstr{i,2} = 'OH'; 
fC729CO3H(i)=fC729CO3H(i)-1; fOH(i)=fOH(i)-1; fC729CO3(i)=fC729CO3(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3H = C729O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C729CO3H'; 
fC729CO3H(i)=fC729CO3H(i)-1; fC729O2(i)=fC729O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C729CO3H = C729O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C729CO3H'; 
fC729CO3H(i)=fC729CO3H(i)-1; fC729O2(i)=fC729O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C729PAN + OH = C622CHO + CO + NO2';
k(:,i) = 8.33e-11;
Gstr{i,1} = 'C729PAN'; Gstr{i,2} = 'OH'; 
fC729PAN(i)=fC729PAN(i)-1; fOH(i)=fOH(i)-1; fC622CHO(i)=fC622CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C729PAN = C729CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C729PAN'; 
fC729PAN(i)=fC729PAN(i)-1; fC729CO3(i)=fC729CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C822CO2H + OH =  + 0.2C822O2 + 0.8C823CO3';
k(:,i) = 8.47e-11;
Gstr{i,1} = 'C822CO2H'; Gstr{i,2} = 'OH'; 
fC822CO2H(i)=fC822CO2H(i)-1; fOH(i)=fOH(i)-1; fC822O2(i)=fC822O2(i)+0.2; fC823CO3(i)=fC823CO3(i)+0.8; 

i=i+1;
Rnames{i} = 'C822CO3H + OH = C822CO3';
k(:,i) = 8.82e-11;
Gstr{i,1} = 'C822CO3H'; Gstr{i,2} = 'OH'; 
fC822CO3H(i)=fC822CO3H(i)-1; fOH(i)=fOH(i)-1; fC822CO3(i)=fC822CO3(i)+1; 

i=i+1;
Rnames{i} = 'C822CO3H =  + 0.2C822O2 + 0.8C823CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C822CO3H'; 
fC822CO3H(i)=fC822CO3H(i)-1; fC822O2(i)=fC822O2(i)+0.2; fC823CO3(i)=fC823CO3(i)+0.8; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C822PAN + OH = C729CHO + CO + NO2';
k(:,i) = 8.46e-11;
Gstr{i,1} = 'C822PAN'; Gstr{i,2} = 'OH'; 
fC822PAN(i)=fC822PAN(i)-1; fOH(i)=fOH(i)-1; fC729CHO(i)=fC729CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C822PAN = C822CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C822PAN'; 
fC822PAN(i)=fC822PAN(i)-1; fC822CO3(i)=fC822CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C924OOH + OH = C924CO + OH';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'C924OOH'; Gstr{i,2} = 'OH'; 
fC924OOH(i)=fC924OOH(i)-1; fOH(i)=fOH(i)-1; fC924CO(i)=fC924CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C924OOH =  + CH3CO3 + C622CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C924OOH'; 
fC924OOH(i)=fC924OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC622CHO(i)=fC622CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C924CO + OH = C925O2';
k(:,i) = 6.67e-11;
Gstr{i,1} = 'C924CO'; Gstr{i,2} = 'OH'; 
fC924CO(i)=fC924CO(i)-1; fOH(i)=fOH(i)-1; fC925O2(i)=fC925O2(i)+1; 

i=i+1;
Rnames{i} = 'C924CO = C622CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'C924CO'; 
fC924CO(i)=fC924CO(i)-1; fC622CO3(i)=fC622CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C924OH + OH = C924CO + HO2';
k(:,i) = 7.47e-11;
Gstr{i,1} = 'C924OH'; Gstr{i,2} = 'OH'; 
fC924OH(i)=fC924OH(i)-1; fOH(i)=fOH(i)-1; fC924CO(i)=fC924CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C816CO3H + OH = C816CO3';
k(:,i) = 6.28e-11;
Gstr{i,1} = 'C816CO3H'; Gstr{i,2} = 'OH'; 
fC816CO3H(i)=fC816CO3H(i)-1; fOH(i)=fOH(i)-1; fC816CO3(i)=fC816CO3(i)+1; 

i=i+1;
Rnames{i} = 'C816CO3H = C816O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C816CO3H'; 
fC816CO3H(i)=fC816CO3H(i)-1; fC816O2(i)=fC816O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C816PAN + OH = C816CO + CO + NO2';
k(:,i) = 5.92e-11;
Gstr{i,1} = 'C816PAN'; Gstr{i,2} = 'OH'; 
fC816PAN(i)=fC816PAN(i)-1; fOH(i)=fOH(i)-1; fC816CO(i)=fC816CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C816PAN = C816CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C816PAN'; 
fC816PAN(i)=fC816PAN(i)-1; fC816CO3(i)=fC816CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMOOH + OH = NORLIMO2';
k(:,i) = 3.64e-11;
Gstr{i,1} = 'NORLIMOOH'; Gstr{i,2} = 'OH'; 
fNORLIMOOH(i)=fNORLIMOOH(i)-1; fOH(i)=fOH(i)-1; fNORLIMO2(i)=fNORLIMO2(i)+1; 

i=i+1;
Rnames{i} = 'NORLIMOOH =  + C817CO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NORLIMOOH'; 
fNORLIMOOH(i)=fNORLIMOOH(i)-1; fC817CO(i)=fC817CO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C816OOH + OH = C816CO + OH';
k(:,i) = 8.06e-11;
Gstr{i,1} = 'C816OOH'; Gstr{i,2} = 'OH'; 
fC816OOH(i)=fC816OOH(i)-1; fOH(i)=fOH(i)-1; fC816CO(i)=fC816CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C816OOH =  + C816CO + HO2 + MACR + MEKAO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C816OOH'; 
fC816OOH(i)=fC816OOH(i)-1; fC816CO(i)=fC816CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C816OOH =  + C816CO + HO2 + MACR + MEKAO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C816OOH'; 
fC816OOH(i)=fC816OOH(i)-1; fC816CO(i)=fC816CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NLMKAOOH + OH = NLMKAO2';
k(:,i) = 1.01e-11;
Gstr{i,1} = 'NLMKAOOH'; Gstr{i,2} = 'OH'; 
fNLMKAOOH(i)=fNLMKAOOH(i)-1; fOH(i)=fOH(i)-1; fNLMKAO2(i)=fNLMKAO2(i)+1; 

i=i+1;
Rnames{i} = 'NLMKAOOH =  + LMLKET + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NLMKAOOH'; 
fNLMKAOOH(i)=fNLMKAOOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKBNO3 + OH = LMKBCO + NO2';
k(:,i) = 6.30e-12;
Gstr{i,1} = 'LMKBNO3'; Gstr{i,2} = 'OH'; 
fLMKBNO3(i)=fLMKBNO3(i)-1; fOH(i)=fOH(i)-1; fLMKBCO(i)=fLMKBCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAO2 + HO2 = LMLKAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LMLKAO2'; Gstr{i,2} = 'HO2'; 
fLMLKAO2(i)=fLMLKAO2(i)-1; fHO2(i)=fHO2(i)-1; fLMLKAOOH(i)=fLMLKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAO2 + NO =  + C626CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'LMLKAO2'; Gstr{i,2} = 'NO'; 
fLMLKAO2(i)=fLMLKAO2(i)-1; fNO(i)=fNO(i)-1; fC626CHO(i)=fC626CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAO2 + NO3 =  + C626CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LMLKAO2'; Gstr{i,2} = 'NO3'; 
fLMLKAO2(i)=fLMLKAO2(i)-1; fNO3(i)=fNO3(i)-1; fC626CHO(i)=fC626CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAO2 = LMLKACO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'LMLKAO2'; Gstr{i,2} = 'RO2';
fLMLKAO2(i)=fLMLKAO2(i)-1; fLMLKACO(i)=fLMLKACO(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAO2 = LMLKAO2';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'LMLKAO2'; Gstr{i,2} = 'RO2';
fLMLKAO2(i)=fLMLKAO2(i)-1; fLMLKAO2(i)=fLMLKAO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAO2 = LMLKAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'LMLKAO2'; Gstr{i,2} = 'RO2';
fLMLKAO2(i)=fLMLKAO2(i)-1; fLMLKAOH(i)=fLMLKAOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBO2 + HO2 = LMLKBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'LMLKBO2'; Gstr{i,2} = 'HO2'; 
fLMLKBO2(i)=fLMLKBO2(i)-1; fHO2(i)=fHO2(i)-1; fLMLKBOOH(i)=fLMLKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBO2 + NO =  + C731CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'LMLKBO2'; Gstr{i,2} = 'NO'; 
fLMLKBO2(i)=fLMLKBO2(i)-1; fNO(i)=fNO(i)-1; fC731CO3(i)=fC731CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBO2 + NO3 =  + C731CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'LMLKBO2'; Gstr{i,2} = 'NO3'; 
fLMLKBO2(i)=fLMLKBO2(i)-1; fNO3(i)=fNO3(i)-1; fC731CO3(i)=fC731CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBO2 = LMLKBCO';
k(:,i) = 8.80e-13.*0.05;
Gstr{i,1} = 'LMLKBO2'; Gstr{i,2} = 'RO2';
fLMLKBO2(i)=fLMLKBO2(i)-1; fLMLKBCO(i)=fLMLKBCO(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBO2 =  + C731CO3 + HCHO';
k(:,i) = 8.80e-13.*0.9;
Gstr{i,1} = 'LMLKBO2'; Gstr{i,2} = 'RO2';
fLMLKBO2(i)=fLMLKBO2(i)-1; fC731CO3(i)=fC731CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBO2 = LMLKBOH';
k(:,i) = 8.80e-13.*0.05;
Gstr{i,1} = 'LMLKBO2'; Gstr{i,2} = 'RO2';
fLMLKBO2(i)=fLMLKBO2(i)-1; fLMLKBOH(i)=fLMLKBOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKBOO + CO = LMLKET';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'LMKBOO'; Gstr{i,2} = 'CO'; 
fLMKBOO(i)=fLMKBOO(i)-1; fCO(i)=fCO(i)-1; fLMLKET(i)=fLMLKET(i)+1; 

i=i+1;
Rnames{i} = 'LMKBOO + NO = LMLKET + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'LMKBOO'; Gstr{i,2} = 'NO'; 
fLMKBOO(i)=fLMKBOO(i)-1; fNO(i)=fNO(i)-1; fLMLKET(i)=fLMLKET(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKBOO + NO2 = LMLKET + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'LMKBOO'; Gstr{i,2} = 'NO2'; 
fLMKBOO(i)=fLMKBOO(i)-1; fNO2(i)=fNO2(i)-1; fLMLKET(i)=fLMLKET(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'LMKBOO + SO2 = LMLKET + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'LMKBOO'; Gstr{i,2} = 'SO2'; 
fLMKBOO(i)=fLMKBOO(i)-1; fSO2(i)=fSO2(i)-1; fLMLKET(i)=fLMLKET(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'LMKBOO = KLIMONONIC';
k(:,i) = 2.00e-18.*H2O;
Gstr{i,1} = 'LMKBOO'; 
fLMKBOO(i)=fLMKBOO(i)-1; fKLIMONONIC(i)=fKLIMONONIC(i)+1; 

i=i+1;
Rnames{i} = 'LMKBOO = LMLKET + H2O2';
k(:,i) = 1.40e-17.*H2O;
Gstr{i,1} = 'LMKBOO'; 
fLMKBOO(i)=fLMKBOO(i)-1; fLMLKET(i)=fLMLKET(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'LMKAOOH + OH = LMKAO2';
k(:,i) = 2.08e-11;
Gstr{i,1} = 'LMKAOOH'; Gstr{i,2} = 'OH'; 
fLMKAOOH(i)=fLMKAOOH(i)-1; fOH(i)=fOH(i)-1; fLMKAO2(i)=fLMKAO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKAOOH =  + LMLKET + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'LMKAOOH'; 
fLMKAOOH(i)=fLMKAOOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKANO3 + OH = LMLKET + NO2';
k(:,i) = 9.20e-12;
Gstr{i,1} = 'LMKANO3'; Gstr{i,2} = 'OH'; 
fLMKANO3(i)=fLMKANO3(i)-1; fOH(i)=fOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKAOH + OH = LMKBCO + HO2';
k(:,i) = 1.74e-11;
Gstr{i,1} = 'LMKAOH'; Gstr{i,2} = 'OH'; 
fLMKAOH(i)=fLMKAOH(i)-1; fOH(i)=fOH(i)-1; fLMKBCO(i)=fLMKBCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LMKBOOH + OH = LMKBCO + OH';
k(:,i) = 4.76e-11;
Gstr{i,1} = 'LMKBOOH'; Gstr{i,2} = 'OH'; 
fLMKBOOH(i)=fLMKBOOH(i)-1; fOH(i)=fOH(i)-1; fLMKBCO(i)=fLMKBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKBOOH =  + LMLKET + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'LMKBOOH'; 
fLMKBOOH(i)=fLMKBOOH(i)-1; fLMLKET(i)=fLMLKET(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMKBCO + OH = C817CO3';
k(:,i) = 1.60e-11;
Gstr{i,1} = 'LMKBCO'; Gstr{i,2} = 'OH'; 
fLMKBCO(i)=fLMKBCO(i)-1; fOH(i)=fOH(i)-1; fC817CO3(i)=fC817CO3(i)+1; 

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
Rnames{i} = 'MACRNB = NOA + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MACRNB'; 
fMACRNB(i)=fMACRNB(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACRNB = MACRNBCO3';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACRNB'; 
fOH(i)=fOH(i)-1; fMACRNB(i)=fMACRNB(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; 

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
Rnames{i} = 'ACO3B + HO2 = HOCHOCOOH';
k(:,i) = KRO2HO2.*0.52;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'HO2'; 
fACO3B(i)=fACO3B(i)-1; fHO2(i)=fHO2(i)-1; fHOCHOCOOH(i)=fHOCHOCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B + NO =  + HOCH2CHO + HO2 + CO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'NO'; 
fACO3B(i)=fACO3B(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B + NO3 =  + HOCH2CHO + HO2 + CO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'NO3'; 
fACO3B(i)=fACO3B(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B =  + HOCH2CHO + HO2 + CO';
k(:,i) = 8.8e-13.*0.6;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'RO2';
fACO3B(i)=fACO3B(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B = HOCH2COCHO';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'RO2';
fACO3B(i)=fACO3B(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B = OCCOHCOH';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'RO2';
fACO3B(i)=fACO3B(i)-1; fOCCOHCOH(i)=fOCCOHCOH(i)+1; 

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
Rnames{i} = 'CONM2CO2H + OH = MGLYOX + NO2';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CONM2CO2H'; Gstr{i,2} = 'OH'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO2H = CO + HO2 + NO2 + CH3COCO2H';
k(:,i) = J56;
Gstr{i,1} = 'CONM2CO2H'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO2H = CO + HO2 + NO2 + CH3COCO2H';
k(:,i) = J57;
Gstr{i,1} = 'CONM2CO2H'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H + OH = CONM2CO3';
k(:,i) = 6.78e-12;
Gstr{i,1} = 'CONM2CO3H'; Gstr{i,2} = 'OH'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H = CO + HO2 + NO2 + CH3COCO3H';
k(:,i) = J56;
Gstr{i,1} = 'CONM2CO3H'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H = CO + HO2 + NO2 + CH3COCO3H';
k(:,i) = J57;
Gstr{i,1} = 'CONM2CO3H'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H = MGLYOX + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CONM2CO3H'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN + OH = MGLYOX + NO2 + NO3';
k(:,i) = 3.18e-12;
Gstr{i,1} = 'CONM2PAN'; Gstr{i,2} = 'OH'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN = CO + HO2 + NO2 + CH3COPAN';
k(:,i) = J56;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COPAN(i)=fCH3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN = CO + HO2 + NO2 + CH3COPAN';
k(:,i) = J57;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COPAN(i)=fCH3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN = CONM2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'C4M2ALOHNO3 = CO2H3CHO + NO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C4M2ALOHNO3'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHNO3 = CONM2CHO + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C4M2ALOHNO3'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'CO2N3PAN = MGLYOX + NO2 + NO3';
k(:,i) = J41;
Gstr{i,1} = 'CO2N3PAN'; 
fCO2N3PAN(i)=fCO2N3PAN(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

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
Rnames{i} = 'CO235C6CHO + NO3 = CO235C6CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'CO235C6CHO'; Gstr{i,2} = 'NO3'; 
fCO235C6CHO(i)=fCO235C6CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CHO + OH = CO235C6CO3';
k(:,i) = 6.70e-11;
Gstr{i,1} = 'CO235C6CHO'; Gstr{i,2} = 'OH'; 
fCO235C6CHO(i)=fCO235C6CHO(i)-1; fOH(i)=fOH(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CHO = CHOC3COCO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO235C6CHO'; 
fCO235C6CHO(i)=fCO235C6CHO(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + HO2 = C106OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'HO2'; 
fC106O2(i)=fC106O2(i)-1; fHO2(i)=fHO2(i)-1; fC106OOH(i)=fC106OOH(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + NO = C106NO3';
k(:,i) = KRO2NO.*0.125;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'NO'; 
fC106O2(i)=fC106O2(i)-1; fNO(i)=fNO(i)-1; fC106NO3(i)=fC106NO3(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + NO =  + C716O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO.*0.875;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'NO'; 
fC106O2(i)=fC106O2(i)-1; fNO(i)=fNO(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + NO3 =  + C716O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'NO3'; 
fC106O2(i)=fC106O2(i)-1; fNO3(i)=fNO3(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 =  + C716O2 + CH3COCH3';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'RO2';
fC106O2(i)=fC106O2(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 = C106OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'RO2';
fC106O2(i)=fC106O2(i)-1; fC106OH(i)=fC106OH(i)+1; 

i=i+1;
Rnames{i} = 'NC102OOH + OH = NC102O2';
k(:,i) = 8.03e-12;
Gstr{i,1} = 'NC102OOH'; Gstr{i,2} = 'OH'; 
fNC102OOH(i)=fNC102OOH(i)-1; fOH(i)=fOH(i)-1; fNC102O2(i)=fNC102O2(i)+1; 

i=i+1;
Rnames{i} = 'NC102OOH =  + NC71O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC102OOH'; 
fNC102OOH(i)=fNC102OOH(i)-1; fNC71O2(i)=fNC71O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + HO2 = C717OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'HO2'; 
fC717O2(i)=fC717O2(i)-1; fHO2(i)=fHO2(i)-1; fC717OOH(i)=fC717OOH(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + NO = C717NO3';
k(:,i) = KRO2NO.*0.278;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'NO'; 
fC717O2(i)=fC717O2(i)-1; fNO(i)=fNO(i)-1; fC717NO3(i)=fC717NO3(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + NO =  + CO235C6CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.722;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'NO'; 
fC717O2(i)=fC717O2(i)-1; fNO(i)=fNO(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + NO3 =  + CO235C6CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'NO3'; 
fC717O2(i)=fC717O2(i)-1; fNO3(i)=fNO3(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 =  + CO235C6CHO + HO2';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'RO2';
fC717O2(i)=fC717O2(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 = C717OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'RO2';
fC717O2(i)=fC717O2(i)-1; fC717OH(i)=fC717OH(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 = CO235C6CHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'RO2';
fC717O2(i)=fC717O2(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + HO2 = C811CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'HO2'; 
fC811CO3(i)=fC811CO3(i)-1; fHO2(i)=fHO2(i)-1; fC811CO3H(i)=fC811CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + HO2 = C811O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'HO2'; 
fC811CO3(i)=fC811CO3(i)-1; fHO2(i)=fHO2(i)-1; fC811O2(i)=fC811O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + HO2 = PINIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'HO2'; 
fC811CO3(i)=fC811CO3(i)-1; fHO2(i)=fHO2(i)-1; fPINIC(i)=fPINIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + NO = C811O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'NO'; 
fC811CO3(i)=fC811CO3(i)-1; fNO(i)=fNO(i)-1; fC811O2(i)=fC811O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + NO2 = C811PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'NO2'; 
fC811CO3(i)=fC811CO3(i)-1; fNO2(i)=fNO2(i)-1; fC811PAN(i)=fC811PAN(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + NO3 = C811O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'NO3'; 
fC811CO3(i)=fC811CO3(i)-1; fNO3(i)=fNO3(i)-1; fC811O2(i)=fC811O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 = C811O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'RO2';
fC811CO3(i)=fC811CO3(i)-1; fC811O2(i)=fC811O2(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 = PINIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'RO2';
fC811CO3(i)=fC811CO3(i)-1; fPINIC(i)=fPINIC(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4CHO + NO3 = CHOC3COCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*5.5;
Gstr{i,1} = 'CO13C4CHO'; Gstr{i,2} = 'NO3'; 
fCO13C4CHO(i)=fCO13C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4CHO + OH = CHOC3COCO3';
k(:,i) = 1.33e-10;
Gstr{i,1} = 'CO13C4CHO'; Gstr{i,2} = 'OH'; 
fCO13C4CHO(i)=fCO13C4CHO(i)-1; fOH(i)=fOH(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4CHO = CHOC3COO2 + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'CO13C4CHO'; 
fCO13C4CHO(i)=fCO13C4CHO(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C921O2 + HO2 = C921OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C921O2'; Gstr{i,2} = 'HO2'; 
fC921O2(i)=fC921O2(i)-1; fHO2(i)=fHO2(i)-1; fC921OOH(i)=fC921OOH(i)+1; 

i=i+1;
Rnames{i} = 'C921O2 + NO =  + C922O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C921O2'; Gstr{i,2} = 'NO'; 
fC921O2(i)=fC921O2(i)-1; fNO(i)=fNO(i)-1; fC922O2(i)=fC922O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C921O2 + NO3 =  + C922O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C921O2'; Gstr{i,2} = 'NO3'; 
fC921O2(i)=fC921O2(i)-1; fNO3(i)=fNO3(i)-1; fC922O2(i)=fC922O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C921O2 =  + C922O2';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C921O2'; Gstr{i,2} = 'RO2';
fC921O2(i)=fC921O2(i)-1; fC922O2(i)=fC922O2(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + HO2 = C98OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'HO2'; 
fC98O2(i)=fC98O2(i)-1; fHO2(i)=fHO2(i)-1; fC98OOH(i)=fC98OOH(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + NO = C98NO3';
k(:,i) = KRO2NO.*0.118;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'NO'; 
fC98O2(i)=fC98O2(i)-1; fNO(i)=fNO(i)-1; fC98NO3(i)=fC98NO3(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + NO =  + C614O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO.*0.882;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'NO'; 
fC98O2(i)=fC98O2(i)-1; fNO(i)=fNO(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + NO3 =  + C614O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'NO3'; 
fC98O2(i)=fC98O2(i)-1; fNO3(i)=fNO3(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 =  + C614O2 + CH3COCH3';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'RO2';
fC98O2(i)=fC98O2(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 = C98OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'RO2';
fC98O2(i)=fC98O2(i)-1; fC98OH(i)=fC98OH(i)+1; 

i=i+1;
Rnames{i} = 'C86O2 + HO2 = C86OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C86O2'; Gstr{i,2} = 'HO2'; 
fC86O2(i)=fC86O2(i)-1; fHO2(i)=fHO2(i)-1; fC86OOH(i)=fC86OOH(i)+1; 

i=i+1;
Rnames{i} = 'C86O2 + NO =  + C511O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C86O2'; Gstr{i,2} = 'NO'; 
fC86O2(i)=fC86O2(i)-1; fNO(i)=fNO(i)-1; fC511O2(i)=fC511O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C86O2 + NO3 =  + C511O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C86O2'; Gstr{i,2} = 'NO3'; 
fC86O2(i)=fC86O2(i)-1; fNO3(i)=fNO3(i)-1; fC511O2(i)=fC511O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C86O2 =  + C511O2 + CH3COCH3';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C86O2'; Gstr{i,2} = 'RO2';
fC86O2(i)=fC86O2(i)-1; fC511O2(i)=fC511O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C716OH + NO3 = H3C25C6CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C716OH'; Gstr{i,2} = 'NO3'; 
fC716OH(i)=fC716OH(i)-1; fNO3(i)=fNO3(i)-1; fH3C25C6CO3(i)=fH3C25C6CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C716OH + OH = CO235C6CHO + HO2';
k(:,i) = 8.92e-11.*0.232;
Gstr{i,1} = 'C716OH'; Gstr{i,2} = 'OH'; 
fC716OH(i)=fC716OH(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C716OH + OH = H3C25C6CO3';
k(:,i) = 8.92e-11.*0.768;
Gstr{i,1} = 'C716OH'; Gstr{i,2} = 'OH'; 
fC716OH(i)=fC716OH(i)-1; fOH(i)=fOH(i)-1; fH3C25C6CO3(i)=fH3C25C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'C716OH = H3C25C6O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C716OH'; 
fC716OH(i)=fC716OH(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CHO = HCOCH2O2 + HO2 + CO';
k(:,i) = J15.*2;
Gstr{i,1} = 'HCOCH2CHO'; 
fHCOCH2CHO(i)=fHCOCH2CHO(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HCOCH2CHO = HCOCH2CO3 + HNO3';
k(:,i) = 2.*KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HCOCH2CHO'; 
fNO3(i)=fNO3(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCH2CHO = HCOCH2CO3';
k(:,i) = 4.29e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCH2CHO'; 
fOH(i)=fOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C919O2 + HO2 = C919OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C919O2'; Gstr{i,2} = 'HO2'; 
fC919O2(i)=fC919O2(i)-1; fHO2(i)=fHO2(i)-1; fC919OOH(i)=fC919OOH(i)+1; 

i=i+1;
Rnames{i} = 'C919O2 + NO = C919NO3';
k(:,i) = KRO2NO.*0.118;
Gstr{i,1} = 'C919O2'; Gstr{i,2} = 'NO'; 
fC919O2(i)=fC919O2(i)-1; fNO(i)=fNO(i)-1; fC919NO3(i)=fC919NO3(i)+1; 

i=i+1;
Rnames{i} = 'C919O2 + NO =  + C620O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO.*0.882;
Gstr{i,1} = 'C919O2'; Gstr{i,2} = 'NO'; 
fC919O2(i)=fC919O2(i)-1; fNO(i)=fNO(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C919O2 + NO3 =  + C620O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C919O2'; Gstr{i,2} = 'NO3'; 
fC919O2(i)=fC919O2(i)-1; fNO3(i)=fNO3(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C919O2 =  + C620O2 + CH3COCH3';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C919O2'; Gstr{i,2} = 'RO2';
fC919O2(i)=fC919O2(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C919O2 = C919OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C919O2'; Gstr{i,2} = 'RO2';
fC919O2(i)=fC919O2(i)-1; fC919OH(i)=fC919OH(i)+1; 

i=i+1;
Rnames{i} = 'C914O2 + HO2 = C914OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C914O2'; Gstr{i,2} = 'HO2'; 
fC914O2(i)=fC914O2(i)-1; fHO2(i)=fHO2(i)-1; fC914OOH(i)=fC914OOH(i)+1; 

i=i+1;
Rnames{i} = 'C914O2 + NO =  + C87CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C914O2'; Gstr{i,2} = 'NO'; 
fC914O2(i)=fC914O2(i)-1; fNO(i)=fNO(i)-1; fC87CO3(i)=fC87CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C914O2 + NO3 =  + C87CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C914O2'; Gstr{i,2} = 'NO3'; 
fC914O2(i)=fC914O2(i)-1; fNO3(i)=fNO3(i)-1; fC87CO3(i)=fC87CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C914O2 = C914CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C914O2'; Gstr{i,2} = 'RO2';
fC914O2(i)=fC914O2(i)-1; fC914CO(i)=fC914CO(i)+1; 

i=i+1;
Rnames{i} = 'C914O2 =  + C87CO3';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C914O2'; Gstr{i,2} = 'RO2';
fC914O2(i)=fC914O2(i)-1; fC87CO3(i)=fC87CO3(i)+1; 

i=i+1;
Rnames{i} = 'C914O2 = C914OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C914O2'; Gstr{i,2} = 'RO2';
fC914O2(i)=fC914O2(i)-1; fC914OH(i)=fC914OH(i)+1; 

i=i+1;
Rnames{i} = 'C916O2 + HO2 = C916OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C916O2'; Gstr{i,2} = 'HO2'; 
fC916O2(i)=fC916O2(i)-1; fHO2(i)=fHO2(i)-1; fC916OOH(i)=fC916OOH(i)+1; 

i=i+1;
Rnames{i} = 'C916O2 + NO = C916NO3';
k(:,i) = KRO2NO.*0.118;
Gstr{i,1} = 'C916O2'; Gstr{i,2} = 'NO'; 
fC916O2(i)=fC916O2(i)-1; fNO(i)=fNO(i)-1; fC916NO3(i)=fC916NO3(i)+1; 

i=i+1;
Rnames{i} = 'C916O2 + NO =  + CH3COCH3 + C616O2 + NO2';
k(:,i) = KRO2NO.*0.882;
Gstr{i,1} = 'C916O2'; Gstr{i,2} = 'NO'; 
fC916O2(i)=fC916O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C916O2 + NO3 =  + CH3COCH3 + C616O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C916O2'; Gstr{i,2} = 'NO3'; 
fC916O2(i)=fC916O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C916O2 =  + CH3COCH3 + C616O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C916O2'; Gstr{i,2} = 'RO2';
fC916O2(i)=fC916O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; 

i=i+1;
Rnames{i} = 'C916O2 = C916OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C916O2'; Gstr{i,2} = 'RO2';
fC916O2(i)=fC916O2(i)-1; fC916OH(i)=fC916OH(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3 + HO2 = C88CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C88CO3'; Gstr{i,2} = 'HO2'; 
fC88CO3(i)=fC88CO3(i)-1; fHO2(i)=fHO2(i)-1; fC88CO2H(i)=fC88CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3 + HO2 = C88CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C88CO3'; Gstr{i,2} = 'HO2'; 
fC88CO3(i)=fC88CO3(i)-1; fHO2(i)=fHO2(i)-1; fC88CO3H(i)=fC88CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3 + HO2 = C88O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C88CO3'; Gstr{i,2} = 'HO2'; 
fC88CO3(i)=fC88CO3(i)-1; fHO2(i)=fHO2(i)-1; fC88O2(i)=fC88O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3 + NO = C88O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C88CO3'; Gstr{i,2} = 'NO'; 
fC88CO3(i)=fC88CO3(i)-1; fNO(i)=fNO(i)-1; fC88O2(i)=fC88O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3 + NO2 = C88PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C88CO3'; Gstr{i,2} = 'NO2'; 
fC88CO3(i)=fC88CO3(i)-1; fNO2(i)=fNO2(i)-1; fC88PAN(i)=fC88PAN(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3 + NO3 = C88O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C88CO3'; Gstr{i,2} = 'NO3'; 
fC88CO3(i)=fC88CO3(i)-1; fNO3(i)=fNO3(i)-1; fC88O2(i)=fC88O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3 = C88CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C88CO3'; Gstr{i,2} = 'RO2';
fC88CO3(i)=fC88CO3(i)-1; fC88CO2H(i)=fC88CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3 = C88O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C88CO3'; Gstr{i,2} = 'RO2';
fC88CO3(i)=fC88CO3(i)-1; fC88O2(i)=fC88O2(i)+1; 

i=i+1;
Rnames{i} = 'C88O2 + HO2 = C88OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C88O2'; Gstr{i,2} = 'HO2'; 
fC88O2(i)=fC88O2(i)-1; fHO2(i)=fHO2(i)-1; fC88OOH(i)=fC88OOH(i)+1; 

i=i+1;
Rnames{i} = 'C88O2 + NO =  + C718CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C88O2'; Gstr{i,2} = 'NO'; 
fC88O2(i)=fC88O2(i)-1; fNO(i)=fNO(i)-1; fC718CO3(i)=fC718CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C88O2 + NO3 =  + C718CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C88O2'; Gstr{i,2} = 'NO3'; 
fC88O2(i)=fC88O2(i)-1; fNO3(i)=fNO3(i)-1; fC718CO3(i)=fC718CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C88O2 = C88CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C88O2'; Gstr{i,2} = 'RO2';
fC88O2(i)=fC88O2(i)-1; fC88CO(i)=fC88CO(i)+1; 

i=i+1;
Rnames{i} = 'C88O2 =  + C718CO3';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C88O2'; Gstr{i,2} = 'RO2';
fC88O2(i)=fC88O2(i)-1; fC718CO3(i)=fC718CO3(i)+1; 

i=i+1;
Rnames{i} = 'C88O2 = C88OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C88O2'; Gstr{i,2} = 'RO2';
fC88O2(i)=fC88O2(i)-1; fC88OH(i)=fC88OH(i)+1; 

i=i+1;
Rnames{i} = 'C512CO2H + OH = C512O2';
k(:,i) = 7.23e-11;
Gstr{i,1} = 'C512CO2H'; Gstr{i,2} = 'OH'; 
fC512CO2H(i)=fC512CO2H(i)-1; fOH(i)=fOH(i)-1; fC512O2(i)=fC512O2(i)+1; 

i=i+1;
Rnames{i} = 'C512CO2H = C512O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C512CO2H'; 
fC512CO2H(i)=fC512CO2H(i)-1; fC512O2(i)=fC512O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3H + OH = C512CO3';
k(:,i) = 7.54e-11;
Gstr{i,1} = 'C512CO3H'; Gstr{i,2} = 'OH'; 
fC512CO3H(i)=fC512CO3H(i)-1; fOH(i)=fOH(i)-1; fC512CO3(i)=fC512CO3(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3H = C512O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C512CO3H'; 
fC512CO3H(i)=fC512CO3H(i)-1; fC512O2(i)=fC512O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C512CO3H = C512O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C512CO3H'; 
fC512CO3H(i)=fC512CO3H(i)-1; fC512O2(i)=fC512O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C512O2 + HO2 = C512OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C512O2'; Gstr{i,2} = 'HO2'; 
fC512O2(i)=fC512O2(i)-1; fHO2(i)=fHO2(i)-1; fC512OOH(i)=fC512OOH(i)+1; 

i=i+1;
Rnames{i} = 'C512O2 + NO = C512NO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'C512O2'; Gstr{i,2} = 'NO'; 
fC512O2(i)=fC512O2(i)-1; fNO(i)=fNO(i)-1; fC512NO3(i)=fC512NO3(i)+1; 

i=i+1;
Rnames{i} = 'C512O2 + NO =  + C513O2 + CO13C3CO2H + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'C512O2'; Gstr{i,2} = 'NO'; 
fC512O2(i)=fC512O2(i)-1; fNO(i)=fNO(i)-1; fC513O2(i)=fC513O2(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C512O2 + NO3 =  + C513O2 + CO13C3CO2H + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C512O2'; Gstr{i,2} = 'NO3'; 
fC512O2(i)=fC512O2(i)-1; fNO3(i)=fNO3(i)-1; fC513O2(i)=fC513O2(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C512O2 =  + C513O2 + CO13C3CO2H + HCHO + HO2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C512O2'; Gstr{i,2} = 'RO2';
fC512O2(i)=fC512O2(i)-1; fC513O2(i)=fC513O2(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C512O2 = C512OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C512O2'; Gstr{i,2} = 'RO2';
fC512O2(i)=fC512O2(i)-1; fC512OH(i)=fC512OH(i)+1; 

i=i+1;
Rnames{i} = 'C512O2 = CO13C4CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C512O2'; Gstr{i,2} = 'RO2';
fC512O2(i)=fC512O2(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'C512PAN + OH = CO13C4CHO + CO + NO2';
k(:,i) = 6.76e-11;
Gstr{i,1} = 'C512PAN'; Gstr{i,2} = 'OH'; 
fC512PAN(i)=fC512PAN(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C512PAN = C512CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C512PAN'; 
fC512PAN(i)=fC512PAN(i)-1; fC512CO3(i)=fC512CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C619O2 + HO2 = C619OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C619O2'; Gstr{i,2} = 'HO2'; 
fC619O2(i)=fC619O2(i)-1; fHO2(i)=fHO2(i)-1; fC619OOH(i)=fC619OOH(i)+1; 

i=i+1;
Rnames{i} = 'C619O2 + NO =  + C512CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C619O2'; Gstr{i,2} = 'NO'; 
fC619O2(i)=fC619O2(i)-1; fNO(i)=fNO(i)-1; fC512CO3(i)=fC512CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C619O2 + NO3 =  + C512CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C619O2'; Gstr{i,2} = 'NO3'; 
fC619O2(i)=fC619O2(i)-1; fNO3(i)=fNO3(i)-1; fC512CO3(i)=fC512CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C619O2 = C619CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C619O2'; Gstr{i,2} = 'RO2';
fC619O2(i)=fC619O2(i)-1; fC619CO(i)=fC619CO(i)+1; 

i=i+1;
Rnames{i} = 'C619O2 =  + C512CO3';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C619O2'; Gstr{i,2} = 'RO2';
fC619O2(i)=fC619O2(i)-1; fC512CO3(i)=fC512CO3(i)+1; 

i=i+1;
Rnames{i} = 'C619O2 = C619OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C619O2'; Gstr{i,2} = 'RO2';
fC619O2(i)=fC619O2(i)-1; fC619OH(i)=fC619OH(i)+1; 

i=i+1;
Rnames{i} = 'C89OOH + OH = C89O2';
k(:,i) = 3.61e-11;
Gstr{i,1} = 'C89OOH'; Gstr{i,2} = 'OH'; 
fC89OOH(i)=fC89OOH(i)-1; fOH(i)=fOH(i)-1; fC89O2(i)=fC89O2(i)+1; 

i=i+1;
Rnames{i} = 'C89OOH =  + C810O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C89OOH'; 
fC89OOH(i)=fC89OOH(i)-1; fC810O2(i)=fC810O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89OOH =  + C810O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C89OOH'; 
fC89OOH(i)=fC89OOH(i)-1; fC810O2(i)=fC810O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89NO3 + OH = CH3COCH3 + CO13C4CHO + NO2';
k(:,i) = 2.56e-11;
Gstr{i,1} = 'C89NO3'; Gstr{i,2} = 'OH'; 
fC89NO3(i)=fC89NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89NO3 =  + C810O2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C89NO3'; 
fC89NO3(i)=fC89NO3(i)-1; fC810O2(i)=fC810O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89NO3 =  + C810O2 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C89NO3'; 
fC89NO3(i)=fC89NO3(i)-1; fC810O2(i)=fC810O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89OH + OH =  + C810O2';
k(:,i) = 2.86e-11;
Gstr{i,1} = 'C89OH'; Gstr{i,2} = 'OH'; 
fC89OH(i)=fC89OH(i)-1; fOH(i)=fOH(i)-1; fC810O2(i)=fC810O2(i)+1; 

i=i+1;
Rnames{i} = 'C89OH =  + C810O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C89OH'; 
fC89OH(i)=fC89OH(i)-1; fC810O2(i)=fC810O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C926OOH + OH = C926O2';
k(:,i) = 3.08e-11;
Gstr{i,1} = 'C926OOH'; Gstr{i,2} = 'OH'; 
fC926OOH(i)=fC926OOH(i)-1; fOH(i)=fOH(i)-1; fC926O2(i)=fC926O2(i)+1; 

i=i+1;
Rnames{i} = 'C926OOH =  + CH3CO3 + CO25C6CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C926OOH'; 
fC926OOH(i)=fC926OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO25C6CHO(i)=fCO25C6CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C926OOH =  + CH3CO3 + CO25C6CHO + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C926OOH'; 
fC926OOH(i)=fC926OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO25C6CHO(i)=fCO25C6CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C926OH + OH = CH3CO3 + CO25C6CHO';
k(:,i) = 2.73e-11;
Gstr{i,1} = 'C926OH'; Gstr{i,2} = 'OH'; 
fC926OH(i)=fC926OH(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO25C6CHO(i)=fCO25C6CHO(i)+1; 

i=i+1;
Rnames{i} = 'C926OH =  + CH3CO3 + CO25C6CHO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C926OH'; 
fC926OH(i)=fC926OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO25C6CHO(i)=fCO25C6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3H + OH = C817CO3';
k(:,i) = 2.28e-11;
Gstr{i,1} = 'C817CO3H'; Gstr{i,2} = 'OH'; 
fC817CO3H(i)=fC817CO3H(i)-1; fOH(i)=fOH(i)-1; fC817CO3(i)=fC817CO3(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3H = C817O2 + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'C817CO3H'; 
fC817CO3H(i)=fC817CO3H(i)-1; fC817O2(i)=fC817O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C817CO3H = C817O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C817CO3H'; 
fC817CO3H(i)=fC817CO3H(i)-1; fC817O2(i)=fC817O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'KLIMONONIC + OH = C817O2';
k(:,i) = 1.97e-11;
Gstr{i,1} = 'KLIMONONIC'; Gstr{i,2} = 'OH'; 
fKLIMONONIC(i)=fKLIMONONIC(i)-1; fOH(i)=fOH(i)-1; fC817O2(i)=fC817O2(i)+1; 

i=i+1;
Rnames{i} = 'KLIMONONIC = C817O2 + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'KLIMONONIC'; 
fKLIMONONIC(i)=fKLIMONONIC(i)-1; fC817O2(i)=fC817O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C817PAN + OH = C817CO + CO + NO2';
k(:,i) = 1.92e-11;
Gstr{i,1} = 'C817PAN'; Gstr{i,2} = 'OH'; 
fC817PAN(i)=fC817PAN(i)-1; fOH(i)=fOH(i)-1; fC817CO(i)=fC817CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817PAN = C817CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C817PAN'; 
fC817PAN(i)=fC817PAN(i)-1; fC817CO3(i)=fC817CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817OOH + OH = C817CO + OH';
k(:,i) = 3.21e-11;
Gstr{i,1} = 'C817OOH'; Gstr{i,2} = 'OH'; 
fC817OOH(i)=fC817OOH(i)-1; fOH(i)=fOH(i)-1; fC817CO(i)=fC817CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C817OOH =  + C818O2 + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'C817OOH'; 
fC817OOH(i)=fC817OOH(i)-1; fC818O2(i)=fC818O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C817OOH =  + C818O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C817OOH'; 
fC817OOH(i)=fC817OOH(i)-1; fC818O2(i)=fC818O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C817NO3 + OH = C817CO + NO2';
k(:,i) = 1.62e-11;
Gstr{i,1} = 'C817NO3'; Gstr{i,2} = 'OH'; 
fC817NO3(i)=fC817NO3(i)-1; fOH(i)=fOH(i)-1; fC817CO(i)=fC817CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817NO3 =  + C818O2 + NO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'C817NO3'; 
fC817NO3(i)=fC817NO3(i)-1; fC818O2(i)=fC818O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817NO3 =  + C818O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C817NO3'; 
fC817NO3(i)=fC817NO3(i)-1; fC818O2(i)=fC818O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C817CO + OH = C727CO3';
k(:,i) = 2.72e-11;
Gstr{i,1} = 'C817CO'; Gstr{i,2} = 'OH'; 
fC817CO(i)=fC817CO(i)-1; fOH(i)=fOH(i)-1; fC727CO3(i)=fC727CO3(i)+1; 

i=i+1;
Rnames{i} = 'C817OH + OH = C817CO + HO2';
k(:,i) = 2.31e-11;
Gstr{i,1} = 'C817OH'; Gstr{i,2} = 'OH'; 
fC817OH(i)=fC817OH(i)-1; fOH(i)=fOH(i)-1; fC817CO(i)=fC817CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C817OH = C818O2 + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'C817OH'; 
fC817OH(i)=fC817OH(i)-1; fC818O2(i)=fC818O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC826OOH + OH = NC826O2';
k(:,i) = 5.89e-11;
Gstr{i,1} = 'NC826OOH'; Gstr{i,2} = 'OH'; 
fNC826OOH(i)=fNC826OOH(i)-1; fOH(i)=fOH(i)-1; fNC826O2(i)=fNC826O2(i)+1; 

i=i+1;
Rnames{i} = 'NC826OOH =  + C626CHO + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC826OOH'; 
fNC826OOH(i)=fNC826OOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC826OOH =  + C626CHO + HCHO + NO2 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'NC826OOH'; 
fNC826OOH(i)=fNC826OOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC826OH + OH =  + C626CHO + HCHO + NO2';
k(:,i) = 5.54e-11;
Gstr{i,1} = 'NC826OH'; Gstr{i,2} = 'OH'; 
fNC826OH(i)=fNC826OH(i)-1; fOH(i)=fOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC826OH =  + C626CHO + HCHO + NO2 + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'NC826OH'; 
fNC826OH(i)=fNC826OH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3 + HO2 = C626CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C626CO3'; Gstr{i,2} = 'HO2'; 
fC626CO3(i)=fC626CO3(i)-1; fHO2(i)=fHO2(i)-1; fC626CO2H(i)=fC626CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3 + HO2 = C626CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C626CO3'; Gstr{i,2} = 'HO2'; 
fC626CO3(i)=fC626CO3(i)-1; fHO2(i)=fHO2(i)-1; fC626CO3H(i)=fC626CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3 + HO2 = C626O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C626CO3'; Gstr{i,2} = 'HO2'; 
fC626CO3(i)=fC626CO3(i)-1; fHO2(i)=fHO2(i)-1; fC626O2(i)=fC626O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3 + NO = C626O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C626CO3'; Gstr{i,2} = 'NO'; 
fC626CO3(i)=fC626CO3(i)-1; fNO(i)=fNO(i)-1; fC626O2(i)=fC626O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3 + NO2 = C626PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C626CO3'; Gstr{i,2} = 'NO2'; 
fC626CO3(i)=fC626CO3(i)-1; fNO2(i)=fNO2(i)-1; fC626PAN(i)=fC626PAN(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3 + NO3 = C626O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C626CO3'; Gstr{i,2} = 'NO3'; 
fC626CO3(i)=fC626CO3(i)-1; fNO3(i)=fNO3(i)-1; fC626O2(i)=fC626O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3 = C626CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C626CO3'; Gstr{i,2} = 'RO2';
fC626CO3(i)=fC626CO3(i)-1; fC626CO2H(i)=fC626CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3 = C626O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C626CO3'; Gstr{i,2} = 'RO2';
fC626CO3(i)=fC626CO3(i)-1; fC626O2(i)=fC626O2(i)+1; 

i=i+1;
Rnames{i} = 'C626O2 + HO2 = C626OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C626O2'; Gstr{i,2} = 'HO2'; 
fC626O2(i)=fC626O2(i)-1; fHO2(i)=fHO2(i)-1; fC626OOH(i)=fC626OOH(i)+1; 

i=i+1;
Rnames{i} = 'C626O2 + NO = C626NO3';
k(:,i) = KRO2NO.*0.078;
Gstr{i,1} = 'C626O2'; Gstr{i,2} = 'NO'; 
fC626O2(i)=fC626O2(i)-1; fNO(i)=fNO(i)-1; fC626NO3(i)=fC626NO3(i)+1; 

i=i+1;
Rnames{i} = 'C626O2 + NO =  + C622CO3 + NO2';
k(:,i) = KRO2NO.*0.922;
Gstr{i,1} = 'C626O2'; Gstr{i,2} = 'NO'; 
fC626O2(i)=fC626O2(i)-1; fNO(i)=fNO(i)-1; fC622CO3(i)=fC622CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C626O2 + NO3 =  + C622CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C626O2'; Gstr{i,2} = 'NO3'; 
fC626O2(i)=fC626O2(i)-1; fNO3(i)=fNO3(i)-1; fC622CO3(i)=fC622CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C626O2 = C511CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C626O2'; 
fC626O2(i)=fC626O2(i)-1; fC511CHO(i)=fC511CHO(i)+1; 

i=i+1;
Rnames{i} = 'C626O2 = C517CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C626O2'; 
fC626O2(i)=fC626O2(i)-1; fC517CHO(i)=fC517CHO(i)+1; 

i=i+1;
Rnames{i} = 'C626O2 =  + C622CO3';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C626O2'; 
fC626O2(i)=fC626O2(i)-1; fC622CO3(i)=fC622CO3(i)+1; 

i=i+1;
Rnames{i} = 'C735O2 + HO2 = C735OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C735O2'; Gstr{i,2} = 'HO2'; 
fC735O2(i)=fC735O2(i)-1; fHO2(i)=fHO2(i)-1; fC735OOH(i)=fC735OOH(i)+1; 

i=i+1;
Rnames{i} = 'C735O2 + NO =  + CO13C4CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C735O2'; Gstr{i,2} = 'NO'; 
fC735O2(i)=fC735O2(i)-1; fNO(i)=fNO(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C735O2 + NO3 =  + CO13C4CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C735O2'; Gstr{i,2} = 'NO3'; 
fC735O2(i)=fC735O2(i)-1; fNO3(i)=fNO3(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C735O2 =  + CO13C4CHO + CH3CO3';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C735O2'; Gstr{i,2} = 'RO2';
fC735O2(i)=fC735O2(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C735O2 = C735OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C735O2'; Gstr{i,2} = 'RO2';
fC735O2(i)=fC735O2(i)-1; fC735OH(i)=fC735OH(i)+1; 

i=i+1;
Rnames{i} = 'C826OOH + OH = C826O2';
k(:,i) = 6.05e-11;
Gstr{i,1} = 'C826OOH'; Gstr{i,2} = 'OH'; 
fC826OOH(i)=fC826OOH(i)-1; fOH(i)=fOH(i)-1; fC826O2(i)=fC826O2(i)+1; 

i=i+1;
Rnames{i} = 'C826OOH =  + C626CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C826OOH'; 
fC826OOH(i)=fC826OOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C826OOH =  + C626CHO + HCHO + HO2 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C826OOH'; 
fC826OOH(i)=fC826OOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C826NO3 + OH = C626CHO + HCHO + NO2';
k(:,i) = 4.59e-11;
Gstr{i,1} = 'C826NO3'; Gstr{i,2} = 'OH'; 
fC826NO3(i)=fC826NO3(i)-1; fOH(i)=fOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C826OH + OH =  + C626CHO + HCHO + HO2';
k(:,i) = 5.70e-11;
Gstr{i,1} = 'C826OH'; Gstr{i,2} = 'OH'; 
fC826OH(i)=fC826OH(i)-1; fOH(i)=fOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C826OH =  + C626CHO + HCHO + HO2 + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C826OH'; 
fC826OH(i)=fC826OH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C729OOH + OH = C622CHO + OH';
k(:,i) = 9.57e-11;
Gstr{i,1} = 'C729OOH'; Gstr{i,2} = 'OH'; 
fC729OOH(i)=fC729OOH(i)-1; fOH(i)=fOH(i)-1; fC622CHO(i)=fC622CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C729OOH =  + C622CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C729OOH'; 
fC729OOH(i)=fC729OOH(i)-1; fC622CO3(i)=fC622CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C729OOH =  + C622CO3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C729OOH'; 
fC729OOH(i)=fC729OOH(i)-1; fC622CO3(i)=fC622CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C729NO3 + OH = C622CHO + NO2';
k(:,i) = 7.51e-11;
Gstr{i,1} = 'C729NO3'; Gstr{i,2} = 'OH'; 
fC729NO3(i)=fC729NO3(i)-1; fOH(i)=fOH(i)-1; fC622CHO(i)=fC622CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C729NO3 =  + C622CO3 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C729NO3'; 
fC729NO3(i)=fC729NO3(i)-1; fC622CO3(i)=fC622CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C622CHO + NO3 = C622CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C622CHO'; Gstr{i,2} = 'NO3'; 
fC622CHO(i)=fC622CHO(i)-1; fNO3(i)=fNO3(i)-1; fC622CO3(i)=fC622CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C622CHO + NO3 = NC728O2';
k(:,i) = 3.30e-13;
Gstr{i,1} = 'C622CHO'; Gstr{i,2} = 'NO3'; 
fC622CHO(i)=fC622CHO(i)-1; fNO3(i)=fNO3(i)-1; fNC728O2(i)=fNC728O2(i)+1; 

i=i+1;
Rnames{i} = 'C622CHO + O3 = C517CHO +  + 0.370CH2OO + 0.500CO + 0.130HO2 + 0.130CO + 0.130OH';
k(:,i) = 1.30e-17.*0.330;
Gstr{i,1} = 'C622CHO'; Gstr{i,2} = 'O3'; 
fC622CHO(i)=fC622CHO(i)-1; fO3(i)=fO3(i)-1; fC517CHO(i)=fC517CHO(i)+1; fCH2OO(i)=fCH2OO(i)+0.370; fCO(i)=fCO(i)+0.500; fHO2(i)=fHO2(i)+0.130; fCO(i)=fCO(i)+0.130; fOH(i)=fOH(i)+0.130; 

i=i+1;
Rnames{i} = 'C622CHO + O3 =  + C628O2 + OH + HCHO';
k(:,i) = 1.30e-17.*0.670;
Gstr{i,1} = 'C622CHO'; Gstr{i,2} = 'O3'; 
fC622CHO(i)=fC622CHO(i)-1; fO3(i)=fO3(i)-1; fC628O2(i)=fC628O2(i)+1; fOH(i)=fOH(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C622CHO + OH = C622CO3';
k(:,i) = 8.67e-11.*0.288;
Gstr{i,1} = 'C622CHO'; Gstr{i,2} = 'OH'; 
fC622CHO(i)=fC622CHO(i)-1; fOH(i)=fOH(i)-1; fC622CO3(i)=fC622CO3(i)+1; 

i=i+1;
Rnames{i} = 'C622CHO + OH = C728O2';
k(:,i) = 8.67e-11.*0.712;
Gstr{i,1} = 'C622CHO'; Gstr{i,2} = 'OH'; 
fC622CHO(i)=fC622CHO(i)-1; fOH(i)=fOH(i)-1; fC728O2(i)=fC728O2(i)+1; 

i=i+1;
Rnames{i} = 'C622CHO = C622O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C622CHO'; 
fC622CHO(i)=fC622CHO(i)-1; fC622O2(i)=fC622O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C822O2 + HO2 = C822OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C822O2'; Gstr{i,2} = 'HO2'; 
fC822O2(i)=fC822O2(i)-1; fHO2(i)=fHO2(i)-1; fC822OOH(i)=fC822OOH(i)+1; 

i=i+1;
Rnames{i} = 'C822O2 + NO = C822NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C822O2'; Gstr{i,2} = 'NO'; 
fC822O2(i)=fC822O2(i)-1; fNO(i)=fNO(i)-1; fC822NO3(i)=fC822NO3(i)+1; 

i=i+1;
Rnames{i} = 'C822O2 + NO =  + C824O2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C822O2'; Gstr{i,2} = 'NO'; 
fC822O2(i)=fC822O2(i)-1; fNO(i)=fNO(i)-1; fC824O2(i)=fC824O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C822O2 + NO3 =  + C824O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C822O2'; Gstr{i,2} = 'NO3'; 
fC822O2(i)=fC822O2(i)-1; fNO3(i)=fNO3(i)-1; fC824O2(i)=fC824O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C822O2 = C729CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C822O2'; Gstr{i,2} = 'RO2';
fC822O2(i)=fC822O2(i)-1; fC729CHO(i)=fC729CHO(i)+1; 

i=i+1;
Rnames{i} = 'C822O2 =  + C824O2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C822O2'; Gstr{i,2} = 'RO2';
fC822O2(i)=fC822O2(i)-1; fC824O2(i)=fC824O2(i)+1; 

i=i+1;
Rnames{i} = 'C822O2 = C822OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C822O2'; Gstr{i,2} = 'RO2';
fC822O2(i)=fC822O2(i)-1; fC822OH(i)=fC822OH(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3 + HO2 = C823CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C823CO3'; Gstr{i,2} = 'HO2'; 
fC823CO3(i)=fC823CO3(i)-1; fHO2(i)=fHO2(i)-1; fC823CO3H(i)=fC823CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3 + HO2 = C823O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C823CO3'; Gstr{i,2} = 'HO2'; 
fC823CO3(i)=fC823CO3(i)-1; fHO2(i)=fHO2(i)-1; fC823O2(i)=fC823O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3 + HO2 = LIMONIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C823CO3'; Gstr{i,2} = 'HO2'; 
fC823CO3(i)=fC823CO3(i)-1; fHO2(i)=fHO2(i)-1; fLIMONIC(i)=fLIMONIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3 + NO = C823O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C823CO3'; Gstr{i,2} = 'NO'; 
fC823CO3(i)=fC823CO3(i)-1; fNO(i)=fNO(i)-1; fC823O2(i)=fC823O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3 + NO2 = C823PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C823CO3'; Gstr{i,2} = 'NO2'; 
fC823CO3(i)=fC823CO3(i)-1; fNO2(i)=fNO2(i)-1; fC823PAN(i)=fC823PAN(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3 + NO3 = C823O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C823CO3'; Gstr{i,2} = 'NO3'; 
fC823CO3(i)=fC823CO3(i)-1; fNO3(i)=fNO3(i)-1; fC823O2(i)=fC823O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3 = C823O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C823CO3'; Gstr{i,2} = 'RO2';
fC823CO3(i)=fC823CO3(i)-1; fC823O2(i)=fC823O2(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3 = LIMONIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C823CO3'; Gstr{i,2} = 'RO2';
fC823CO3(i)=fC823CO3(i)-1; fLIMONIC(i)=fLIMONIC(i)+1; 

i=i+1;
Rnames{i} = 'C925O2 + HO2 = C925OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C925O2'; Gstr{i,2} = 'HO2'; 
fC925O2(i)=fC925O2(i)-1; fHO2(i)=fHO2(i)-1; fC925OOH(i)=fC925OOH(i)+1; 

i=i+1;
Rnames{i} = 'C925O2 + NO =  + C818CO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C925O2'; Gstr{i,2} = 'NO'; 
fC925O2(i)=fC925O2(i)-1; fNO(i)=fNO(i)-1; fC818CO(i)=fC818CO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C925O2 + NO3 =  + C818CO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C925O2'; Gstr{i,2} = 'NO3'; 
fC925O2(i)=fC925O2(i)-1; fNO3(i)=fNO3(i)-1; fC818CO(i)=fC818CO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C925O2 =  + C818CO + HCHO + HO2';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C925O2'; Gstr{i,2} = 'RO2';
fC925O2(i)=fC925O2(i)-1; fC818CO(i)=fC818CO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3 + HO2 = C622CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C622CO3'; Gstr{i,2} = 'HO2'; 
fC622CO3(i)=fC622CO3(i)-1; fHO2(i)=fHO2(i)-1; fC622CO2H(i)=fC622CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3 + HO2 = C622CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C622CO3'; Gstr{i,2} = 'HO2'; 
fC622CO3(i)=fC622CO3(i)-1; fHO2(i)=fHO2(i)-1; fC622CO3H(i)=fC622CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3 + HO2 = C622O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C622CO3'; Gstr{i,2} = 'HO2'; 
fC622CO3(i)=fC622CO3(i)-1; fHO2(i)=fHO2(i)-1; fC622O2(i)=fC622O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3 + NO = C622O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C622CO3'; Gstr{i,2} = 'NO'; 
fC622CO3(i)=fC622CO3(i)-1; fNO(i)=fNO(i)-1; fC622O2(i)=fC622O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3 + NO2 = C622PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C622CO3'; Gstr{i,2} = 'NO2'; 
fC622CO3(i)=fC622CO3(i)-1; fNO2(i)=fNO2(i)-1; fC622PAN(i)=fC622PAN(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3 + NO3 = C622O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C622CO3'; Gstr{i,2} = 'NO3'; 
fC622CO3(i)=fC622CO3(i)-1; fNO3(i)=fNO3(i)-1; fC622O2(i)=fC622O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3 = C622CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C622CO3'; Gstr{i,2} = 'RO2';
fC622CO3(i)=fC622CO3(i)-1; fC622CO2H(i)=fC622CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3 = C622O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C622CO3'; Gstr{i,2} = 'RO2';
fC622CO3(i)=fC622CO3(i)-1; fC622O2(i)=fC622O2(i)+1; 

i=i+1;
Rnames{i} = 'C816CO + OH = C819O2';
k(:,i) = 5.20e-11;
Gstr{i,1} = 'C816CO'; Gstr{i,2} = 'OH'; 
fC816CO(i)=fC816CO(i)-1; fOH(i)=fOH(i)-1; fC819O2(i)=fC819O2(i)+1; 

i=i+1;
Rnames{i} = 'C816CO = MACO3 + MEKAO2';
k(:,i) = J18;
Gstr{i,1} = 'C816CO'; 
fC816CO(i)=fC816CO(i)-1; fMACO3(i)=fMACO3(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'C816CO = MACO3 + MEKAO2';
k(:,i) = J19;
Gstr{i,1} = 'C816CO'; 
fC816CO(i)=fC816CO(i)-1; fMACO3(i)=fMACO3(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + HO2 = MEKAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'HO2'; 
fMEKAO2(i)=fMEKAO2(i)-1; fHO2(i)=fHO2(i)-1; fMEKAOOH(i)=fMEKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO = MEKANO3';
k(:,i) = KRO2NO.*0.033;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO(i)=fNO(i)-1; fMEKANO3(i)=fMEKANO3(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO =  + CO2C3CHO + HO2 + HO1CO3C4O2 + NO2';
k(:,i) = KRO2NO.*0.967;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO(i)=fNO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO3 =  + CO2C3CHO + HO2 + HO1CO3C4O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO3'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 = CO2C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 =  + CO2C3CHO + HO2 + HO1CO3C4O2';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 = MEKAOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAOOH + OH = LMLKACO + OH';
k(:,i) = 5.79e-11;
Gstr{i,1} = 'LMLKAOOH'; Gstr{i,2} = 'OH'; 
fLMLKAOOH(i)=fLMLKAOOH(i)-1; fOH(i)=fOH(i)-1; fLMLKACO(i)=fLMLKACO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAOOH = C626CHO + OH + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'LMLKAOOH'; 
fLMLKAOOH(i)=fLMLKAOOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fOH(i)=fOH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAOOH =  + C626CHO + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'LMLKAOOH'; 
fLMLKAOOH(i)=fLMLKAOOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKACO + OH = C626CHO + CH3CO3';
k(:,i) = 3.58e-11;
Gstr{i,1} = 'LMLKACO'; Gstr{i,2} = 'OH'; 
fLMLKACO(i)=fLMLKACO(i)-1; fOH(i)=fOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LMLKACO = C626CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'LMLKACO'; 
fLMLKACO(i)=fLMLKACO(i)-1; fC626CO3(i)=fC626CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAOH + OH = LMLKACO + HO2';
k(:,i) = 4.57e-11;
Gstr{i,1} = 'LMLKAOH'; Gstr{i,2} = 'OH'; 
fLMLKAOH(i)=fLMLKAOH(i)-1; fOH(i)=fOH(i)-1; fLMLKACO(i)=fLMLKACO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKAOH = C626CHO + HO2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'LMLKAOH'; 
fLMLKAOH(i)=fLMLKAOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHO2(i)=fHO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBOOH + OH = LMLKBCO + OH';
k(:,i) = 4.77e-11;
Gstr{i,1} = 'LMLKBOOH'; Gstr{i,2} = 'OH'; 
fLMLKBOOH(i)=fLMLKBOOH(i)-1; fOH(i)=fOH(i)-1; fLMLKBCO(i)=fLMLKBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBOOH = C731CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'LMLKBOOH'; 
fLMLKBOOH(i)=fLMLKBOOH(i)-1; fC731CO3(i)=fC731CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBOOH =  + C731CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'LMLKBOOH'; 
fLMLKBOOH(i)=fLMLKBOOH(i)-1; fC731CO3(i)=fC731CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBCO + OH = C731CO3 + CO';
k(:,i) = 5.09e-11;
Gstr{i,1} = 'LMLKBCO'; Gstr{i,2} = 'OH'; 
fLMLKBCO(i)=fLMLKBCO(i)-1; fOH(i)=fOH(i)-1; fC731CO3(i)=fC731CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBCO = C731CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'LMLKBCO'; 
fLMLKBCO(i)=fLMLKBCO(i)-1; fC731CO3(i)=fC731CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBOH + OH = LMLKBCO + HO2';
k(:,i) = 4.09e-11;
Gstr{i,1} = 'LMLKBOH'; Gstr{i,2} = 'OH'; 
fLMLKBOH(i)=fLMLKBOH(i)-1; fOH(i)=fOH(i)-1; fLMLKBCO(i)=fLMLKBCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'LMLKBOH = C731CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'LMLKBOH'; 
fLMLKBOH(i)=fLMLKBOH(i)-1; fC731CO3(i)=fC731CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'INAHPPAN = HMVKANO3 + OH + NO3';
k(:,i) = J41;
Gstr{i,1} = 'INAHPPAN'; 
fINAHPPAN(i)=fINAHPPAN(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHPPAN = INAHPCO3 + NO2';
k(:,i) = KBPAN;
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
Rnames{i} = 'HPNC524CO = HMVKNO3 + CO + HO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'HPNC524CO'; 
fHPNC524CO(i)=fHPNC524CO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DNC524CO + OH = HMVKNO3 + CO + NO2';
k(:,i) = 1.93e-11;
Gstr{i,1} = 'DNC524CO'; Gstr{i,2} = 'OH'; 
fDNC524CO(i)=fDNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNC524CO = HMVKNO3 + CO + HO2 + NO2';
k(:,i) = J17;
Gstr{i,1} = 'DNC524CO'; 
fDNC524CO(i)=fDNC524CO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 + OH = HMVKNGLYOX + HO2';
k(:,i) = 3.85e-12;
Gstr{i,1} = 'HMVKNO3'; Gstr{i,2} = 'OH'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fOH(i)=fOH(i)-1; fHMVKNGLYOX(i)=fHMVKNGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 = HOCH2CHO + NO2 + CO + CO + HO2';
k(:,i) = J56;
Gstr{i,1} = 'HMVKNO3'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 = HOCH2CHO + NO2 + CO + CO + HO2';
k(:,i) = J57;
Gstr{i,1} = 'HMVKNO3'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'HNC524CO + OH = HMVKNO3 + CO + HO2';
k(:,i) = 2.67e-11;
Gstr{i,1} = 'HNC524CO'; Gstr{i,2} = 'OH'; 
fHNC524CO(i)=fHNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNC524CO = HMVKNO3 + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'HNC524CO'; 
fHNC524CO(i)=fHNC524CO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACO2H + OH = HOCH2CO3 + HCHO';
k(:,i) = 1.84e-11;
Gstr{i,1} = 'HMACO2H'; Gstr{i,2} = 'OH'; 
fHMACO2H(i)=fHMACO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H + OH = HMACO3';
k(:,i) = 1.99e-11;
Gstr{i,1} = 'HMACO3H'; Gstr{i,2} = 'OH'; 
fHMACO3H(i)=fHMACO3H(i)-1; fOH(i)=fOH(i)-1; fHMACO3(i)=fHMACO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H = HOCH2CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMACO3H'; 
fHMACO3H(i)=fHMACO3H(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMPAN + OH = H13CO2C3 + HCHO + CO + NO2';
k(:,i) = 2.90e-11;
Gstr{i,1} = 'HMPAN'; Gstr{i,2} = 'OH'; 
fHMPAN(i)=fHMPAN(i)-1; fOH(i)=fOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'MMALNACO2H + OH = CONM2CHO + HO2';
k(:,i) = 4.93e-12;
Gstr{i,1} = 'MMALNACO2H'; Gstr{i,2} = 'OH'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO2H = MGLYOX + NO2 + HCOCO2H';
k(:,i) = J56;
Gstr{i,1} = 'MMALNACO2H'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO2H = MGLYOX + NO2 + HCOCO2H';
k(:,i) = J57;
Gstr{i,1} = 'MMALNACO2H'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H + OH = MMALNACO3';
k(:,i) = 8.01e-12;
Gstr{i,1} = 'MMALNACO3H'; Gstr{i,2} = 'OH'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H = CONM2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MMALNACO3H'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H = MGLYOX + NO2 + HCOCO3H';
k(:,i) = J56;
Gstr{i,1} = 'MMALNACO3H'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H = MGLYOX + NO2 + HCOCO3H';
k(:,i) = J57;
Gstr{i,1} = 'MMALNACO3H'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN + OH = CONM2CHO + HO2 + NO3';
k(:,i) = 4.41e-12;
Gstr{i,1} = 'MMALNAPAN'; Gstr{i,2} = 'OH'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN = MGLYOX + NO2 + GLYPAN';
k(:,i) = J56;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fGLYPAN(i)=fGLYPAN(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN = MGLYOX + NO2 + GLYPAN';
k(:,i) = J57;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fGLYPAN(i)=fGLYPAN(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN = MMALNACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'INDHPPAN = MVKNO3 + OH + NO3';
k(:,i) = J41;
Gstr{i,1} = 'INDHPPAN'; 
fINDHPPAN(i)=fINDHPPAN(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

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
Rnames{i} = 'CO235C6CO3 + HO2 = C235C6CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'HO2'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fC235C6CO3H(i)=fC235C6CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + HO2 = CO235C6O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'HO2'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + NO = CO235C6O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'NO'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fNO(i)=fNO(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + NO2 = C7PAN3';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'NO2'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fNO2(i)=fNO2(i)-1; fC7PAN3(i)=fC7PAN3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + NO3 = CO235C6O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'NO3'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fNO3(i)=fNO3(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 = CO235C6O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'RO2';
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + HO2 = CHOC3COO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'HO2'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + HO2 = CHOC3COOOH';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'HO2'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOC3COOOH(i)=fCHOC3COOOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + NO = CHOC3COO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'NO'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fNO(i)=fNO(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + NO2 = CHOC3COPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'NO2'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fNO2(i)=fNO2(i)-1; fCHOC3COPAN(i)=fCHOC3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + NO3 = CHOC3COO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'NO3'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fNO3(i)=fNO3(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 = CHOC3COO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'RO2';
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; 

i=i+1;
Rnames{i} = 'C106OOH + OH = C106O2';
k(:,i) = 8.01e-11;
Gstr{i,1} = 'C106OOH'; Gstr{i,2} = 'OH'; 
fC106OOH(i)=fC106OOH(i)-1; fOH(i)=fOH(i)-1; fC106O2(i)=fC106O2(i)+1; 

i=i+1;
Rnames{i} = 'C106OOH =  + C716O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C106OOH'; 
fC106OOH(i)=fC106OOH(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C106OOH =  + C716O2 + CH3COCH3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C106OOH'; 
fC106OOH(i)=fC106OOH(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C106NO3 + OH = CO235C6CHO + CH3COCH3 + NO2';
k(:,i) = 7.03e-11;
Gstr{i,1} = 'C106NO3'; Gstr{i,2} = 'OH'; 
fC106NO3(i)=fC106NO3(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106NO3 =  + C716O2 + CH3COCH3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C106NO3'; 
fC106NO3(i)=fC106NO3(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106NO3 =  + C716O2 + CH3COCH3 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C106NO3'; 
fC106NO3(i)=fC106NO3(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106OH + OH =  + C716O2 + CH3COCH3';
k(:,i) = 7.66e-11;
Gstr{i,1} = 'C106OH'; Gstr{i,2} = 'OH'; 
fC106OH(i)=fC106OH(i)-1; fOH(i)=fOH(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C106OH =  + C716O2 + CH3COCH3 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C106OH'; 
fC106OH(i)=fC106OH(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC71O2 + HO2 = NC71OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NC71O2'; Gstr{i,2} = 'HO2'; 
fNC71O2(i)=fNC71O2(i)-1; fHO2(i)=fHO2(i)-1; fNC71OOH(i)=fNC71OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC71O2 + NO =  + CO235C6CHO + NO2 + NC71CO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC71O2'; Gstr{i,2} = 'NO'; 
fNC71O2(i)=fNC71O2(i)-1; fNO(i)=fNO(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fNO2(i)=fNO2(i)+1; fNC71CO(i)=fNC71CO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC71O2 + NO3 =  + CO235C6CHO + NO2 + NC71CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC71O2'; Gstr{i,2} = 'NO3'; 
fNC71O2(i)=fNC71O2(i)-1; fNO3(i)=fNO3(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fNO2(i)=fNO2(i)+1; fNC71CO(i)=fNC71CO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC71O2 =  + CO235C6CHO + NO2 + NC71CO + HO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NC71O2'; Gstr{i,2} = 'RO2';
fNC71O2(i)=fNC71O2(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fNO2(i)=fNO2(i)+1; fNC71CO(i)=fNC71CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C717OOH + OH = CO235C6CHO + OH';
k(:,i) = 2.00e-10;
Gstr{i,1} = 'C717OOH'; Gstr{i,2} = 'OH'; 
fC717OOH(i)=fC717OOH(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C717OOH =  + CO235C6CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C717OOH'; 
fC717OOH(i)=fC717OOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C717OOH =  + CO235C6CHO + HO2 + OH';
k(:,i) = J35;
Gstr{i,1} = 'C717OOH'; 
fC717OOH(i)=fC717OOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C717NO3 + OH = CO235C6CHO + NO2';
k(:,i) = 2.23e-11;
Gstr{i,1} = 'C717NO3'; Gstr{i,2} = 'OH'; 
fC717NO3(i)=fC717NO3(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717NO3 =  + CO235C6CHO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C717NO3'; 
fC717NO3(i)=fC717NO3(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717NO3 =  + CO235C6CHO + HO2 + NO2';
k(:,i) = J35;
Gstr{i,1} = 'C717NO3'; 
fC717NO3(i)=fC717NO3(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717OH + OH = CO235C6CHO + HO2';
k(:,i) = 1.26e-10;
Gstr{i,1} = 'C717OH'; Gstr{i,2} = 'OH'; 
fC717OH(i)=fC717OH(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C717OH =  + CO235C6CHO + HO2 + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C717OH'; 
fC717OH(i)=fC717OH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3H + OH = C811CO3';
k(:,i) = 1.04e-11;
Gstr{i,1} = 'C811CO3H'; Gstr{i,2} = 'OH'; 
fC811CO3H(i)=fC811CO3H(i)-1; fOH(i)=fOH(i)-1; fC811CO3(i)=fC811CO3(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3H = C811O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C811CO3H'; 
fC811CO3H(i)=fC811CO3H(i)-1; fC811O2(i)=fC811O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + HO2 = C811OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'HO2'; 
fC811O2(i)=fC811O2(i)-1; fHO2(i)=fHO2(i)-1; fC811OOH(i)=fC811OOH(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + NO = C811NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'NO'; 
fC811O2(i)=fC811O2(i)-1; fNO(i)=fNO(i)-1; fC811NO3(i)=fC811NO3(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + NO =  + C812O2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'NO'; 
fC811O2(i)=fC811O2(i)-1; fNO(i)=fNO(i)-1; fC812O2(i)=fC812O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + NO3 =  + C812O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'NO3'; 
fC811O2(i)=fC811O2(i)-1; fNO3(i)=fNO3(i)-1; fC812O2(i)=fC812O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 = C721CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'RO2';
fC811O2(i)=fC811O2(i)-1; fC721CHO(i)=fC721CHO(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 =  + C812O2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'RO2';
fC811O2(i)=fC811O2(i)-1; fC812O2(i)=fC812O2(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 = C811OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'RO2';
fC811O2(i)=fC811O2(i)-1; fC811OH(i)=fC811OH(i)+1; 

i=i+1;
Rnames{i} = 'PINIC + OH = C811O2';
k(:,i) = 7.29e-12;
Gstr{i,1} = 'PINIC'; Gstr{i,2} = 'OH'; 
fPINIC(i)=fPINIC(i)-1; fOH(i)=fOH(i)-1; fC811O2(i)=fC811O2(i)+1; 

i=i+1;
Rnames{i} = 'C811PAN + OH = C721CHO + CO + NO2';
k(:,i) = 6.77e-12;
Gstr{i,1} = 'C811PAN'; Gstr{i,2} = 'OH'; 
fC811PAN(i)=fC811PAN(i)-1; fOH(i)=fOH(i)-1; fC721CHO(i)=fC721CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811PAN = C811CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C811PAN'; 
fC811PAN(i)=fC811PAN(i)-1; fC811CO3(i)=fC811CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO2 + HO2 = C413COOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'CHOC3COO2'; Gstr{i,2} = 'HO2'; 
fCHOC3COO2(i)=fCHOC3COO2(i)-1; fHO2(i)=fHO2(i)-1; fC413COOOH(i)=fC413COOOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO2 + NO =  + HCOCH2CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CHOC3COO2'; Gstr{i,2} = 'NO'; 
fCHOC3COO2(i)=fCHOC3COO2(i)-1; fNO(i)=fNO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO2 + NO3 =  + HCOCH2CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CHOC3COO2'; Gstr{i,2} = 'NO3'; 
fCHOC3COO2(i)=fCHOC3COO2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO2 =  + HCOCH2CO3 + HCHO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'CHOC3COO2'; Gstr{i,2} = 'RO2';
fCHOC3COO2(i)=fCHOC3COO2(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C921OOH + OH = C921O2';
k(:,i) = 1.29e-11;
Gstr{i,1} = 'C921OOH'; Gstr{i,2} = 'OH'; 
fC921OOH(i)=fC921OOH(i)-1; fOH(i)=fOH(i)-1; fC921O2(i)=fC921O2(i)+1; 

i=i+1;
Rnames{i} = 'C921OOH =  + C922O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C921OOH'; 
fC921OOH(i)=fC921OOH(i)-1; fC922O2(i)=fC922O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C921OOH =  + C922O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C921OOH'; 
fC921OOH(i)=fC921OOH(i)-1; fC922O2(i)=fC922O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C98OOH + OH = C98O2';
k(:,i) = 2.05e-11;
Gstr{i,1} = 'C98OOH'; Gstr{i,2} = 'OH'; 
fC98OOH(i)=fC98OOH(i)-1; fOH(i)=fOH(i)-1; fC98O2(i)=fC98O2(i)+1; 

i=i+1;
Rnames{i} = 'C98OOH =  + C614O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C98OOH'; 
fC98OOH(i)=fC98OOH(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C98OOH =  + C614O2 + CH3COCH3 + OH';
k(:,i) = J35;
Gstr{i,1} = 'C98OOH'; 
fC98OOH(i)=fC98OOH(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C98NO3 + OH = CH3COCH3 + C614CO + NO2';
k(:,i) = 5.37e-12;
Gstr{i,1} = 'C98NO3'; Gstr{i,2} = 'OH'; 
fC98NO3(i)=fC98NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC614CO(i)=fC614CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98NO3 =  + C614O2 + CH3COCH3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C98NO3'; 
fC98NO3(i)=fC98NO3(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98NO3 =  + C614O2 + CH3COCH3 + NO2';
k(:,i) = J35;
Gstr{i,1} = 'C98NO3'; 
fC98NO3(i)=fC98NO3(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98OH + OH =  + C614O2 + CH3COCH3';
k(:,i) = 1.69e-11;
Gstr{i,1} = 'C98OH'; Gstr{i,2} = 'OH'; 
fC98OH(i)=fC98OH(i)-1; fOH(i)=fOH(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C98OH =  + C614O2 + CH3COCH3 + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C98OH'; 
fC98OH(i)=fC98OH(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C86OOH + OH = C86O2';
k(:,i) = 3.45e-11;
Gstr{i,1} = 'C86OOH'; Gstr{i,2} = 'OH'; 
fC86OOH(i)=fC86OOH(i)-1; fOH(i)=fOH(i)-1; fC86O2(i)=fC86O2(i)+1; 

i=i+1;
Rnames{i} = 'C86OOH =  + C511O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C86OOH'; 
fC86OOH(i)=fC86OOH(i)-1; fC511O2(i)=fC511O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C86OOH =  + C511O2 + CH3COCH3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C86OOH'; 
fC86OOH(i)=fC86OOH(i)-1; fC511O2(i)=fC511O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + HO2 = H3C25C6O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'HO2'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + HO2 = H3C25CCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'HO2'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C25CCO2H(i)=fH3C25CCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + HO2 = H3C25CCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'HO2'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C25CCO3H(i)=fH3C25CCO3H(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + NO = H3C25C6O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'NO'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fNO(i)=fNO(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + NO2 = H3C25C6PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'NO2'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fNO2(i)=fNO2(i)-1; fH3C25C6PAN(i)=fH3C25C6PAN(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + NO3 = H3C25C6O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'NO3'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fNO3(i)=fNO3(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 = H3C25C6O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'RO2';
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 = H3C25CCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'RO2';
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fH3C25CCO2H(i)=fH3C25CCO2H(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + HO2 = H3C25C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'HO2'; 
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fHO2(i)=fHO2(i)-1; fH3C25C6OOH(i)=fH3C25C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + NO =  + H3C2C4CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'NO'; 
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fNO(i)=fNO(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + NO3 =  + H3C2C4CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'NO3'; 
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fNO3(i)=fNO3(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 = H3C25C5CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'RO2';
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fH3C25C5CHO(i)=fH3C25C5CHO(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 =  + H3C2C4CO3 + HCHO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'RO2';
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 = H3C25C6OH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'RO2';
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fH3C25C6OH(i)=fH3C25C6OH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + HO2 = HCOCH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2CO2H(i)=fHCOCH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + HO2 = HCOCH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2CO3H(i)=fHCOCH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + HO2 = HCOCH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + NO = HCOCH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'NO'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fNO(i)=fNO(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + NO2 = C3PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'NO2'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fC3PAN2(i)=fC3PAN2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + NO3 = HCOCH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'NO3'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 = HCOCH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'RO2';
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHCOCH2CO2H(i)=fHCOCH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 = HCOCH2O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'RO2';
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C919OOH + OH = C919O2';
k(:,i) = 1.01e-10;
Gstr{i,1} = 'C919OOH'; Gstr{i,2} = 'OH'; 
fC919OOH(i)=fC919OOH(i)-1; fOH(i)=fOH(i)-1; fC919O2(i)=fC919O2(i)+1; 

i=i+1;
Rnames{i} = 'C919OOH =  + C620O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C919OOH'; 
fC919OOH(i)=fC919OOH(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C919OOH =  + C620O2 + CH3COCH3 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C919OOH'; 
fC919OOH(i)=fC919OOH(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C919NO3 + OH = HCOCH2CHO + HCOCH2CHO + CH3COCH3 + NO2';
k(:,i) = 9.14e-11;
Gstr{i,1} = 'C919NO3'; Gstr{i,2} = 'OH'; 
fC919NO3(i)=fC919NO3(i)-1; fOH(i)=fOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C919NO3 =  + C620O2 + CH3COCH3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C919NO3'; 
fC919NO3(i)=fC919NO3(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C919NO3 =  + C620O2 + CH3COCH3 + NO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C919NO3'; 
fC919NO3(i)=fC919NO3(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C919OH + OH =  + C620O2 + CH3COCH3';
k(:,i) = 9.73e-11;
Gstr{i,1} = 'C919OH'; Gstr{i,2} = 'OH'; 
fC919OH(i)=fC919OH(i)-1; fOH(i)=fOH(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C919OH =  + C620O2 + CH3COCH3 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C919OH'; 
fC919OH(i)=fC919OH(i)-1; fC620O2(i)=fC620O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C914OOH + OH = C914CO + OH';
k(:,i) = 8.67e-11;
Gstr{i,1} = 'C914OOH'; Gstr{i,2} = 'OH'; 
fC914OOH(i)=fC914OOH(i)-1; fOH(i)=fOH(i)-1; fC914CO(i)=fC914CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C914OOH =  + C87CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C914OOH'; 
fC914OOH(i)=fC914OOH(i)-1; fC87CO3(i)=fC87CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C914OOH =  + C87CO3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C914OOH'; 
fC914OOH(i)=fC914OOH(i)-1; fC87CO3(i)=fC87CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C914CO + OH = C87CO3';
k(:,i) = 7.09e-11;
Gstr{i,1} = 'C914CO'; Gstr{i,2} = 'OH'; 
fC914CO(i)=fC914CO(i)-1; fOH(i)=fOH(i)-1; fC87CO3(i)=fC87CO3(i)+1; 

i=i+1;
Rnames{i} = 'C914CO = C87CO3';
k(:,i) = J15;
Gstr{i,1} = 'C914CO'; 
fC914CO(i)=fC914CO(i)-1; fC87CO3(i)=fC87CO3(i)+1; 

i=i+1;
Rnames{i} = 'C914OH + OH = C914CO + HO2';
k(:,i) = 7.44e-11;
Gstr{i,1} = 'C914OH'; Gstr{i,2} = 'OH'; 
fC914OH(i)=fC914OH(i)-1; fOH(i)=fOH(i)-1; fC914CO(i)=fC914CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C916OOH + OH = C916O2';
k(:,i) = 9.73e-11;
Gstr{i,1} = 'C916OOH'; Gstr{i,2} = 'OH'; 
fC916OOH(i)=fC916OOH(i)-1; fOH(i)=fOH(i)-1; fC916O2(i)=fC916O2(i)+1; 

i=i+1;
Rnames{i} = 'C916OOH =  + CH3COCH3 + C616O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C916OOH'; 
fC916OOH(i)=fC916OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C916OOH =  + CH3COCH3 + C616O2 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C916OOH'; 
fC916OOH(i)=fC916OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C916NO3 + OH = CH3COCH3 + CO123C5CHO + NO2';
k(:,i) = 9.23e-11;
Gstr{i,1} = 'C916NO3'; Gstr{i,2} = 'OH'; 
fC916NO3(i)=fC916NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO123C5CHO(i)=fCO123C5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C916NO3 =  + CH3COCH3 + C616O2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C916NO3'; 
fC916NO3(i)=fC916NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C916NO3 =  + CH3COCH3 + C616O2 + NO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C916NO3'; 
fC916NO3(i)=fC916NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C916OH + OH =  + CH3COCH3 + C616O2';
k(:,i) = 9.03e-11;
Gstr{i,1} = 'C916OH'; Gstr{i,2} = 'OH'; 
fC916OH(i)=fC916OH(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; 

i=i+1;
Rnames{i} = 'C916OH =  + CH3COCH3 + C616O2 + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C916OH'; 
fC916OH(i)=fC916OH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC616O2(i)=fC616O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C88CO2H + OH = C88O2';
k(:,i) = 1.02e-11;
Gstr{i,1} = 'C88CO2H'; Gstr{i,2} = 'OH'; 
fC88CO2H(i)=fC88CO2H(i)-1; fOH(i)=fOH(i)-1; fC88O2(i)=fC88O2(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3H + OH = C88CO3';
k(:,i) = 1.37e-11;
Gstr{i,1} = 'C88CO3H'; Gstr{i,2} = 'OH'; 
fC88CO3H(i)=fC88CO3H(i)-1; fOH(i)=fOH(i)-1; fC88CO3(i)=fC88CO3(i)+1; 

i=i+1;
Rnames{i} = 'C88CO3H = C88O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C88CO3H'; 
fC88CO3H(i)=fC88CO3H(i)-1; fC88O2(i)=fC88O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C88PAN + OH = C88CO + CO + NO2';
k(:,i) = 7.50e-12;
Gstr{i,1} = 'C88PAN'; Gstr{i,2} = 'OH'; 
fC88PAN(i)=fC88PAN(i)-1; fOH(i)=fOH(i)-1; fC88CO(i)=fC88CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C88PAN = C88CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C88PAN'; 
fC88PAN(i)=fC88PAN(i)-1; fC88CO3(i)=fC88CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C88OOH + OH = C88CO + OH';
k(:,i) = 5.71e-11;
Gstr{i,1} = 'C88OOH'; Gstr{i,2} = 'OH'; 
fC88OOH(i)=fC88OOH(i)-1; fOH(i)=fOH(i)-1; fC88CO(i)=fC88CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C88OOH =  + C718CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C88OOH'; 
fC88OOH(i)=fC88OOH(i)-1; fC718CO3(i)=fC718CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C88CO + OH = C718CO3';
k(:,i) = 5.80e-12;
Gstr{i,1} = 'C88CO'; Gstr{i,2} = 'OH'; 
fC88CO(i)=fC88CO(i)-1; fOH(i)=fOH(i)-1; fC718CO3(i)=fC718CO3(i)+1; 

i=i+1;
Rnames{i} = 'C88OH + OH = C88CO + HO2';
k(:,i) = 2.58e-11;
Gstr{i,1} = 'C88OH'; Gstr{i,2} = 'OH'; 
fC88OH(i)=fC88OH(i)-1; fOH(i)=fOH(i)-1; fC88CO(i)=fC88CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C512OOH + OH = CO13C4CHO + OH';
k(:,i) = 1.01e-10;
Gstr{i,1} = 'C512OOH'; Gstr{i,2} = 'OH'; 
fC512OOH(i)=fC512OOH(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C512OOH =  + C513O2 + CO13C3CO2H + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C512OOH'; 
fC512OOH(i)=fC512OOH(i)-1; fC513O2(i)=fC513O2(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C512OOH =  + C513O2 + CO13C3CO2H + HCHO + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C512OOH'; 
fC512OOH(i)=fC512OOH(i)-1; fC513O2(i)=fC513O2(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C512NO3 + OH = CO13C4CHO + NO2';
k(:,i) = 6.65e-11;
Gstr{i,1} = 'C512NO3'; Gstr{i,2} = 'OH'; 
fC512NO3(i)=fC512NO3(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C512NO3 =  + C513O2 + CO13C3CO2H + HCHO + HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C512NO3'; 
fC512NO3(i)=fC512NO3(i)-1; fC513O2(i)=fC513O2(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C512NO3 =  + C513O2 + CO13C3CO2H + HCHO + HO2 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C512NO3'; 
fC512NO3(i)=fC512NO3(i)-1; fC513O2(i)=fC513O2(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C512OH + OH = CO13C4CHO + HO2';
k(:,i) = 7.96e-11;
Gstr{i,1} = 'C512OH'; Gstr{i,2} = 'OH'; 
fC512OH(i)=fC512OH(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C512OH =  + C513O2 + CO13C3CO2H + HCHO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C512OH'; 
fC512OH(i)=fC512OH(i)-1; fC513O2(i)=fC513O2(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C619OOH + OH = C619CO + OH';
k(:,i) = 5.95e-11;
Gstr{i,1} = 'C619OOH'; Gstr{i,2} = 'OH'; 
fC619OOH(i)=fC619OOH(i)-1; fOH(i)=fOH(i)-1; fC619CO(i)=fC619CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C619OOH =  + C512CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C619OOH'; 
fC619OOH(i)=fC619OOH(i)-1; fC512CO3(i)=fC512CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C619OH + OH = C619CO + HO2';
k(:,i) = 2.82e-11;
Gstr{i,1} = 'C619OH'; Gstr{i,2} = 'OH'; 
fC619OH(i)=fC619OH(i)-1; fOH(i)=fOH(i)-1; fC619CO(i)=fC619CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + HO2 = C810OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'HO2'; 
fC810O2(i)=fC810O2(i)-1; fHO2(i)=fHO2(i)-1; fC810OOH(i)=fC810OOH(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + NO = C810NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'NO'; 
fC810O2(i)=fC810O2(i)-1; fNO(i)=fNO(i)-1; fC810NO3(i)=fC810NO3(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + NO =  + CH3COCH3 + C514O2 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'NO'; 
fC810O2(i)=fC810O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + NO3 =  + CH3COCH3 + C514O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'NO3'; 
fC810O2(i)=fC810O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 =  + CH3COCH3 + C514O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'RO2';
fC810O2(i)=fC810O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 = C810OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'RO2';
fC810O2(i)=fC810O2(i)-1; fC810OH(i)=fC810OH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CHO + NO3 = CO25C6CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'CO25C6CHO'; Gstr{i,2} = 'NO3'; 
fCO25C6CHO(i)=fCO25C6CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO25C6CO3(i)=fCO25C6CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CHO + OH = CO25C6CO3';
k(:,i) = 2.69e-11;
Gstr{i,1} = 'CO25C6CHO'; Gstr{i,2} = 'OH'; 
fCO25C6CHO(i)=fCO25C6CHO(i)-1; fOH(i)=fOH(i)-1; fCO25C6CO3(i)=fCO25C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CHO = C627O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CO25C6CHO'; 
fCO25C6CHO(i)=fCO25C6CHO(i)-1; fC627O2(i)=fC627O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C818O2 + HO2 = C818OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C818O2'; Gstr{i,2} = 'HO2'; 
fC818O2(i)=fC818O2(i)-1; fHO2(i)=fHO2(i)-1; fC818OOH(i)=fC818OOH(i)+1; 

i=i+1;
Rnames{i} = 'C818O2 + NO =  + C517CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C818O2'; Gstr{i,2} = 'NO'; 
fC818O2(i)=fC818O2(i)-1; fNO(i)=fNO(i)-1; fC517CHO(i)=fC517CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C818O2 + NO3 =  + C517CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C818O2'; Gstr{i,2} = 'NO3'; 
fC818O2(i)=fC818O2(i)-1; fNO3(i)=fNO3(i)-1; fC517CHO(i)=fC517CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C818O2 = C818CO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C818O2'; 
fC818O2(i)=fC818O2(i)-1; fC818CO(i)=fC818CO(i)+1; 

i=i+1;
Rnames{i} = 'C818O2 =  + C517CHO + CH3CO3';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C818O2'; 
fC818O2(i)=fC818O2(i)-1; fC517CHO(i)=fC517CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C818O2 = C818OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C818O2'; 
fC818O2(i)=fC818O2(i)-1; fC818OH(i)=fC818OH(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3 + HO2 = C727CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C727CO3'; Gstr{i,2} = 'HO2'; 
fC727CO3(i)=fC727CO3(i)-1; fHO2(i)=fHO2(i)-1; fC727CO3H(i)=fC727CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3 + HO2 = C727O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C727CO3'; Gstr{i,2} = 'HO2'; 
fC727CO3(i)=fC727CO3(i)-1; fHO2(i)=fHO2(i)-1; fC727O2(i)=fC727O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3 + NO = C727O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C727CO3'; Gstr{i,2} = 'NO'; 
fC727CO3(i)=fC727CO3(i)-1; fNO(i)=fNO(i)-1; fC727O2(i)=fC727O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3 + NO2 = C727PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C727CO3'; Gstr{i,2} = 'NO2'; 
fC727CO3(i)=fC727CO3(i)-1; fNO2(i)=fNO2(i)-1; fC727PAN(i)=fC727PAN(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3 + NO3 = C727O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C727CO3'; Gstr{i,2} = 'NO3'; 
fC727CO3(i)=fC727CO3(i)-1; fNO3(i)=fNO3(i)-1; fC727O2(i)=fC727O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3 = C727O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C727CO3'; Gstr{i,2} = 'RO2';
fC727CO3(i)=fC727CO3(i)-1; fC727O2(i)=fC727O2(i)+1; 

i=i+1;
Rnames{i} = 'C626CO2H + OH = C626O2';
k(:,i) = 3.19e-11;
Gstr{i,1} = 'C626CO2H'; Gstr{i,2} = 'OH'; 
fC626CO2H(i)=fC626CO2H(i)-1; fOH(i)=fOH(i)-1; fC626O2(i)=fC626O2(i)+1; 

i=i+1;
Rnames{i} = 'C626CO2H = C626O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C626CO2H'; 
fC626CO2H(i)=fC626CO2H(i)-1; fC626O2(i)=fC626O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3H + OH = C626CO3';
k(:,i) = 3.50e-11;
Gstr{i,1} = 'C626CO3H'; Gstr{i,2} = 'OH'; 
fC626CO3H(i)=fC626CO3H(i)-1; fOH(i)=fOH(i)-1; fC626CO3(i)=fC626CO3(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3H = C626O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C626CO3H'; 
fC626CO3H(i)=fC626CO3H(i)-1; fC626O2(i)=fC626O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C626CO3H = C626O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C626CO3H'; 
fC626CO3H(i)=fC626CO3H(i)-1; fC626O2(i)=fC626O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C626PAN + OH = C517CHO + CO + NO2';
k(:,i) = 3.14e-11;
Gstr{i,1} = 'C626PAN'; Gstr{i,2} = 'OH'; 
fC626PAN(i)=fC626PAN(i)-1; fOH(i)=fOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C626PAN = C626CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C626PAN'; 
fC626PAN(i)=fC626PAN(i)-1; fC626CO3(i)=fC626CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C626OOH + OH = C517CHO + OH';
k(:,i) = 4.38e-11;
Gstr{i,1} = 'C626OOH'; Gstr{i,2} = 'OH'; 
fC626OOH(i)=fC626OOH(i)-1; fOH(i)=fOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C626OOH =  + C622CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C626OOH'; 
fC626OOH(i)=fC626OOH(i)-1; fC622CO3(i)=fC622CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C626OOH =  + C622CO3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C626OOH'; 
fC626OOH(i)=fC626OOH(i)-1; fC622CO3(i)=fC622CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C626NO3 + OH = C517CHO + NO2';
k(:,i) = 2.84e-11;
Gstr{i,1} = 'C626NO3'; Gstr{i,2} = 'OH'; 
fC626NO3(i)=fC626NO3(i)-1; fOH(i)=fOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C626NO3 =  + C622CO3 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C626NO3'; 
fC626NO3(i)=fC626NO3(i)-1; fC622CO3(i)=fC622CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511CHO + OH = C511CO3';
k(:,i) = 5.13e-11;
Gstr{i,1} = 'C511CHO'; Gstr{i,2} = 'OH'; 
fC511CHO(i)=fC511CHO(i)-1; fOH(i)=fOH(i)-1; fC511CO3(i)=fC511CO3(i)+1; 

i=i+1;
Rnames{i} = 'C517CHO + NO3 = C517CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C517CHO'; Gstr{i,2} = 'NO3'; 
fC517CHO(i)=fC517CHO(i)-1; fNO3(i)=fNO3(i)-1; fC517CO3(i)=fC517CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C517CHO + OH = C517CO3';
k(:,i) = 4.35e-11;
Gstr{i,1} = 'C517CHO'; Gstr{i,2} = 'OH'; 
fC517CHO(i)=fC517CHO(i)-1; fOH(i)=fOH(i)-1; fC517CO3(i)=fC517CO3(i)+1; 

i=i+1;
Rnames{i} = 'C517CHO = C517O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C517CHO'; 
fC517CHO(i)=fC517CHO(i)-1; fC517O2(i)=fC517O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C735OOH + OH = C735O2';
k(:,i) = 5.07e-11;
Gstr{i,1} = 'C735OOH'; Gstr{i,2} = 'OH'; 
fC735OOH(i)=fC735OOH(i)-1; fOH(i)=fOH(i)-1; fC735O2(i)=fC735O2(i)+1; 

i=i+1;
Rnames{i} = 'C735OOH =  + CO13C4CHO + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C735OOH'; 
fC735OOH(i)=fC735OOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C735OOH = CO13C4CHO + CH3CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C735OOH'; 
fC735OOH(i)=fC735OOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C735OOH = CO13C4CHO + CH3CO3 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C735OOH'; 
fC735OOH(i)=fC735OOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C735OH + OH =  + CO13C4CHO + CH3CO3';
k(:,i) = 4.73e-11;
Gstr{i,1} = 'C735OH'; Gstr{i,2} = 'OH'; 
fC735OH(i)=fC735OH(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C735OH = CO13C4CHO + CH3CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C735OH'; 
fC735OH(i)=fC735OH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C735OH = CO13C4CHO + CH3CO3 + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C735OH'; 
fC735OH(i)=fC735OH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC728O2 + HO2 = NC728OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NC728O2'; Gstr{i,2} = 'HO2'; 
fNC728O2(i)=fNC728O2(i)-1; fHO2(i)=fHO2(i)-1; fNC728OOH(i)=fNC728OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC728O2 + NO =  + C517CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC728O2'; Gstr{i,2} = 'NO'; 
fNC728O2(i)=fNC728O2(i)-1; fNO(i)=fNO(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC728O2 + NO3 =  + C517CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC728O2'; Gstr{i,2} = 'NO3'; 
fNC728O2(i)=fNC728O2(i)-1; fNO3(i)=fNO3(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC728O2 =  + C517CHO + HCHO + NO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'NC728O2'; Gstr{i,2} = 'RO2';
fNC728O2(i)=fNC728O2(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC728O2 = NC728OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'NC728O2'; Gstr{i,2} = 'RO2';
fNC728O2(i)=fNC728O2(i)-1; fNC728OH(i)=fNC728OH(i)+1; 

i=i+1;
Rnames{i} = 'C728O2 + HO2 = C728OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C728O2'; Gstr{i,2} = 'HO2'; 
fC728O2(i)=fC728O2(i)-1; fHO2(i)=fHO2(i)-1; fC728OOH(i)=fC728OOH(i)+1; 

i=i+1;
Rnames{i} = 'C728O2 + NO = C728NO3';
k(:,i) = KRO2NO.*0.031;
Gstr{i,1} = 'C728O2'; Gstr{i,2} = 'NO'; 
fC728O2(i)=fC728O2(i)-1; fNO(i)=fNO(i)-1; fC728NO3(i)=fC728NO3(i)+1; 

i=i+1;
Rnames{i} = 'C728O2 + NO =  + C517CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.969;
Gstr{i,1} = 'C728O2'; Gstr{i,2} = 'NO'; 
fC728O2(i)=fC728O2(i)-1; fNO(i)=fNO(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C728O2 + NO3 =  + C517CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C728O2'; Gstr{i,2} = 'NO3'; 
fC728O2(i)=fC728O2(i)-1; fNO3(i)=fNO3(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C728O2 =  + C517CHO + HCHO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C728O2'; Gstr{i,2} = 'RO2';
fC728O2(i)=fC728O2(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C728O2 = C728OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C728O2'; Gstr{i,2} = 'RO2';
fC728O2(i)=fC728O2(i)-1; fC728OH(i)=fC728OH(i)+1; 

i=i+1;
Rnames{i} = 'C622O2 + HO2 = C622OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C622O2'; Gstr{i,2} = 'HO2'; 
fC622O2(i)=fC622O2(i)-1; fHO2(i)=fHO2(i)-1; fC622OOH(i)=fC622OOH(i)+1; 

i=i+1;
Rnames{i} = 'C622O2 + NO = C622NO3';
k(:,i) = KRO2NO.*0.078;
Gstr{i,1} = 'C622O2'; Gstr{i,2} = 'NO'; 
fC622O2(i)=fC622O2(i)-1; fNO(i)=fNO(i)-1; fC622NO3(i)=fC622NO3(i)+1; 

i=i+1;
Rnames{i} = 'C622O2 + NO =  + C518CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.922;
Gstr{i,1} = 'C622O2'; Gstr{i,2} = 'NO'; 
fC622O2(i)=fC622O2(i)-1; fNO(i)=fNO(i)-1; fC518CHO(i)=fC518CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C622O2 + NO3 =  + C518CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C622O2'; Gstr{i,2} = 'NO3'; 
fC622O2(i)=fC622O2(i)-1; fNO3(i)=fNO3(i)-1; fC518CHO(i)=fC518CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C622O2 = C518CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C622O2'; Gstr{i,2} = 'RO2';
fC622O2(i)=fC622O2(i)-1; fC518CHO(i)=fC518CHO(i)+1; 

i=i+1;
Rnames{i} = 'C622O2 =  + C518CHO + HO2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C622O2'; Gstr{i,2} = 'RO2';
fC622O2(i)=fC622O2(i)-1; fC518CHO(i)=fC518CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C622O2 = C622OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C622O2'; Gstr{i,2} = 'RO2';
fC622O2(i)=fC622O2(i)-1; fC622OH(i)=fC622OH(i)+1; 

i=i+1;
Rnames{i} = 'C822OOH + OH = C729CHO + OH';
k(:,i) = 9.71e-11;
Gstr{i,1} = 'C822OOH'; Gstr{i,2} = 'OH'; 
fC822OOH(i)=fC822OOH(i)-1; fOH(i)=fOH(i)-1; fC729CHO(i)=fC729CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C822OOH =  + C824O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C822OOH'; 
fC822OOH(i)=fC822OOH(i)-1; fC824O2(i)=fC824O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C822NO3 + OH = C729CHO + NO2';
k(:,i) = 8.31e-11;
Gstr{i,1} = 'C822NO3'; Gstr{i,2} = 'OH'; 
fC822NO3(i)=fC822NO3(i)-1; fOH(i)=fOH(i)-1; fC729CHO(i)=fC729CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C822NO3 =  + C824O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C822NO3'; 
fC822NO3(i)=fC822NO3(i)-1; fC824O2(i)=fC824O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C822OH + OH = C729CHO + HO2';
k(:,i) = 8.80e-11;
Gstr{i,1} = 'C822OH'; Gstr{i,2} = 'OH'; 
fC822OH(i)=fC822OH(i)-1; fOH(i)=fOH(i)-1; fC729CHO(i)=fC729CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3H + OH = C823CO3';
k(:,i) = 6.18e-11;
Gstr{i,1} = 'C823CO3H'; Gstr{i,2} = 'OH'; 
fC823CO3H(i)=fC823CO3H(i)-1; fOH(i)=fOH(i)-1; fC823CO3(i)=fC823CO3(i)+1; 

i=i+1;
Rnames{i} = 'C823CO3H = C823O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C823CO3H'; 
fC823CO3H(i)=fC823CO3H(i)-1; fC823O2(i)=fC823O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C823O2 + HO2 = C823OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C823O2'; Gstr{i,2} = 'HO2'; 
fC823O2(i)=fC823O2(i)-1; fHO2(i)=fHO2(i)-1; fC823OOH(i)=fC823OOH(i)+1; 

i=i+1;
Rnames{i} = 'C823O2 + NO = C823NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C823O2'; Gstr{i,2} = 'NO'; 
fC823O2(i)=fC823O2(i)-1; fNO(i)=fNO(i)-1; fC823NO3(i)=fC823NO3(i)+1; 

i=i+1;
Rnames{i} = 'C823O2 + NO =  + C825O2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C823O2'; Gstr{i,2} = 'NO'; 
fC823O2(i)=fC823O2(i)-1; fNO(i)=fNO(i)-1; fC825O2(i)=fC825O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C823O2 + NO3 =  + C825O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C823O2'; Gstr{i,2} = 'NO3'; 
fC823O2(i)=fC823O2(i)-1; fNO3(i)=fNO3(i)-1; fC825O2(i)=fC825O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C823O2 = C823CO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C823O2'; Gstr{i,2} = 'RO2';
fC823O2(i)=fC823O2(i)-1; fC823CO(i)=fC823CO(i)+1; 

i=i+1;
Rnames{i} = 'C823O2 =  + C825O2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C823O2'; Gstr{i,2} = 'RO2';
fC823O2(i)=fC823O2(i)-1; fC825O2(i)=fC825O2(i)+1; 

i=i+1;
Rnames{i} = 'C823O2 = C823OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C823O2'; Gstr{i,2} = 'RO2';
fC823O2(i)=fC823O2(i)-1; fC823OH(i)=fC823OH(i)+1; 

i=i+1;
Rnames{i} = 'LIMONIC + OH = C823O2';
k(:,i) = 5.89e-11;
Gstr{i,1} = 'LIMONIC'; Gstr{i,2} = 'OH'; 
fLIMONIC(i)=fLIMONIC(i)-1; fOH(i)=fOH(i)-1; fC823O2(i)=fC823O2(i)+1; 

i=i+1;
Rnames{i} = 'C823PAN + OH = C823CO + CO + NO2';
k(:,i) = 5.82e-11;
Gstr{i,1} = 'C823PAN'; Gstr{i,2} = 'OH'; 
fC823PAN(i)=fC823PAN(i)-1; fOH(i)=fOH(i)-1; fC823CO(i)=fC823CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C823PAN = C823CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C823PAN'; 
fC823PAN(i)=fC823PAN(i)-1; fC823CO3(i)=fC823CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C925OOH + OH = C925O2';
k(:,i) = 2.45e-11;
Gstr{i,1} = 'C925OOH'; Gstr{i,2} = 'OH'; 
fC925OOH(i)=fC925OOH(i)-1; fOH(i)=fOH(i)-1; fC925O2(i)=fC925O2(i)+1; 

i=i+1;
Rnames{i} = 'C925OOH =  + C818CO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C925OOH'; 
fC925OOH(i)=fC925OOH(i)-1; fC818CO(i)=fC818CO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C622CO2H + OH = C622O2';
k(:,i) = 6.00e-11;
Gstr{i,1} = 'C622CO2H'; Gstr{i,2} = 'OH'; 
fC622CO2H(i)=fC622CO2H(i)-1; fOH(i)=fOH(i)-1; fC622O2(i)=fC622O2(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3H + OH = C622CO3';
k(:,i) = 6.31e-11;
Gstr{i,1} = 'C622CO3H'; Gstr{i,2} = 'OH'; 
fC622CO3H(i)=fC622CO3H(i)-1; fOH(i)=fOH(i)-1; fC622CO3(i)=fC622CO3(i)+1; 

i=i+1;
Rnames{i} = 'C622CO3H = C622O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C622CO3H'; 
fC622CO3H(i)=fC622CO3H(i)-1; fC622O2(i)=fC622O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C622PAN + OH = C518CHO + CO + NO2';
k(:,i) = 5.95e-11;
Gstr{i,1} = 'C622PAN'; Gstr{i,2} = 'OH'; 
fC622PAN(i)=fC622PAN(i)-1; fOH(i)=fOH(i)-1; fC518CHO(i)=fC518CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C622PAN = C622CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C622PAN'; 
fC622PAN(i)=fC622PAN(i)-1; fC622CO3(i)=fC622CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C819O2 + HO2 = C819OOH';
k(:,i) = KRO2HO2;
Gstr{i,1} = 'C819O2'; Gstr{i,2} = 'HO2'; 
fC819O2(i)=fC819O2(i)-1; fHO2(i)=fHO2(i)-1; fC819OOH(i)=fC819OOH(i)+1; 

i=i+1;
Rnames{i} = 'C819O2 + NO =  + ACETOL + CO2C4CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C819O2'; Gstr{i,2} = 'NO'; 
fC819O2(i)=fC819O2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C819O2 + NO3 =  + ACETOL + CO2C4CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C819O2'; Gstr{i,2} = 'NO3'; 
fC819O2(i)=fC819O2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C819O2 =  + ACETOL + CO2C4CO3';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C819O2'; Gstr{i,2} = 'RO2';
fC819O2(i)=fC819O2(i)-1; fACETOL(i)=fACETOL(i)+1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + OH = CO2C3CHO + OH';
k(:,i) = 4.88e-11;
Gstr{i,1} = 'MEKAOOH'; Gstr{i,2} = 'OH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + OH = MEKAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MEKAOOH'; Gstr{i,2} = 'OH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fOH(i)=fOH(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH =  + CO2C3CHO + HO2 + HO1CO3C4O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MEKAOOH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH =  + CO2C3CHO + HO2 + HO1CO3C4O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'MEKAOOH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 + OH = CO2C3CHO + NO2';
k(:,i) = 9.64e-13;
Gstr{i,1} = 'MEKANO3'; Gstr{i,2} = 'OH'; 
fMEKANO3(i)=fMEKANO3(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 =  + CO2C3CHO + HO2 + HO1CO3C4O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'MEKANO3'; 
fMEKANO3(i)=fMEKANO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 =  + CO2C3CHO + HO2 + HO1CO3C4O2 + NO2';
k(:,i) = J22;
Gstr{i,1} = 'MEKANO3'; 
fMEKANO3(i)=fMEKANO3(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'MEKAOH + OH = CO2C3CHO + HO2';
k(:,i) = 1.35e-11;
Gstr{i,1} = 'MEKAOH'; Gstr{i,2} = 'OH'; 
fMEKAOH(i)=fMEKAOH(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOH = HOCH2CH2O2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'MEKAOH'; 
fMEKAOH(i)=fMEKAOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C731CO3 + HO2 =  + 0.2C731O2 + 0.8C732CO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C731CO3'; Gstr{i,2} = 'HO2'; 
fC731CO3(i)=fC731CO3(i)-1; fHO2(i)=fHO2(i)-1; fC731O2(i)=fC731O2(i)+0.2; fC732CO3(i)=fC732CO3(i)+0.8; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C731CO3 + HO2 = C731CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C731CO3'; Gstr{i,2} = 'HO2'; 
fC731CO3(i)=fC731CO3(i)-1; fHO2(i)=fHO2(i)-1; fC731CO2H(i)=fC731CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C731CO3 + HO2 = C731CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C731CO3'; Gstr{i,2} = 'HO2'; 
fC731CO3(i)=fC731CO3(i)-1; fHO2(i)=fHO2(i)-1; fC731CO3H(i)=fC731CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C731CO3 + NO =  + 0.2C731O2 + 0.8C732CO3 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C731CO3'; Gstr{i,2} = 'NO'; 
fC731CO3(i)=fC731CO3(i)-1; fNO(i)=fNO(i)-1; fC731O2(i)=fC731O2(i)+0.2; fC732CO3(i)=fC732CO3(i)+0.8; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C731CO3 + NO2 = C731PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C731CO3'; Gstr{i,2} = 'NO2'; 
fC731CO3(i)=fC731CO3(i)-1; fNO2(i)=fNO2(i)-1; fC731PAN(i)=fC731PAN(i)+1; 

i=i+1;
Rnames{i} = 'C731CO3 + NO3 =  + 0.2C731O2 + 0.8C732CO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C731CO3'; Gstr{i,2} = 'NO3'; 
fC731CO3(i)=fC731CO3(i)-1; fNO3(i)=fNO3(i)-1; fC731O2(i)=fC731O2(i)+0.2; fC732CO3(i)=fC732CO3(i)+0.8; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C731CO3 =  + 0.2C731O2 + 0.8C732CO3';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C731CO3'; Gstr{i,2} = 'RO2';
fC731CO3(i)=fC731CO3(i)-1; fC731O2(i)=fC731O2(i)+0.2; fC732CO3(i)=fC732CO3(i)+0.8; 

i=i+1;
Rnames{i} = 'C731CO3 = C731CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C731CO3'; Gstr{i,2} = 'RO2';
fC731CO3(i)=fC731CO3(i)-1; fC731CO2H(i)=fC731CO2H(i)+1; 

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
Rnames{i} = 'COHM2PAN = GLYPAN + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'COHM2PAN'; 
fCOHM2PAN(i)=fCOHM2PAN(i)-1; fGLYPAN(i)=fGLYPAN(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'INANCOCO2H = NO3CH2CO3 + CH3COCO2H + NO2';
k(:,i) = J56;
Gstr{i,1} = 'INANCOCO2H'; 
fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO2H = NO3CH2CO3 + CH3COCO2H + NO2';
k(:,i) = J57;
Gstr{i,1} = 'INANCOCO2H'; 
fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCO2H = NO2 + CO23C4NO3';
k(:,i) = 9.35e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCO2H'; 
fOH(i)=fOH(i)-1; fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3H = NO2 + CO23C4NO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INANCOCO3H'; 
fINANCOCO3H(i)=fINANCOCO3H(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3H = NO3CH2CO3 + CH3COCO3H + NO2';
k(:,i) = J56;
Gstr{i,1} = 'INANCOCO3H'; 
fINANCOCO3H(i)=fINANCOCO3H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3H = NO3CH2CO3 + CH3COCO3H + NO2';
k(:,i) = J57;
Gstr{i,1} = 'INANCOCO3H'; 
fINANCOCO3H(i)=fINANCOCO3H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCO3H = INANCOCO3';
k(:,i) = 4.02e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCO3H'; 
fOH(i)=fOH(i)-1; fINANCOCO3H(i)=fINANCOCO3H(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + OH = CO23C3CHO + NO2';
k(:,i) = 1.30e-13;
Gstr{i,1} = 'CO23C4NO3'; Gstr{i,2} = 'OH'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 =  + CH3CO3 + HCHO + CO + NO2';
k(:,i) = J56;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 = HCHO + CH3CO3 + NO2 + CO';
k(:,i) = J57;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 = NO3CH2CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN = INANCOCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN = NO3CH2CO3 + CH3COPAN + NO2';
k(:,i) = J56;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COPAN(i)=fCH3COPAN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN = NO3CH2CO3 + CH3COPAN + NO2';
k(:,i) = J57;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COPAN(i)=fCH3COPAN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOPAN = NO3 + CO23C4NO3';
k(:,i) = 4.15e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOPAN'; 
fOH(i)=fOH(i)-1; fINANCOPAN(i)=fINANCOPAN(i)-1; fNO3(i)=fNO3(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

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
Rnames{i} = 'MMALNBCO2H + OH = CO2H3CHO + NO2';
k(:,i) = 2.23e-11;
Gstr{i,1} = 'MMALNBCO2H'; Gstr{i,2} = 'OH'; 
fMMALNBCO2H(i)=fMMALNBCO2H(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO2H = CONM2CO2H + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'MMALNBCO2H'; 
fMMALNBCO2H(i)=fMMALNBCO2H(i)-1; fCONM2CO2H(i)=fCONM2CO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H + OH = MMALNBCO3';
k(:,i) = 2.59e-11;
Gstr{i,1} = 'MMALNBCO3H'; Gstr{i,2} = 'OH'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H = CO2H3CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MMALNBCO3H'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H = CONM2CO3H + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'MMALNBCO3H'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fCONM2CO3H(i)=fCONM2CO3H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN + OH = CO2H3CHO + NO2 + NO3';
k(:,i) = 2.18e-11;
Gstr{i,1} = 'MMALNBPAN'; Gstr{i,2} = 'OH'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN = CONM2PAN + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'MMALNBPAN'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fCONM2PAN(i)=fCONM2PAN(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN = MMALNBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MMALNBPAN'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C235C6CO3H + OH = CO235C6CO3';
k(:,i) = 4.75e-12;
Gstr{i,1} = 'C235C6CO3H'; Gstr{i,2} = 'OH'; 
fC235C6CO3H(i)=fC235C6CO3H(i)-1; fOH(i)=fOH(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'C235C6CO3H = CO235C6O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C235C6CO3H'; 
fC235C6CO3H(i)=fC235C6CO3H(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C235C6CO3H = CO235C6O2 + OH';
k(:,i) = J35;
Gstr{i,1} = 'C235C6CO3H'; 
fC235C6CO3H(i)=fC235C6CO3H(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O2 + HO2 = CO235C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'CO235C6O2'; Gstr{i,2} = 'HO2'; 
fCO235C6O2(i)=fCO235C6O2(i)-1; fHO2(i)=fHO2(i)-1; fCO235C6OOH(i)=fCO235C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O2 + NO =  + CO23C4CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO235C6O2'; Gstr{i,2} = 'NO'; 
fCO235C6O2(i)=fCO235C6O2(i)-1; fNO(i)=fNO(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O2 + NO3 =  + CO23C4CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO235C6O2'; Gstr{i,2} = 'NO3'; 
fCO235C6O2(i)=fCO235C6O2(i)-1; fNO3(i)=fNO3(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O2 =  + CO23C4CO3 + HCHO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'CO235C6O2'; Gstr{i,2} = 'RO2';
fCO235C6O2(i)=fCO235C6O2(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C7PAN3 + OH = CO235C5CHO + CO + NO2';
k(:,i) = 8.83e-13;
Gstr{i,1} = 'C7PAN3'; Gstr{i,2} = 'OH'; 
fC7PAN3(i)=fC7PAN3(i)-1; fOH(i)=fOH(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C7PAN3 = CO235C6CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C7PAN3'; 
fC7PAN3(i)=fC7PAN3(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COOOH + OH = CHOC3COCO3';
k(:,i) = 7.55e-11;
Gstr{i,1} = 'CHOC3COOOH'; Gstr{i,2} = 'OH'; 
fCHOC3COOOH(i)=fCHOC3COOOH(i)-1; fOH(i)=fOH(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COOOH = CHOC3COO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CHOC3COOOH'; 
fCHOC3COOOH(i)=fCHOC3COOOH(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COOOH = CHOC3COO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CHOC3COOOH'; 
fCHOC3COOOH(i)=fCHOC3COOOH(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COOOH = CHOC3COO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'CHOC3COOOH'; 
fCHOC3COOOH(i)=fCHOC3COOOH(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COPAN + OH = C4CODIAL + CO + NO2';
k(:,i) = 7.19e-11;
Gstr{i,1} = 'CHOC3COPAN'; Gstr{i,2} = 'OH'; 
fCHOC3COPAN(i)=fCHOC3COPAN(i)-1; fOH(i)=fOH(i)-1; fC4CODIAL(i)=fC4CODIAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COPAN = CHOC3COCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CHOC3COPAN'; 
fCHOC3COPAN(i)=fCHOC3COPAN(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + HO2 = C716OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'HO2'; 
fC716O2(i)=fC716O2(i)-1; fHO2(i)=fHO2(i)-1; fC716OOH(i)=fC716OOH(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + NO =  + CO13C4CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'NO'; 
fC716O2(i)=fC716O2(i)-1; fNO(i)=fNO(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + NO3 =  + CO13C4CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'NO3'; 
fC716O2(i)=fC716O2(i)-1; fNO3(i)=fNO3(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 =  + CO13C4CHO + CH3CO3';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'RO2';
fC716O2(i)=fC716O2(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 = C716OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'RO2';
fC716O2(i)=fC716O2(i)-1; fC716OH(i)=fC716OH(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 = CO235C6CHO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'RO2';
fC716O2(i)=fC716O2(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC71OOH + OH = NC71O2';
k(:,i) = 3.25e-11;
Gstr{i,1} = 'NC71OOH'; Gstr{i,2} = 'OH'; 
fNC71OOH(i)=fNC71OOH(i)-1; fOH(i)=fOH(i)-1; fNC71O2(i)=fNC71O2(i)+1; 

i=i+1;
Rnames{i} = 'NC71OOH =  + CO235C6CHO + NO2 + NC71CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC71OOH'; 
fNC71OOH(i)=fNC71OOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fNO2(i)=fNO2(i)+1; fNC71CO(i)=fNC71CO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811OOH + OH = C721CHO + OH';
k(:,i) = 1.70e-11;
Gstr{i,1} = 'C811OOH'; Gstr{i,2} = 'OH'; 
fC811OOH(i)=fC811OOH(i)-1; fOH(i)=fOH(i)-1; fC721CHO(i)=fC721CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811OOH =  + C812O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C811OOH'; 
fC811OOH(i)=fC811OOH(i)-1; fC812O2(i)=fC812O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811NO3 + OH = C721CHO + NO2';
k(:,i) = 3.29e-12;
Gstr{i,1} = 'C811NO3'; Gstr{i,2} = 'OH'; 
fC811NO3(i)=fC811NO3(i)-1; fOH(i)=fOH(i)-1; fC721CHO(i)=fC721CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811NO3 =  + C812O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C811NO3'; 
fC811NO3(i)=fC811NO3(i)-1; fC812O2(i)=fC812O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721CHO + NO3 = C721CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C721CHO'; Gstr{i,2} = 'NO3'; 
fC721CHO(i)=fC721CHO(i)-1; fNO3(i)=fNO3(i)-1; fC721CO3(i)=fC721CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C721CHO + OH = C721CO3';
k(:,i) = 2.63e-11;
Gstr{i,1} = 'C721CHO'; Gstr{i,2} = 'OH'; 
fC721CHO(i)=fC721CHO(i)-1; fOH(i)=fOH(i)-1; fC721CO3(i)=fC721CO3(i)+1; 

i=i+1;
Rnames{i} = 'C721CHO = C721O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C721CHO'; 
fC721CHO(i)=fC721CHO(i)-1; fC721O2(i)=fC721O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C811OH + OH = C721CHO + HO2';
k(:,i) = 7.89e-12;
Gstr{i,1} = 'C811OH'; Gstr{i,2} = 'OH'; 
fC811OH(i)=fC811OH(i)-1; fOH(i)=fOH(i)-1; fC721CHO(i)=fC721CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C413COOOH + OH = CHOC3COO2';
k(:,i) = 8.33e-11;
Gstr{i,1} = 'C413COOOH'; Gstr{i,2} = 'OH'; 
fC413COOOH(i)=fC413COOOH(i)-1; fOH(i)=fOH(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; 

i=i+1;
Rnames{i} = 'C413COOOH =  + HCOCH2CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C413COOOH'; 
fC413COOOH(i)=fC413COOOH(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C413COOOH =  + HCOCH2CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C413COOOH'; 
fC413COOOH(i)=fC413COOOH(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C413COOOH =  + HCOCH2CO3 + HCHO + OH';
k(:,i) = J15;
Gstr{i,1} = 'C413COOOH'; 
fC413COOOH(i)=fC413COOOH(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C922O2 + HO2 = C922OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C922O2'; Gstr{i,2} = 'HO2'; 
fC922O2(i)=fC922O2(i)-1; fHO2(i)=fHO2(i)-1; fC922OOH(i)=fC922OOH(i)+1; 

i=i+1;
Rnames{i} = 'C922O2 + NO =  + CH3COCH3 + C621O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C922O2'; Gstr{i,2} = 'NO'; 
fC922O2(i)=fC922O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC621O2(i)=fC621O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C922O2 + NO3 =  + CH3COCH3 + C621O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C922O2'; Gstr{i,2} = 'NO3'; 
fC922O2(i)=fC922O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC621O2(i)=fC621O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C922O2 =  + CH3COCH3 + C621O2';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C922O2'; Gstr{i,2} = 'RO2';
fC922O2(i)=fC922O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC621O2(i)=fC621O2(i)+1; 

i=i+1;
Rnames{i} = 'C614CO + OH = CO235C5CHO + HO2';
k(:,i) = 3.22e-12;
Gstr{i,1} = 'C614CO'; Gstr{i,2} = 'OH'; 
fC614CO(i)=fC614CO(i)-1; fOH(i)=fOH(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C614CO = BIACETO2 + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'C614CO'; 
fC614CO(i)=fC614CO(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + HO2 = C614OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'HO2'; 
fC614O2(i)=fC614O2(i)-1; fHO2(i)=fHO2(i)-1; fC614OOH(i)=fC614OOH(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + NO = C614NO3';
k(:,i) = KRO2NO.*0.098;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'NO'; 
fC614O2(i)=fC614O2(i)-1; fNO(i)=fNO(i)-1; fC614NO3(i)=fC614NO3(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + NO =  + CO23C4CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.902;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'NO'; 
fC614O2(i)=fC614O2(i)-1; fNO(i)=fNO(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + NO3 =  + CO23C4CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'NO3'; 
fC614O2(i)=fC614O2(i)-1; fNO3(i)=fNO3(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 = C614CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'RO2';
fC614O2(i)=fC614O2(i)-1; fC614CO(i)=fC614CO(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 =  + CO23C4CHO + HCHO + HO2';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'RO2';
fC614O2(i)=fC614O2(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 = C614OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'RO2';
fC614O2(i)=fC614O2(i)-1; fC614OH(i)=fC614OH(i)+1; 

i=i+1;
Rnames{i} = 'C511O2 + HO2 = C511OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C511O2'; Gstr{i,2} = 'HO2'; 
fC511O2(i)=fC511O2(i)-1; fHO2(i)=fHO2(i)-1; fC511OOH(i)=fC511OOH(i)+1; 

i=i+1;
Rnames{i} = 'C511O2 + NO =  + CH3CO3 + HCOCH2CHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C511O2'; Gstr{i,2} = 'NO'; 
fC511O2(i)=fC511O2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511O2 + NO3 =  + CH3CO3 + HCOCH2CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C511O2'; Gstr{i,2} = 'NO3'; 
fC511O2(i)=fC511O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511O2 =  + CH3CO3 + HCOCH2CHO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C511O2'; Gstr{i,2} = 'RO2';
fC511O2(i)=fC511O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO2H + OH = H3C25C6O2';
k(:,i) = 2.39e-11;
Gstr{i,1} = 'H3C25CCO2H'; Gstr{i,2} = 'OH'; 
fH3C25CCO2H(i)=fH3C25CCO2H(i)-1; fOH(i)=fOH(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO2H = H3C25C6O2 + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'H3C25CCO2H'; 
fH3C25CCO2H(i)=fH3C25CCO2H(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO3H + OH = H3C25C6CO3';
k(:,i) = 2.70e-11;
Gstr{i,1} = 'H3C25CCO3H'; Gstr{i,2} = 'OH'; 
fH3C25CCO3H(i)=fH3C25CCO3H(i)-1; fOH(i)=fOH(i)-1; fH3C25C6CO3(i)=fH3C25C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO3H = H3C25C6O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'H3C25CCO3H'; 
fH3C25CCO3H(i)=fH3C25CCO3H(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO3H = H3C25C6O2 + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'H3C25CCO3H'; 
fH3C25CCO3H(i)=fH3C25CCO3H(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6PAN + OH = H3C25C5CHO + CO + NO2';
k(:,i) = 2.29e-11;
Gstr{i,1} = 'H3C25C6PAN'; Gstr{i,2} = 'OH'; 
fH3C25C6PAN(i)=fH3C25C6PAN(i)-1; fOH(i)=fOH(i)-1; fH3C25C5CHO(i)=fH3C25C5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6PAN = H3C25C6CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'H3C25C6PAN'; 
fH3C25C6PAN(i)=fH3C25C6PAN(i)-1; fH3C25C6CO3(i)=fH3C25C6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OOH + OH = H3C25C5CHO + OH';
k(:,i) = 3.23e-11;
Gstr{i,1} = 'H3C25C6OOH'; Gstr{i,2} = 'OH'; 
fH3C25C6OOH(i)=fH3C25C6OOH(i)-1; fOH(i)=fOH(i)-1; fH3C25C5CHO(i)=fH3C25C5CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OOH =  + H3C2C4CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'H3C25C6OOH'; 
fH3C25C6OOH(i)=fH3C25C6OOH(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OOH =  + H3C2C4CO3 + HCHO + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'H3C25C6OOH'; 
fH3C25C6OOH(i)=fH3C25C6OOH(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C5CHO + OH = H3C2C4CO3 + CO';
k(:,i) = 3.55e-11;
Gstr{i,1} = 'H3C25C5CHO'; Gstr{i,2} = 'OH'; 
fH3C25C5CHO(i)=fH3C25C5CHO(i)-1; fOH(i)=fOH(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C5CHO = H3C2C4CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'H3C25C5CHO'; 
fH3C25C5CHO(i)=fH3C25C5CHO(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OH + OH = C614CO + HO2';
k(:,i) = 2.54e-11.*0.890;
Gstr{i,1} = 'H3C25C6OH'; Gstr{i,2} = 'OH'; 
fH3C25C6OH(i)=fH3C25C6OH(i)-1; fOH(i)=fOH(i)-1; fC614CO(i)=fC614CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OH + OH = H3C25C5CHO + HO2';
k(:,i) = 2.54e-11.*0.110;
Gstr{i,1} = 'H3C25C6OH'; Gstr{i,2} = 'OH'; 
fH3C25C6OH(i)=fH3C25C6OH(i)-1; fOH(i)=fOH(i)-1; fH3C25C5CHO(i)=fH3C25C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OH = HMVKAO2 + HOCH2CO3';
k(:,i) = J22.*2;
Gstr{i,1} = 'H3C25C6OH'; 
fH3C25C6OH(i)=fH3C25C6OH(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO2H = HCOCH2O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HCOCH2CO2H'; 
fHCOCH2CO2H(i)=fHCOCH2CO2H(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCH2CO2H = HCOCH2O2';
k(:,i) = 2.14e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCH2CO2H'; 
fOH(i)=fOH(i)-1; fHCOCH2CO2H(i)=fHCOCH2CO2H(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3H = HCOCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCH2CO3H'; 
fHCOCH2CO3H(i)=fHCOCH2CO3H(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3H = HCOCH2O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCH2CO3H'; 
fHCOCH2CO3H(i)=fHCOCH2CO3H(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCH2CO3H = HCOCH2CO3';
k(:,i) = 2.49e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCH2CO3H'; 
fOH(i)=fOH(i)-1; fHCOCH2CO3H(i)=fHCOCH2CO3H(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C3PAN2 = HCOCH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3PAN2'; 
fC3PAN2(i)=fC3PAN2(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3PAN2 = GLYOX + CO + NO2';
k(:,i) = 2.10e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3PAN2'; 
fOH(i)=fOH(i)-1; fC3PAN2(i)=fC3PAN2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C620O2 + HO2 = C620OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C620O2'; Gstr{i,2} = 'HO2'; 
fC620O2(i)=fC620O2(i)-1; fHO2(i)=fHO2(i)-1; fC620OOH(i)=fC620OOH(i)+1; 

i=i+1;
Rnames{i} = 'C620O2 + NO =  + HCOCH2CHO + HCOCH2CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C620O2'; Gstr{i,2} = 'NO'; 
fC620O2(i)=fC620O2(i)-1; fNO(i)=fNO(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C620O2 + NO3 =  + HCOCH2CHO + HCOCH2CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C620O2'; Gstr{i,2} = 'NO3'; 
fC620O2(i)=fC620O2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C620O2 = C515CHO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C620O2'; Gstr{i,2} = 'RO2';
fC620O2(i)=fC620O2(i)-1; fC515CHO(i)=fC515CHO(i)+1; 

i=i+1;
Rnames{i} = 'C620O2 =  + HCOCH2CHO + HCOCH2CO3';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C620O2'; Gstr{i,2} = 'RO2';
fC620O2(i)=fC620O2(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C620O2 = C620OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C620O2'; Gstr{i,2} = 'RO2';
fC620O2(i)=fC620O2(i)-1; fC620OH(i)=fC620OH(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3 + HO2 = C87CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C87CO3'; Gstr{i,2} = 'HO2'; 
fC87CO3(i)=fC87CO3(i)-1; fHO2(i)=fHO2(i)-1; fC87CO2H(i)=fC87CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3 + HO2 = C87CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C87CO3'; Gstr{i,2} = 'HO2'; 
fC87CO3(i)=fC87CO3(i)-1; fHO2(i)=fHO2(i)-1; fC87CO3H(i)=fC87CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3 + HO2 = C87O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C87CO3'; Gstr{i,2} = 'HO2'; 
fC87CO3(i)=fC87CO3(i)-1; fHO2(i)=fHO2(i)-1; fC87O2(i)=fC87O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3 + NO = C87O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C87CO3'; Gstr{i,2} = 'NO'; 
fC87CO3(i)=fC87CO3(i)-1; fNO(i)=fNO(i)-1; fC87O2(i)=fC87O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3 + NO2 = C87PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C87CO3'; Gstr{i,2} = 'NO2'; 
fC87CO3(i)=fC87CO3(i)-1; fNO2(i)=fNO2(i)-1; fC87PAN(i)=fC87PAN(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3 + NO3 = C87O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C87CO3'; Gstr{i,2} = 'NO3'; 
fC87CO3(i)=fC87CO3(i)-1; fNO3(i)=fNO3(i)-1; fC87O2(i)=fC87O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3 = C87CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C87CO3'; Gstr{i,2} = 'RO2';
fC87CO3(i)=fC87CO3(i)-1; fC87CO2H(i)=fC87CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3 = C87O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C87CO3'; Gstr{i,2} = 'RO2';
fC87CO3(i)=fC87CO3(i)-1; fC87O2(i)=fC87O2(i)+1; 

i=i+1;
Rnames{i} = 'CO123C5CHO + NO3 = CHOC2CO3 + CO + CO + HNO3';
k(:,i) = 2.*KNO3AL.*5.5;
Gstr{i,1} = 'CO123C5CHO'; Gstr{i,2} = 'NO3'; 
fCO123C5CHO(i)=fCO123C5CHO(i)-1; fNO3(i)=fNO3(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO123C5CHO + OH = CHOC2CO3 + CO + CO';
k(:,i) = 3.89e-11;
Gstr{i,1} = 'CO123C5CHO'; Gstr{i,2} = 'OH'; 
fCO123C5CHO(i)=fCO123C5CHO(i)-1; fOH(i)=fOH(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO123C5CHO = CHOC2CO3 + HO2 + CO + CO';
k(:,i) = J34;
Gstr{i,1} = 'CO123C5CHO'; 
fCO123C5CHO(i)=fCO123C5CHO(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO123C5CHO = CHOC2CO3 + HO2 + CO + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO123C5CHO'; 
fCO123C5CHO(i)=fCO123C5CHO(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO123C5CHO = CHOC2CO3 + HO2 + CO + CO';
k(:,i) = J35;
Gstr{i,1} = 'CO123C5CHO'; 
fCO123C5CHO(i)=fCO123C5CHO(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C616O2 + HO2 = C616OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C616O2'; Gstr{i,2} = 'HO2'; 
fC616O2(i)=fC616O2(i)-1; fHO2(i)=fHO2(i)-1; fC616OOH(i)=fC616OOH(i)+1; 

i=i+1;
Rnames{i} = 'C616O2 + NO =  + 0.5CHOC2CO3 + 0.5GLYOX + 0.5CO12C4CHO + 0.5HO2 + 0.5CO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C616O2'; Gstr{i,2} = 'NO'; 
fC616O2(i)=fC616O2(i)-1; fNO(i)=fNO(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+0.5; fGLYOX(i)=fGLYOX(i)+0.5; fCO12C4CHO(i)=fCO12C4CHO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C616O2 + NO3 =  + 0.5CHOC2CO3 + 0.5GLYOX + 0.5CO12C4CHO + 0.5HO2 + 0.5CO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C616O2'; Gstr{i,2} = 'NO3'; 
fC616O2(i)=fC616O2(i)-1; fNO3(i)=fNO3(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+0.5; fGLYOX(i)=fGLYOX(i)+0.5; fCO12C4CHO(i)=fCO12C4CHO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C616O2 =  + 0.5CHOC2CO3 + 0.5GLYOX + 0.5CO12C4CHO + 0.5HO2 + 0.5CO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C616O2'; Gstr{i,2} = 'RO2';
fC616O2(i)=fC616O2(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+0.5; fGLYOX(i)=fGLYOX(i)+0.5; fCO12C4CHO(i)=fCO12C4CHO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; 

i=i+1;
Rnames{i} = 'C616O2 = C616OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C616O2'; Gstr{i,2} = 'RO2';
fC616O2(i)=fC616O2(i)-1; fC616OH(i)=fC616OH(i)+1; 

i=i+1;
Rnames{i} = 'C616O2 = CO123C5CHO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C616O2'; Gstr{i,2} = 'RO2';
fC616O2(i)=fC616O2(i)-1; fCO123C5CHO(i)=fCO123C5CHO(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3 + HO2 = C718CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C718CO3'; Gstr{i,2} = 'HO2'; 
fC718CO3(i)=fC718CO3(i)-1; fHO2(i)=fHO2(i)-1; fC718CO2H(i)=fC718CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3 + HO2 = C718CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C718CO3'; Gstr{i,2} = 'HO2'; 
fC718CO3(i)=fC718CO3(i)-1; fHO2(i)=fHO2(i)-1; fC718CO3H(i)=fC718CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3 + HO2 = C718O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C718CO3'; Gstr{i,2} = 'HO2'; 
fC718CO3(i)=fC718CO3(i)-1; fHO2(i)=fHO2(i)-1; fC718O2(i)=fC718O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3 + NO = C718O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C718CO3'; Gstr{i,2} = 'NO'; 
fC718CO3(i)=fC718CO3(i)-1; fNO(i)=fNO(i)-1; fC718O2(i)=fC718O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3 + NO2 = C718PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C718CO3'; Gstr{i,2} = 'NO2'; 
fC718CO3(i)=fC718CO3(i)-1; fNO2(i)=fNO2(i)-1; fC718PAN(i)=fC718PAN(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3 + NO3 = C718O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C718CO3'; Gstr{i,2} = 'NO3'; 
fC718CO3(i)=fC718CO3(i)-1; fNO3(i)=fNO3(i)-1; fC718O2(i)=fC718O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3 = C718CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C718CO3'; Gstr{i,2} = 'RO2';
fC718CO3(i)=fC718CO3(i)-1; fC718CO2H(i)=fC718CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3 = C718O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C718CO3'; Gstr{i,2} = 'RO2';
fC718CO3(i)=fC718CO3(i)-1; fC718O2(i)=fC718O2(i)+1; 

i=i+1;
Rnames{i} = 'C513O2 + HO2 = C513OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C513O2'; Gstr{i,2} = 'HO2'; 
fC513O2(i)=fC513O2(i)-1; fHO2(i)=fHO2(i)-1; fC513OOH(i)=fC513OOH(i)+1; 

i=i+1;
Rnames{i} = 'C513O2 + NO =  + GLYOX + HOC2H4CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C513O2'; Gstr{i,2} = 'NO'; 
fC513O2(i)=fC513O2(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C513O2 + NO3 =  + GLYOX + HOC2H4CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C513O2'; Gstr{i,2} = 'NO3'; 
fC513O2(i)=fC513O2(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C513O2 = C513CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C513O2'; Gstr{i,2} = 'RO2';
fC513O2(i)=fC513O2(i)-1; fC513CO(i)=fC513CO(i)+1; 

i=i+1;
Rnames{i} = 'C513O2 =  + GLYOX + HOC2H4CO3';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C513O2'; Gstr{i,2} = 'RO2';
fC513O2(i)=fC513O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C513O2 = C513OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C513O2'; Gstr{i,2} = 'RO2';
fC513O2(i)=fC513O2(i)-1; fC513OH(i)=fC513OH(i)+1; 

i=i+1;
Rnames{i} = 'CO13C3CO2H + OH = HCOCH2CO3';
k(:,i) = 6.69e-11;
Gstr{i,1} = 'CO13C3CO2H'; Gstr{i,2} = 'OH'; 
fCO13C3CO2H(i)=fCO13C3CO2H(i)-1; fOH(i)=fOH(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO13C3CO2H = HCOCH2CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO13C3CO2H'; 
fCO13C3CO2H(i)=fCO13C3CO2H(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO13C3CO2H = HCOCH2CO3 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CO13C3CO2H'; 
fCO13C3CO2H(i)=fCO13C3CO2H(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C810OOH + OH = C810O2';
k(:,i) = 8.35e-11;
Gstr{i,1} = 'C810OOH'; Gstr{i,2} = 'OH'; 
fC810OOH(i)=fC810OOH(i)-1; fOH(i)=fOH(i)-1; fC810O2(i)=fC810O2(i)+1; 

i=i+1;
Rnames{i} = 'C810OOH =  + CH3COCH3 + C514O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C810OOH'; 
fC810OOH(i)=fC810OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C810OOH =  + CH3COCH3 + C514O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C810OOH'; 
fC810OOH(i)=fC810OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C810NO3 + OH = CH3COCH3 + CO13C4CHO + NO2';
k(:,i) = 4.96e-11;
Gstr{i,1} = 'C810NO3'; Gstr{i,2} = 'OH'; 
fC810NO3(i)=fC810NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810NO3 =  + CH3COCH3 + C514O2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C810NO3'; 
fC810NO3(i)=fC810NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810NO3 =  + CH3COCH3 + C514O2 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C810NO3'; 
fC810NO3(i)=fC810NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810OH + OH =  + CH3COCH3 + C514O2';
k(:,i) = 8.00e-11;
Gstr{i,1} = 'C810OH'; Gstr{i,2} = 'OH'; 
fC810OH(i)=fC810OH(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; 

i=i+1;
Rnames{i} = 'C810OH =  + CH3COCH3 + C514O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C810OH'; 
fC810OH(i)=fC810OH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3 + HO2 = C627O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO25C6CO3'; Gstr{i,2} = 'HO2'; 
fCO25C6CO3(i)=fCO25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fC627O2(i)=fC627O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3 + HO2 = CO25C6CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CO25C6CO3'; Gstr{i,2} = 'HO2'; 
fCO25C6CO3(i)=fCO25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO25C6CO2H(i)=fCO25C6CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3 + HO2 = CO25C6CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CO25C6CO3'; Gstr{i,2} = 'HO2'; 
fCO25C6CO3(i)=fCO25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO25C6CO3H(i)=fCO25C6CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3 + NO = C627O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO25C6CO3'; Gstr{i,2} = 'NO'; 
fCO25C6CO3(i)=fCO25C6CO3(i)-1; fNO(i)=fNO(i)-1; fC627O2(i)=fC627O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3 + NO2 = C627PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO25C6CO3'; Gstr{i,2} = 'NO2'; 
fCO25C6CO3(i)=fCO25C6CO3(i)-1; fNO2(i)=fNO2(i)-1; fC627PAN(i)=fC627PAN(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3 + NO3 = C627O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO25C6CO3'; Gstr{i,2} = 'NO3'; 
fCO25C6CO3(i)=fCO25C6CO3(i)-1; fNO3(i)=fNO3(i)-1; fC627O2(i)=fC627O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3 = C627O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CO25C6CO3'; Gstr{i,2} = 'RO2';
fCO25C6CO3(i)=fCO25C6CO3(i)-1; fC627O2(i)=fC627O2(i)+1; 

i=i+1;
Rnames{i} = 'C627O2 + HO2 = C627OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C627O2'; Gstr{i,2} = 'HO2'; 
fC627O2(i)=fC627O2(i)-1; fHO2(i)=fHO2(i)-1; fC627OOH(i)=fC627OOH(i)+1; 

i=i+1;
Rnames{i} = 'C627O2 + NO =  + CO2C4CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C627O2'; Gstr{i,2} = 'NO'; 
fC627O2(i)=fC627O2(i)-1; fNO(i)=fNO(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C627O2 + NO3 =  + CO2C4CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C627O2'; Gstr{i,2} = 'NO3'; 
fC627O2(i)=fC627O2(i)-1; fNO3(i)=fNO3(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C627O2 =  + CO2C4CO3 + HCHO';
k(:,i) = 2.50e-12.*0.6;
Gstr{i,1} = 'C627O2'; Gstr{i,2} = 'RO2';
fC627O2(i)=fC627O2(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C627O2 = C627OH';
k(:,i) = 2.50e-12.*0.2;
Gstr{i,1} = 'C627O2'; Gstr{i,2} = 'RO2';
fC627O2(i)=fC627O2(i)-1; fC627OH(i)=fC627OH(i)+1; 

i=i+1;
Rnames{i} = 'C627O2 = CO2C4GLYOX';
k(:,i) = 2.50e-12.*0.2;
Gstr{i,1} = 'C627O2'; Gstr{i,2} = 'RO2';
fC627O2(i)=fC627O2(i)-1; fCO2C4GLYOX(i)=fCO2C4GLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C818OOH + OH = C818CO + OH';
k(:,i) = 3.94e-11;
Gstr{i,1} = 'C818OOH'; Gstr{i,2} = 'OH'; 
fC818OOH(i)=fC818OOH(i)-1; fOH(i)=fOH(i)-1; fC818CO(i)=fC818CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C818OOH = C517CHO + CH3CO3 + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'C818OOH'; 
fC818OOH(i)=fC818OOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C818OOH =  + C517CHO + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C818OOH'; 
fC818OOH(i)=fC818OOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C818CO + OH = C820O2';
k(:,i) = 1.41e-11;
Gstr{i,1} = 'C818CO'; Gstr{i,2} = 'OH'; 
fC818CO(i)=fC818CO(i)-1; fOH(i)=fOH(i)-1; fC820O2(i)=fC820O2(i)+1; 

i=i+1;
Rnames{i} = 'C818OH + OH = C818CO + HO2';
k(:,i) = 2.72e-11;
Gstr{i,1} = 'C818OH'; Gstr{i,2} = 'OH'; 
fC818OH(i)=fC818OH(i)-1; fOH(i)=fOH(i)-1; fC818CO(i)=fC818CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C818OH = C517CHO + CH3CO3 + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'C818OH'; 
fC818OH(i)=fC818OH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3H + OH = C727CO3';
k(:,i) = 1.05e-11;
Gstr{i,1} = 'C727CO3H'; Gstr{i,2} = 'OH'; 
fC727CO3H(i)=fC727CO3H(i)-1; fOH(i)=fOH(i)-1; fC727CO3(i)=fC727CO3(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3H = C727O2 + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'C727CO3H'; 
fC727CO3H(i)=fC727CO3H(i)-1; fC727O2(i)=fC727O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C727CO3H = C727O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C727CO3H'; 
fC727CO3H(i)=fC727CO3H(i)-1; fC727O2(i)=fC727O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C727O2 + HO2 = C727OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C727O2'; Gstr{i,2} = 'HO2'; 
fC727O2(i)=fC727O2(i)-1; fHO2(i)=fHO2(i)-1; fC727OOH(i)=fC727OOH(i)+1; 

i=i+1;
Rnames{i} = 'C727O2 + NO =  + CH3CO3 + CO2C4CHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C727O2'; Gstr{i,2} = 'NO'; 
fC727O2(i)=fC727O2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO2C4CHO(i)=fCO2C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C727O2 + NO3 =  + CH3CO3 + CO2C4CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C727O2'; Gstr{i,2} = 'NO3'; 
fC727O2(i)=fC727O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO2C4CHO(i)=fCO2C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C727O2 =  + CH3CO3 + CO2C4CHO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C727O2'; Gstr{i,2} = 'RO2';
fC727O2(i)=fC727O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO2C4CHO(i)=fCO2C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'C727PAN + OH = C727CO + CO + NO2';
k(:,i) = 6.89e-12;
Gstr{i,1} = 'C727PAN'; Gstr{i,2} = 'OH'; 
fC727PAN(i)=fC727PAN(i)-1; fOH(i)=fOH(i)-1; fC727CO(i)=fC727CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C727PAN = C727CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C727PAN'; 
fC727PAN(i)=fC727PAN(i)-1; fC727CO3(i)=fC727CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3 + HO2 = C511CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C511CO3'; Gstr{i,2} = 'HO2'; 
fC511CO3(i)=fC511CO3(i)-1; fHO2(i)=fHO2(i)-1; fC511CO3H(i)=fC511CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3 + HO2 = C511O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C511CO3'; Gstr{i,2} = 'HO2'; 
fC511CO3(i)=fC511CO3(i)-1; fHO2(i)=fHO2(i)-1; fC511O2(i)=fC511O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3 + NO = C511O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C511CO3'; Gstr{i,2} = 'NO'; 
fC511CO3(i)=fC511CO3(i)-1; fNO(i)=fNO(i)-1; fC511O2(i)=fC511O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3 + NO2 = C511PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C511CO3'; Gstr{i,2} = 'NO2'; 
fC511CO3(i)=fC511CO3(i)-1; fNO2(i)=fNO2(i)-1; fC511PAN(i)=fC511PAN(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3 + NO3 = C511O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C511CO3'; Gstr{i,2} = 'NO3'; 
fC511CO3(i)=fC511CO3(i)-1; fNO3(i)=fNO3(i)-1; fC511O2(i)=fC511O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3 = C511O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C511CO3'; Gstr{i,2} = 'RO2';
fC511CO3(i)=fC511CO3(i)-1; fC511O2(i)=fC511O2(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3 + HO2 = C517CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C517CO3'; Gstr{i,2} = 'HO2'; 
fC517CO3(i)=fC517CO3(i)-1; fHO2(i)=fHO2(i)-1; fC517CO2H(i)=fC517CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3 + HO2 = C517CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C517CO3'; Gstr{i,2} = 'HO2'; 
fC517CO3(i)=fC517CO3(i)-1; fHO2(i)=fHO2(i)-1; fC517CO3H(i)=fC517CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3 + HO2 = C517O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C517CO3'; Gstr{i,2} = 'HO2'; 
fC517CO3(i)=fC517CO3(i)-1; fHO2(i)=fHO2(i)-1; fC517O2(i)=fC517O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3 + NO = C517O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C517CO3'; Gstr{i,2} = 'NO'; 
fC517CO3(i)=fC517CO3(i)-1; fNO(i)=fNO(i)-1; fC517O2(i)=fC517O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3 + NO2 = C517PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C517CO3'; Gstr{i,2} = 'NO2'; 
fC517CO3(i)=fC517CO3(i)-1; fNO2(i)=fNO2(i)-1; fC517PAN(i)=fC517PAN(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3 + NO3 = C517O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C517CO3'; Gstr{i,2} = 'NO3'; 
fC517CO3(i)=fC517CO3(i)-1; fNO3(i)=fNO3(i)-1; fC517O2(i)=fC517O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3 = C517CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C517CO3'; Gstr{i,2} = 'RO2';
fC517CO3(i)=fC517CO3(i)-1; fC517CO2H(i)=fC517CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3 = C517O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C517CO3'; Gstr{i,2} = 'RO2';
fC517CO3(i)=fC517CO3(i)-1; fC517O2(i)=fC517O2(i)+1; 

i=i+1;
Rnames{i} = 'C517O2 + HO2 = C517OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C517O2'; Gstr{i,2} = 'HO2'; 
fC517O2(i)=fC517O2(i)-1; fHO2(i)=fHO2(i)-1; fC517OOH(i)=fC517OOH(i)+1; 

i=i+1;
Rnames{i} = 'C517O2 + NO = C517NO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'C517O2'; Gstr{i,2} = 'NO'; 
fC517O2(i)=fC517O2(i)-1; fNO(i)=fNO(i)-1; fC517NO3(i)=fC517NO3(i)+1; 

i=i+1;
Rnames{i} = 'C517O2 + NO =  + HMVKBCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'C517O2'; Gstr{i,2} = 'NO'; 
fC517O2(i)=fC517O2(i)-1; fNO(i)=fNO(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517O2 + NO3 =  + HMVKBCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C517O2'; Gstr{i,2} = 'NO3'; 
fC517O2(i)=fC517O2(i)-1; fNO3(i)=fNO3(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517O2 =  + HMVKBCHO + HO2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C517O2'; Gstr{i,2} = 'RO2';
fC517O2(i)=fC517O2(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C517O2 = C517OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C517O2'; Gstr{i,2} = 'RO2';
fC517O2(i)=fC517O2(i)-1; fC517OH(i)=fC517OH(i)+1; 

i=i+1;
Rnames{i} = 'C517O2 = HMVKBCHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C517O2'; Gstr{i,2} = 'RO2';
fC517O2(i)=fC517O2(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; 

i=i+1;
Rnames{i} = 'NC728OOH + OH = NC728O2';
k(:,i) = 3.94e-11;
Gstr{i,1} = 'NC728OOH'; Gstr{i,2} = 'OH'; 
fNC728OOH(i)=fNC728OOH(i)-1; fOH(i)=fOH(i)-1; fNC728O2(i)=fNC728O2(i)+1; 

i=i+1;
Rnames{i} = 'NC728OOH =  + C517CHO + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC728OOH'; 
fNC728OOH(i)=fNC728OOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC728OH + OH = C517CHO + HCHO + NO2';
k(:,i) = 3.59e-11;
Gstr{i,1} = 'NC728OH'; Gstr{i,2} = 'OH'; 
fNC728OH(i)=fNC728OH(i)-1; fOH(i)=fOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C628O2 + HO2 = C628OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C628O2'; Gstr{i,2} = 'HO2'; 
fC628O2(i)=fC628O2(i)-1; fHO2(i)=fHO2(i)-1; fC628OOH(i)=fC628OOH(i)+1; 

i=i+1;
Rnames{i} = 'C628O2 + NO =  + CO13C4OH + CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C628O2'; Gstr{i,2} = 'NO'; 
fC628O2(i)=fC628O2(i)-1; fNO(i)=fNO(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C628O2 + NO3 =  + CO13C4OH + CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C628O2'; Gstr{i,2} = 'NO3'; 
fC628O2(i)=fC628O2(i)-1; fNO3(i)=fNO3(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C628O2 =  + CO13C4OH + CH3CO3';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C628O2'; Gstr{i,2} = 'RO2';
fC628O2(i)=fC628O2(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C628O2 = C628OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C628O2'; Gstr{i,2} = 'RO2';
fC628O2(i)=fC628O2(i)-1; fC628OH(i)=fC628OH(i)+1; 

i=i+1;
Rnames{i} = 'C728OOH + OH = C728O2';
k(:,i) = 4.52e-11;
Gstr{i,1} = 'C728OOH'; Gstr{i,2} = 'OH'; 
fC728OOH(i)=fC728OOH(i)-1; fOH(i)=fOH(i)-1; fC728O2(i)=fC728O2(i)+1; 

i=i+1;
Rnames{i} = 'C728OOH =  + C517CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C728OOH'; 
fC728OOH(i)=fC728OOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C728NO3 + OH = C517CHO + HCHO + NO2';
k(:,i) = 3.28e-11;
Gstr{i,1} = 'C728NO3'; Gstr{i,2} = 'OH'; 
fC728NO3(i)=fC728NO3(i)-1; fOH(i)=fOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C728OH + OH = C517CHO + HCHO + HO2';
k(:,i) = 4.18e-11;
Gstr{i,1} = 'C728OH'; Gstr{i,2} = 'OH'; 
fC728OH(i)=fC728OH(i)-1; fOH(i)=fOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C622OOH + OH = C518CHO + OH';
k(:,i) = 7.17e-11;
Gstr{i,1} = 'C622OOH'; Gstr{i,2} = 'OH'; 
fC622OOH(i)=fC622OOH(i)-1; fOH(i)=fOH(i)-1; fC518CHO(i)=fC518CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C622OOH =  + C518CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C622OOH'; 
fC622OOH(i)=fC622OOH(i)-1; fC518CHO(i)=fC518CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C622NO3 + OH = C518CHO + NO2';
k(:,i) = 5.64e-11;
Gstr{i,1} = 'C622NO3'; Gstr{i,2} = 'OH'; 
fC622NO3(i)=fC622NO3(i)-1; fOH(i)=fOH(i)-1; fC518CHO(i)=fC518CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C622NO3 =  + C518CHO + HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C622NO3'; 
fC622NO3(i)=fC622NO3(i)-1; fC518CHO(i)=fC518CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C518CHO + NO3 = C518CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C518CHO'; Gstr{i,2} = 'NO3'; 
fC518CHO(i)=fC518CHO(i)-1; fNO3(i)=fNO3(i)-1; fC518CO3(i)=fC518CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C518CHO + NO3 = NC623O2';
k(:,i) = 3.30e-13;
Gstr{i,1} = 'C518CHO'; Gstr{i,2} = 'NO3'; 
fC518CHO(i)=fC518CHO(i)-1; fNO3(i)=fNO3(i)-1; fNC623O2(i)=fNC623O2(i)+1; 

i=i+1;
Rnames{i} = 'C518CHO + O3 =  + C520O2 + OH + HCHO';
k(:,i) = 1.30e-17.*0.670;
Gstr{i,1} = 'C518CHO'; Gstr{i,2} = 'O3'; 
fC518CHO(i)=fC518CHO(i)-1; fO3(i)=fO3(i)-1; fC520O2(i)=fC520O2(i)+1; fOH(i)=fOH(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C518CHO + O3 = HMVKBCHO +  + 0.370CH2OO + 0.500CO + 0.130HO2 + 0.130CO + 0.130OH';
k(:,i) = 1.30e-17.*0.330;
Gstr{i,1} = 'C518CHO'; Gstr{i,2} = 'O3'; 
fC518CHO(i)=fC518CHO(i)-1; fO3(i)=fO3(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fCH2OO(i)=fCH2OO(i)+0.370; fCO(i)=fCO(i)+0.500; fHO2(i)=fHO2(i)+0.130; fCO(i)=fCO(i)+0.130; fOH(i)=fOH(i)+0.130; 

i=i+1;
Rnames{i} = 'C518CHO + OH = C518CO3';
k(:,i) = 8.70e-11.*0.288;
Gstr{i,1} = 'C518CHO'; Gstr{i,2} = 'OH'; 
fC518CHO(i)=fC518CHO(i)-1; fOH(i)=fOH(i)-1; fC518CO3(i)=fC518CO3(i)+1; 

i=i+1;
Rnames{i} = 'C518CHO + OH = C623O2';
k(:,i) = 8.70e-11.*0.712;
Gstr{i,1} = 'C518CHO'; Gstr{i,2} = 'OH'; 
fC518CHO(i)=fC518CHO(i)-1; fOH(i)=fOH(i)-1; fC623O2(i)=fC623O2(i)+1; 

i=i+1;
Rnames{i} = 'C518CHO = ISOPDO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C518CHO'; 
fC518CHO(i)=fC518CHO(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C622OH + OH = C518CHO + HO2';
k(:,i) = 6.29e-11;
Gstr{i,1} = 'C622OH'; Gstr{i,2} = 'OH'; 
fC622OH(i)=fC622OH(i)-1; fOH(i)=fOH(i)-1; fC518CHO(i)=fC518CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C824O2 + HO2 = C824OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C824O2'; Gstr{i,2} = 'HO2'; 
fC824O2(i)=fC824O2(i)-1; fHO2(i)=fHO2(i)-1; fC824OOH(i)=fC824OOH(i)+1; 

i=i+1;
Rnames{i} = 'C824O2 + NO =  + C624CHO + CO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C824O2'; Gstr{i,2} = 'NO'; 
fC824O2(i)=fC824O2(i)-1; fNO(i)=fNO(i)-1; fC624CHO(i)=fC624CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C824O2 + NO3 =  + C624CHO + CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C824O2'; Gstr{i,2} = 'NO3'; 
fC824O2(i)=fC824O2(i)-1; fNO3(i)=fNO3(i)-1; fC624CHO(i)=fC624CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C824O2 = C824CO';
k(:,i) = 8.80e-12.*0.2;
Gstr{i,1} = 'C824O2'; Gstr{i,2} = 'RO2';
fC824O2(i)=fC824O2(i)-1; fC824CO(i)=fC824CO(i)+1; 

i=i+1;
Rnames{i} = 'C824O2 =  + C624CHO + CO + HO2';
k(:,i) = 8.80e-12.*0.6;
Gstr{i,1} = 'C824O2'; Gstr{i,2} = 'RO2';
fC824O2(i)=fC824O2(i)-1; fC624CHO(i)=fC624CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C824O2 = C824OH';
k(:,i) = 8.80e-12.*0.2;
Gstr{i,1} = 'C824O2'; Gstr{i,2} = 'RO2';
fC824O2(i)=fC824O2(i)-1; fC824OH(i)=fC824OH(i)+1; 

i=i+1;
Rnames{i} = 'C823OOH + OH = C823CO + OH';
k(:,i) = 7.06e-11;
Gstr{i,1} = 'C823OOH'; Gstr{i,2} = 'OH'; 
fC823OOH(i)=fC823OOH(i)-1; fOH(i)=fOH(i)-1; fC823CO(i)=fC823CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C823OOH =  + C825O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C823OOH'; 
fC823OOH(i)=fC823OOH(i)-1; fC825O2(i)=fC825O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C823NO3 + OH = C823CO + NO2';
k(:,i) = 5.53e-11;
Gstr{i,1} = 'C823NO3'; Gstr{i,2} = 'OH'; 
fC823NO3(i)=fC823NO3(i)-1; fOH(i)=fOH(i)-1; fC823CO(i)=fC823CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C823NO3 =  + C825O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C823NO3'; 
fC823NO3(i)=fC823NO3(i)-1; fC825O2(i)=fC825O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C823CO + OH = C825O2';
k(:,i) = 7.70e-11;
Gstr{i,1} = 'C823CO'; Gstr{i,2} = 'OH'; 
fC823CO(i)=fC823CO(i)-1; fOH(i)=fOH(i)-1; fC825O2(i)=fC825O2(i)+1; 

i=i+1;
Rnames{i} = 'C823CO = C825O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C823CO'; 
fC823CO(i)=fC823CO(i)-1; fC825O2(i)=fC825O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C823OH + OH = C823CO + HO2';
k(:,i) = 6.16e-11;
Gstr{i,1} = 'C823OH'; Gstr{i,2} = 'OH'; 
fC823OH(i)=fC823OH(i)-1; fOH(i)=fOH(i)-1; fC823CO(i)=fC823CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C819OOH + OH = C819O2';
k(:,i) = 1.35e-11;
Gstr{i,1} = 'C819OOH'; Gstr{i,2} = 'OH'; 
fC819OOH(i)=fC819OOH(i)-1; fOH(i)=fOH(i)-1; fC819O2(i)=fC819O2(i)+1; 

i=i+1;
Rnames{i} = 'C819OOH =  + ACETOL + CO2C4CO3 + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'C819OOH'; 
fC819OOH(i)=fC819OOH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C819OOH =  + ACETOL + CO2C4CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C819OOH'; 
fC819OOH(i)=fC819OOH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + HO2 = HOCO3C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'HO2'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHOCO3C4OOH(i)=fHOCO3C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + NO =  + HOC2H4CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'NO'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fNO(i)=fNO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + NO3 =  + HOC2H4CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'NO3'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 = HO14CO2C4';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO14CO2C4(i)=fHO14CO2C4(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 =  + HOC2H4CO3 + HCHO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 = HO1CO3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; 

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
Rnames{i} = 'C731CO2H + OH =  + 0.2C731O2 + 0.8C732CO3';
k(:,i) = 3.88e-11;
Gstr{i,1} = 'C731CO2H'; Gstr{i,2} = 'OH'; 
fC731CO2H(i)=fC731CO2H(i)-1; fOH(i)=fOH(i)-1; fC731O2(i)=fC731O2(i)+0.2; fC732CO3(i)=fC732CO3(i)+0.8; 

i=i+1;
Rnames{i} = 'C731CO3H + OH = C731CO3';
k(:,i) = 4.18e-11;
Gstr{i,1} = 'C731CO3H'; Gstr{i,2} = 'OH'; 
fC731CO3H(i)=fC731CO3H(i)-1; fOH(i)=fOH(i)-1; fC731CO3(i)=fC731CO3(i)+1; 

i=i+1;
Rnames{i} = 'C731CO3H =  + 0.2C731O2 + 0.8C732CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C731CO3H'; 
fC731CO3H(i)=fC731CO3H(i)-1; fC731O2(i)=fC731O2(i)+0.2; fC732CO3(i)=fC732CO3(i)+0.8; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C731PAN + OH = C626CHO + CO + NO2';
k(:,i) = 3.82e-11;
Gstr{i,1} = 'C731PAN'; Gstr{i,2} = 'OH'; 
fC731PAN(i)=fC731PAN(i)-1; fOH(i)=fOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C731PAN = C731CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C731PAN'; 
fC731PAN(i)=fC731PAN(i)-1; fC731CO3(i)=fC731CO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'CO235C6OOH + OH = CO235C6O2';
k(:,i) = 1.01e-11;
Gstr{i,1} = 'CO235C6OOH'; Gstr{i,2} = 'OH'; 
fCO235C6OOH(i)=fCO235C6OOH(i)-1; fOH(i)=fOH(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6OOH =  + CO23C4CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO235C6OOH'; 
fCO235C6OOH(i)=fCO235C6OOH(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6OOH =  + CO23C4CO3 + HCHO + OH';
k(:,i) = J35;
Gstr{i,1} = 'CO235C6OOH'; 
fCO235C6OOH(i)=fCO235C6OOH(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C5CHO + NO3 = CO23C4CO3 + CO + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'CO235C5CHO'; Gstr{i,2} = 'NO3'; 
fCO235C5CHO(i)=fCO235C5CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C5CHO + OH = CO23C4CO3 + CO';
k(:,i) = 1.33e-11;
Gstr{i,1} = 'CO235C5CHO'; Gstr{i,2} = 'OH'; 
fCO235C5CHO(i)=fCO235C5CHO(i)-1; fOH(i)=fOH(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO235C5CHO = CO23C4CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO235C5CHO'; 
fCO235C5CHO(i)=fCO235C5CHO(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CODIAL + NO3 = C312COCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*4.0;
Gstr{i,1} = 'C4CODIAL'; Gstr{i,2} = 'NO3'; 
fC4CODIAL(i)=fC4CODIAL(i)-1; fNO3(i)=fNO3(i)-1; fC312COCO3(i)=fC312COCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CODIAL + OH = C312COCO3';
k(:,i) = 3.39e-11;
Gstr{i,1} = 'C4CODIAL'; Gstr{i,2} = 'OH'; 
fC4CODIAL(i)=fC4CODIAL(i)-1; fOH(i)=fOH(i)-1; fC312COCO3(i)=fC312COCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CODIAL = CHOCOCH2O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C4CODIAL'; 
fC4CODIAL(i)=fC4CODIAL(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4CODIAL = HCOCH2CO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'C4CODIAL'; 
fC4CODIAL(i)=fC4CODIAL(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C716OOH + OH = CO235C6CHO + OH';
k(:,i) = 1.20e-10;
Gstr{i,1} = 'C716OOH'; Gstr{i,2} = 'OH'; 
fC716OOH(i)=fC716OOH(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C716OOH =  + CO13C4CHO + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C716OOH'; 
fC716OOH(i)=fC716OOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C716OOH =  + CO13C4CHO + CH3CO3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C716OOH'; 
fC716OOH(i)=fC716OOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC71CO + OH = NC72O2';
k(:,i) = 1.25e-12;
Gstr{i,1} = 'NC71CO'; Gstr{i,2} = 'OH'; 
fNC71CO(i)=fNC71CO(i)-1; fOH(i)=fOH(i)-1; fNC72O2(i)=fNC72O2(i)+1; 

i=i+1;
Rnames{i} = 'NC71CO = CO235C6CO3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'NC71CO'; 
fNC71CO(i)=fNC71CO(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 + HO2 = C812OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'HO2'; 
fC812O2(i)=fC812O2(i)-1; fHO2(i)=fHO2(i)-1; fC812OOH(i)=fC812OOH(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 + NO =  + C813O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'NO'; 
fC812O2(i)=fC812O2(i)-1; fNO(i)=fNO(i)-1; fC813O2(i)=fC813O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 + NO3 =  + C813O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'NO3'; 
fC812O2(i)=fC812O2(i)-1; fNO3(i)=fNO3(i)-1; fC813O2(i)=fC813O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 =  + C813O2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'RO2';
fC812O2(i)=fC812O2(i)-1; fC813O2(i)=fC813O2(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 = C812OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'RO2';
fC812O2(i)=fC812O2(i)-1; fC812OH(i)=fC812OH(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + HO2 = C721CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'HO2'; 
fC721CO3(i)=fC721CO3(i)-1; fHO2(i)=fHO2(i)-1; fC721CO3H(i)=fC721CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + HO2 = C721O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'HO2'; 
fC721CO3(i)=fC721CO3(i)-1; fHO2(i)=fHO2(i)-1; fC721O2(i)=fC721O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + HO2 = NORPINIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'HO2'; 
fC721CO3(i)=fC721CO3(i)-1; fHO2(i)=fHO2(i)-1; fNORPINIC(i)=fNORPINIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + NO = C721O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'NO'; 
fC721CO3(i)=fC721CO3(i)-1; fNO(i)=fNO(i)-1; fC721O2(i)=fC721O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + NO2 = C721PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'NO2'; 
fC721CO3(i)=fC721CO3(i)-1; fNO2(i)=fNO2(i)-1; fC721PAN(i)=fC721PAN(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + NO3 = C721O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'NO3'; 
fC721CO3(i)=fC721CO3(i)-1; fNO3(i)=fNO3(i)-1; fC721O2(i)=fC721O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 = C721O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'RO2';
fC721CO3(i)=fC721CO3(i)-1; fC721O2(i)=fC721O2(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 = NORPINIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'RO2';
fC721CO3(i)=fC721CO3(i)-1; fNORPINIC(i)=fNORPINIC(i)+1; 

i=i+1;
Rnames{i} = 'C721O2 + HO2 = C721OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C721O2'; Gstr{i,2} = 'HO2'; 
fC721O2(i)=fC721O2(i)-1; fHO2(i)=fHO2(i)-1; fC721OOH(i)=fC721OOH(i)+1; 

i=i+1;
Rnames{i} = 'C721O2 + NO =  + C722O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C721O2'; Gstr{i,2} = 'NO'; 
fC721O2(i)=fC721O2(i)-1; fNO(i)=fNO(i)-1; fC722O2(i)=fC722O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721O2 + NO3 =  + C722O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C721O2'; Gstr{i,2} = 'NO3'; 
fC721O2(i)=fC721O2(i)-1; fNO3(i)=fNO3(i)-1; fC722O2(i)=fC722O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721O2 =  + C722O2';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'C721O2'; Gstr{i,2} = 'RO2';
fC721O2(i)=fC721O2(i)-1; fC722O2(i)=fC722O2(i)+1; 

i=i+1;
Rnames{i} = 'C922OOH + OH = C922O2';
k(:,i) = 1.51e-11;
Gstr{i,1} = 'C922OOH'; Gstr{i,2} = 'OH'; 
fC922OOH(i)=fC922OOH(i)-1; fOH(i)=fOH(i)-1; fC922O2(i)=fC922O2(i)+1; 

i=i+1;
Rnames{i} = 'C922OOH =  + CH3COCH3 + C621O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C922OOH'; 
fC922OOH(i)=fC922OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC621O2(i)=fC621O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C922OOH =  + CH3COCH3 + C621O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C922OOH'; 
fC922OOH(i)=fC922OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC621O2(i)=fC621O2(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'C614OOH + OH = C614CO + OH';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'C614OOH'; Gstr{i,2} = 'OH'; 
fC614OOH(i)=fC614OOH(i)-1; fOH(i)=fOH(i)-1; fC614CO(i)=fC614CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C614OOH =  + CO23C4CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C614OOH'; 
fC614OOH(i)=fC614OOH(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C614OOH =  + CO23C4CHO + HCHO + HO2 + OH';
k(:,i) = J35;
Gstr{i,1} = 'C614OOH'; 
fC614OOH(i)=fC614OOH(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C614NO3 + OH = C614CO + NO2';
k(:,i) = 71.11e-12;
Gstr{i,1} = 'C614NO3'; Gstr{i,2} = 'OH'; 
fC614NO3(i)=fC614NO3(i)-1; fOH(i)=fOH(i)-1; fC614CO(i)=fC614CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C614NO3 =  + CO23C4CHO + HCHO + HO2 + NO2';
k(:,i) = J35;
Gstr{i,1} = 'C614NO3'; 
fC614NO3(i)=fC614NO3(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C614OH + OH = C614CO + HO2';
k(:,i) = 3.78e-11;
Gstr{i,1} = 'C614OH'; Gstr{i,2} = 'OH'; 
fC614OH(i)=fC614OH(i)-1; fOH(i)=fOH(i)-1; fC614CO(i)=fC614CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C614OH =  + CO23C4CHO + HCHO + HO2 + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C614OH'; 
fC614OH(i)=fC614OH(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C511OOH + OH = C511O2';
k(:,i) = 7.49e-11;
Gstr{i,1} = 'C511OOH'; Gstr{i,2} = 'OH'; 
fC511OOH(i)=fC511OOH(i)-1; fOH(i)=fOH(i)-1; fC511O2(i)=fC511O2(i)+1; 

i=i+1;
Rnames{i} = 'C511OOH =  + CH3CO3 + HCOCH2CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C511OOH'; 
fC511OOH(i)=fC511OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C511OOH =  + CH3CO3 + HCOCH2CHO + OH';
k(:,i) = J15;
Gstr{i,1} = 'C511OOH'; 
fC511OOH(i)=fC511OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + HO2 = H3C2C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'HO2'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C2C4CO2H(i)=fH3C2C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + HO2 = H3C2C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'HO2'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C2C4CO3H(i)=fH3C2C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + HO2 = HMVKAO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'HO2'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + NO = HMVKAO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'NO'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fNO(i)=fNO(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + NO2 = H3C2C4PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'NO2'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fH3C2C4PAN(i)=fH3C2C4PAN(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + NO3 = HMVKAO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'NO3'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 = H3C2C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'RO2';
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fH3C2C4CO2H(i)=fH3C2C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 = HMVKAO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'RO2';
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; 

i=i+1;
Rnames{i} = 'C620OOH + OH = C515CHO + OH';
k(:,i) = 1.15e-10;
Gstr{i,1} = 'C620OOH'; Gstr{i,2} = 'OH'; 
fC620OOH(i)=fC620OOH(i)-1; fOH(i)=fOH(i)-1; fC515CHO(i)=fC515CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C620OOH =  + HCOCH2CHO + HCOCH2CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C620OOH'; 
fC620OOH(i)=fC620OOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C620OOH =  + HCOCH2CHO + HCOCH2CO3 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C620OOH'; 
fC620OOH(i)=fC620OOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C515CHO + OH = C515CO3';
k(:,i) = 1.33e-10;
Gstr{i,1} = 'C515CHO'; Gstr{i,2} = 'OH'; 
fC515CHO(i)=fC515CHO(i)-1; fOH(i)=fOH(i)-1; fC515CO3(i)=fC515CO3(i)+1; 

i=i+1;
Rnames{i} = 'C515CHO = C515O2 + HO2 + CO';
k(:,i) = J15.*2;
Gstr{i,1} = 'C515CHO'; 
fC515CHO(i)=fC515CHO(i)-1; fC515O2(i)=fC515O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C515CHO = HCOCH2CO3 + HCOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'C515CHO'; 
fC515CHO(i)=fC515CHO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C620OH + OH = C515CHO + HO2';
k(:,i) = 9.44e-11;
Gstr{i,1} = 'C620OH'; Gstr{i,2} = 'OH'; 
fC620OH(i)=fC620OH(i)-1; fOH(i)=fOH(i)-1; fC515CHO(i)=fC515CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C620OH =  + HCOCH2CHO + HCOCH2CO3 + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C620OH'; 
fC620OH(i)=fC620OH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C87CO2H + OH = C87O2';
k(:,i) = 9.19e-11;
Gstr{i,1} = 'C87CO2H'; Gstr{i,2} = 'OH'; 
fC87CO2H(i)=fC87CO2H(i)-1; fOH(i)=fOH(i)-1; fC87O2(i)=fC87O2(i)+1; 

i=i+1;
Rnames{i} = 'C87CO2H = C87O2 + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C87CO2H'; 
fC87CO2H(i)=fC87CO2H(i)-1; fC87O2(i)=fC87O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3H + OH = C87CO3';
k(:,i) = 9.50e-11;
Gstr{i,1} = 'C87CO3H'; Gstr{i,2} = 'OH'; 
fC87CO3H(i)=fC87CO3H(i)-1; fOH(i)=fOH(i)-1; fC87CO3(i)=fC87CO3(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3H = C87O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C87CO3H'; 
fC87CO3H(i)=fC87CO3H(i)-1; fC87O2(i)=fC87O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C87CO3H = C87O2 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C87CO3H'; 
fC87CO3H(i)=fC87CO3H(i)-1; fC87O2(i)=fC87O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C87O2 + HO2 = C87OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C87O2'; Gstr{i,2} = 'HO2'; 
fC87O2(i)=fC87O2(i)-1; fHO2(i)=fHO2(i)-1; fC87OOH(i)=fC87OOH(i)+1; 

i=i+1;
Rnames{i} = 'C87O2 + NO =  + C615CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C87O2'; Gstr{i,2} = 'NO'; 
fC87O2(i)=fC87O2(i)-1; fNO(i)=fNO(i)-1; fC615CO3(i)=fC615CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C87O2 + NO3 =  + C615CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C87O2'; Gstr{i,2} = 'NO3'; 
fC87O2(i)=fC87O2(i)-1; fNO3(i)=fNO3(i)-1; fC615CO3(i)=fC615CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C87O2 = C87CO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C87O2'; Gstr{i,2} = 'RO2';
fC87O2(i)=fC87O2(i)-1; fC87CO(i)=fC87CO(i)+1; 

i=i+1;
Rnames{i} = 'C87O2 =  + C615CO3 + HCHO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'C87O2'; Gstr{i,2} = 'RO2';
fC87O2(i)=fC87O2(i)-1; fC615CO3(i)=fC615CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C87O2 = C87OH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C87O2'; Gstr{i,2} = 'RO2';
fC87O2(i)=fC87O2(i)-1; fC87OH(i)=fC87OH(i)+1; 

i=i+1;
Rnames{i} = 'C87PAN + OH = C87CO + CO + NO2';
k(:,i) = 9.11e-11;
Gstr{i,1} = 'C87PAN'; Gstr{i,2} = 'OH'; 
fC87PAN(i)=fC87PAN(i)-1; fOH(i)=fOH(i)-1; fC87CO(i)=fC87CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C87PAN = C87CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C87PAN'; 
fC87PAN(i)=fC87PAN(i)-1; fC87CO3(i)=fC87CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3 + HO2 = CHOC2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CHOC2CO3'; Gstr{i,2} = 'HO2'; 
fCHOC2CO3(i)=fCHOC2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOC2CO2H(i)=fCHOC2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3 + HO2 = CHOC2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CHOC2CO3'; Gstr{i,2} = 'HO2'; 
fCHOC2CO3(i)=fCHOC2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOC2CO3H(i)=fCHOC2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3 + HO2 = CHOC2H4O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CHOC2CO3'; Gstr{i,2} = 'HO2'; 
fCHOC2CO3(i)=fCHOC2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOC2H4O2(i)=fCHOC2H4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3 + NO = CHOC2H4O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CHOC2CO3'; Gstr{i,2} = 'NO'; 
fCHOC2CO3(i)=fCHOC2CO3(i)-1; fNO(i)=fNO(i)-1; fCHOC2H4O2(i)=fCHOC2H4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3 + NO2 = CHOC2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CHOC2CO3'; Gstr{i,2} = 'NO2'; 
fCHOC2CO3(i)=fCHOC2CO3(i)-1; fNO2(i)=fNO2(i)-1; fCHOC2PAN(i)=fCHOC2PAN(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3 + NO3 = CHOC2H4O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CHOC2CO3'; Gstr{i,2} = 'NO3'; 
fCHOC2CO3(i)=fCHOC2CO3(i)-1; fNO3(i)=fNO3(i)-1; fCHOC2H4O2(i)=fCHOC2H4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3 = CHOC2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CHOC2CO3'; Gstr{i,2} = 'RO2';
fCHOC2CO3(i)=fCHOC2CO3(i)-1; fCHOC2CO2H(i)=fCHOC2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3 = CHOC2H4O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CHOC2CO3'; Gstr{i,2} = 'RO2';
fCHOC2CO3(i)=fCHOC2CO3(i)-1; fCHOC2H4O2(i)=fCHOC2H4O2(i)+1; 

i=i+1;
Rnames{i} = 'C616OOH + OH = CO123C5CHO + OH';
k(:,i) = 1.02e-10;
Gstr{i,1} = 'C616OOH'; Gstr{i,2} = 'OH'; 
fC616OOH(i)=fC616OOH(i)-1; fOH(i)=fOH(i)-1; fCO123C5CHO(i)=fCO123C5CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C616OOH =  + 0.5CHOC2CO3 + 0.5GLYOX + 0.5CO12C4CHO + 0.5HO2 + 0.5CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C616OOH'; 
fC616OOH(i)=fC616OOH(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+0.5; fGLYOX(i)=fGLYOX(i)+0.5; fCO12C4CHO(i)=fCO12C4CHO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C616OOH =  + 0.5CHOC2CO3 + 0.5GLYOX + 0.5CO12C4CHO + 0.5HO2 + 0.5CO + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C616OOH'; 
fC616OOH(i)=fC616OOH(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+0.5; fGLYOX(i)=fGLYOX(i)+0.5; fCO12C4CHO(i)=fCO12C4CHO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C616OH + OH = CO123C5CHO + HO2';
k(:,i) = 9.27e-11;
Gstr{i,1} = 'C616OH'; Gstr{i,2} = 'OH'; 
fC616OH(i)=fC616OH(i)-1; fOH(i)=fOH(i)-1; fCO123C5CHO(i)=fCO123C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C616OH =  + 0.5CHOC2CO3 + 0.5GLYOX + 0.5CO12C4CHO + 0.5HO2 + 0.5CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C616OH'; 
fC616OH(i)=fC616OH(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+0.5; fGLYOX(i)=fGLYOX(i)+0.5; fCO12C4CHO(i)=fCO12C4CHO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C718CO2H + OH = C718O2';
k(:,i) = 7.21e-11;
Gstr{i,1} = 'C718CO2H'; Gstr{i,2} = 'OH'; 
fC718CO2H(i)=fC718CO2H(i)-1; fOH(i)=fOH(i)-1; fC718O2(i)=fC718O2(i)+1; 

i=i+1;
Rnames{i} = 'C718CO2H = C718O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C718CO2H'; 
fC718CO2H(i)=fC718CO2H(i)-1; fC718O2(i)=fC718O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3H + OH = C718CO3';
k(:,i) = 7.52e-11;
Gstr{i,1} = 'C718CO3H'; Gstr{i,2} = 'OH'; 
fC718CO3H(i)=fC718CO3H(i)-1; fOH(i)=fOH(i)-1; fC718CO3(i)=fC718CO3(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3H = C718O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C718CO3H'; 
fC718CO3H(i)=fC718CO3H(i)-1; fC718O2(i)=fC718O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C718CO3H = C718O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C718CO3H'; 
fC718CO3H(i)=fC718CO3H(i)-1; fC718O2(i)=fC718O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C718O2 + HO2 = C718OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C718O2'; Gstr{i,2} = 'HO2'; 
fC718O2(i)=fC718O2(i)-1; fHO2(i)=fHO2(i)-1; fC718OOH(i)=fC718OOH(i)+1; 

i=i+1;
Rnames{i} = 'C718O2 + NO = C718NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C718O2'; Gstr{i,2} = 'NO'; 
fC718O2(i)=fC718O2(i)-1; fNO(i)=fNO(i)-1; fC718NO3(i)=fC718NO3(i)+1; 

i=i+1;
Rnames{i} = 'C718O2 + NO =  + C617CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C718O2'; Gstr{i,2} = 'NO'; 
fC718O2(i)=fC718O2(i)-1; fNO(i)=fNO(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C718O2 + NO3 =  + C617CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C718O2'; Gstr{i,2} = 'NO3'; 
fC718O2(i)=fC718O2(i)-1; fNO3(i)=fNO3(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C718O2 = C617CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C718O2'; Gstr{i,2} = 'RO2';
fC718O2(i)=fC718O2(i)-1; fC617CHO(i)=fC617CHO(i)+1; 

i=i+1;
Rnames{i} = 'C718O2 =  + C617CHO + HO2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C718O2'; Gstr{i,2} = 'RO2';
fC718O2(i)=fC718O2(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C718O2 = C718OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C718O2'; Gstr{i,2} = 'RO2';
fC718O2(i)=fC718O2(i)-1; fC718OH(i)=fC718OH(i)+1; 

i=i+1;
Rnames{i} = 'C718PAN + OH = C617CHO + CO + NO2';
k(:,i) = 6.81e-11;
Gstr{i,1} = 'C718PAN'; Gstr{i,2} = 'OH'; 
fC718PAN(i)=fC718PAN(i)-1; fOH(i)=fOH(i)-1; fC617CHO(i)=fC617CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C718PAN = C718CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C718PAN'; 
fC718PAN(i)=fC718PAN(i)-1; fC718CO3(i)=fC718CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C513OOH + OH = C513CO + OH';
k(:,i) = 9.23e-11;
Gstr{i,1} = 'C513OOH'; Gstr{i,2} = 'OH'; 
fC513OOH(i)=fC513OOH(i)-1; fOH(i)=fOH(i)-1; fC513CO(i)=fC513CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C513OOH =  + GLYOX + HOC2H4CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C513OOH'; 
fC513OOH(i)=fC513OOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C513OOH =  + GLYOX + HOC2H4CO3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C513OOH'; 
fC513OOH(i)=fC513OOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C513CO + OH = HOC2H4CO3 + CO + CO';
k(:,i) = 2.64e-11;
Gstr{i,1} = 'C513CO'; Gstr{i,2} = 'OH'; 
fC513CO(i)=fC513CO(i)-1; fOH(i)=fOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C513CO = HOC2H4CO3 + HO2 + CO + CO';
k(:,i) = J34;
Gstr{i,1} = 'C513CO'; 
fC513CO(i)=fC513CO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C513CO = HOC2H4CO3 + HO2 + CO + CO';
k(:,i) = J35;
Gstr{i,1} = 'C513CO'; 
fC513CO(i)=fC513CO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C513OH + OH = C513CO + HO2';
k(:,i) = 8.35e-11;
Gstr{i,1} = 'C513OH'; Gstr{i,2} = 'OH'; 
fC513OH(i)=fC513OH(i)-1; fOH(i)=fOH(i)-1; fC513CO(i)=fC513CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C513OH =  + GLYOX + HOC2H4CO3 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C513OH'; 
fC513OH(i)=fC513OH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + HO2 = C514OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'HO2'; 
fC514O2(i)=fC514O2(i)-1; fHO2(i)=fHO2(i)-1; fC514OOH(i)=fC514OOH(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + NO = C514NO3';
k(:,i) = KRO2NO.*0.129;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'NO'; 
fC514O2(i)=fC514O2(i)-1; fNO(i)=fNO(i)-1; fC514NO3(i)=fC514NO3(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + NO =  + CO13C4CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.871;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'NO'; 
fC514O2(i)=fC514O2(i)-1; fNO(i)=fNO(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + NO3 =  + CO13C4CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'NO3'; 
fC514O2(i)=fC514O2(i)-1; fNO3(i)=fNO3(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 =  + CO13C4CHO + HO2';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'RO2';
fC514O2(i)=fC514O2(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 = C514OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'RO2';
fC514O2(i)=fC514O2(i)-1; fC514OH(i)=fC514OH(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 = CO13C4CHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'RO2';
fC514O2(i)=fC514O2(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO2H + OH = C627O2';
k(:,i) = 6.67e-12;
Gstr{i,1} = 'CO25C6CO2H'; Gstr{i,2} = 'OH'; 
fCO25C6CO2H(i)=fCO25C6CO2H(i)-1; fOH(i)=fOH(i)-1; fC627O2(i)=fC627O2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO2H = C627O2 + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C6CO2H'; 
fCO25C6CO2H(i)=fCO25C6CO2H(i)-1; fC627O2(i)=fC627O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3H + OH = CO25C6CO3';
k(:,i) = 9.75e-11;
Gstr{i,1} = 'CO25C6CO3H'; Gstr{i,2} = 'OH'; 
fCO25C6CO3H(i)=fCO25C6CO3H(i)-1; fOH(i)=fOH(i)-1; fCO25C6CO3(i)=fCO25C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3H = C627O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO25C6CO3H'; 
fCO25C6CO3H(i)=fCO25C6CO3H(i)-1; fC627O2(i)=fC627O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6CO3H = C627O2 + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C6CO3H'; 
fCO25C6CO3H(i)=fCO25C6CO3H(i)-1; fC627O2(i)=fC627O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C627PAN + OH = CO2C4GLYOX + CO + NO2';
k(:,i) = 6.15e-12;
Gstr{i,1} = 'C627PAN'; Gstr{i,2} = 'OH'; 
fC627PAN(i)=fC627PAN(i)-1; fOH(i)=fOH(i)-1; fCO2C4GLYOX(i)=fCO2C4GLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C627PAN = CO25C6CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C627PAN'; 
fC627PAN(i)=fC627PAN(i)-1; fCO25C6CO3(i)=fCO25C6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C627OOH + OH = CO2C4GLYOX + OH';
k(:,i) = 1.51e-11;
Gstr{i,1} = 'C627OOH'; Gstr{i,2} = 'OH'; 
fC627OOH(i)=fC627OOH(i)-1; fOH(i)=fOH(i)-1; fCO2C4GLYOX(i)=fCO2C4GLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C627OOH =  + CO2C4CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C627OOH'; 
fC627OOH(i)=fC627OOH(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C627OOH = CO2C4CO3 + HCHO + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'C627OOH'; 
fC627OOH(i)=fC627OOH(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C627OH + OH = CO2C4GLYOX + HO2';
k(:,i) = 8.25e-12;
Gstr{i,1} = 'C627OH'; Gstr{i,2} = 'OH'; 
fC627OH(i)=fC627OH(i)-1; fOH(i)=fOH(i)-1; fCO2C4GLYOX(i)=fCO2C4GLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C627OH = CO2C4CO3 + HCHO + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'C627OH'; 
fC627OH(i)=fC627OH(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' CO2C4GLYOX + OH = CO2C4CO3 + CO';
k(:,i) = 1.83e-11;
Gstr{i,1} = 'CO2C4GLYOX'; Gstr{i,2} = 'OH'; 
fCO2C4GLYOX(i)=fCO2C4GLYOX(i)-1; fOH(i)=fOH(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' CO2C4GLYOX = CO2C4CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO2C4GLYOX'; 
fCO2C4GLYOX(i)=fCO2C4GLYOX(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C820O2 + HO2 = C820OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C820O2'; Gstr{i,2} = 'HO2'; 
fC820O2(i)=fC820O2(i)-1; fHO2(i)=fHO2(i)-1; fC820OOH(i)=fC820OOH(i)+1; 

i=i+1;
Rnames{i} = 'C820O2 + NO =  + CH3CO3 + C614CO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C820O2'; Gstr{i,2} = 'NO'; 
fC820O2(i)=fC820O2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC614CO(i)=fC614CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C820O2 + NO3 =  + CH3CO3 + C614CO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C820O2'; Gstr{i,2} = 'NO3'; 
fC820O2(i)=fC820O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC614CO(i)=fC614CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C820O2 =  + CH3CO3 + C614CO';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C820O2'; Gstr{i,2} = 'RO2';
fC820O2(i)=fC820O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC614CO(i)=fC614CO(i)+1; 

i=i+1;
Rnames{i} = 'C727OOH + OH = C727CO + OH';
k(:,i) = 2.42e-11;
Gstr{i,1} = 'C727OOH'; Gstr{i,2} = 'OH'; 
fC727OOH(i)=fC727OOH(i)-1; fOH(i)=fOH(i)-1; fC727CO(i)=fC727CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C727OOH =  + CH3CO3 + CO2C4CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C727OOH'; 
fC727OOH(i)=fC727OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO2C4CHO(i)=fCO2C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C727CO + OH = C821O2';
k(:,i) = 5.67e-12;
Gstr{i,1} = 'C727CO'; Gstr{i,2} = 'OH'; 
fC727CO(i)=fC727CO(i)-1; fOH(i)=fOH(i)-1; fC821O2(i)=fC821O2(i)+1; 

i=i+1;
Rnames{i} = 'C727CO = CH3CO3 + CO2C4CO3';
k(:,i) = J35;
Gstr{i,1} = 'C727CO'; 
fC727CO(i)=fC727CO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3H + OH = C511CO3';
k(:,i) = 3.14e-11;
Gstr{i,1} = 'C511CO3H'; Gstr{i,2} = 'OH'; 
fC511CO3H(i)=fC511CO3H(i)-1; fOH(i)=fOH(i)-1; fC511CO3(i)=fC511CO3(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3H = C511O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C511CO3H'; 
fC511CO3H(i)=fC511CO3H(i)-1; fC511O2(i)=fC511O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C511CO3H = C511O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C511CO3H'; 
fC511CO3H(i)=fC511CO3H(i)-1; fC511O2(i)=fC511O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C511PAN + OH = CO23C4CHO + CO + NO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'C511PAN'; Gstr{i,2} = 'OH'; 
fC511PAN(i)=fC511PAN(i)-1; fOH(i)=fOH(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511PAN = C511CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C511PAN'; 
fC511PAN(i)=fC511PAN(i)-1; fC511CO3(i)=fC511CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517CO2H + OH = C517O2';
k(:,i) = 1.84e-11;
Gstr{i,1} = 'C517CO2H'; Gstr{i,2} = 'OH'; 
fC517CO2H(i)=fC517CO2H(i)-1; fOH(i)=fOH(i)-1; fC517O2(i)=fC517O2(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3H + OH = C517CO3';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'C517CO3H'; Gstr{i,2} = 'OH'; 
fC517CO3H(i)=fC517CO3H(i)-1; fOH(i)=fOH(i)-1; fC517CO3(i)=fC517CO3(i)+1; 

i=i+1;
Rnames{i} = 'C517CO3H = C517O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C517CO3H'; 
fC517CO3H(i)=fC517CO3H(i)-1; fC517O2(i)=fC517O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C517PAN + OH = HMVKBCHO + CO + NO2';
k(:,i) = 1.79e-11;
Gstr{i,1} = 'C517PAN'; Gstr{i,2} = 'OH'; 
fC517PAN(i)=fC517PAN(i)-1; fOH(i)=fOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517PAN = C517CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C517PAN'; 
fC517PAN(i)=fC517PAN(i)-1; fC517CO3(i)=fC517CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517OOH + OH = HMVKBCHO + OH';
k(:,i) = 4.93e-11;
Gstr{i,1} = 'C517OOH'; Gstr{i,2} = 'OH'; 
fC517OOH(i)=fC517OOH(i)-1; fOH(i)=fOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C517OOH =  + HMVKBCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C517OOH'; 
fC517OOH(i)=fC517OOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C517NO3 + OH = HMVKBCHO + NO2';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'C517NO3'; Gstr{i,2} = 'OH'; 
fC517NO3(i)=fC517NO3(i)-1; fOH(i)=fOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517NO3 =  + HMVKBCHO + HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C517NO3'; 
fC517NO3(i)=fC517NO3(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C517OH + OH = HMVKBCHO + HO2';
k(:,i) = 2.81e-11;
Gstr{i,1} = 'C517OH'; Gstr{i,2} = 'OH'; 
fC517OH(i)=fC517OH(i)-1; fOH(i)=fOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCHO + NO3 = HMVKBCO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'HMVKBCHO'; Gstr{i,2} = 'NO3'; 
fHMVKBCHO(i)=fHMVKBCHO(i)-1; fNO3(i)=fNO3(i)-1; fHMVKBCO3(i)=fHMVKBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCHO + OH = HMVKBCO3';
k(:,i) = 3.51e-11;
Gstr{i,1} = 'HMVKBCHO'; Gstr{i,2} = 'OH'; 
fHMVKBCHO(i)=fHMVKBCHO(i)-1; fOH(i)=fOH(i)-1; fHMVKBCO3(i)=fHMVKBCO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCHO = HMVKBO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HMVKBCHO'; 
fHMVKBCHO(i)=fHMVKBCHO(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C628OOH + OH = C628O2';
k(:,i) = 3.14e-11;
Gstr{i,1} = 'C628OOH'; Gstr{i,2} = 'OH'; 
fC628OOH(i)=fC628OOH(i)-1; fOH(i)=fOH(i)-1; fC628O2(i)=fC628O2(i)+1; 

i=i+1;
Rnames{i} = 'C628OOH =  + CO13C4OH + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C628OOH'; 
fC628OOH(i)=fC628OOH(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C628OOH = CO13C4OH + CH3CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C628OOH'; 
fC628OOH(i)=fC628OOH(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C628OOH = CO13C4OH + CH3CO3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C628OOH'; 
fC628OOH(i)=fC628OOH(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C628OH + OH =  + CO13C4OH + CH3CO3';
k(:,i) = 2.80e-11;
Gstr{i,1} = 'C628OH'; Gstr{i,2} = 'OH'; 
fC628OH(i)=fC628OH(i)-1; fOH(i)=fOH(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C628OH = CO13C4OH + CH3CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C628OH'; 
fC628OH(i)=fC628OH(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C628OH = CO13C4OH + CH3CO3 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C628OH'; 
fC628OH(i)=fC628OH(i)-1; fCO13C4OH(i)=fCO13C4OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3 + HO2 = C518CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C518CO3'; Gstr{i,2} = 'HO2'; 
fC518CO3(i)=fC518CO3(i)-1; fHO2(i)=fHO2(i)-1; fC518CO2H(i)=fC518CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3 + HO2 = C518CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C518CO3'; Gstr{i,2} = 'HO2'; 
fC518CO3(i)=fC518CO3(i)-1; fHO2(i)=fHO2(i)-1; fC518CO3H(i)=fC518CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3 + HO2 = ISOPDO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C518CO3'; Gstr{i,2} = 'HO2'; 
fC518CO3(i)=fC518CO3(i)-1; fHO2(i)=fHO2(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3 + NO = ISOPDO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C518CO3'; Gstr{i,2} = 'NO'; 
fC518CO3(i)=fC518CO3(i)-1; fNO(i)=fNO(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3 + NO2 = C518PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C518CO3'; Gstr{i,2} = 'NO2'; 
fC518CO3(i)=fC518CO3(i)-1; fNO2(i)=fNO2(i)-1; fC518PAN(i)=fC518PAN(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3 + NO3 = ISOPDO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C518CO3'; Gstr{i,2} = 'NO3'; 
fC518CO3(i)=fC518CO3(i)-1; fNO3(i)=fNO3(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3 = C518CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C518CO3'; Gstr{i,2} = 'RO2';
fC518CO3(i)=fC518CO3(i)-1; fC518CO2H(i)=fC518CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3 = ISOPDO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C518CO3'; Gstr{i,2} = 'RO2';
fC518CO3(i)=fC518CO3(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'NC623O2 + HO2 = NC623OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NC623O2'; Gstr{i,2} = 'HO2'; 
fNC623O2(i)=fNC623O2(i)-1; fHO2(i)=fHO2(i)-1; fNC623OOH(i)=fNC623OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC623O2 + NO =  + HMVKBCHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC623O2'; Gstr{i,2} = 'NO'; 
fNC623O2(i)=fNC623O2(i)-1; fNO(i)=fNO(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC623O2 + NO3 =  + HMVKBCHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC623O2'; Gstr{i,2} = 'NO3'; 
fNC623O2(i)=fNC623O2(i)-1; fNO3(i)=fNO3(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC623O2 =  + HMVKBCHO + HCHO + NO2';
k(:,i) = 8.00e-13.*0.7;
Gstr{i,1} = 'NC623O2'; Gstr{i,2} = 'RO2';
fNC623O2(i)=fNC623O2(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC623O2 = NC623OH';
k(:,i) = 8.00e-13.*0.3;
Gstr{i,1} = 'NC623O2'; Gstr{i,2} = 'RO2';
fNC623O2(i)=fNC623O2(i)-1; fNC623OH(i)=fNC623OH(i)+1; 

i=i+1;
Rnames{i} = 'C623O2 + HO2 = C623OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C623O2'; Gstr{i,2} = 'HO2'; 
fC623O2(i)=fC623O2(i)-1; fHO2(i)=fHO2(i)-1; fC623OOH(i)=fC623OOH(i)+1; 

i=i+1;
Rnames{i} = 'C623O2 + NO = C623NO3';
k(:,i) = KRO2NO.*0.030;
Gstr{i,1} = 'C623O2'; Gstr{i,2} = 'NO'; 
fC623O2(i)=fC623O2(i)-1; fNO(i)=fNO(i)-1; fC623NO3(i)=fC623NO3(i)+1; 

i=i+1;
Rnames{i} = 'C623O2 + NO =  + HMVKBCHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.970;
Gstr{i,1} = 'C623O2'; Gstr{i,2} = 'NO'; 
fC623O2(i)=fC623O2(i)-1; fNO(i)=fNO(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C623O2 + NO3 =  + HMVKBCHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C623O2'; Gstr{i,2} = 'NO3'; 
fC623O2(i)=fC623O2(i)-1; fNO3(i)=fNO3(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C623O2 =  + HMVKBCHO + HCHO + HO2';
k(:,i) = 8.00e-13.*0.7;
Gstr{i,1} = 'C623O2'; Gstr{i,2} = 'RO2';
fC623O2(i)=fC623O2(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C623O2 = C623OH';
k(:,i) = 8.00e-13.*0.3;
Gstr{i,1} = 'C623O2'; Gstr{i,2} = 'RO2';
fC623O2(i)=fC623O2(i)-1; fC623OH(i)=fC623OH(i)+1; 

i=i+1;
Rnames{i} = 'C824OOH + OH = C824CO + OH';
k(:,i) = 1.02e-10;
Gstr{i,1} = 'C824OOH'; Gstr{i,2} = 'OH'; 
fC824OOH(i)=fC824OOH(i)-1; fOH(i)=fOH(i)-1; fC824CO(i)=fC824CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C824OOH =  + C624CHO + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C824OOH'; 
fC824OOH(i)=fC824OOH(i)-1; fC624CHO(i)=fC624CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C824CO + OH = C624CO3 + CO';
k(:,i) = 7.46e-11;
Gstr{i,1} = 'C824CO'; Gstr{i,2} = 'OH'; 
fC824CO(i)=fC824CO(i)-1; fOH(i)=fOH(i)-1; fC624CO3(i)=fC624CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C824CO = C624CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C824CO'; 
fC824CO(i)=fC824CO(i)-1; fC624CO3(i)=fC624CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C824OH + OH = C824CO + HO2';
k(:,i) = 9.34e-11;
Gstr{i,1} = 'C824OH'; Gstr{i,2} = 'OH'; 
fC824OH(i)=fC824OH(i)-1; fOH(i)=fOH(i)-1; fC824CO(i)=fC824CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C825O2 + HO2 = C825OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C825O2'; Gstr{i,2} = 'HO2'; 
fC825O2(i)=fC825O2(i)-1; fHO2(i)=fHO2(i)-1; fC825OOH(i)=fC825OOH(i)+1; 

i=i+1;
Rnames{i} = 'C825O2 + NO =  + C622CHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C825O2'; Gstr{i,2} = 'NO'; 
fC825O2(i)=fC825O2(i)-1; fNO(i)=fNO(i)-1; fC622CHO(i)=fC622CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C825O2 + NO3 =  + C622CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C825O2'; Gstr{i,2} = 'NO3'; 
fC825O2(i)=fC825O2(i)-1; fNO3(i)=fNO3(i)-1; fC622CHO(i)=fC622CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C825O2 = C825CO';
k(:,i) = 8.80e-12.*0.2;
Gstr{i,1} = 'C825O2'; Gstr{i,2} = 'RO2';
fC825O2(i)=fC825O2(i)-1; fC825CO(i)=fC825CO(i)+1; 

i=i+1;
Rnames{i} = 'C825O2 =  + C622CHO + HO2';
k(:,i) = 8.80e-12.*0.6;
Gstr{i,1} = 'C825O2'; Gstr{i,2} = 'RO2';
fC825O2(i)=fC825O2(i)-1; fC622CHO(i)=fC622CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C825O2 = C825OH';
k(:,i) = 8.80e-12.*0.2;
Gstr{i,1} = 'C825O2'; Gstr{i,2} = 'RO2';
fC825O2(i)=fC825O2(i)-1; fC825OH(i)=fC825OH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = CO2C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C4CO2H(i)=fCO2C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = CO2C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C4CO3H(i)=fCO2C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = MEKAO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO = MEKAO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO(i)=fNO(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO2 = C5PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN2(i)=fC5PAN2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO3 = MEKAO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO3'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 = CO2C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'RO2';
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fCO2C4CO2H(i)=fCO2C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 = MEKAO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'RO2';
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + OH = HO1CO3C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HOCO3C4OOH'; Gstr{i,2} = 'OH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + OH = HO1CO3CHO + OH';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'HOCO3C4OOH'; Gstr{i,2} = 'OH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH =  + HOC2H4CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCO3C4OOH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH =  + HOC2H4CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HOCO3C4OOH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO2C4 + OH = HO1CO3CHO + HO2';
k(:,i) = 1.57e-11;
Gstr{i,1} = 'HO14CO2C4'; Gstr{i,2} = 'OH'; 
fHO14CO2C4(i)=fHO14CO2C4(i)-1; fOH(i)=fOH(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO2C4 = HOCH2CO3 + HOCH2CH2O2';
k(:,i) = J22;
Gstr{i,1} = 'HO14CO2C4'; 
fHO14CO2C4(i)=fHO14CO2C4(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO + NO3 = HOC2H4CO3 + CO + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'HO1CO3CHO'; Gstr{i,2} = 'NO3'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fNO3(i)=fNO3(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO + OH = HOC2H4CO3 + CO';
k(:,i) = 2.56e-11;
Gstr{i,1} = 'HO1CO3CHO'; Gstr{i,2} = 'OH'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fOH(i)=fOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO = HOC2H4CO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'HO1CO3CHO'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

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
Rnames{i} = 'C731O2 + HO2 = C731OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C731O2'; Gstr{i,2} = 'HO2'; 
fC731O2(i)=fC731O2(i)-1; fHO2(i)=fHO2(i)-1; fC731OOH(i)=fC731OOH(i)+1; 

i=i+1;
Rnames{i} = 'C731O2 + NO = C731NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C731O2'; Gstr{i,2} = 'NO'; 
fC731O2(i)=fC731O2(i)-1; fNO(i)=fNO(i)-1; fC731NO3(i)=fC731NO3(i)+1; 

i=i+1;
Rnames{i} = 'C731O2 + NO =  + C733O2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C731O2'; Gstr{i,2} = 'NO'; 
fC731O2(i)=fC731O2(i)-1; fNO(i)=fNO(i)-1; fC733O2(i)=fC733O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C731O2 + NO3 =  + C733O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C731O2'; Gstr{i,2} = 'NO3'; 
fC731O2(i)=fC731O2(i)-1; fNO3(i)=fNO3(i)-1; fC733O2(i)=fC733O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C731O2 = C626CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C731O2'; Gstr{i,2} = 'RO2';
fC731O2(i)=fC731O2(i)-1; fC626CHO(i)=fC626CHO(i)+1; 

i=i+1;
Rnames{i} = 'C731O2 =  + C733O2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C731O2'; Gstr{i,2} = 'RO2';
fC731O2(i)=fC731O2(i)-1; fC733O2(i)=fC733O2(i)+1; 

i=i+1;
Rnames{i} = 'C731O2 = C731OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C731O2'; Gstr{i,2} = 'RO2';
fC731O2(i)=fC731O2(i)-1; fC731OH(i)=fC731OH(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3 + HO2 = C732CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C732CO3'; Gstr{i,2} = 'HO2'; 
fC732CO3(i)=fC732CO3(i)-1; fHO2(i)=fHO2(i)-1; fC732CO3H(i)=fC732CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3 + HO2 = C732O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C732CO3'; Gstr{i,2} = 'HO2'; 
fC732CO3(i)=fC732CO3(i)-1; fHO2(i)=fHO2(i)-1; fC732O2(i)=fC732O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3 + HO2 = KLIMONIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C732CO3'; Gstr{i,2} = 'HO2'; 
fC732CO3(i)=fC732CO3(i)-1; fHO2(i)=fHO2(i)-1; fKLIMONIC(i)=fKLIMONIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3 + NO = C732O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C732CO3'; Gstr{i,2} = 'NO'; 
fC732CO3(i)=fC732CO3(i)-1; fNO(i)=fNO(i)-1; fC732O2(i)=fC732O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3 + NO2 = C732PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C732CO3'; Gstr{i,2} = 'NO2'; 
fC732CO3(i)=fC732CO3(i)-1; fNO2(i)=fNO2(i)-1; fC732PAN(i)=fC732PAN(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3 + NO3 = C732O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C732CO3'; Gstr{i,2} = 'NO3'; 
fC732CO3(i)=fC732CO3(i)-1; fNO3(i)=fNO3(i)-1; fC732O2(i)=fC732O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3 = C732O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C732CO3'; Gstr{i,2} = 'RO2';
fC732CO3(i)=fC732CO3(i)-1; fC732O2(i)=fC732O2(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3 = KLIMONIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C732CO3'; Gstr{i,2} = 'RO2';
fC732CO3(i)=fC732CO3(i)-1; fKLIMONIC(i)=fKLIMONIC(i)+1; 

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
Rnames{i} = 'CO23C4CO3 + HO2 = BIACETO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'HO2'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + HO2 = CO23C4CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'HO2'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO23C4CO3H(i)=fCO23C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + NO = BIACETO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'NO'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fNO(i)=fNO(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + NO2 = C5PAN9';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'NO2'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN9(i)=fC5PAN9(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + NO3 = BIACETO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'NO3'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 = BIACETO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'RO2';
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + HO2 = C312COCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'HO2'; 
fC312COCO3(i)=fC312COCO3(i)-1; fHO2(i)=fHO2(i)-1; fC312COCO3H(i)=fC312COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + HO2 = CHOCOCH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'HO2'; 
fC312COCO3(i)=fC312COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + NO = CHOCOCH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'NO'; 
fC312COCO3(i)=fC312COCO3(i)-1; fNO(i)=fNO(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + NO2 = C312COPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'NO2'; 
fC312COCO3(i)=fC312COCO3(i)-1; fNO2(i)=fNO2(i)-1; fC312COPAN(i)=fC312COPAN(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + NO3 = CHOCOCH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'NO3'; 
fC312COCO3(i)=fC312COCO3(i)-1; fNO3(i)=fNO3(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 = CHOCOCH2O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'RO2';
fC312COCO3(i)=fC312COCO3(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O2 + HO2 = ALCOCH2OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'CHOCOCH2O2'; Gstr{i,2} = 'HO2'; 
fCHOCOCH2O2(i)=fCHOCOCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fALCOCH2OOH(i)=fALCOCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O2 + NO =  + 0.6HCHO + 0.6HO2 + 0.6CO + 0.6CO + 0.4HCOCO3 + 0.4HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CHOCOCH2O2'; Gstr{i,2} = 'NO'; 
fCHOCOCH2O2(i)=fCHOCOCH2O2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+0.6; fHO2(i)=fHO2(i)+0.6; fCO(i)=fCO(i)+0.6; fCO(i)=fCO(i)+0.6; fHCOCO3(i)=fHCOCO3(i)+0.4; fHCHO(i)=fHCHO(i)+0.4; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O2 + NO3 =  + 0.6HCHO + 0.6HO2 + 0.6CO + 0.6CO + 0.4HCOCO3 + 0.4HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CHOCOCH2O2'; Gstr{i,2} = 'NO3'; 
fCHOCOCH2O2(i)=fCHOCOCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+0.6; fHO2(i)=fHO2(i)+0.6; fCO(i)=fCO(i)+0.6; fCO(i)=fCO(i)+0.6; fHCOCO3(i)=fHCOCO3(i)+0.4; fHCHO(i)=fHCHO(i)+0.4; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O2 =  + 0.6HCHO + 0.6HO2 + 0.6CO + 0.6CO + 0.4HCOCO3 + 0.4HCHO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'CHOCOCH2O2'; Gstr{i,2} = 'RO2';
fCHOCOCH2O2(i)=fCHOCOCH2O2(i)-1; fHCHO(i)=fHCHO(i)+0.6; fHO2(i)=fHO2(i)+0.6; fCO(i)=fCO(i)+0.6; fCO(i)=fCO(i)+0.6; fHCOCO3(i)=fHCOCO3(i)+0.4; fHCHO(i)=fHCHO(i)+0.4; 

i=i+1;
Rnames{i} = 'NC72O2 + HO2 = NC72OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NC72O2'; Gstr{i,2} = 'HO2'; 
fNC72O2(i)=fNC72O2(i)-1; fHO2(i)=fHO2(i)-1; fNC72OOH(i)=fNC72OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC72O2 + NO =  + NC61CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC72O2'; Gstr{i,2} = 'NO'; 
fNC72O2(i)=fNC72O2(i)-1; fNO(i)=fNO(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC72O2 + NO3 =  + NC61CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC72O2'; Gstr{i,2} = 'NO3'; 
fNC72O2(i)=fNC72O2(i)-1; fNO3(i)=fNO3(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC72O2 =  + NC61CO3';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NC72O2'; Gstr{i,2} = 'RO2';
fNC72O2(i)=fNC72O2(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; 

i=i+1;
Rnames{i} = 'C812OOH + OH = C812O2';
k(:,i) = 1.09e-11;
Gstr{i,1} = 'C812OOH'; Gstr{i,2} = 'OH'; 
fC812OOH(i)=fC812OOH(i)-1; fOH(i)=fOH(i)-1; fC812O2(i)=fC812O2(i)+1; 

i=i+1;
Rnames{i} = 'C812OOH =  + C813O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C812OOH'; 
fC812OOH(i)=fC812OOH(i)-1; fC813O2(i)=fC813O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C812OH + OH =  + C813O2';
k(:,i) = 7.42e-12;
Gstr{i,1} = 'C812OH'; Gstr{i,2} = 'OH'; 
fC812OH(i)=fC812OH(i)-1; fOH(i)=fOH(i)-1; fC813O2(i)=fC813O2(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3H + OH = C721CO3';
k(:,i) = 9.65e-12;
Gstr{i,1} = 'C721CO3H'; Gstr{i,2} = 'OH'; 
fC721CO3H(i)=fC721CO3H(i)-1; fOH(i)=fOH(i)-1; fC721CO3(i)=fC721CO3(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3H = C721O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C721CO3H'; 
fC721CO3H(i)=fC721CO3H(i)-1; fC721O2(i)=fC721O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NORPINIC + OH = C721O2';
k(:,i) = 6.57e-12;
Gstr{i,1} = 'NORPINIC'; Gstr{i,2} = 'OH'; 
fNORPINIC(i)=fNORPINIC(i)-1; fOH(i)=fOH(i)-1; fC721O2(i)=fC721O2(i)+1; 

i=i+1;
Rnames{i} = 'C721PAN + OH = C721OOH + CO + NO2';
k(:,i) = 2.96e-12;
Gstr{i,1} = 'C721PAN'; Gstr{i,2} = 'OH'; 
fC721PAN(i)=fC721PAN(i)-1; fOH(i)=fOH(i)-1; fC721OOH(i)=fC721OOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721PAN = C721CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C721PAN'; 
fC721PAN(i)=fC721PAN(i)-1; fC721CO3(i)=fC721CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721OOH + OH = C721O2';
k(:,i) = 1.27e-11;
Gstr{i,1} = 'C721OOH'; Gstr{i,2} = 'OH'; 
fC721OOH(i)=fC721OOH(i)-1; fOH(i)=fOH(i)-1; fC721O2(i)=fC721O2(i)+1; 

i=i+1;
Rnames{i} = 'C721OOH =  + C722O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C721OOH'; 
fC721OOH(i)=fC721OOH(i)-1; fC722O2(i)=fC722O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C621O2 + HO2 = C621OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C621O2'; Gstr{i,2} = 'HO2'; 
fC621O2(i)=fC621O2(i)-1; fHO2(i)=fHO2(i)-1; fC621OOH(i)=fC621OOH(i)+1; 

i=i+1;
Rnames{i} = 'C621O2 + NO =  + HCHO + H1C23C4CHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C621O2'; Gstr{i,2} = 'NO'; 
fC621O2(i)=fC621O2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fH1C23C4CHO(i)=fH1C23C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C621O2 + NO3 =  + HCHO + H1C23C4CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C621O2'; Gstr{i,2} = 'NO3'; 
fC621O2(i)=fC621O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fH1C23C4CHO(i)=fH1C23C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C621O2 =  + HCHO + H1C23C4CHO + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C621O2'; Gstr{i,2} = 'RO2';
fC621O2(i)=fC621O2(i)-1; fHCHO(i)=fHCHO(i)+1; fH1C23C4CHO(i)=fH1C23C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'CO23C4CHO = BIACETO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO23C4CHO'; 
fCO23C4CHO(i)=fCO23C4CHO(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CHO = CH3CO3 + HCOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C4CHO'; 
fCO23C4CHO(i)=fCO23C4CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO23C4CHO = CO23C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO23C4CHO'; 
fNO3(i)=fNO3(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO23C4CHO = CO23C4CO3';
k(:,i) = 6.65e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO23C4CHO'; 
fOH(i)=fOH(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO2H + OH = HMVKAO2';
k(:,i) = 2.34e-11;
Gstr{i,1} = 'H3C2C4CO2H'; Gstr{i,2} = 'OH'; 
fH3C2C4CO2H(i)=fH3C2C4CO2H(i)-1; fOH(i)=fOH(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO2H = HMVKAO2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'H3C2C4CO2H'; 
fH3C2C4CO2H(i)=fH3C2C4CO2H(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3H + OH = H3C2C4CO3';
k(:,i) = 2.65e-11;
Gstr{i,1} = 'H3C2C4CO3H'; Gstr{i,2} = 'OH'; 
fH3C2C4CO3H(i)=fH3C2C4CO3H(i)-1; fOH(i)=fOH(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3H = HMVKAO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'H3C2C4CO3H'; 
fH3C2C4CO3H(i)=fH3C2C4CO3H(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3H = HMVKAO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'H3C2C4CO3H'; 
fH3C2C4CO3H(i)=fH3C2C4CO3H(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4PAN + OH = CO2H3CHO + CO + NO2';
k(:,i) = 7.60e-12;
Gstr{i,1} = 'H3C2C4PAN'; Gstr{i,2} = 'OH'; 
fH3C2C4PAN(i)=fH3C2C4PAN(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4PAN = H3C2C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'H3C2C4PAN'; 
fH3C2C4PAN(i)=fH3C2C4PAN(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3 + HO2 = C515CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C515CO3'; Gstr{i,2} = 'HO2'; 
fC515CO3(i)=fC515CO3(i)-1; fHO2(i)=fHO2(i)-1; fC515CO3H(i)=fC515CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3 + HO2 = C515O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C515CO3'; Gstr{i,2} = 'HO2'; 
fC515CO3(i)=fC515CO3(i)-1; fHO2(i)=fHO2(i)-1; fC515O2(i)=fC515O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3 + NO = C515O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C515CO3'; Gstr{i,2} = 'NO'; 
fC515CO3(i)=fC515CO3(i)-1; fNO(i)=fNO(i)-1; fC515O2(i)=fC515O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3 + NO2 = C515PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C515CO3'; Gstr{i,2} = 'NO2'; 
fC515CO3(i)=fC515CO3(i)-1; fNO2(i)=fNO2(i)-1; fC515PAN(i)=fC515PAN(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3 + NO3 = C515O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C515CO3'; Gstr{i,2} = 'NO3'; 
fC515CO3(i)=fC515CO3(i)-1; fNO3(i)=fNO3(i)-1; fC515O2(i)=fC515O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3 = C515O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C515CO3'; Gstr{i,2} = 'RO2';
fC515CO3(i)=fC515CO3(i)-1; fC515O2(i)=fC515O2(i)+1; 

i=i+1;
Rnames{i} = 'C515O2 + HO2 = C515OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C515O2'; Gstr{i,2} = 'HO2'; 
fC515O2(i)=fC515O2(i)-1; fHO2(i)=fHO2(i)-1; fC515OOH(i)=fC515OOH(i)+1; 

i=i+1;
Rnames{i} = 'C515O2 + NO =  + HCHO + CO + HCOCH2CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C515O2'; Gstr{i,2} = 'NO'; 
fC515O2(i)=fC515O2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C515O2 + NO3 =  + HCHO + CO + HCOCH2CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C515O2'; Gstr{i,2} = 'NO3'; 
fC515O2(i)=fC515O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C515O2 =  + HCHO + CO + HCOCH2CO3';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'C515O2'; Gstr{i,2} = 'RO2';
fC515O2(i)=fC515O2(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C87OOH + OH = C87CO + OH';
k(:,i) = 1.00e-10;
Gstr{i,1} = 'C87OOH'; Gstr{i,2} = 'OH'; 
fC87OOH(i)=fC87OOH(i)-1; fOH(i)=fOH(i)-1; fC87CO(i)=fC87CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C87OOH =  + C615CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C87OOH'; 
fC87OOH(i)=fC87OOH(i)-1; fC615CO3(i)=fC615CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C87CO + OH = C615CO3 + CO';
k(:,i) = 1.03e-10;
Gstr{i,1} = 'C87CO'; Gstr{i,2} = 'OH'; 
fC87CO(i)=fC87CO(i)-1; fOH(i)=fOH(i)-1; fC615CO3(i)=fC615CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C87CO = C615CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C87CO'; 
fC87CO(i)=fC87CO(i)-1; fC615CO3(i)=fC615CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C87CO = C615CO3 + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C87CO'; 
fC87CO(i)=fC87CO(i)-1; fC615CO3(i)=fC615CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C87OH + OH = C87CO + HO2';
k(:,i) = 9.34e-11;
Gstr{i,1} = 'C87OH'; Gstr{i,2} = 'OH'; 
fC87OH(i)=fC87OH(i)-1; fOH(i)=fOH(i)-1; fC87CO(i)=fC87CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO2H + OH = CHOC2H4O2';
k(:,i) = 2.64e-11;
Gstr{i,1} = 'CHOC2CO2H'; Gstr{i,2} = 'OH'; 
fCHOC2CO2H(i)=fCHOC2CO2H(i)-1; fOH(i)=fOH(i)-1; fCHOC2H4O2(i)=fCHOC2H4O2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3H + OH = CHOC2CO3';
k(:,i) = 3.00e-11;
Gstr{i,1} = 'CHOC2CO3H'; Gstr{i,2} = 'OH'; 
fCHOC2CO3H(i)=fCHOC2CO3H(i)-1; fOH(i)=fOH(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3H = CHOC2H4O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CHOC2CO3H'; 
fCHOC2CO3H(i)=fCHOC2CO3H(i)-1; fCHOC2H4O2(i)=fCHOC2H4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2CO3H = CHOC2H4O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'CHOC2CO3H'; 
fCHOC2CO3H(i)=fCHOC2CO3H(i)-1; fCHOC2H4O2(i)=fCHOC2H4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2H4O2 + HO2 = CHOC2H4OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'CHOC2H4O2'; Gstr{i,2} = 'HO2'; 
fCHOC2H4O2(i)=fCHOC2H4O2(i)-1; fHO2(i)=fHO2(i)-1; fCHOC2H4OOH(i)=fCHOC2H4OOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2H4O2 + NO =  + HCOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CHOC2H4O2'; Gstr{i,2} = 'NO'; 
fCHOC2H4O2(i)=fCHOC2H4O2(i)-1; fNO(i)=fNO(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2H4O2 + NO3 =  + HCOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CHOC2H4O2'; Gstr{i,2} = 'NO3'; 
fCHOC2H4O2(i)=fCHOC2H4O2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2H4O2 =  + HCOCH2CHO + HO2';
k(:,i) = 6.00e-13;
Gstr{i,1} = 'CHOC2H4O2'; Gstr{i,2} = 'RO2';
fCHOC2H4O2(i)=fCHOC2H4O2(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2PAN + OH = HCOCH2CHO + CO + NO2';
k(:,i) = 2.64e-11;
Gstr{i,1} = 'CHOC2PAN'; Gstr{i,2} = 'OH'; 
fCHOC2PAN(i)=fCHOC2PAN(i)-1; fOH(i)=fOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2PAN = CHOC2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CHOC2PAN'; 
fCHOC2PAN(i)=fCHOC2PAN(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO12C4CHO + NO3 = CHOC2CO3 + CO + HNO3';
k(:,i) = 2.*KNO3AL.*5.5;
Gstr{i,1} = 'CO12C4CHO'; Gstr{i,2} = 'NO3'; 
fCO12C4CHO(i)=fCO12C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO12C4CHO + OH = CHOC2CO3 + CO';
k(:,i) = 3.89e-11;
Gstr{i,1} = 'CO12C4CHO'; Gstr{i,2} = 'OH'; 
fCO12C4CHO(i)=fCO12C4CHO(i)-1; fOH(i)=fOH(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO12C4CHO = CHOC2CO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'CO12C4CHO'; 
fCO12C4CHO(i)=fCO12C4CHO(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO12C4CHO = CHOC2CO3 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO12C4CHO'; 
fCO12C4CHO(i)=fCO12C4CHO(i)-1; fCHOC2CO3(i)=fCHOC2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C718OOH + OH = C617CHO + OH';
k(:,i) = 1.01e-10;
Gstr{i,1} = 'C718OOH'; Gstr{i,2} = 'OH'; 
fC718OOH(i)=fC718OOH(i)-1; fOH(i)=fOH(i)-1; fC617CHO(i)=fC617CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C718OOH =  + C617CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C718OOH'; 
fC718OOH(i)=fC718OOH(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C718OOH =  + C617CHO + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C718OOH'; 
fC718OOH(i)=fC718OOH(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C718NO3 + OH = C617CHO + NO2';
k(:,i) = 6.65e-11;
Gstr{i,1} = 'C718NO3'; Gstr{i,2} = 'OH'; 
fC718NO3(i)=fC718NO3(i)-1; fOH(i)=fOH(i)-1; fC617CHO(i)=fC617CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C718NO3 =  + C617CHO + HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C718NO3'; 
fC718NO3(i)=fC718NO3(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C718NO3 =  + C617CHO + HO2 + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C718NO3'; 
fC718NO3(i)=fC718NO3(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C617CHO + NO3 = C617CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C617CHO'; Gstr{i,2} = 'NO3'; 
fC617CHO(i)=fC617CHO(i)-1; fNO3(i)=fNO3(i)-1; fC617CO3(i)=fC617CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C617CHO + NO3 = C618CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C617CHO'; Gstr{i,2} = 'NO3'; 
fC617CHO(i)=fC617CHO(i)-1; fNO3(i)=fNO3(i)-1; fC618CO3(i)=fC618CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C617CHO + OH = C617CO3';
k(:,i) = 1.33e-10.*0.5;
Gstr{i,1} = 'C617CHO'; Gstr{i,2} = 'OH'; 
fC617CHO(i)=fC617CHO(i)-1; fOH(i)=fOH(i)-1; fC617CO3(i)=fC617CO3(i)+1; 

i=i+1;
Rnames{i} = 'C617CHO + OH = C618CO3';
k(:,i) = 1.33e-10.*0.5;
Gstr{i,1} = 'C617CHO'; Gstr{i,2} = 'OH'; 
fC617CHO(i)=fC617CHO(i)-1; fOH(i)=fOH(i)-1; fC618CO3(i)=fC618CO3(i)+1; 

i=i+1;
Rnames{i} = 'C617CHO = C617O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C617CHO'; 
fC617CHO(i)=fC617CHO(i)-1; fC617O2(i)=fC617O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C617CHO = C618O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C617CHO'; 
fC617CHO(i)=fC617CHO(i)-1; fC618O2(i)=fC618O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C718OH + OH = C617CHO + HO2';
k(:,i) = 7.96e-11;
Gstr{i,1} = 'C718OH'; Gstr{i,2} = 'OH'; 
fC718OH(i)=fC718OH(i)-1; fOH(i)=fOH(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C718OH =  + C617CHO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C718OH'; 
fC718OH(i)=fC718OH(i)-1; fC617CHO(i)=fC617CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + HO2 = HOC2H4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'HO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOC2H4CO2H(i)=fHOC2H4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + HO2 = HOC2H4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'HO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOC2H4CO3H(i)=fHOC2H4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + HO2 = HOCH2CH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'HO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO = HOCH2CH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO(i)=fNO(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO2 = C3PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC3PAN1(i)=fC3PAN1(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO3 = HOCH2CH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO3'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 = HOC2H4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'RO2';
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOC2H4CO2H(i)=fHOC2H4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 = HOCH2CH2O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'RO2';
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C514OOH + OH = CO13C4CHO + OH';
k(:,i) = 1.10e-10;
Gstr{i,1} = 'C514OOH'; Gstr{i,2} = 'OH'; 
fC514OOH(i)=fC514OOH(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C514OOH =  + CO13C4CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C514OOH'; 
fC514OOH(i)=fC514OOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C514OOH =  + CO13C4CHO + HO2 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C514OOH'; 
fC514OOH(i)=fC514OOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C514NO3 + OH = CO13C4CHO + NO2';
k(:,i) = 4.33e-11;
Gstr{i,1} = 'C514NO3'; Gstr{i,2} = 'OH'; 
fC514NO3(i)=fC514NO3(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514NO3 =  + CO13C4CHO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C514NO3'; 
fC514NO3(i)=fC514NO3(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514NO3 =  + CO13C4CHO + HO2 + NO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C514NO3'; 
fC514NO3(i)=fC514NO3(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514OH + OH = CO13C4CHO + HO2';
k(:,i) = 6.99e-11;
Gstr{i,1} = 'C514OH'; Gstr{i,2} = 'OH'; 
fC514OH(i)=fC514OH(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C514OH =  + CO13C4CHO + HO2 + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C514OH'; 
fC514OH(i)=fC514OH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C820OOH + OH = C820O2';
k(:,i) = 1.76e-11;
Gstr{i,1} = 'C820OOH'; Gstr{i,2} = 'OH'; 
fC820OOH(i)=fC820OOH(i)-1; fOH(i)=fOH(i)-1; fC820O2(i)=fC820O2(i)+1; 

i=i+1;
Rnames{i} = 'C820OOH =  + CH3CO3 + C614CO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C820OOH'; 
fC820OOH(i)=fC820OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC614CO(i)=fC614CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C820OOH =  + CH3CO3 + C614CO + OH';
k(:,i) = J35;
Gstr{i,1} = 'C820OOH'; 
fC820OOH(i)=fC820OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC614CO(i)=fC614CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C820OOH =  + CH3CO3 + C614CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C820OOH'; 
fC820OOH(i)=fC820OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC614CO(i)=fC614CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CHO = MEKAO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO2C4CHO'; 
fCO2C4CHO(i)=fCO2C4CHO(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO2C4CHO = CO2C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO2C4CHO'; 
fNO3(i)=fNO3(i)-1; fCO2C4CHO(i)=fCO2C4CHO(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2C4CHO = CO2C4CO3';
k(:,i) = 2.63e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2C4CHO'; 
fOH(i)=fOH(i)-1; fCO2C4CHO(i)=fCO2C4CHO(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C821O2 + HO2 = C821OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C821O2'; Gstr{i,2} = 'HO2'; 
fC821O2(i)=fC821O2(i)-1; fHO2(i)=fHO2(i)-1; fC821OOH(i)=fC821OOH(i)+1; 

i=i+1;
Rnames{i} = 'C821O2 + NO =  + CH3CO3 + CO + CO2C3CHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C821O2'; Gstr{i,2} = 'NO'; 
fC821O2(i)=fC821O2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C821O2 + NO3 =  + CH3CO3 + CO + CO2C3CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C821O2'; Gstr{i,2} = 'NO3'; 
fC821O2(i)=fC821O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C821O2 =  + CH3CO3 + CO + CO2C3CHO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C821O2'; Gstr{i,2} = 'RO2';
fC821O2(i)=fC821O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3 + HO2 = HMVKBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HMVKBCO3'; Gstr{i,2} = 'HO2'; 
fHMVKBCO3(i)=fHMVKBCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBCO2H(i)=fHMVKBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3 + HO2 = HMVKBCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HMVKBCO3'; Gstr{i,2} = 'HO2'; 
fHMVKBCO3(i)=fHMVKBCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBCO3H(i)=fHMVKBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3 + HO2 = HMVKBO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HMVKBCO3'; Gstr{i,2} = 'HO2'; 
fHMVKBCO3(i)=fHMVKBCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3 + NO = HMVKBO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HMVKBCO3'; Gstr{i,2} = 'NO'; 
fHMVKBCO3(i)=fHMVKBCO3(i)-1; fNO(i)=fNO(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3 + NO2 = HMVKBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HMVKBCO3'; Gstr{i,2} = 'NO2'; 
fHMVKBCO3(i)=fHMVKBCO3(i)-1; fNO2(i)=fNO2(i)-1; fHMVKBPAN(i)=fHMVKBPAN(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3 + NO3 = HMVKBO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HMVKBCO3'; Gstr{i,2} = 'NO3'; 
fHMVKBCO3(i)=fHMVKBCO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3 = HMVKBCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HMVKBCO3'; Gstr{i,2} = 'RO2';
fHMVKBCO3(i)=fHMVKBCO3(i)-1; fHMVKBCO2H(i)=fHMVKBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3 = HMVKBO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HMVKBCO3'; Gstr{i,2} = 'RO2';
fHMVKBCO3(i)=fHMVKBCO3(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4OH + OH = C4CODIAL + HO2';
k(:,i) = 2.39e-11;
Gstr{i,1} = 'CO13C4OH'; Gstr{i,2} = 'OH'; 
fCO13C4OH(i)=fCO13C4OH(i)-1; fOH(i)=fOH(i)-1; fC4CODIAL(i)=fC4CODIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4OH = HCOCH2O2 + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'CO13C4OH'; 
fCO13C4OH(i)=fCO13C4OH(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4OH = MGLYOX + HO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO13C4OH'; 
fCO13C4OH(i)=fCO13C4OH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C518CO2H + OH = ISOPDO2';
k(:,i) = 5.80e-11;
Gstr{i,1} = 'C518CO2H'; Gstr{i,2} = 'OH'; 
fC518CO2H(i)=fC518CO2H(i)-1; fOH(i)=fOH(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3H + OH = C518CO3';
k(:,i) = 6.11e-11;
Gstr{i,1} = 'C518CO3H'; Gstr{i,2} = 'OH'; 
fC518CO3H(i)=fC518CO3H(i)-1; fOH(i)=fOH(i)-1; fC518CO3(i)=fC518CO3(i)+1; 

i=i+1;
Rnames{i} = 'C518CO3H = ISOPDO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C518CO3H'; 
fC518CO3H(i)=fC518CO3H(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C518PAN + OH = HCOC5 + CO + NO2';
k(:,i) = 5.75e-11;
Gstr{i,1} = 'C518PAN'; Gstr{i,2} = 'OH'; 
fC518PAN(i)=fC518PAN(i)-1; fOH(i)=fOH(i)-1; fHCOC5(i)=fHCOC5(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C518PAN = C518CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C518PAN'; 
fC518PAN(i)=fC518PAN(i)-1; fC518CO3(i)=fC518CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC623OOH + OH = NC623O2';
k(:,i) = 3.96e-11;
Gstr{i,1} = 'NC623OOH'; Gstr{i,2} = 'OH'; 
fNC623OOH(i)=fNC623OOH(i)-1; fOH(i)=fOH(i)-1; fNC623O2(i)=fNC623O2(i)+1; 

i=i+1;
Rnames{i} = 'NC623OOH =  + HMVKBCHO + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC623OOH'; 
fNC623OOH(i)=fNC623OOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC623OH + OH = HMVKBCHO + HCHO + NO2';
k(:,i) = 3.62e-11;
Gstr{i,1} = 'NC623OH'; Gstr{i,2} = 'OH'; 
fNC623OH(i)=fNC623OH(i)-1; fOH(i)=fOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C520O2 + HO2 = C520OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C520O2'; Gstr{i,2} = 'HO2'; 
fC520O2(i)=fC520O2(i)-1; fHO2(i)=fHO2(i)-1; fC520OOH(i)=fC520OOH(i)+1; 

i=i+1;
Rnames{i} = 'C520O2 + NO =  + 0.5BIACETOH + 0.5CO + 0.5HO2 + 0.5HOCH2COCHO + 0.5CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C520O2'; Gstr{i,2} = 'NO'; 
fC520O2(i)=fC520O2(i)-1; fNO(i)=fNO(i)-1; fBIACETOH(i)=fBIACETOH(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHOCH2COCHO(i)=fHOCH2COCHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C520O2 + NO3 =  + 0.5BIACETOH + 0.5CO + 0.5HO2 + 0.5HOCH2COCHO + 0.5CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C520O2'; Gstr{i,2} = 'NO3'; 
fC520O2(i)=fC520O2(i)-1; fNO3(i)=fNO3(i)-1; fBIACETOH(i)=fBIACETOH(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHOCH2COCHO(i)=fHOCH2COCHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C520O2 =  + 0.5BIACETOH + 0.5CO + 0.5HO2 + 0.5HOCH2COCHO + 0.5CH3CO3';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C520O2'; Gstr{i,2} = 'RO2';
fC520O2(i)=fC520O2(i)-1; fBIACETOH(i)=fBIACETOH(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHOCH2COCHO(i)=fHOCH2COCHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; 

i=i+1;
Rnames{i} = 'C520O2 = C520OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C520O2'; Gstr{i,2} = 'RO2';
fC520O2(i)=fC520O2(i)-1; fC520OH(i)=fC520OH(i)+1; 

i=i+1;
Rnames{i} = 'C623OOH + OH = C623O2';
k(:,i) = 5.26e-11;
Gstr{i,1} = 'C623OOH'; Gstr{i,2} = 'OH'; 
fC623OOH(i)=fC623OOH(i)-1; fOH(i)=fOH(i)-1; fC623O2(i)=fC623O2(i)+1; 

i=i+1;
Rnames{i} = 'C623OOH =  + HMVKBCHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C623OOH'; 
fC623OOH(i)=fC623OOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C623NO3 + OH = HMVKBCHO + HCHO + NO2';
k(:,i) = 3.51e-11;
Gstr{i,1} = 'C623NO3'; Gstr{i,2} = 'OH'; 
fC623NO3(i)=fC623NO3(i)-1; fOH(i)=fOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C623OH + OH = HMVKBCHO + HCHO + HO2';
k(:,i) = 4.91e-11;
Gstr{i,1} = 'C623OH'; Gstr{i,2} = 'OH'; 
fC623OH(i)=fC623OH(i)-1; fOH(i)=fOH(i)-1; fHMVKBCHO(i)=fHMVKBCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C624CHO + NO3 = C624CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C624CHO'; Gstr{i,2} = 'NO3'; 
fC624CHO(i)=fC624CHO(i)-1; fNO3(i)=fNO3(i)-1; fC624CO3(i)=fC624CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C624CHO + NO3 = NC730O2';
k(:,i) = 3.30e-13;
Gstr{i,1} = 'C624CHO'; Gstr{i,2} = 'NO3'; 
fC624CHO(i)=fC624CHO(i)-1; fNO3(i)=fNO3(i)-1; fNC730O2(i)=fNC730O2(i)+1; 

i=i+1;
Rnames{i} = 'C624CHO + O3 = C519CHO +  + 0.370CH2OO + 0.500CO + 0.130HO2 + 0.130CO + 0.130OH';
k(:,i) = 1.30e-17.*0.330;
Gstr{i,1} = 'C624CHO'; Gstr{i,2} = 'O3'; 
fC624CHO(i)=fC624CHO(i)-1; fO3(i)=fO3(i)-1; fC519CHO(i)=fC519CHO(i)+1; fCH2OO(i)=fCH2OO(i)+0.370; fCO(i)=fCO(i)+0.500; fHO2(i)=fHO2(i)+0.130; fCO(i)=fCO(i)+0.130; fOH(i)=fOH(i)+0.130; 

i=i+1;
Rnames{i} = 'C624CHO + O3 =  + C629O2 + OH + HCHO';
k(:,i) = 1.30e-17.*0.670;
Gstr{i,1} = 'C624CHO'; Gstr{i,2} = 'O3'; 
fC624CHO(i)=fC624CHO(i)-1; fO3(i)=fO3(i)-1; fC629O2(i)=fC629O2(i)+1; fOH(i)=fOH(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C624CHO + OH = C624CO3';
k(:,i) = 8.26e-11.*0.288;
Gstr{i,1} = 'C624CHO'; Gstr{i,2} = 'OH'; 
fC624CHO(i)=fC624CHO(i)-1; fOH(i)=fOH(i)-1; fC624CO3(i)=fC624CO3(i)+1; 

i=i+1;
Rnames{i} = 'C624CHO + OH = C730O2';
k(:,i) = 8.26e-11.*0.712;
Gstr{i,1} = 'C624CHO'; Gstr{i,2} = 'OH'; 
fC624CHO(i)=fC624CHO(i)-1; fOH(i)=fOH(i)-1; fC730O2(i)=fC730O2(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3 + HO2 = C624CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C624CO3'; Gstr{i,2} = 'HO2'; 
fC624CO3(i)=fC624CO3(i)-1; fHO2(i)=fHO2(i)-1; fC624CO2H(i)=fC624CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3 + HO2 = C624CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C624CO3'; Gstr{i,2} = 'HO2'; 
fC624CO3(i)=fC624CO3(i)-1; fHO2(i)=fHO2(i)-1; fC624CO3H(i)=fC624CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3 + HO2 = C624O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C624CO3'; Gstr{i,2} = 'HO2'; 
fC624CO3(i)=fC624CO3(i)-1; fHO2(i)=fHO2(i)-1; fC624O2(i)=fC624O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3 + NO = C624O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C624CO3'; Gstr{i,2} = 'NO'; 
fC624CO3(i)=fC624CO3(i)-1; fNO(i)=fNO(i)-1; fC624O2(i)=fC624O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3 + NO2 = C624PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C624CO3'; Gstr{i,2} = 'NO2'; 
fC624CO3(i)=fC624CO3(i)-1; fNO2(i)=fNO2(i)-1; fC624PAN(i)=fC624PAN(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3 + NO3 = C624O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C624CO3'; Gstr{i,2} = 'NO3'; 
fC624CO3(i)=fC624CO3(i)-1; fNO3(i)=fNO3(i)-1; fC624O2(i)=fC624O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3 = C624CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C624CO3'; Gstr{i,2} = 'RO2';
fC624CO3(i)=fC624CO3(i)-1; fC624CO2H(i)=fC624CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3 = C624O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C624CO3'; Gstr{i,2} = 'RO2';
fC624CO3(i)=fC624CO3(i)-1; fC624O2(i)=fC624O2(i)+1; 

i=i+1;
Rnames{i} = 'C825OOH + OH = C825CO + OH';
k(:,i) = 7.90e-11;
Gstr{i,1} = 'C825OOH'; Gstr{i,2} = 'OH'; 
fC825OOH(i)=fC825OOH(i)-1; fOH(i)=fOH(i)-1; fC825CO(i)=fC825CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C825OOH =  + C622CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C825OOH'; 
fC825OOH(i)=fC825OOH(i)-1; fC622CHO(i)=fC622CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C825CO + OH = C622CO3';
k(:,i) = 6.64e-11;
Gstr{i,1} = 'C825CO'; Gstr{i,2} = 'OH'; 
fC825CO(i)=fC825CO(i)-1; fOH(i)=fOH(i)-1; fC622CO3(i)=fC622CO3(i)+1; 

i=i+1;
Rnames{i} = 'C825CO = C622CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C825CO'; 
fC825CO(i)=fC825CO(i)-1; fC622CO3(i)=fC622CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C825OH + OH = C825CO + HO2';
k(:,i) = 6.69e-11;
Gstr{i,1} = 'C825OH'; Gstr{i,2} = 'OH'; 
fC825OH(i)=fC825OH(i)-1; fOH(i)=fOH(i)-1; fC825CO(i)=fC825CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2C4CO2H = MEKAO2';
k(:,i) = 5.71e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2C4CO2H'; 
fOH(i)=fOH(i)-1; fCO2C4CO2H(i)=fCO2C4CO2H(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3H = MEKAO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2C4CO3H'; 
fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3H = MEKAO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO2C4CO3H'; 
fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2C4CO3H = CO2C4CO3';
k(:,i) = 9.17e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2C4CO3H'; 
fOH(i)=fOH(i)-1; fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN2 = CO2C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN2'; 
fC5PAN2(i)=fC5PAN2(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN2 = CO2C3CHO + CO + NO2';
k(:,i) = 1.90e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN2'; 
fOH(i)=fOH(i)-1; fC5PAN2(i)=fC5PAN2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C731OOH + OH = C626CHO + OH';
k(:,i) = 4.83e-11;
Gstr{i,1} = 'C731OOH'; Gstr{i,2} = 'OH'; 
fC731OOH(i)=fC731OOH(i)-1; fOH(i)=fOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C731OOH =  + C733O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C731OOH'; 
fC731OOH(i)=fC731OOH(i)-1; fC733O2(i)=fC733O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C731NO3 + OH = C626CHO + NO2';
k(:,i) = 3.17e-11;
Gstr{i,1} = 'C731NO3'; Gstr{i,2} = 'OH'; 
fC731NO3(i)=fC731NO3(i)-1; fOH(i)=fOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C731NO3 =  + C733O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C731NO3'; 
fC731NO3(i)=fC731NO3(i)-1; fC733O2(i)=fC733O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C731OH + OH = C626CHO + HO2';
k(:,i) = 3.92e-11;
Gstr{i,1} = 'C731OH'; Gstr{i,2} = 'OH'; 
fC731OH(i)=fC731OH(i)-1; fOH(i)=fOH(i)-1; fC626CHO(i)=fC626CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3H + OH = C732CO3';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'C732CO3H'; Gstr{i,2} = 'OH'; 
fC732CO3H(i)=fC732CO3H(i)-1; fOH(i)=fOH(i)-1; fC732CO3(i)=fC732CO3(i)+1; 

i=i+1;
Rnames{i} = 'C732CO3H = C732O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C732CO3H'; 
fC732CO3H(i)=fC732CO3H(i)-1; fC732O2(i)=fC732O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C732O2 + HO2 = C732OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C732O2'; Gstr{i,2} = 'HO2'; 
fC732O2(i)=fC732O2(i)-1; fHO2(i)=fHO2(i)-1; fC732OOH(i)=fC732OOH(i)+1; 

i=i+1;
Rnames{i} = 'C732O2 + NO = C732NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C732O2'; Gstr{i,2} = 'NO'; 
fC732O2(i)=fC732O2(i)-1; fNO(i)=fNO(i)-1; fC732NO3(i)=fC732NO3(i)+1; 

i=i+1;
Rnames{i} = 'C732O2 + NO =  + C734O2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C732O2'; Gstr{i,2} = 'NO'; 
fC732O2(i)=fC732O2(i)-1; fNO(i)=fNO(i)-1; fC734O2(i)=fC734O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C732O2 + NO3 =  + C734O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C732O2'; Gstr{i,2} = 'NO3'; 
fC732O2(i)=fC732O2(i)-1; fNO3(i)=fNO3(i)-1; fC734O2(i)=fC734O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C732O2 = C732CO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C732O2'; Gstr{i,2} = 'RO2';
fC732O2(i)=fC732O2(i)-1; fC732CO(i)=fC732CO(i)+1; 

i=i+1;
Rnames{i} = 'C732O2 =  + C734O2';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C732O2'; Gstr{i,2} = 'RO2';
fC732O2(i)=fC732O2(i)-1; fC734O2(i)=fC734O2(i)+1; 

i=i+1;
Rnames{i} = 'C732O2 = C732OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C732O2'; Gstr{i,2} = 'RO2';
fC732O2(i)=fC732O2(i)-1; fC732OH(i)=fC732OH(i)+1; 

i=i+1;
Rnames{i} = 'KLIMONIC + OH = C732O2';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'KLIMONIC'; Gstr{i,2} = 'OH'; 
fKLIMONIC(i)=fKLIMONIC(i)-1; fOH(i)=fOH(i)-1; fC732O2(i)=fC732O2(i)+1; 

i=i+1;
Rnames{i} = 'C732PAN + OH = C732CO + CO + NO2';
k(:,i) = 1.80e-11;
Gstr{i,1} = 'C732PAN'; Gstr{i,2} = 'OH'; 
fC732PAN(i)=fC732PAN(i)-1; fOH(i)=fOH(i)-1; fC732CO(i)=fC732CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C732PAN = C732CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C732PAN'; 
fC732PAN(i)=fC732PAN(i)-1; fC732CO3(i)=fC732CO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'CO23C4CO3H = BIACETO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO23C4CO3H'; 
fCO23C4CO3H(i)=fCO23C4CO3H(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3H = BIACETO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'CO23C4CO3H'; 
fCO23C4CO3H(i)=fCO23C4CO3H(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO23C4CO3H = CO23C4CO3';
k(:,i) = 4.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO23C4CO3H'; 
fOH(i)=fOH(i)-1; fCO23C4CO3H(i)=fCO23C4CO3H(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN9 = CO23C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN9'; 
fC5PAN9(i)=fC5PAN9(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN9 = CO23C3CHO + CO + NO2';
k(:,i) = 3.12e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN9'; 
fOH(i)=fOH(i)-1; fC5PAN9(i)=fC5PAN9(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3H + OH = C312COCO3';
k(:,i) = 1.63e-11;
Gstr{i,1} = 'C312COCO3H'; Gstr{i,2} = 'OH'; 
fC312COCO3H(i)=fC312COCO3H(i)-1; fOH(i)=fOH(i)-1; fC312COCO3(i)=fC312COCO3(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3H = CHOCOCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C312COCO3H'; 
fC312COCO3H(i)=fC312COCO3H(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3H = CHOCOCH2O2 + OH';
k(:,i) = J34;
Gstr{i,1} = 'C312COCO3H'; 
fC312COCO3H(i)=fC312COCO3H(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C312COPAN + OH = C33CO + CO + NO2';
k(:,i) = 1.27e-11;
Gstr{i,1} = 'C312COPAN'; Gstr{i,2} = 'OH'; 
fC312COPAN(i)=fC312COPAN(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C312COPAN = C312COCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C312COPAN'; 
fC312COPAN(i)=fC312COPAN(i)-1; fC312COCO3(i)=fC312COCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ALCOCH2OOH + OH = CHOCOCH2O2';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'ALCOCH2OOH'; Gstr{i,2} = 'OH'; 
fALCOCH2OOH(i)=fALCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'ALCOCH2OOH =  + 0.6HCHO + 0.6HO2 + 0.6CO + 0.6CO + 0.4HCOCO3 + 0.4HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ALCOCH2OOH'; 
fALCOCH2OOH(i)=fALCOCH2OOH(i)-1; fHCHO(i)=fHCHO(i)+0.6; fHO2(i)=fHO2(i)+0.6; fCO(i)=fCO(i)+0.6; fCO(i)=fCO(i)+0.6; fHCOCO3(i)=fHCOCO3(i)+0.4; fHCHO(i)=fHCHO(i)+0.4; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ALCOCH2OOH =  + 0.6HCHO + 0.6HO2 + 0.6CO + 0.6CO + 0.4HCOCO3 + 0.4HCHO + OH';
k(:,i) = J34;
Gstr{i,1} = 'ALCOCH2OOH'; 
fALCOCH2OOH(i)=fALCOCH2OOH(i)-1; fHCHO(i)=fHCHO(i)+0.6; fHO2(i)=fHO2(i)+0.6; fCO(i)=fCO(i)+0.6; fCO(i)=fCO(i)+0.6; fHCOCO3(i)=fHCOCO3(i)+0.4; fHCHO(i)=fHCHO(i)+0.4; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC72OOH + OH = NC72O2';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'NC72OOH'; Gstr{i,2} = 'OH'; 
fNC72OOH(i)=fNC72OOH(i)-1; fOH(i)=fOH(i)-1; fNC72O2(i)=fNC72O2(i)+1; 

i=i+1;
Rnames{i} = 'NC72OOH =  + NC61CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC72OOH'; 
fNC72OOH(i)=fNC72OOH(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + HO2 = C813OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'HO2'; 
fC813O2(i)=fC813O2(i)-1; fHO2(i)=fHO2(i)-1; fC813OOH(i)=fC813OOH(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + NO = C813NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'NO'; 
fC813O2(i)=fC813O2(i)-1; fNO(i)=fNO(i)-1; fC813NO3(i)=fC813NO3(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + NO =  + CH3COCH3 + C512O2 + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'NO'; 
fC813O2(i)=fC813O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + NO3 =  + CH3COCH3 + C512O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'NO3'; 
fC813O2(i)=fC813O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 =  + CH3COCH3 + C512O2';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'RO2';
fC813O2(i)=fC813O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 = C813OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'RO2';
fC813O2(i)=fC813O2(i)-1; fC813OH(i)=fC813OH(i)+1; 

i=i+1;
Rnames{i} = 'C722O2 + HO2 = C722OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C722O2'; Gstr{i,2} = 'HO2'; 
fC722O2(i)=fC722O2(i)-1; fHO2(i)=fHO2(i)-1; fC722OOH(i)=fC722OOH(i)+1; 

i=i+1;
Rnames{i} = 'C722O2 + NO =  + CH3COCH3 + C44O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C722O2'; Gstr{i,2} = 'NO'; 
fC722O2(i)=fC722O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC44O2(i)=fC44O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C722O2 + NO3 =  + CH3COCH3 + C44O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C722O2'; Gstr{i,2} = 'NO3'; 
fC722O2(i)=fC722O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC44O2(i)=fC44O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C722O2 =  + CH3COCH3 + C44O2';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C722O2'; Gstr{i,2} = 'RO2';
fC722O2(i)=fC722O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC44O2(i)=fC44O2(i)+1; 

i=i+1;
Rnames{i} = 'C621OOH + OH = C621O2';
k(:,i) = 1.00e-10;
Gstr{i,1} = 'C621OOH'; Gstr{i,2} = 'OH'; 
fC621OOH(i)=fC621OOH(i)-1; fOH(i)=fOH(i)-1; fC621O2(i)=fC621O2(i)+1; 

i=i+1;
Rnames{i} = 'C621OOH =  + HCHO + H1C23C4CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C621OOH'; 
fC621OOH(i)=fC621OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fH1C23C4CHO(i)=fH1C23C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C621OOH =  + HCHO + H1C23C4CHO + HO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C621OOH'; 
fC621OOH(i)=fC621OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fH1C23C4CHO(i)=fH1C23C4CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3H + OH = C515CO3';
k(:,i) = 7.05e-11;
Gstr{i,1} = 'C515CO3H'; Gstr{i,2} = 'OH'; 
fC515CO3H(i)=fC515CO3H(i)-1; fOH(i)=fOH(i)-1; fC515CO3(i)=fC515CO3(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3H = C515O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C515CO3H'; 
fC515CO3H(i)=fC515CO3H(i)-1; fC515O2(i)=fC515O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C515CO3H = C515O2 + OH';
k(:,i) = J35;
Gstr{i,1} = 'C515CO3H'; 
fC515CO3H(i)=fC515CO3H(i)-1; fC515O2(i)=fC515O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C515PAN + OH = C515CO + CO + NO2';
k(:,i) = 6.69e-11;
Gstr{i,1} = 'C515PAN'; Gstr{i,2} = 'OH'; 
fC515PAN(i)=fC515PAN(i)-1; fOH(i)=fOH(i)-1; fC515CO(i)=fC515CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C515PAN = C515CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C515PAN'; 
fC515PAN(i)=fC515PAN(i)-1; fC515CO3(i)=fC515CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C515OOH + OH = C515CO + OH';
k(:,i) = 7.91e-11;
Gstr{i,1} = 'C515OOH'; Gstr{i,2} = 'OH'; 
fC515OOH(i)=fC515OOH(i)-1; fOH(i)=fOH(i)-1; fC515CO(i)=fC515CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C515OOH =  + HCHO + CO + HCOCH2CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C515OOH'; 
fC515OOH(i)=fC515OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C515OOH =  + HCHO + CO + HCOCH2CO3 + OH';
k(:,i) = J35;
Gstr{i,1} = 'C515OOH'; 
fC515OOH(i)=fC515OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3 + HO2 = C615CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C615CO3'; Gstr{i,2} = 'HO2'; 
fC615CO3(i)=fC615CO3(i)-1; fHO2(i)=fHO2(i)-1; fC615CO2H(i)=fC615CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3 + HO2 = C615CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C615CO3'; Gstr{i,2} = 'HO2'; 
fC615CO3(i)=fC615CO3(i)-1; fHO2(i)=fHO2(i)-1; fC615CO3H(i)=fC615CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3 + HO2 = C615O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C615CO3'; Gstr{i,2} = 'HO2'; 
fC615CO3(i)=fC615CO3(i)-1; fHO2(i)=fHO2(i)-1; fC615O2(i)=fC615O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3 + NO = C615O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C615CO3'; Gstr{i,2} = 'NO'; 
fC615CO3(i)=fC615CO3(i)-1; fNO(i)=fNO(i)-1; fC615O2(i)=fC615O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3 + NO2 = C615PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C615CO3'; Gstr{i,2} = 'NO2'; 
fC615CO3(i)=fC615CO3(i)-1; fNO2(i)=fNO2(i)-1; fC615PAN(i)=fC615PAN(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3 + NO3 = C615O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C615CO3'; Gstr{i,2} = 'NO3'; 
fC615CO3(i)=fC615CO3(i)-1; fNO3(i)=fNO3(i)-1; fC615O2(i)=fC615O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3 = C615CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C615CO3'; Gstr{i,2} = 'RO2';
fC615CO3(i)=fC615CO3(i)-1; fC615CO2H(i)=fC615CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3 = C615O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C615CO3'; Gstr{i,2} = 'RO2';
fC615CO3(i)=fC615CO3(i)-1; fC615O2(i)=fC615O2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2H4OOH + OH = CHOC2H4O2';
k(:,i) = 7.31e-11;
Gstr{i,1} = 'CHOC2H4OOH'; Gstr{i,2} = 'OH'; 
fCHOC2H4OOH(i)=fCHOC2H4OOH(i)-1; fOH(i)=fOH(i)-1; fCHOC2H4O2(i)=fCHOC2H4O2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2H4OOH =  + HCOCH2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CHOC2H4OOH'; 
fCHOC2H4OOH(i)=fCHOC2H4OOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC2H4OOH =  + HCOCH2CHO + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'CHOC2H4OOH'; 
fCHOC2H4OOH(i)=fCHOC2H4OOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3 + HO2 = C617CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C617CO3'; Gstr{i,2} = 'HO2'; 
fC617CO3(i)=fC617CO3(i)-1; fHO2(i)=fHO2(i)-1; fC617CO2H(i)=fC617CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3 + HO2 = C617CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C617CO3'; Gstr{i,2} = 'HO2'; 
fC617CO3(i)=fC617CO3(i)-1; fHO2(i)=fHO2(i)-1; fC617CO3H(i)=fC617CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3 + HO2 = C617O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C617CO3'; Gstr{i,2} = 'HO2'; 
fC617CO3(i)=fC617CO3(i)-1; fHO2(i)=fHO2(i)-1; fC617O2(i)=fC617O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3 + NO = C617O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C617CO3'; Gstr{i,2} = 'NO'; 
fC617CO3(i)=fC617CO3(i)-1; fNO(i)=fNO(i)-1; fC617O2(i)=fC617O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3 + NO2 = C617PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C617CO3'; Gstr{i,2} = 'NO2'; 
fC617CO3(i)=fC617CO3(i)-1; fNO2(i)=fNO2(i)-1; fC617PAN(i)=fC617PAN(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3 + NO3 = C617O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C617CO3'; Gstr{i,2} = 'NO3'; 
fC617CO3(i)=fC617CO3(i)-1; fNO3(i)=fNO3(i)-1; fC617O2(i)=fC617O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3 = C617CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C617CO3'; Gstr{i,2} = 'RO2';
fC617CO3(i)=fC617CO3(i)-1; fC617CO2H(i)=fC617CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3 = C617O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C617CO3'; Gstr{i,2} = 'RO2';
fC617CO3(i)=fC617CO3(i)-1; fC617O2(i)=fC617O2(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3 + HO2 = C618CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C618CO3'; Gstr{i,2} = 'HO2'; 
fC618CO3(i)=fC618CO3(i)-1; fHO2(i)=fHO2(i)-1; fC618CO2H(i)=fC618CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3 + HO2 = C618CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C618CO3'; Gstr{i,2} = 'HO2'; 
fC618CO3(i)=fC618CO3(i)-1; fHO2(i)=fHO2(i)-1; fC618CO3H(i)=fC618CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3 + HO2 = C618O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C618CO3'; Gstr{i,2} = 'HO2'; 
fC618CO3(i)=fC618CO3(i)-1; fHO2(i)=fHO2(i)-1; fC618O2(i)=fC618O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3 + NO = C618O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C618CO3'; Gstr{i,2} = 'NO'; 
fC618CO3(i)=fC618CO3(i)-1; fNO(i)=fNO(i)-1; fC618O2(i)=fC618O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3 + NO2 = C618PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C618CO3'; Gstr{i,2} = 'NO2'; 
fC618CO3(i)=fC618CO3(i)-1; fNO2(i)=fNO2(i)-1; fC618PAN(i)=fC618PAN(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3 + NO3 = C618O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C618CO3'; Gstr{i,2} = 'NO3'; 
fC618CO3(i)=fC618CO3(i)-1; fNO3(i)=fNO3(i)-1; fC618O2(i)=fC618O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3 = C618CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C618CO3'; Gstr{i,2} = 'RO2';
fC618CO3(i)=fC618CO3(i)-1; fC618CO2H(i)=fC618CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3 = C618O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C618CO3'; Gstr{i,2} = 'RO2';
fC618CO3(i)=fC618CO3(i)-1; fC618O2(i)=fC618O2(i)+1; 

i=i+1;
Rnames{i} = 'C617O2 + HO2 = C617OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C617O2'; Gstr{i,2} = 'HO2'; 
fC617O2(i)=fC617O2(i)-1; fHO2(i)=fHO2(i)-1; fC617OOH(i)=fC617OOH(i)+1; 

i=i+1;
Rnames{i} = 'C617O2 + NO =  + CO1M22CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C617O2'; Gstr{i,2} = 'NO'; 
fC617O2(i)=fC617O2(i)-1; fNO(i)=fNO(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C617O2 + NO3 =  + CO1M22CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C617O2'; Gstr{i,2} = 'NO3'; 
fC617O2(i)=fC617O2(i)-1; fNO3(i)=fNO3(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C617O2 = C615CO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C617O2'; Gstr{i,2} = 'RO2';
fC617O2(i)=fC617O2(i)-1; fC615CO(i)=fC615CO(i)+1; 

i=i+1;
Rnames{i} = 'C617O2 =  + CO1M22CO3 + HCHO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'C617O2'; Gstr{i,2} = 'RO2';
fC617O2(i)=fC617O2(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C617O2 = C617OH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C617O2'; Gstr{i,2} = 'RO2';
fC617O2(i)=fC617O2(i)-1; fC617OH(i)=fC617OH(i)+1; 

i=i+1;
Rnames{i} = 'C618O2 + HO2 = C618OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C618O2'; Gstr{i,2} = 'HO2'; 
fC618O2(i)=fC618O2(i)-1; fHO2(i)=fHO2(i)-1; fC618OOH(i)=fC618OOH(i)+1; 

i=i+1;
Rnames{i} = 'C618O2 + NO =  + HCOCH2CO3 + CH3COCH3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C618O2'; Gstr{i,2} = 'NO'; 
fC618O2(i)=fC618O2(i)-1; fNO(i)=fNO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C618O2 + NO3 =  + HCOCH2CO3 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C618O2'; Gstr{i,2} = 'NO3'; 
fC618O2(i)=fC618O2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C618O2 =  + HCOCH2CO3 + CH3COCH3';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C618O2'; Gstr{i,2} = 'RO2';
fC618O2(i)=fC618O2(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C618O2 = C67CHO';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C618O2'; Gstr{i,2} = 'RO2';
fC618O2(i)=fC618O2(i)-1; fC67CHO(i)=fC67CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC2H4CO2H = HOCH2CH2O2';
k(:,i) = 1.39e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC2H4CO2H'; 
fOH(i)=fOH(i)-1; fHOC2H4CO2H(i)=fHOC2H4CO2H(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3H = HOCH2CH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOC2H4CO3H'; 
fHOC2H4CO3H(i)=fHOC2H4CO3H(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC2H4CO3H = HOC2H4CO3';
k(:,i) = 1.73e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC2H4CO3H'; 
fOH(i)=fOH(i)-1; fHOC2H4CO3H(i)=fHOC2H4CO3H(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C3PAN1 = HOC2H4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3PAN1'; 
fC3PAN1(i)=fC3PAN1(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3PAN1 = HOCH2CHO + CO + NO2';
k(:,i) = 4.51e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3PAN1'; 
fOH(i)=fOH(i)-1; fC3PAN1(i)=fC3PAN1(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C821OOH + OH = C821O2';
k(:,i) = 5.42e-11;
Gstr{i,1} = 'C821OOH'; Gstr{i,2} = 'OH'; 
fC821OOH(i)=fC821OOH(i)-1; fOH(i)=fOH(i)-1; fC821O2(i)=fC821O2(i)+1; 

i=i+1;
Rnames{i} = 'C821OOH =  + CH3CO3 + CO + CO2C3CHO + OH';
k(:,i) = J35;
Gstr{i,1} = 'C821OOH'; 
fC821OOH(i)=fC821OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C821OOH =  + CH3CO3 + CO + CO2C3CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C821OOH'; 
fC821OOH(i)=fC821OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO2H + OH = HMVKBO2';
k(:,i) = 1.48e-11;
Gstr{i,1} = 'HMVKBCO2H'; Gstr{i,2} = 'OH'; 
fHMVKBCO2H(i)=fHMVKBCO2H(i)-1; fOH(i)=fOH(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3H + OH = HMVKBCO3';
k(:,i) = 1.79e-11;
Gstr{i,1} = 'HMVKBCO3H'; Gstr{i,2} = 'OH'; 
fHMVKBCO3H(i)=fHMVKBCO3H(i)-1; fOH(i)=fOH(i)-1; fHMVKBCO3(i)=fHMVKBCO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBCO3H = HMVKBO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMVKBCO3H'; 
fHMVKBCO3H(i)=fHMVKBCO3H(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBPAN + OH = BIACETOH + CO + NO2';
k(:,i) = 1.43e-11;
Gstr{i,1} = 'HMVKBPAN'; Gstr{i,2} = 'OH'; 
fHMVKBPAN(i)=fHMVKBPAN(i)-1; fOH(i)=fOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBPAN = HMVKBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HMVKBPAN'; 
fHMVKBPAN(i)=fHMVKBPAN(i)-1; fHMVKBCO3(i)=fHMVKBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C520OOH + OH = C520O2';
k(:,i) = 3.74e-11;
Gstr{i,1} = 'C520OOH'; Gstr{i,2} = 'OH'; 
fC520OOH(i)=fC520OOH(i)-1; fOH(i)=fOH(i)-1; fC520O2(i)=fC520O2(i)+1; 

i=i+1;
Rnames{i} = 'C520OOH = BIACETOH + CO + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C520OOH'; 
fC520OOH(i)=fC520OOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C520OOH =  + 0.5BIACETOH + 0.5CO + 0.5HO2 + 0.5HOCH2COCHO + 0.5CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C520OOH'; 
fC520OOH(i)=fC520OOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHOCH2COCHO(i)=fHOCH2COCHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C520OOH = HOCH2COCHO + CH3CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C520OOH'; 
fC520OOH(i)=fC520OOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C520OH + OH =  + 0.5BIACETOH + 0.5CO + 0.5HO2 + 0.5HOCH2COCHO + 0.5CH3CO3';
k(:,i) = 3.40e-11;
Gstr{i,1} = 'C520OH'; Gstr{i,2} = 'OH'; 
fC520OH(i)=fC520OH(i)-1; fOH(i)=fOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHOCH2COCHO(i)=fHOCH2COCHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; 

i=i+1;
Rnames{i} = 'C520OH = BIACETOH + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C520OH'; 
fC520OH(i)=fC520OH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C520OH = HOCH2COCHO + CH3CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C520OH'; 
fC520OH(i)=fC520OH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC730O2 + HO2 = NC730OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NC730O2'; Gstr{i,2} = 'HO2'; 
fNC730O2(i)=fNC730O2(i)-1; fHO2(i)=fHO2(i)-1; fNC730OOH(i)=fNC730OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC730O2 + NO =  + C519CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC730O2'; Gstr{i,2} = 'NO'; 
fNC730O2(i)=fNC730O2(i)-1; fNO(i)=fNO(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC730O2 + NO3 =  + C519CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC730O2'; Gstr{i,2} = 'NO3'; 
fNC730O2(i)=fNC730O2(i)-1; fNO3(i)=fNO3(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC730O2 =  + C519CHO + HCHO + NO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'NC730O2'; Gstr{i,2} = 'RO2';
fNC730O2(i)=fNC730O2(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC730O2 = NC730OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'NC730O2'; Gstr{i,2} = 'RO2';
fNC730O2(i)=fNC730O2(i)-1; fNC730OH(i)=fNC730OH(i)+1; 

i=i+1;
Rnames{i} = 'C519CHO + NO3 = C519CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C519CHO'; Gstr{i,2} = 'NO3'; 
fC519CHO(i)=fC519CHO(i)-1; fNO3(i)=fNO3(i)-1; fC519CO3(i)=fC519CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C519CHO + OH = C519CO3';
k(:,i) = 3.50e-11;
Gstr{i,1} = 'C519CHO'; Gstr{i,2} = 'OH'; 
fC519CHO(i)=fC519CHO(i)-1; fOH(i)=fOH(i)-1; fC519CO3(i)=fC519CO3(i)+1; 

i=i+1;
Rnames{i} = 'C730O2 + HO2 = C730OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C730O2'; Gstr{i,2} = 'HO2'; 
fC730O2(i)=fC730O2(i)-1; fHO2(i)=fHO2(i)-1; fC730OOH(i)=fC730OOH(i)+1; 

i=i+1;
Rnames{i} = 'C730O2 + NO = C730NO3';
k(:,i) = KRO2NO.*0.056;
Gstr{i,1} = 'C730O2'; Gstr{i,2} = 'NO'; 
fC730O2(i)=fC730O2(i)-1; fNO(i)=fNO(i)-1; fC730NO3(i)=fC730NO3(i)+1; 

i=i+1;
Rnames{i} = 'C730O2 + NO =  + C519CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.944;
Gstr{i,1} = 'C730O2'; Gstr{i,2} = 'NO'; 
fC730O2(i)=fC730O2(i)-1; fNO(i)=fNO(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C730O2 + NO3 =  + C519CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C730O2'; Gstr{i,2} = 'NO3'; 
fC730O2(i)=fC730O2(i)-1; fNO3(i)=fNO3(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C730O2 =  + C519CHO + HCHO + HO2';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C730O2'; Gstr{i,2} = 'RO2';
fC730O2(i)=fC730O2(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C730O2 = C730OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C730O2'; Gstr{i,2} = 'RO2';
fC730O2(i)=fC730O2(i)-1; fC730OH(i)=fC730OH(i)+1; 

i=i+1;
Rnames{i} = 'C624CO2H + OH = C624O2';
k(:,i) = 5.94e-11;
Gstr{i,1} = 'C624CO2H'; Gstr{i,2} = 'OH'; 
fC624CO2H(i)=fC624CO2H(i)-1; fOH(i)=fOH(i)-1; fC624O2(i)=fC624O2(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3H + OH = C624CO3';
k(:,i) = 6.25e-11;
Gstr{i,1} = 'C624CO3H'; Gstr{i,2} = 'OH'; 
fC624CO3H(i)=fC624CO3H(i)-1; fOH(i)=fOH(i)-1; fC624CO3(i)=fC624CO3(i)+1; 

i=i+1;
Rnames{i} = 'C624CO3H = C624O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C624CO3H'; 
fC624CO3H(i)=fC624CO3H(i)-1; fC624O2(i)=fC624O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C624O2 + HO2 = C624OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C624O2'; Gstr{i,2} = 'HO2'; 
fC624O2(i)=fC624O2(i)-1; fHO2(i)=fHO2(i)-1; fC624OOH(i)=fC624OOH(i)+1; 

i=i+1;
Rnames{i} = 'C624O2 + NO = C624NO3';
k(:,i) = KRO2NO.*0.209;
Gstr{i,1} = 'C624O2'; Gstr{i,2} = 'NO'; 
fC624O2(i)=fC624O2(i)-1; fNO(i)=fNO(i)-1; fC624NO3(i)=fC624NO3(i)+1; 

i=i+1;
Rnames{i} = 'C624O2 + NO =  + C624CO + HO2 + MACR + HOCH2CH2O2 + NO2';
k(:,i) = KRO2NO.*0.791;
Gstr{i,1} = 'C624O2'; Gstr{i,2} = 'NO'; 
fC624O2(i)=fC624O2(i)-1; fNO(i)=fNO(i)-1; fC624CO(i)=fC624CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C624O2 + NO3 =  + C624CO + HO2 + MACR + HOCH2CH2O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C624O2'; Gstr{i,2} = 'NO3'; 
fC624O2(i)=fC624O2(i)-1; fNO3(i)=fNO3(i)-1; fC624CO(i)=fC624CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C624O2 = C624CO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C624O2'; Gstr{i,2} = 'RO2';
fC624O2(i)=fC624O2(i)-1; fC624CO(i)=fC624CO(i)+1; 

i=i+1;
Rnames{i} = 'C624O2 =  + C624CO + HO2 + MACR + HOCH2CH2O2';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C624O2'; Gstr{i,2} = 'RO2';
fC624O2(i)=fC624O2(i)-1; fC624CO(i)=fC624CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C624O2 = C624OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C624O2'; Gstr{i,2} = 'RO2';
fC624O2(i)=fC624O2(i)-1; fC624OH(i)=fC624OH(i)+1; 

i=i+1;
Rnames{i} = 'C624PAN + OH = C624CO + CO + NO2';
k(:,i) = 5.89e-11;
Gstr{i,1} = 'C624PAN'; Gstr{i,2} = 'OH'; 
fC624PAN(i)=fC624PAN(i)-1; fOH(i)=fOH(i)-1; fC624CO(i)=fC624CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C624PAN = C624CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C624PAN'; 
fC624PAN(i)=fC624PAN(i)-1; fC624CO3(i)=fC624CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C733O2 + HO2 = C733OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C733O2'; Gstr{i,2} = 'HO2'; 
fC733O2(i)=fC733O2(i)-1; fHO2(i)=fHO2(i)-1; fC733OOH(i)=fC733OOH(i)+1; 

i=i+1;
Rnames{i} = 'C733O2 + NO =  + C519CHO + CO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C733O2'; Gstr{i,2} = 'NO'; 
fC733O2(i)=fC733O2(i)-1; fNO(i)=fNO(i)-1; fC519CHO(i)=fC519CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C733O2 + NO3 =  + C519CHO + CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C733O2'; Gstr{i,2} = 'NO3'; 
fC733O2(i)=fC733O2(i)-1; fNO3(i)=fNO3(i)-1; fC519CHO(i)=fC519CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C733O2 = C733CO';
k(:,i) = 8.80e-12.*0.2;
Gstr{i,1} = 'C733O2'; Gstr{i,2} = 'RO2';
fC733O2(i)=fC733O2(i)-1; fC733CO(i)=fC733CO(i)+1; 

i=i+1;
Rnames{i} = 'C733O2 =  + C519CHO + CO + HO2';
k(:,i) = 8.80e-12.*0.6;
Gstr{i,1} = 'C733O2'; Gstr{i,2} = 'RO2';
fC733O2(i)=fC733O2(i)-1; fC519CHO(i)=fC519CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C733O2 = C733OH';
k(:,i) = 8.80e-12.*0.2;
Gstr{i,1} = 'C733O2'; Gstr{i,2} = 'RO2';
fC733O2(i)=fC733O2(i)-1; fC733OH(i)=fC733OH(i)+1; 

i=i+1;
Rnames{i} = 'C732OOH + OH = C732CO + OH';
k(:,i) = 4.95e-11;
Gstr{i,1} = 'C732OOH'; Gstr{i,2} = 'OH'; 
fC732OOH(i)=fC732OOH(i)-1; fOH(i)=fOH(i)-1; fC732CO(i)=fC732CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C732OOH =  + C734O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C732OOH'; 
fC732OOH(i)=fC732OOH(i)-1; fC734O2(i)=fC734O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C732NO3 + OH = C732CO + NO2';
k(:,i) = 7.97e-12;
Gstr{i,1} = 'C732NO3'; Gstr{i,2} = 'OH'; 
fC732NO3(i)=fC732NO3(i)-1; fOH(i)=fOH(i)-1; fC732CO(i)=fC732CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C732NO3 =  + C734O2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C732NO3'; 
fC732NO3(i)=fC732NO3(i)-1; fC734O2(i)=fC734O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C732CO + OH = C734O2';
k(:,i) = 2.81e-11;
Gstr{i,1} = 'C732CO'; Gstr{i,2} = 'OH'; 
fC732CO(i)=fC732CO(i)-1; fOH(i)=fOH(i)-1; fC734O2(i)=fC734O2(i)+1; 

i=i+1;
Rnames{i} = 'C732CO = C734O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C732CO'; 
fC732CO(i)=fC732CO(i)-1; fC734O2(i)=fC734O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C732OH + OH = C732CO + HO2';
k(:,i) = 2.82e-11;
Gstr{i,1} = 'C732OH'; Gstr{i,2} = 'OH'; 
fC732OH(i)=fC732OH(i)-1; fOH(i)=fOH(i)-1; fC732CO(i)=fC732CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C33CO + OH = CO + CO + CO + HO2';
k(:,i) = 5.77e-11;
Gstr{i,1} = 'C33CO'; Gstr{i,2} = 'OH'; 
fC33CO(i)=fC33CO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C33CO = CO + HO2 + CO + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C33CO'; 
fC33CO(i)=fC33CO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + HO2 = CO235C5CHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'HO2'; 
fNC61CO3(i)=fNC61CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + HO2 = NC61CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'HO2'; 
fNC61CO3(i)=fNC61CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC61CO3H(i)=fNC61CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + NO = CO235C5CHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'NO'; 
fNC61CO3(i)=fNC61CO3(i)-1; fNO(i)=fNO(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + NO2 = NC6PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'NO2'; 
fNC61CO3(i)=fNC61CO3(i)-1; fNO2(i)=fNO2(i)-1; fNC6PAN1(i)=fNC6PAN1(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + NO3 = CO235C5CHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'NO3'; 
fNC61CO3(i)=fNC61CO3(i)-1; fNO3(i)=fNO3(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 = CO235C5CHO + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'RO2';
fNC61CO3(i)=fNC61CO3(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813OOH + OH = C813O2';
k(:,i) = 1.86e-11;
Gstr{i,1} = 'C813OOH'; Gstr{i,2} = 'OH'; 
fC813OOH(i)=fC813OOH(i)-1; fOH(i)=fOH(i)-1; fC813O2(i)=fC813O2(i)+1; 

i=i+1;
Rnames{i} = 'C813OOH =  + CH3COCH3 + C512O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C813OOH'; 
fC813OOH(i)=fC813OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C813OOH =  + CH3COCH3 + C512O2 + OH';
k(:,i) = J34;
Gstr{i,1} = 'C813OOH'; 
fC813OOH(i)=fC813OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C813NO3 + OH = CH3COCH3 + CO13C3CO2H + HCHO + NO2';
k(:,i) = 7.82e-12;
Gstr{i,1} = 'C813NO3'; Gstr{i,2} = 'OH'; 
fC813NO3(i)=fC813NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813NO3 =  + CH3COCH3 + C512O2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C813NO3'; 
fC813NO3(i)=fC813NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813NO3 =  + CH3COCH3 + C512O2 + NO2';
k(:,i) = J34;
Gstr{i,1} = 'C813NO3'; 
fC813NO3(i)=fC813NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813OH + OH =  + CH3COCH3 + C512O2';
k(:,i) = 1.75e-11;
Gstr{i,1} = 'C813OH'; Gstr{i,2} = 'OH'; 
fC813OH(i)=fC813OH(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; 

i=i+1;
Rnames{i} = 'C813OH =  + CH3COCH3 + C512O2 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C813OH'; 
fC813OH(i)=fC813OH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC512O2(i)=fC512O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C722OOH + OH = C722O2';
k(:,i) = 3.31e-11;
Gstr{i,1} = 'C722OOH'; Gstr{i,2} = 'OH'; 
fC722OOH(i)=fC722OOH(i)-1; fOH(i)=fOH(i)-1; fC722O2(i)=fC722O2(i)+1; 

i=i+1;
Rnames{i} = 'C722OOH =  + CH3COCH3 + C44O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C722OOH'; 
fC722OOH(i)=fC722OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC44O2(i)=fC44O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CHO + NO3 = H1C23C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'H1C23C4CHO'; Gstr{i,2} = 'NO3'; 
fH1C23C4CHO(i)=fH1C23C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fH1C23C4CO3(i)=fH1C23C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CHO + OH = H1C23C4CO3';
k(:,i) = 2.37e-11;
Gstr{i,1} = 'H1C23C4CHO'; Gstr{i,2} = 'OH'; 
fH1C23C4CHO(i)=fH1C23C4CHO(i)-1; fOH(i)=fOH(i)-1; fH1C23C4CO3(i)=fH1C23C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CHO = H1C23C4O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'H1C23C4CHO'; 
fH1C23C4CHO(i)=fH1C23C4CHO(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CHO = HCOCH2CO3 + HOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'H1C23C4CHO'; 
fH1C23C4CHO(i)=fH1C23C4CHO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C515CO + OH = CO + CO + HCOCH2CO3';
k(:,i) = 7.90e-11;
Gstr{i,1} = 'C515CO'; Gstr{i,2} = 'OH'; 
fC515CO(i)=fC515CO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C515CO = HO2 + CO + CO + HCOCH2CO3';
k(:,i) = J34;
Gstr{i,1} = 'C515CO'; 
fC515CO(i)=fC515CO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C515CO = HO2 + CO + CO + HCOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'C515CO'; 
fC515CO(i)=fC515CO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2H + OH = C615O2';
k(:,i) = 9.13e-11;
Gstr{i,1} = 'C615CO2H'; Gstr{i,2} = 'OH'; 
fC615CO2H(i)=fC615CO2H(i)-1; fOH(i)=fOH(i)-1; fC615O2(i)=fC615O2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2H = C615O2 + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C615CO2H'; 
fC615CO2H(i)=fC615CO2H(i)-1; fC615O2(i)=fC615O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3H + OH = C615CO3';
k(:,i) = 9.44e-11;
Gstr{i,1} = 'C615CO3H'; Gstr{i,2} = 'OH'; 
fC615CO3H(i)=fC615CO3H(i)-1; fOH(i)=fOH(i)-1; fC615CO3(i)=fC615CO3(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3H = C615O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C615CO3H'; 
fC615CO3H(i)=fC615CO3H(i)-1; fC615O2(i)=fC615O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO3H = C615O2 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C615CO3H'; 
fC615CO3H(i)=fC615CO3H(i)-1; fC615O2(i)=fC615O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615O2 + HO2 = C615OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C615O2'; Gstr{i,2} = 'HO2'; 
fC615O2(i)=fC615O2(i)-1; fHO2(i)=fHO2(i)-1; fC615OOH(i)=fC615OOH(i)+1; 

i=i+1;
Rnames{i} = 'C615O2 + NO =  + CO1M22CHO + HO2 + CO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C615O2'; Gstr{i,2} = 'NO'; 
fC615O2(i)=fC615O2(i)-1; fNO(i)=fNO(i)-1; fCO1M22CHO(i)=fCO1M22CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C615O2 + NO3 =  + CO1M22CHO + HO2 + CO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C615O2'; Gstr{i,2} = 'NO3'; 
fC615O2(i)=fC615O2(i)-1; fNO3(i)=fNO3(i)-1; fCO1M22CHO(i)=fCO1M22CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C615O2 = C615CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C615O2'; Gstr{i,2} = 'RO2';
fC615O2(i)=fC615O2(i)-1; fC615CO(i)=fC615CO(i)+1; 

i=i+1;
Rnames{i} = 'C615O2 =  + CO1M22CHO + HO2 + CO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C615O2'; Gstr{i,2} = 'RO2';
fC615O2(i)=fC615O2(i)-1; fCO1M22CHO(i)=fCO1M22CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C615O2 = C615OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C615O2'; Gstr{i,2} = 'RO2';
fC615O2(i)=fC615O2(i)-1; fC615OH(i)=fC615OH(i)+1; 

i=i+1;
Rnames{i} = 'C615PAN + OH = C615CO + CO + NO2';
k(:,i) = 8.47e-11;
Gstr{i,1} = 'C615PAN'; Gstr{i,2} = 'OH'; 
fC615PAN(i)=fC615PAN(i)-1; fOH(i)=fOH(i)-1; fC615CO(i)=fC615CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C615PAN = C615CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C615PAN'; 
fC615PAN(i)=fC615PAN(i)-1; fC615CO3(i)=fC615CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C617CO2H + OH = C617O2';
k(:,i) = 6.72e-11;
Gstr{i,1} = 'C617CO2H'; Gstr{i,2} = 'OH'; 
fC617CO2H(i)=fC617CO2H(i)-1; fOH(i)=fOH(i)-1; fC617O2(i)=fC617O2(i)+1; 

i=i+1;
Rnames{i} = 'C617CO2H = C617O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C617CO2H'; 
fC617CO2H(i)=fC617CO2H(i)-1; fC617O2(i)=fC617O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3H + OH = C617CO3';
k(:,i) = 7.03e-11;
Gstr{i,1} = 'C617CO3H'; Gstr{i,2} = 'OH'; 
fC617CO3H(i)=fC617CO3H(i)-1; fOH(i)=fOH(i)-1; fC617CO3(i)=fC617CO3(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3H = C617O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C617CO3H'; 
fC617CO3H(i)=fC617CO3H(i)-1; fC617O2(i)=fC617O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C617CO3H = C617O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C617CO3H'; 
fC617CO3H(i)=fC617CO3H(i)-1; fC617O2(i)=fC617O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C617PAN + OH = C615CO + CO + NO2';
k(:,i) = 6.74e-11;
Gstr{i,1} = 'C617PAN'; Gstr{i,2} = 'OH'; 
fC617PAN(i)=fC617PAN(i)-1; fOH(i)=fOH(i)-1; fC615CO(i)=fC615CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C617PAN = C617CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C617PAN'; 
fC617PAN(i)=fC617PAN(i)-1; fC617CO3(i)=fC617CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C618CO2H + OH = C618O2';
k(:,i) = 6.72e-11;
Gstr{i,1} = 'C618CO2H'; Gstr{i,2} = 'OH'; 
fC618CO2H(i)=fC618CO2H(i)-1; fOH(i)=fOH(i)-1; fC618O2(i)=fC618O2(i)+1; 

i=i+1;
Rnames{i} = 'C618CO2H = C618O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C618CO2H'; 
fC618CO2H(i)=fC618CO2H(i)-1; fC618O2(i)=fC618O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3H + OH = C618CO3';
k(:,i) = 7.03e-11;
Gstr{i,1} = 'C618CO3H'; Gstr{i,2} = 'OH'; 
fC618CO3H(i)=fC618CO3H(i)-1; fOH(i)=fOH(i)-1; fC618CO3(i)=fC618CO3(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3H = C618O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C618CO3H'; 
fC618CO3H(i)=fC618CO3H(i)-1; fC618O2(i)=fC618O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C618CO3H = C618O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C618CO3H'; 
fC618CO3H(i)=fC618CO3H(i)-1; fC618O2(i)=fC618O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C618PAN + OH = CH3COCH3 + HCOCH2CHO + CO + NO2';
k(:,i) = 6.67e-11;
Gstr{i,1} = 'C618PAN'; Gstr{i,2} = 'OH'; 
fC618PAN(i)=fC618PAN(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C618PAN = C618CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C618PAN'; 
fC618PAN(i)=fC618PAN(i)-1; fC618CO3(i)=fC618CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C617OOH + OH = C615CO + OH';
k(:,i) = 7.56e-11;
Gstr{i,1} = 'C617OOH'; Gstr{i,2} = 'OH'; 
fC617OOH(i)=fC617OOH(i)-1; fOH(i)=fOH(i)-1; fC615CO(i)=fC615CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C617OOH =  + CO1M22CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C617OOH'; 
fC617OOH(i)=fC617OOH(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C617OOH =  + CO1M22CO3 + HCHO + OH';
k(:,i) = J15;
Gstr{i,1} = 'C617OOH'; 
fC617OOH(i)=fC617OOH(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO + OH = CO1M22CO3 + CO';
k(:,i) = 7.88e-11;
Gstr{i,1} = 'C615CO'; Gstr{i,2} = 'OH'; 
fC615CO(i)=fC615CO(i)-1; fOH(i)=fOH(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C615CO = CO1M22CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C615CO'; 
fC615CO(i)=fC615CO(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO = CO1M22CO3 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C615CO'; 
fC615CO(i)=fC615CO(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C617OH + OH = C615CO + HO2';
k(:,i) = 6.89e-11;
Gstr{i,1} = 'C617OH'; Gstr{i,2} = 'OH'; 
fC617OH(i)=fC617OH(i)-1; fOH(i)=fOH(i)-1; fC615CO(i)=fC615CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C617OH =  + CO1M22CO3 + HCHO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C617OH'; 
fC617OH(i)=fC617OH(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C618OOH + OH = C618O2';
k(:,i) = 7.03e-11;
Gstr{i,1} = 'C618OOH'; Gstr{i,2} = 'OH'; 
fC618OOH(i)=fC618OOH(i)-1; fOH(i)=fOH(i)-1; fC618O2(i)=fC618O2(i)+1; 

i=i+1;
Rnames{i} = 'C618OOH =  + HCOCH2CO3 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C618OOH'; 
fC618OOH(i)=fC618OOH(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C618OOH =  + HCOCH2CO3 + CH3COCH3 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C618OOH'; 
fC618OOH(i)=fC618OOH(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C67CHO = C55O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C67CHO'; 
fC67CHO(i)=fC67CHO(i)-1; fC55O2(i)=fC55O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C67CHO = C67CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C67CHO'; 
fNO3(i)=fNO3(i)-1; fC67CHO(i)=fC67CHO(i)-1; fC67CO3(i)=fC67CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + C67CHO = C67CO3';
k(:,i) = 6.76e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C67CHO'; 
fOH(i)=fOH(i)-1; fC67CHO(i)=fC67CHO(i)-1; fC67CO3(i)=fC67CO3(i)+1; 

i=i+1;
Rnames{i} = 'NC730OOH + OH = NC730O2';
k(:,i) = 3.58e-11;
Gstr{i,1} = 'NC730OOH'; Gstr{i,2} = 'OH'; 
fNC730OOH(i)=fNC730OOH(i)-1; fOH(i)=fOH(i)-1; fNC730O2(i)=fNC730O2(i)+1; 

i=i+1;
Rnames{i} = 'NC730OOH =  + C519CHO + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC730OOH'; 
fNC730OOH(i)=fNC730OOH(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC730OH + OH = C519CHO + HCHO + NO2';
k(:,i) = 3.34e-11;
Gstr{i,1} = 'NC730OH'; Gstr{i,2} = 'OH'; 
fNC730OH(i)=fNC730OH(i)-1; fOH(i)=fOH(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3 + HO2 = C519CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C519CO3'; Gstr{i,2} = 'HO2'; 
fC519CO3(i)=fC519CO3(i)-1; fHO2(i)=fHO2(i)-1; fC519CO2H(i)=fC519CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3 + HO2 = C519CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C519CO3'; Gstr{i,2} = 'HO2'; 
fC519CO3(i)=fC519CO3(i)-1; fHO2(i)=fHO2(i)-1; fC519CO3H(i)=fC519CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3 + HO2 = C519O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C519CO3'; Gstr{i,2} = 'HO2'; 
fC519CO3(i)=fC519CO3(i)-1; fHO2(i)=fHO2(i)-1; fC519O2(i)=fC519O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3 + NO = C519O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C519CO3'; Gstr{i,2} = 'NO'; 
fC519CO3(i)=fC519CO3(i)-1; fNO(i)=fNO(i)-1; fC519O2(i)=fC519O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3 + NO2 = C519PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C519CO3'; Gstr{i,2} = 'NO2'; 
fC519CO3(i)=fC519CO3(i)-1; fNO2(i)=fNO2(i)-1; fC519PAN(i)=fC519PAN(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3 + NO3 = C519O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C519CO3'; Gstr{i,2} = 'NO3'; 
fC519CO3(i)=fC519CO3(i)-1; fNO3(i)=fNO3(i)-1; fC519O2(i)=fC519O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3 = C519CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C519CO3'; Gstr{i,2} = 'RO2';
fC519CO3(i)=fC519CO3(i)-1; fC519CO2H(i)=fC519CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3 = C519O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C519CO3'; Gstr{i,2} = 'RO2';
fC519CO3(i)=fC519CO3(i)-1; fC519O2(i)=fC519O2(i)+1; 

i=i+1;
Rnames{i} = 'C629O2 + HO2 = C629OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C629O2'; Gstr{i,2} = 'HO2'; 
fC629O2(i)=fC629O2(i)-1; fHO2(i)=fHO2(i)-1; fC629OOH(i)=fC629OOH(i)+1; 

i=i+1;
Rnames{i} = 'C629O2 + NO =  + 0.5HO1CO34C5 + 0.5CO + 0.5HO2 + 0.5HO1CO3CHO + 0.5CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C629O2'; Gstr{i,2} = 'NO'; 
fC629O2(i)=fC629O2(i)-1; fNO(i)=fNO(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHO1CO3CHO(i)=fHO1CO3CHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C629O2 + NO3 =  + 0.5HO1CO34C5 + 0.5CO + 0.5HO2 + 0.5HO1CO3CHO + 0.5CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C629O2'; Gstr{i,2} = 'NO3'; 
fC629O2(i)=fC629O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHO1CO3CHO(i)=fHO1CO3CHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C629O2 =  + 0.5HO1CO34C5 + 0.5CO + 0.5HO2 + 0.5HO1CO3CHO + 0.5CH3CO3';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C629O2'; Gstr{i,2} = 'RO2';
fC629O2(i)=fC629O2(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHO1CO3CHO(i)=fHO1CO3CHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; 

i=i+1;
Rnames{i} = 'C629O2 = C629OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C629O2'; Gstr{i,2} = 'RO2';
fC629O2(i)=fC629O2(i)-1; fC629OH(i)=fC629OH(i)+1; 

i=i+1;
Rnames{i} = 'C730OOH + OH = C730O2';
k(:,i) = 4.00e-11;
Gstr{i,1} = 'C730OOH'; Gstr{i,2} = 'OH'; 
fC730OOH(i)=fC730OOH(i)-1; fOH(i)=fOH(i)-1; fC730O2(i)=fC730O2(i)+1; 

i=i+1;
Rnames{i} = 'C730OOH =  + C519CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C730OOH'; 
fC730OOH(i)=fC730OOH(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C730NO3 + OH = C519CHO + HCHO + NO2';
k(:,i) = 3.09e-11;
Gstr{i,1} = 'C730NO3'; Gstr{i,2} = 'OH'; 
fC730NO3(i)=fC730NO3(i)-1; fOH(i)=fOH(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C730OH + OH = C519CHO + HCHO + HO2';
k(:,i) = 3.66e-11;
Gstr{i,1} = 'C730OH'; Gstr{i,2} = 'OH'; 
fC730OH(i)=fC730OH(i)-1; fOH(i)=fOH(i)-1; fC519CHO(i)=fC519CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C624OOH + OH = C624CO + OH';
k(:,i) = 1.10e-10;
Gstr{i,1} = 'C624OOH'; Gstr{i,2} = 'OH'; 
fC624OOH(i)=fC624OOH(i)-1; fOH(i)=fOH(i)-1; fC624CO(i)=fC624CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C624OOH =  + C624CO + HO2 + MACR + HOCH2CH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C624OOH'; 
fC624OOH(i)=fC624OOH(i)-1; fC624CO(i)=fC624CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C624NO3 + OH = C624CO + NO2';
k(:,i) = 2.92e-11;
Gstr{i,1} = 'C624NO3'; Gstr{i,2} = 'OH'; 
fC624NO3(i)=fC624NO3(i)-1; fOH(i)=fOH(i)-1; fC624CO(i)=fC624CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C624NO3 =  + C624CO + HO2 + MACR + HOCH2CH2O2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C624NO3'; 
fC624NO3(i)=fC624NO3(i)-1; fC624CO(i)=fC624CO(i)+1; fHO2(i)=fHO2(i)+1; fMACR(i)=fMACR(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C624CO + OH = C625O2';
k(:,i) = 6.04e-11;
Gstr{i,1} = 'C624CO'; Gstr{i,2} = 'OH'; 
fC624CO(i)=fC624CO(i)-1; fOH(i)=fOH(i)-1; fC625O2(i)=fC625O2(i)+1; 

i=i+1;
Rnames{i} = 'C624CO = MACO3 + HOCH2CH2O2';
k(:,i) = J22;
Gstr{i,1} = 'C624CO'; 
fC624CO(i)=fC624CO(i)-1; fMACO3(i)=fMACO3(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C624OH + OH = C624CO + HO2';
k(:,i) = 9.53e-11;
Gstr{i,1} = 'C624OH'; Gstr{i,2} = 'OH'; 
fC624OH(i)=fC624OH(i)-1; fOH(i)=fOH(i)-1; fC624CO(i)=fC624CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C733OOH + OH = C733CO + OH';
k(:,i) = 5.51e-11;
Gstr{i,1} = 'C733OOH'; Gstr{i,2} = 'OH'; 
fC733OOH(i)=fC733OOH(i)-1; fOH(i)=fOH(i)-1; fC733CO(i)=fC733CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C733OOH =  + C519CHO + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C733OOH'; 
fC733OOH(i)=fC733OOH(i)-1; fC519CHO(i)=fC519CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C733CO + OH = C519CO3 + CO';
k(:,i) = 2.28e-11;
Gstr{i,1} = 'C733CO'; Gstr{i,2} = 'OH'; 
fC733CO(i)=fC733CO(i)-1; fOH(i)=fOH(i)-1; fC519CO3(i)=fC519CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C733CO = C519CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C733CO'; 
fC733CO(i)=fC733CO(i)-1; fC519CO3(i)=fC519CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C733OH + OH = C733CO + HO2';
k(:,i) = 4.30e-11;
Gstr{i,1} = 'C733OH'; Gstr{i,2} = 'OH'; 
fC733OH(i)=fC733OH(i)-1; fOH(i)=fOH(i)-1; fC733CO(i)=fC733CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C734O2 + HO2 = C734OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C734O2'; Gstr{i,2} = 'HO2'; 
fC734O2(i)=fC734O2(i)-1; fHO2(i)=fHO2(i)-1; fC734OOH(i)=fC734OOH(i)+1; 

i=i+1;
Rnames{i} = 'C734O2 + NO =  + C517CHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C734O2'; Gstr{i,2} = 'NO'; 
fC734O2(i)=fC734O2(i)-1; fNO(i)=fNO(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C734O2 + NO3 =  + C517CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C734O2'; Gstr{i,2} = 'NO3'; 
fC734O2(i)=fC734O2(i)-1; fNO3(i)=fNO3(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C734O2 = C734CO';
k(:,i) = 8.80e-12.*0.2;
Gstr{i,1} = 'C734O2'; Gstr{i,2} = 'RO2';
fC734O2(i)=fC734O2(i)-1; fC734CO(i)=fC734CO(i)+1; 

i=i+1;
Rnames{i} = 'C734O2 =  + C517CHO + HO2';
k(:,i) = 8.80e-12.*0.6;
Gstr{i,1} = 'C734O2'; Gstr{i,2} = 'RO2';
fC734O2(i)=fC734O2(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C734O2 = C734OH';
k(:,i) = 8.80e-12.*0.2;
Gstr{i,1} = 'C734O2'; Gstr{i,2} = 'RO2';
fC734O2(i)=fC734O2(i)-1; fC734OH(i)=fC734OH(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3H + OH = NC61CO3';
k(:,i) = 1.68e-11;
Gstr{i,1} = 'NC61CO3H'; Gstr{i,2} = 'OH'; 
fNC61CO3H(i)=fNC61CO3H(i)-1; fOH(i)=fOH(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3H = CO235C5CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC61CO3H'; 
fNC61CO3H(i)=fNC61CO3H(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC6PAN1 + OH = CO235C5CHO + CO + NO2 + NO2';
k(:,i) = 1.32e-11;
Gstr{i,1} = 'NC6PAN1'; Gstr{i,2} = 'OH'; 
fNC6PAN1(i)=fNC6PAN1(i)-1; fOH(i)=fOH(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC6PAN1 = NC61CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'NC6PAN1'; 
fNC6PAN1(i)=fNC6PAN1(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C44O2 + HO2 = C44OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C44O2'; Gstr{i,2} = 'HO2'; 
fC44O2(i)=fC44O2(i)-1; fHO2(i)=fHO2(i)-1; fC44OOH(i)=fC44OOH(i)+1; 

i=i+1;
Rnames{i} = 'C44O2 + NO =  + HCOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C44O2'; Gstr{i,2} = 'NO'; 
fC44O2(i)=fC44O2(i)-1; fNO(i)=fNO(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C44O2 + NO3 =  + HCOCH2CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C44O2'; Gstr{i,2} = 'NO3'; 
fC44O2(i)=fC44O2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C44O2 =  + HCOCH2CHO + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C44O2'; Gstr{i,2} = 'RO2';
fC44O2(i)=fC44O2(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + HO2 = H1C23C4O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'HO2'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + HO2 = HC23C4CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'HO2'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHC23C4CO3H(i)=fHC23C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + NO = H1C23C4O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'NO'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fNO(i)=fNO(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + NO2 = H1C23C4PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'NO2'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fH1C23C4PAN(i)=fH1C23C4PAN(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + NO3 = H1C23C4O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'NO3'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 = H1C23C4O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'RO2';
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O2 + HO2 = H1C23C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'H1C23C4O2'; Gstr{i,2} = 'HO2'; 
fH1C23C4O2(i)=fH1C23C4O2(i)-1; fHO2(i)=fHO2(i)-1; fH1C23C4OOH(i)=fH1C23C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O2 + NO =  + HCHO + CO + HOCH2CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'H1C23C4O2'; Gstr{i,2} = 'NO'; 
fH1C23C4O2(i)=fH1C23C4O2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O2 + NO3 =  + HCHO + CO + HOCH2CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'H1C23C4O2'; Gstr{i,2} = 'NO3'; 
fH1C23C4O2(i)=fH1C23C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O2 =  + HCHO + CO + HOCH2CO3';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'H1C23C4O2'; Gstr{i,2} = 'RO2';
fH1C23C4O2(i)=fH1C23C4O2(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C615OOH + OH = C615CO + OH';
k(:,i) = 9.31e-11;
Gstr{i,1} = 'C615OOH'; Gstr{i,2} = 'OH'; 
fC615OOH(i)=fC615OOH(i)-1; fOH(i)=fOH(i)-1; fC615CO(i)=fC615CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615OOH =  + CO1M22CHO + HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C615OOH'; 
fC615OOH(i)=fC615OOH(i)-1; fCO1M22CHO(i)=fCO1M22CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615OOH =  + CO1M22CHO + HO2 + CO + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C615OOH'; 
fC615OOH(i)=fC615OOH(i)-1; fCO1M22CHO(i)=fCO1M22CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615OH + OH = C615CO + HO2';
k(:,i) = 6.15e-11;
Gstr{i,1} = 'C615OH'; Gstr{i,2} = 'OH'; 
fC615OH(i)=fC615OH(i)-1; fOH(i)=fOH(i)-1; fC615CO(i)=fC615CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C615OH =  + CO1M22CHO + HO2 + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C615OH'; 
fC615OH(i)=fC615OH(i)-1; fCO1M22CHO(i)=fCO1M22CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3 + HO2 = CO1M22CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CO1M22CO3'; Gstr{i,2} = 'HO2'; 
fCO1M22CO3(i)=fCO1M22CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO1M22CO2H(i)=fCO1M22CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3 + HO2 = CO1M22CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CO1M22CO3'; Gstr{i,2} = 'HO2'; 
fCO1M22CO3(i)=fCO1M22CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO1M22CO3H(i)=fCO1M22CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3 + HO2 = IBUTALCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO1M22CO3'; Gstr{i,2} = 'HO2'; 
fCO1M22CO3(i)=fCO1M22CO3(i)-1; fHO2(i)=fHO2(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3 + NO = IBUTALCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO1M22CO3'; Gstr{i,2} = 'NO'; 
fCO1M22CO3(i)=fCO1M22CO3(i)-1; fNO(i)=fNO(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3 + NO2 = CO1M22PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO1M22CO3'; Gstr{i,2} = 'NO2'; 
fCO1M22CO3(i)=fCO1M22CO3(i)-1; fNO2(i)=fNO2(i)-1; fCO1M22PAN(i)=fCO1M22PAN(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3 + NO3 = IBUTALCO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO1M22CO3'; Gstr{i,2} = 'NO3'; 
fCO1M22CO3(i)=fCO1M22CO3(i)-1; fNO3(i)=fNO3(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3 = CO1M22CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CO1M22CO3'; Gstr{i,2} = 'RO2';
fCO1M22CO3(i)=fCO1M22CO3(i)-1; fCO1M22CO2H(i)=fCO1M22CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3 = IBUTALCO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CO1M22CO3'; Gstr{i,2} = 'RO2';
fCO1M22CO3(i)=fCO1M22CO3(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; 

i=i+1;
Rnames{i} = 'C55O2 + HO2 = C55OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C55O2'; Gstr{i,2} = 'HO2'; 
fC55O2(i)=fC55O2(i)-1; fHO2(i)=fHO2(i)-1; fC55OOH(i)=fC55OOH(i)+1; 

i=i+1;
Rnames{i} = 'C55O2 + NO =  + HCHO + IPRHOCO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C55O2'; Gstr{i,2} = 'NO'; 
fC55O2(i)=fC55O2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C55O2 + NO3 =  + HCHO + IPRHOCO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C55O2'; Gstr{i,2} = 'NO3'; 
fC55O2(i)=fC55O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C55O2 =  + HCHO + IPRHOCO3';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'C55O2'; Gstr{i,2} = 'RO2';
fC55O2(i)=fC55O2(i)-1; fHCHO(i)=fHCHO(i)+1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; 

i=i+1;
Rnames{i} = 'C67CO3 + HO2 = C55O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C67CO3'; Gstr{i,2} = 'HO2'; 
fC67CO3(i)=fC67CO3(i)-1; fHO2(i)=fHO2(i)-1; fC55O2(i)=fC55O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C67CO3 + HO2 = C67CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C67CO3'; Gstr{i,2} = 'HO2'; 
fC67CO3(i)=fC67CO3(i)-1; fHO2(i)=fHO2(i)-1; fC67CO3H(i)=fC67CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C67CO3 + NO = C55O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C67CO3'; Gstr{i,2} = 'NO'; 
fC67CO3(i)=fC67CO3(i)-1; fNO(i)=fNO(i)-1; fC55O2(i)=fC55O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C67CO3 + NO2 = C6PAN9';
k(:,i) = KFPAN;
Gstr{i,1} = 'C67CO3'; Gstr{i,2} = 'NO2'; 
fC67CO3(i)=fC67CO3(i)-1; fNO2(i)=fNO2(i)-1; fC6PAN9(i)=fC6PAN9(i)+1; 

i=i+1;
Rnames{i} = 'C67CO3 + NO3 = C55O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C67CO3'; Gstr{i,2} = 'NO3'; 
fC67CO3(i)=fC67CO3(i)-1; fNO3(i)=fNO3(i)-1; fC55O2(i)=fC55O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C67CO3 = C55O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C67CO3'; Gstr{i,2} = 'RO2';
fC67CO3(i)=fC67CO3(i)-1; fC55O2(i)=fC55O2(i)+1; 

i=i+1;
Rnames{i} = 'C519CO2H + OH = C519O2';
k(:,i) = 1.06e-11;
Gstr{i,1} = 'C519CO2H'; Gstr{i,2} = 'OH'; 
fC519CO2H(i)=fC519CO2H(i)-1; fOH(i)=fOH(i)-1; fC519O2(i)=fC519O2(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3H + OH = C519CO3';
k(:,i) = 1.37e-11;
Gstr{i,1} = 'C519CO3H'; Gstr{i,2} = 'OH'; 
fC519CO3H(i)=fC519CO3H(i)-1; fOH(i)=fOH(i)-1; fC519CO3(i)=fC519CO3(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3H = C519O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C519CO3H'; 
fC519CO3H(i)=fC519CO3H(i)-1; fC519O2(i)=fC519O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C519CO3H = C519O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C519CO3H'; 
fC519CO3H(i)=fC519CO3H(i)-1; fC519O2(i)=fC519O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C519O2 + HO2 = C519OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C519O2'; Gstr{i,2} = 'HO2'; 
fC519O2(i)=fC519O2(i)-1; fHO2(i)=fHO2(i)-1; fC519OOH(i)=fC519OOH(i)+1; 

i=i+1;
Rnames{i} = 'C519O2 + NO =  + CH3CO3 + HOC2H4CHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C519O2'; Gstr{i,2} = 'NO'; 
fC519O2(i)=fC519O2(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C519O2 + NO3 =  + CH3CO3 + HOC2H4CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C519O2'; Gstr{i,2} = 'NO3'; 
fC519O2(i)=fC519O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C519O2 =  + CH3CO3 + HOC2H4CHO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C519O2'; Gstr{i,2} = 'RO2';
fC519O2(i)=fC519O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; 

i=i+1;
Rnames{i} = 'C519O2 = HO13CO4C5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C519O2'; Gstr{i,2} = 'RO2';
fC519O2(i)=fC519O2(i)-1; fHO13CO4C5(i)=fHO13CO4C5(i)+1; 

i=i+1;
Rnames{i} = 'C519O2 = HO1CO34C5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C519O2'; Gstr{i,2} = 'RO2';
fC519O2(i)=fC519O2(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; 

i=i+1;
Rnames{i} = 'C519PAN + OH = HO1CO34C5 + CO + NO2';
k(:,i) = 1.01e-11;
Gstr{i,1} = 'C519PAN'; Gstr{i,2} = 'OH'; 
fC519PAN(i)=fC519PAN(i)-1; fOH(i)=fOH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C519PAN = C519CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C519PAN'; 
fC519PAN(i)=fC519PAN(i)-1; fC519CO3(i)=fC519CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C629OOH + OH = C629O2';
k(:,i) = 3.31e-11;
Gstr{i,1} = 'C629OOH'; Gstr{i,2} = 'OH'; 
fC629OOH(i)=fC629OOH(i)-1; fOH(i)=fOH(i)-1; fC629O2(i)=fC629O2(i)+1; 

i=i+1;
Rnames{i} = 'C629OOH =  + 0.5HO1CO34C5 + 0.5CO + 0.5HO2 + 0.5HO1CO3CHO + 0.5CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C629OOH'; 
fC629OOH(i)=fC629OOH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHO1CO3CHO(i)=fHO1CO3CHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C629OOH = HO1CO34C5 + CO + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C629OOH'; 
fC629OOH(i)=fC629OOH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C629OOH = HO1CO3CHO + CH3CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C629OOH'; 
fC629OOH(i)=fC629OOH(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C629OH + OH =  + 0.5HO1CO34C5 + 0.5CO + 0.5HO2 + 0.5HO1CO3CHO + 0.5CH3CO3';
k(:,i) = 2.97e-11;
Gstr{i,1} = 'C629OH'; Gstr{i,2} = 'OH'; 
fC629OH(i)=fC629OH(i)-1; fOH(i)=fOH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+0.5; fCO(i)=fCO(i)+0.5; fHO2(i)=fHO2(i)+0.5; fHO1CO3CHO(i)=fHO1CO3CHO(i)+0.5; fCH3CO3(i)=fCH3CO3(i)+0.5; 

i=i+1;
Rnames{i} = 'C629OH = HO1CO34C5 + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C629OH'; 
fC629OH(i)=fC629OH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C629OH = HO1CO3CHO + CH3CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C629OH'; 
fC629OH(i)=fC629OH(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C625O2 + HO2 = C625OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C625O2'; Gstr{i,2} = 'HO2'; 
fC625O2(i)=fC625O2(i)-1; fHO2(i)=fHO2(i)-1; fC625OOH(i)=fC625OOH(i)+1; 

i=i+1;
Rnames{i} = 'C625O2 + NO =  + ACETOL + HOC2H4CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C625O2'; Gstr{i,2} = 'NO'; 
fC625O2(i)=fC625O2(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C625O2 + NO3 =  + ACETOL + HOC2H4CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C625O2'; Gstr{i,2} = 'NO3'; 
fC625O2(i)=fC625O2(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C625O2 =  + ACETOL + HOC2H4CO3';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C625O2'; Gstr{i,2} = 'RO2';
fC625O2(i)=fC625O2(i)-1; fACETOL(i)=fACETOL(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C625O2 = C625OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C625O2'; Gstr{i,2} = 'RO2';
fC625O2(i)=fC625O2(i)-1; fC625OH(i)=fC625OH(i)+1; 

i=i+1;
Rnames{i} = 'C734OOH + OH = C734CO + OH';
k(:,i) = 4.16e-11;
Gstr{i,1} = 'C734OOH'; Gstr{i,2} = 'OH'; 
fC734OOH(i)=fC734OOH(i)-1; fOH(i)=fOH(i)-1; fC734CO(i)=fC734CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C734OOH =  + C517CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C734OOH'; 
fC734OOH(i)=fC734OOH(i)-1; fC517CHO(i)=fC517CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C734CO + OH = C517CO3';
k(:,i) = 2.43e-11;
Gstr{i,1} = 'C734CO'; Gstr{i,2} = 'OH'; 
fC734CO(i)=fC734CO(i)-1; fOH(i)=fOH(i)-1; fC517CO3(i)=fC517CO3(i)+1; 

i=i+1;
Rnames{i} = 'C734CO = C517CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C734CO'; 
fC734CO(i)=fC734CO(i)-1; fC517CO3(i)=fC517CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C734OH + OH = C734CO + HO2';
k(:,i) = 2.95e-11;
Gstr{i,1} = 'C734OH'; Gstr{i,2} = 'OH'; 
fC734OH(i)=fC734OH(i)-1; fOH(i)=fOH(i)-1; fC734CO(i)=fC734CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C44OOH + OH = C44O2';
k(:,i) = 7.46e-11;
Gstr{i,1} = 'C44OOH'; Gstr{i,2} = 'OH'; 
fC44OOH(i)=fC44OOH(i)-1; fOH(i)=fOH(i)-1; fC44O2(i)=fC44O2(i)+1; 

i=i+1;
Rnames{i} = 'C44OOH =  + HCOCH2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C44OOH'; 
fC44OOH(i)=fC44OOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC23C4CO3H + OH = H1C23C4CO3';
k(:,i) = 6.55e-12;
Gstr{i,1} = 'HC23C4CO3H'; Gstr{i,2} = 'OH'; 
fHC23C4CO3H(i)=fHC23C4CO3H(i)-1; fOH(i)=fOH(i)-1; fH1C23C4CO3(i)=fH1C23C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HC23C4CO3H = H1C23C4O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC23C4CO3H'; 
fHC23C4CO3H(i)=fHC23C4CO3H(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC23C4CO3H = H1C23C4O2 + OH';
k(:,i) = J35;
Gstr{i,1} = 'HC23C4CO3H'; 
fHC23C4CO3H(i)=fHC23C4CO3H(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4PAN + OH = H1CO23CHO + CO + NO2';
k(:,i) = 2.92e-12;
Gstr{i,1} = 'H1C23C4PAN'; Gstr{i,2} = 'OH'; 
fH1C23C4PAN(i)=fH1C23C4PAN(i)-1; fOH(i)=fOH(i)-1; fH1CO23CHO(i)=fH1CO23CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4PAN = H1C23C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'H1C23C4PAN'; 
fH1C23C4PAN(i)=fH1C23C4PAN(i)-1; fH1C23C4CO3(i)=fH1C23C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4OOH + OH = H1C23C4O2';
k(:,i) = 9.61e-12;
Gstr{i,1} = 'H1C23C4OOH'; Gstr{i,2} = 'OH'; 
fH1C23C4OOH(i)=fH1C23C4OOH(i)-1; fOH(i)=fOH(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4OOH =  + HCHO + CO + HOCH2CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'H1C23C4OOH'; 
fH1C23C4OOH(i)=fH1C23C4OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4OOH =  + HCHO + CO + HOCH2CO3 + OH';
k(:,i) = J35;
Gstr{i,1} = 'H1C23C4OOH'; 
fH1C23C4OOH(i)=fH1C23C4OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CHO + NO3 = CO1M22CO3 + HNO3';
k(:,i) = 2.*KNO3AL.*8.5;
Gstr{i,1} = 'CO1M22CHO'; Gstr{i,2} = 'NO3'; 
fCO1M22CHO(i)=fCO1M22CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CHO + OH = CO1M22CO3';
k(:,i) = 1.32e-10;
Gstr{i,1} = 'CO1M22CHO'; Gstr{i,2} = 'OH'; 
fCO1M22CHO(i)=fCO1M22CHO(i)-1; fOH(i)=fOH(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CHO = IBUTALCO2 + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'CO1M22CHO'; 
fCO1M22CHO(i)=fCO1M22CHO(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO2H + OH = IBUTALCO2';
k(:,i) = 6.67e-11;
Gstr{i,1} = 'CO1M22CO2H'; Gstr{i,2} = 'OH'; 
fCO1M22CO2H(i)=fCO1M22CO2H(i)-1; fOH(i)=fOH(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO2H = IBUTALCO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CO1M22CO2H'; 
fCO1M22CO2H(i)=fCO1M22CO2H(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3H + OH = CO1M22CO3';
k(:,i) = 6.98e-11;
Gstr{i,1} = 'CO1M22CO3H'; Gstr{i,2} = 'OH'; 
fCO1M22CO3H(i)=fCO1M22CO3H(i)-1; fOH(i)=fOH(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3H = IBUTALCO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO1M22CO3H'; 
fCO1M22CO3H(i)=fCO1M22CO3H(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22CO3H = IBUTALCO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'CO1M22CO3H'; 
fCO1M22CO3H(i)=fCO1M22CO3H(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALCO2 + HO2 = IBUTALO2H';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'IBUTALCO2'; Gstr{i,2} = 'HO2'; 
fIBUTALCO2(i)=fIBUTALCO2(i)-1; fHO2(i)=fHO2(i)-1; fIBUTALO2H(i)=fIBUTALO2H(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALCO2 + NO =  + CH3COCH3 + HO2 + CO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'IBUTALCO2'; Gstr{i,2} = 'NO'; 
fIBUTALCO2(i)=fIBUTALCO2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALCO2 + NO3 =  + CH3COCH3 + HO2 + CO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IBUTALCO2'; Gstr{i,2} = 'NO3'; 
fIBUTALCO2(i)=fIBUTALCO2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALCO2 = IBUTALOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'IBUTALCO2'; Gstr{i,2} = 'RO2';
fIBUTALCO2(i)=fIBUTALCO2(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALCO2 =  + CH3COCH3 + HO2 + CO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'IBUTALCO2'; Gstr{i,2} = 'RO2';
fIBUTALCO2(i)=fIBUTALCO2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22PAN + OH = CH3COCH3 + CO + NO2';
k(:,i) = 2.11e-11;
Gstr{i,1} = 'CO1M22PAN'; Gstr{i,2} = 'OH'; 
fCO1M22PAN(i)=fCO1M22PAN(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO1M22PAN = CO1M22CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CO1M22PAN'; 
fCO1M22PAN(i)=fCO1M22PAN(i)-1; fCO1M22CO3(i)=fCO1M22CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C55OOH =  + HCHO + IPRHOCO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C55OOH'; 
fC55OOH(i)=fC55OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C55OOH =  + HCHO + IPRHOCO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C55OOH'; 
fC55OOH(i)=fC55OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C55OOH = C55O2';
k(:,i) = 1.32e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C55OOH'; 
fOH(i)=fOH(i)-1; fC55OOH(i)=fC55OOH(i)-1; fC55O2(i)=fC55O2(i)+1; 

i=i+1;
Rnames{i} = 'C67CO3H = C55O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C67CO3H'; 
fC67CO3H(i)=fC67CO3H(i)-1; fC55O2(i)=fC55O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C67CO3H = C55O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C67CO3H'; 
fC67CO3H(i)=fC67CO3H(i)-1; fC55O2(i)=fC55O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C67CO3H = C67CO3';
k(:,i) = 5.33e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C67CO3H'; 
fOH(i)=fOH(i)-1; fC67CO3H(i)=fC67CO3H(i)-1; fC67CO3(i)=fC67CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6PAN9 = C67CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C6PAN9'; 
fC6PAN9(i)=fC6PAN9(i)-1; fC67CO3(i)=fC67CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C6PAN9 = MIBKHO4CHO + CO + NO2';
k(:,i) = 1.41e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C6PAN9'; 
fOH(i)=fOH(i)-1; fC6PAN9(i)=fC6PAN9(i)-1; fMIBKHO4CHO(i)=fMIBKHO4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C519OOH + OH = HO1CO34C5 + OH';
k(:,i) = 2.74e-11;
Gstr{i,1} = 'C519OOH'; Gstr{i,2} = 'OH'; 
fC519OOH(i)=fC519OOH(i)-1; fOH(i)=fOH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C519OOH =  + CH3CO3 + HOC2H4CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C519OOH'; 
fC519OOH(i)=fC519OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C519OOH = CH3CO3 + HOC2H4CHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C519OOH'; 
fC519OOH(i)=fC519OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13CO4C5 = CH3CO3 + HOC2H4CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HO13CO4C5'; 
fHO13CO4C5(i)=fHO13CO4C5(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13CO4C5 = HO1CO34C5 + HO2';
k(:,i) = 1.51e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13CO4C5'; 
fOH(i)=fOH(i)-1; fHO13CO4C5(i)=fHO13CO4C5(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO34C5 = CH3CO3 + HOC2H4CO3';
k(:,i) = J35;
Gstr{i,1} = 'HO1CO34C5'; 
fHO1CO34C5(i)=fHO1CO34C5(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1CO34C5 = CO23C4CHO + HO2';
k(:,i) = 1.39e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1CO34C5'; 
fOH(i)=fOH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C625OOH + OH = C625O2';
k(:,i) = 3.04e-11;
Gstr{i,1} = 'C625OOH'; Gstr{i,2} = 'OH'; 
fC625OOH(i)=fC625OOH(i)-1; fOH(i)=fOH(i)-1; fC625O2(i)=fC625O2(i)+1; 

i=i+1;
Rnames{i} = 'C625OOH =  + ACETOL + HOC2H4CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C625OOH'; 
fC625OOH(i)=fC625OOH(i)-1; fACETOL(i)=fACETOL(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C625OOH = HOC2H4CO3 + ACETOL + OH';
k(:,i) = J22;
Gstr{i,1} = 'C625OOH'; 
fC625OOH(i)=fC625OOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C625OH + OH = HOC2H4CO3 + ACETOL';
k(:,i) = 2.70e-11;
Gstr{i,1} = 'C625OH'; Gstr{i,2} = 'OH'; 
fC625OH(i)=fC625OH(i)-1; fOH(i)=fOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'C625OH = HOC2H4CO3 + ACETOL + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C625OH'; 
fC625OH(i)=fC625OH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALO2H + OH = IBUTALCO2';
k(:,i) = 2.57e-11;
Gstr{i,1} = 'IBUTALO2H'; Gstr{i,2} = 'OH'; 
fIBUTALO2H(i)=fIBUTALO2H(i)-1; fOH(i)=fOH(i)-1; fIBUTALCO2(i)=fIBUTALCO2(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALO2H = CH3COCH3 + OH + HO2 + CO';
k(:,i) = J17;
Gstr{i,1} = 'IBUTALO2H'; 
fIBUTALO2H(i)=fIBUTALO2H(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALO2H =  + CH3COCH3 + HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'IBUTALO2H'; 
fIBUTALO2H(i)=fIBUTALO2H(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MIBKHO4CHO + NO3 = TBUTOLO2 + CO + CO + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'MIBKHO4CHO'; Gstr{i,2} = 'NO3'; 
fMIBKHO4CHO(i)=fMIBKHO4CHO(i)-1; fNO3(i)=fNO3(i)-1; fTBUTOLO2(i)=fTBUTOLO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MIBKHO4CHO + OH = TBUTOLO2 + CO + CO';
k(:,i) = 1.34e-11;
Gstr{i,1} = 'MIBKHO4CHO'; Gstr{i,2} = 'OH'; 
fMIBKHO4CHO(i)=fMIBKHO4CHO(i)-1; fOH(i)=fOH(i)-1; fTBUTOLO2(i)=fTBUTOLO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MIBKHO4CHO = H2M2C3CO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'MIBKHO4CHO'; 
fMIBKHO4CHO(i)=fMIBKHO4CHO(i)-1; fH2M2C3CO3(i)=fH2M2C3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CHO = HOCH2CH2O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HOC2H4CHO'; 
fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HOC2H4CHO = HOC2H4CO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HOC2H4CHO'; 
fNO3(i)=fNO3(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC2H4CHO = HOC2H4CO3';
k(:,i) = 3.06e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC2H4CHO'; 
fOH(i)=fOH(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLO2 + HO2 = TBUTOLOOH';
k(:,i) = 5.60e-14.*exp(1650./T);
Gstr{i,1} = 'TBUTOLO2'; Gstr{i,2} = 'HO2'; 
fTBUTOLO2(i)=fTBUTOLO2(i)-1; fHO2(i)=fHO2(i)-1; fTBUTOLOOH(i)=fTBUTOLOOH(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLO2 + NO = TBUTOLNO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'TBUTOLO2'; Gstr{i,2} = 'NO'; 
fTBUTOLO2(i)=fTBUTOLO2(i)-1; fNO(i)=fNO(i)-1; fTBUTOLNO3(i)=fTBUTOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLO2 + NO =  + CH3COCH3 + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'TBUTOLO2'; Gstr{i,2} = 'NO'; 
fTBUTOLO2(i)=fTBUTOLO2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLO2 + NO3 = NO2 +  + CH3COCH3 + HCHO + HO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'TBUTOLO2'; Gstr{i,2} = 'NO3'; 
fTBUTOLO2(i)=fTBUTOLO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLO2 = IBUTALOH';
k(:,i) = 2.00e-13.*0.2;
Gstr{i,1} = 'TBUTOLO2'; Gstr{i,2} = 'RO2';
fTBUTOLO2(i)=fTBUTOLO2(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLO2 = IBUTOLOHB';
k(:,i) = 2.00e-13.*0.2;
Gstr{i,1} = 'TBUTOLO2'; Gstr{i,2} = 'RO2';
fTBUTOLO2(i)=fTBUTOLO2(i)-1; fIBUTOLOHB(i)=fIBUTOLOHB(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLO2 =  + CH3COCH3 + HCHO + HO2';
k(:,i) = 2.00e-13.*0.6;
Gstr{i,1} = 'TBUTOLO2'; Gstr{i,2} = 'RO2';
fTBUTOLO2(i)=fTBUTOLO2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H2M2C3CO3 + HO2 = H2M2C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'H2M2C3CO3'; Gstr{i,2} = 'HO2'; 
fH2M2C3CO3(i)=fH2M2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fH2M2C3CO3H(i)=fH2M2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'H2M2C3CO3 + HO2 = TBUTOLO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H2M2C3CO3'; Gstr{i,2} = 'HO2'; 
fH2M2C3CO3(i)=fH2M2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fTBUTOLO2(i)=fTBUTOLO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H2M2C3CO3 + NO = TBUTOLO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H2M2C3CO3'; Gstr{i,2} = 'NO'; 
fH2M2C3CO3(i)=fH2M2C3CO3(i)-1; fNO(i)=fNO(i)-1; fTBUTOLO2(i)=fTBUTOLO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H2M2C3CO3 + NO2 = C5PAN11';
k(:,i) = KFPAN;
Gstr{i,1} = 'H2M2C3CO3'; Gstr{i,2} = 'NO2'; 
fH2M2C3CO3(i)=fH2M2C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN11(i)=fC5PAN11(i)+1; 

i=i+1;
Rnames{i} = 'H2M2C3CO3 + NO3 = TBUTOLO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H2M2C3CO3'; Gstr{i,2} = 'NO3'; 
fH2M2C3CO3(i)=fH2M2C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fTBUTOLO2(i)=fTBUTOLO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H2M2C3CO3 = TBUTOLO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'H2M2C3CO3'; Gstr{i,2} = 'RO2';
fH2M2C3CO3(i)=fH2M2C3CO3(i)-1; fTBUTOLO2(i)=fTBUTOLO2(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLOOH + OH = IBUTALOH + OH';
k(:,i) = 9.98e-12;
Gstr{i,1} = 'TBUTOLOOH'; Gstr{i,2} = 'OH'; 
fTBUTOLOOH(i)=fTBUTOLOOH(i)-1; fOH(i)=fOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLOOH + OH = TBUTOLO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'TBUTOLOOH'; Gstr{i,2} = 'OH'; 
fTBUTOLOOH(i)=fTBUTOLOOH(i)-1; fOH(i)=fOH(i)-1; fTBUTOLO2(i)=fTBUTOLO2(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLOOH =  + CH3COCH3 + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'TBUTOLOOH'; 
fTBUTOLOOH(i)=fTBUTOLOOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TBUTOLNO3 + OH = IBUTALOH + NO2';
k(:,i) = 5.21e-13;
Gstr{i,1} = 'TBUTOLNO3'; Gstr{i,2} = 'OH'; 
fTBUTOLNO3(i)=fTBUTOLNO3(i)-1; fOH(i)=fOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IBUTOLOHB + OH = IBUTALOH + HO2';
k(:,i) = 4.64e-12;
Gstr{i,1} = 'IBUTOLOHB'; Gstr{i,2} = 'OH'; 
fIBUTOLOHB(i)=fIBUTOLOHB(i)-1; fOH(i)=fOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H2M2C3CO3H = TBUTOLO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'H2M2C3CO3H'; 
fH2M2C3CO3H(i)=fH2M2C3CO3H(i)-1; fTBUTOLO2(i)=fTBUTOLO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + H2M2C3CO3H = H2M2C3CO3';
k(:,i) = 4.83e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2M2C3CO3H'; 
fOH(i)=fOH(i)-1; fH2M2C3CO3H(i)=fH2M2C3CO3H(i)-1; fH2M2C3CO3(i)=fH2M2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN11 = H2M2C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN11'; 
fC5PAN11(i)=fC5PAN11(i)-1; fH2M2C3CO3(i)=fH2M2C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN11 = IBUTALOH + CO + NO2';
k(:,i) = 1.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN11'; 
fOH(i)=fOH(i)-1; fC5PAN11(i)=fC5PAN11(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

