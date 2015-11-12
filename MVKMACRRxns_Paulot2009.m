% MVKMACRRxns_Paulot2009.m
% Adjustments to organic nitrate yield for MVK and MACR peroxy radicals
% following
% Paulot et al., Atmos. Chem. Phys., 2009, 9, 1479-1501.
% 120210 GMW

%%%%%MACRNO3, following Paulot (2009) ACP%%%%%
i=i+1;
Rnames{i} = 'MACRO2 + NO =  MACRNO3';
k(:,i) = KRO2NO.*0.15;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO';
fMACRO2(i)=-1; fNO(i)=-1; fMACRNO3(i)=1;

RxnToReplace = 'MACRO2 + NO =  + ACETOL + CO + HO2 + NO2';
kToReplace = KRO2NO.*0.85;
ReplaceRxn

%%%%%HMVKANO3 YIELD%%%%%
RxnToReplace = 'HMVKAO2 + NO = HMVKANO3';
kToReplace = KRO2NO.*0.11;
ReplaceRxn

RxnToReplace = 'HMVKAO2 + NO =  + MGLYOX + HCHO + HO2 + NO2';
kToReplace = KRO2NO.*0.89;
ReplaceRxn


