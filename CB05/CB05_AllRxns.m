% CB05_AllRxns.m
% generated from CB05_AllRxns.txt
% 20140108
% # of species = 53
% # of reactions = 275

SpeciesToAdd = {...
'NO'; 'NO2'; 'NO3'; 'N2O5'; 'HNO3'; 'HONO'; 'PNA'; 'O3P'; 'O1D'; 'O3'; ...
'OH'; 'HO2'; 'H2'; 'CO'; 'CH4'; 'MEO2'; 'FORM'; 'NTR'; 'ALD2'; 'ALDX'; ...
'PAR'; 'ROOH'; 'XO2'; 'MEPX'; 'MEOH'; 'C2O3'; 'CXO3'; 'PAN'; 'PANX'; 'PACD'; ...
'AACD'; 'FACD'; 'XO2N'; 'ROR'; 'KETENE'; 'ETH'; 'OLE'; 'IOLE'; 'ISOP'; 'ISPD'; ...
'MGLY'; 'TOL'; 'CRES'; 'TO2'; 'OPN'; 'CRO'; 'XYL'; 'TERP'; 'RCHO'; 'ETOH'; ...
'ETHA'; 'H2O2'; 'HCO3';};

RO2ToAdd = {...
};

AddSpecies

i=i+1;
Rnames{i} = 'NTR + OH - PAR =';
k(:,i) = 5.9E-13.*exp(-360./T).*0.660    ;
Gstr{i,1} = 'NTR'; Gstr{i,2} = 'OH'; 
fPAR(i)=fPAR(i)-1; 

i=i+1;
Rnames{i} = 'NTR - PAR =';
k(:,i) = JNTR.*0.660              ;
Gstr{i,1} = 'NTR';
fPAR(i)=fPAR(i)-1; 

i=i+1;
Rnames{i} = '   ROR - PAR = ';
k(:,i) = 1.0D15.*exp(-8000./T).*1.1;
Gstr{i,1} = 'ROR';
fPAR(i)=fPAR(i)-1; 

i=i+1;
Rnames{i} = '   ROR - PAR = ALD2';
k(:,i) = 1.0D15.*exp(-8000./T).*1.0.*0.55;
Gstr{i,1} = 'ROR'; 
fPAR(i)=fPAR(i)-1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'ROR - PAR = ALDX';
k(:,i) = 1.0D15.*exp(-8000./T).*1.0.*0.45;
Gstr{i,1} = 'ROR';
fPAR(i)=fPAR(i)-1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = '   OLE + OH - PAR =  ';
k(:,i) = 3.2e-11.*0.7;
Gstr{i,1} = 'OLE'; Gstr{i,2} = 'OH'; 
fPAR(i)=fPAR(i)-1; 

i=i+1;
Rnames{i} = 'OLE + O3 - PAR = ';
k(:,i) = 6.5e-15.*exp(-1900./T);
Gstr{i,1} = 'OLE'; Gstr{i,2} = 'O3'; 
fPAR(i)=fPAR(i)-1; 

i=i+1;
Rnames{i} = 'OLE + NO3 - PAR = ';
k(:,i) = 7e-13.*exp(-2160./T);
Gstr{i,1} = 'OLE'; Gstr{i,2} = 'NO3'; 
fPAR(i)=fPAR(i)-1; 

i=i+1;
Rnames{i} = 'NO2 = NO + O3P ';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = 'O3P = O3 ';
k(:,i) = 6.00e-34.*((T./300).^-2.4).*M.^2.*0.21   ;
Gstr{i,1} = 'O3P'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + NO = NO2';
k(:,i) = 3.0e-12.*exp(-1500./T)    ;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3P + NO2 = NO';
k(:,i) = 5.1e-12.*exp(210./T)       ;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'O3P + NO2 = NO3 ';
k(:,i) = K_O3P_NO2            ;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3P + NO =  NO2 ';
k(:,i) = K_O3P_NO            ;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO'; 
fO3P(i)=fO3P(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O3 =NO3';
k(:,i) = 1.2E-13.*exp(-2450./T)        ;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 = NO ';
k(:,i) = JNO3_NO               ;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 = NO2 + O3P';
k(:,i) = JNO3_NO2               ;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NO = NO2 + NO2 ';
k(:,i) = 1.5e-11.*exp(170./T)       ;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NO2= NO + NO2';
k(:,i) = 4.5e-14.*exp(-1260./T)   ;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO2'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NO2= N2O5 ';
k(:,i) = K_NO3_NO2               ;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO2'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NO3 + NO2 ';
k(:,i) = K_N2O5  ;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NO3 + NO2';
k(:,i) = JN2O5   ;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = HNO3 + HNO3';
k(:,i) = 2.5e-22.*H2O       ;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = HNO3 + HNO3';
k(:,i) = 1.8e-39.*H2O.^2       ;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + OH = NO2 + HO2';
k(:,i) = 2.2e-11       ;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OH'; 
fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 = OH + NO2';
k(:,i) = JHNO3                  ;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HO2 = HNO3';
k(:,i) = 3.5e-12       ;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO2'; 
fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NO3 = NO2 + NO2';
k(:,i) = 8.5e-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + O3P = NO2';
k(:,i) = 1.0E-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'O3P'; 
fNO3(i)=fNO3(i)-1; fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + O3 = NO2';
k(:,i) = 1.0E-17;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'O3'; 
fNO3(i)=fNO3(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 = O3P';
k(:,i) = JO3P           ;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = 'O3 = O1D';
k(:,i) = JO1D           ;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O3P';
k(:,i) = 3.3e-11.*exp(55./T).*0.21.*M   ;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O3P';
k(:,i) = 2.15e-11.*exp(110./T).*0.78.*M   ;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = 'O1D + H2 = OH + HO2';
k(:,i) = 1.1E-10   ;
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'H2'; 
fO1D(i)=fO1D(i)-1; fH2(i)=fH2(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O1D = OH + OH ';
k(:,i) = 1.63e-10.*exp(60./T).*H2O   ;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OH = HO2 ';
k(:,i) = 1.7e-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HO2 = OH ';
k(:,i) = 1.0e-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2'; 
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 3.3E-39.*exp(530./T).*0.21.*M  ;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO2 = HONO + HONO ';
k(:,i) = 5.0e-40.*H2O       ;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO2'; 
fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)-1; fHONO(i)=fHONO(i)+1; fHONO(i)=fHONO(i)+1; 

i=i+1;
Rnames{i} = 'HONO + HONO = NO + NO2 ';
k(:,i) = 1.0e-20       ;
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fHONO(i)=fHONO(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NO = HONO ';
k(:,i) = K_OH_NO       ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO'; 
fOH(i)=fOH(i)-1; fNO(i)=fNO(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1;
Rnames{i} = 'HONO = OH + NO ';
k(:,i) = JHONO       ;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'OH + HONO = NO2 ';
k(:,i) = 1.8e-11.*exp(-390./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO'; 
fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2+ NO = OH + NO2 ';
k(:,i) = 3.5e-12.*exp(250./T)   ;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2+ NO2 = PNA ';
k(:,i) = K_HO2_NO2           ;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fPNA(i)=fPNA(i)+1; 

i=i+1;
Rnames{i} = 'PNA = HO2 + NO2';
k(:,i) = K_PNA  ;
Gstr{i,1} = 'PNA'; 
fPNA(i)=fPNA(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PNA = NO2';
k(:,i) = 1.3e-12.*exp(380./T)   ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PNA'; 
fOH(i)=fOH(i)-1; fPNA(i)=fPNA(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PNA = HO2 + NO2';
k(:,i) = JHO2NO2.*0.610    ;
Gstr{i,1} = 'PNA'; 
fPNA(i)=fPNA(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PNA = OH + NO3';
k(:,i) = JHO2NO2.*0.390    ;
Gstr{i,1} = 'PNA'; 
fPNA(i)=fPNA(i)-1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + NO2 = HNO3';
k(:,i) = K_OH_NO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HNO3 = NO3 + HO2';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = (3.5e-13.*exp(430./T)+1.7e-33.*exp(1000./T).*M);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = ' HO2 + HO2 = H2O2';
k(:,i) = (4.9e-34.*exp(2630./T)+2.38e-54.*exp(3200./T).*M).*H2O;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 = OH + OH ';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + H2O2 = HO2';
k(:,i) = 1.8e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2'; 
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2 = ';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1; 

i=i+1;
Rnames{i} = 'OH + H2 = HO2';
k(:,i) = 2.8E-12.*exp(-1800./T) ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + O3P = HO2';
k(:,i) = 2.2E-11.*exp(120./T)   ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O3P'; 
fOH(i)=fOH(i)-1; fO3P(i)=fO3P(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + OH = O3P';
k(:,i) = 1.8E-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH'; 
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = 'OH + OH = H2O2';
k(:,i) = K_OH_OH  ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH'; 
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + O3P = OH';
k(:,i) = 3.0E-11.*exp(200./T)   ;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3P'; 
fHO2(i)=fHO2(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + O3P = OH + HO2';
k(:,i) = 1.4E-12.*exp(-2000./T)   ;
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'O3P'; 
fH2O2(i)=fH2O2(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO = HO2 ';
k(:,i) = K_OH_CO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH4 = MEO2 + FORM + HO2 ';
k(:,i) = 2.45e-12.*exp(-1775./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4'; 
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fMEO2(i)=fMEO2(i)+1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NTR + OH = HNO3 + HO2 + FORM + ALD2 + ALDX';
k(:,i) = 5.9E-13.*exp(-360./T).*0.330;
Gstr{i,1} = 'NTR'; Gstr{i,2} = 'OH'; 
fNTR(i)=fNTR(i)-1; fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fFORM(i)=fFORM(i)+1; fALD2(i)=fALD2(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'NTR + OH = HNO3 + HO2';
k(:,i) = 5.9E-13.*exp(-360./T).*0.670    ;
Gstr{i,1} = 'NTR'; Gstr{i,2} = 'OH'; 
fNTR(i)=fNTR(i)-1; fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NTR = NO2 + HO2 + FORM + ALD2 + ALDX';
k(:,i) = JNTR.*0.330;
Gstr{i,1} = 'NTR'; 
fNTR(i)=fNTR(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fFORM(i)=fFORM(i)+1; fALD2(i)=fALD2(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'NTR = NO2 + HO2';
k(:,i) = JNTR.*0.670;
Gstr{i,1} = 'NTR'; 
fNTR(i)=fNTR(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ROOH + OH = XO2 + ALD2';
k(:,i) = 3.01E-12.*exp(190./T).*0.500  ;
Gstr{i,1} = 'ROOH'; Gstr{i,2} = 'OH'; 
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'ROOH + OH = XO2 + ALDX';
k(:,i) = 3.01E-12.*exp(190./T).*0.500  ;
Gstr{i,1} = 'ROOH'; Gstr{i,2} = 'OH'; 
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'ROOH = OH + HO2 + ALD2';
k(:,i) = JCOOH.*0.500   ;
Gstr{i,1} = 'ROOH'; 
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'ROOH = OH + HO2 + ALDX';
k(:,i) = JCOOH.*0.500   ;
Gstr{i,1} = 'ROOH'; 
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 + NO = FORM + HO2 + NO2';
k(:,i) = 2.8E-12.*exp(300./T)      ;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'NO'; 
fMEO2(i)=fMEO2(i)-1; fNO(i)=fNO(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 + HO2 = MEPX';
k(:,i) = 4.1E-13.*exp(750./T)      ;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'HO2'; 
fMEO2(i)=fMEO2(i)-1; fHO2(i)=fHO2(i)-1; fMEPX(i)=fMEPX(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 + MEO2 = FORM + FORM + HO2 + HO2';
k(:,i) = 9.5E-14.*exp(390./T).*0.37;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'MEO2'; 
fMEO2(i)=fMEO2(i)-1; fMEO2(i)=fMEO2(i)-1; fFORM(i)=fFORM(i)+1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 + MEO2 = FORM + MEOH';
k(:,i) = 9.5E-14.*exp(390./T).*0.63;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'MEO2'; 
fMEO2(i)=fMEO2(i)-1; fMEO2(i)=fMEO2(i)-1; fFORM(i)=fFORM(i)+1; fMEOH(i)=fMEOH(i)+1; 

i=i+1;
Rnames{i} = 'MEPX + OH = MEO2';
k(:,i) = 3.8E-12.*exp(200./T).*0.700      ;
Gstr{i,1} = 'MEPX'; Gstr{i,2} = 'OH'; 
fMEPX(i)=fMEPX(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'MEPX + OH = XO2 + HO2';
k(:,i) = 3.8E-12.*exp(200./T).*0.300      ;
Gstr{i,1} = 'MEPX'; Gstr{i,2} = 'OH'; 
fMEPX(i)=fMEPX(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEPX = FORM + HO2 + OH';
k(:,i) = JMEPX;
Gstr{i,1} = 'MEPX'; 
fMEPX(i)=fMEPX(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEOH + OH = FORM + HO2';
k(:,i) = 2.9E-12.*exp(-345./T);
Gstr{i,1} = 'MEOH'; Gstr{i,2} = 'OH'; 
fMEOH(i)=fMEOH(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ALD2 + O3P = C2O3 + OH';
k(:,i) = 1.8E-11.*exp(-1100./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'O3P'; 
fALD2(i)=fALD2(i)-1; fO3P(i)=fO3P(i)-1; fC2O3(i)=fC2O3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ALD2 + OH = C2O3';
k(:,i) = 5.6E-12.*exp(270./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'OH'; 
fALD2(i)=fALD2(i)-1; fOH(i)=fOH(i)-1; fC2O3(i)=fC2O3(i)+1; 

i=i+1;
Rnames{i} = 'ALD2 + NO3 = C2O3 + HNO3';
k(:,i) = 1.4E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'NO3'; 
fALD2(i)=fALD2(i)-1; fNO3(i)=fNO3(i)-1; fC2O3(i)=fC2O3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ALD2 = MEO2 + CO + HO2';
k(:,i) = JCCHO_R;
Gstr{i,1} = 'ALD2'; 
fALD2(i)=fALD2(i)-1; fMEO2(i)=fMEO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ALDX + O3P = CXO3 + OH';
k(:,i) = 1.3E-11.*exp(-870./T);
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'O3P'; 
fALDX(i)=fALDX(i)-1; fO3P(i)=fO3P(i)-1; fCXO3(i)=fCXO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ALDX + OH = CXO3';
k(:,i) = 4.9E-12.*exp(405./T);
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'OH'; 
fALDX(i)=fALDX(i)-1; fOH(i)=fOH(i)-1; fCXO3(i)=fCXO3(i)+1; 

i=i+1;
Rnames{i} = 'ALDX + NO3 = CXO3 + HNO3';
k(:,i) = 6.5E-15;
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'NO3'; 
fALDX(i)=fALDX(i)-1; fNO3(i)=fNO3(i)-1; fCXO3(i)=fCXO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ALDX = MEO2 + CO + HO2';
k(:,i) = JC2CHO;
Gstr{i,1} = 'ALDX'; 
fALDX(i)=fALDX(i)-1; fMEO2(i)=fMEO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + NO = ALD2+NO2+HO2+XO2';
k(:,i) = 6.7E-12.*exp(340./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'NO'; 
fCXO3(i)=fCXO3(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + NO2 = PANX';
k(:,i) = K_CXO3_NO2;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'NO2'; 
fCXO3(i)=fCXO3(i)-1; fNO2(i)=fNO2(i)-1; fPANX(i)=fPANX(i)+1; 

i=i+1;
Rnames{i} = 'PANX = CXO3 + NO2';
k(:,i) = K_PANX;
Gstr{i,1} = 'PANX'; 
fPANX(i)=fPANX(i)-1; fCXO3(i)=fCXO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PANX = CXO3 + NO2';
k(:,i) = JPAN;
Gstr{i,1} = 'PANX'; 
fPANX(i)=fPANX(i)-1; fCXO3(i)=fCXO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PANX + OH = ALD2 + NO2';
k(:,i) = 3.0E-13 ;
Gstr{i,1} = 'PANX'; Gstr{i,2} = 'OH'; 
fPANX(i)=fPANX(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + HO2 = PACD';
k(:,i) = 4.3E-13.*exp(1040./T).*0.800;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'HO2'; 
fCXO3(i)=fCXO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + HO2 = AACD + O3';
k(:,i) = 4.3E-13.*exp(1040./T).*0.200;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'HO2'; 
fCXO3(i)=fCXO3(i)-1; fHO2(i)=fHO2(i)-1; fAACD(i)=fAACD(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + MEO2 = ALD2 + XO2 + HO2';
k(:,i) = 2.0E-12.*exp(500./T).*0.900;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'MEO2'; 
fCXO3(i)=fCXO3(i)-1; fMEO2(i)=fMEO2(i)-1; fALD2(i)=fALD2(i)+1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + MEO2 = AACD + FORM + HO2';
k(:,i) = 2.0E-12.*exp(500./T).*0.100;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'MEO2'; 
fCXO3(i)=fCXO3(i)-1; fMEO2(i)=fMEO2(i)-1; fAACD(i)=fAACD(i)+1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + XO2 = ALD2';
k(:,i) = 4.4E-13.*exp(1070./T).*0.900;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'XO2'; 
fCXO3(i)=fCXO3(i)-1; fXO2(i)=fXO2(i)-1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + XO2 = AACD';
k(:,i) = 4.4E-13.*exp(1070./T).*0.100;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'XO2'; 
fCXO3(i)=fCXO3(i)-1; fXO2(i)=fXO2(i)-1; fAACD(i)=fAACD(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + CXO3 = ALD2 + ALD2 + XO2 + XO2 + HO2 + HO2';
k(:,i) = 2.9E-12.*exp(500./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'CXO3'; 
fCXO3(i)=fCXO3(i)-1; fCXO3(i)=fCXO3(i)-1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; fXO2(i)=fXO2(i)+1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CXO3 + C2O3 = MEO2 + XO2 + HO2 + ALD2';
k(:,i) = 2.9E-12.*exp(500./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'C2O3'; 
fCXO3(i)=fCXO3(i)-1; fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)+1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'FORM = HO2 + HO2 + CO ';
k(:,i) = JHCHO_HO2       ;
Gstr{i,1} = 'FORM'; 
fFORM(i)=fFORM(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'FORM = CO + H2 ';
k(:,i) = JHCHO_H2       ;
Gstr{i,1} = 'FORM'; 
fFORM(i)=fFORM(i)-1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'FORM + O3P = OH  + HO2 + CO ';
k(:,i) = 3.4e-11.*exp(-1600./T)   ;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'O3P'; 
fFORM(i)=fFORM(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'FORM + OH = HO2 + CO ';
k(:,i) = 5.50E-12.*exp(125./T)          ;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'OH'; 
fFORM(i)=fFORM(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'FORM + NO3 = HNO3+ HO2 + CO ';
k(:,i) = 5.8E-16   ;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'NO3'; 
fFORM(i)=fFORM(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'FORM + HO2 = HCO3';
k(:,i) = 9.7E-15.*exp(625./T)           ;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'HO2'; 
fFORM(i)=fFORM(i)-1; fHO2(i)=fHO2(i)-1; fHCO3(i)=fHCO3(i)+1; 

i=i+1;
Rnames{i} = 'HCO3 = FORM + HO2';
k(:,i) = 2.4E-12.*exp(-7000./T)        ;
Gstr{i,1} = 'HCO3'; 
fHCO3(i)=fHCO3(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCO3 + NO = FACD + NO2 + HO2';
k(:,i) = 5.6E-12    ;
Gstr{i,1} = 'HCO3'; Gstr{i,2} = 'NO'; 
fHCO3(i)=fHCO3(i)-1; fNO(i)=fNO(i)-1; fFACD(i)=fFACD(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCO3 + HO2 = MEPX';
k(:,i) = 5.6E-15.*exp(2300./T)         ;
Gstr{i,1} = 'HCO3'; Gstr{i,2} = 'HO2'; 
fHCO3(i)=fHCO3(i)-1; fHO2(i)=fHO2(i)-1; fMEPX(i)=fMEPX(i)+1; 

i=i+1;
Rnames{i} = 'FACD + OH = HO2';
k(:,i) = 4.0E-13 ;
Gstr{i,1} = 'FACD'; Gstr{i,2} = 'OH'; 
fFACD(i)=fFACD(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2O3 + NO = NO2 + MEO2';
k(:,i) = 8.1E-12.*exp(270./T)  ;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'NO'; 
fC2O3(i)=fC2O3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'C2O3 + NO2 = PAN ';
k(:,i) = K_C2O3_NO2;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'NO2'; 
fC2O3(i)=fC2O3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i} = 'PAN = C2O3 + NO2 ';
k(:,i) = K_PAN            ;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fC2O3(i)=fC2O3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PAN = C2O3 + NO2';
k(:,i) = JPAN  ;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fC2O3(i)=fC2O3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = '   C2O3 + HO2  = PACD ';
k(:,i) = 4.3e-13.*exp(1040./T).*0.80;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'HO2'; 
fC2O3(i)=fC2O3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+1; 

i=i+1;
Rnames{i} = '   C2O3 + HO2  = O3 + AACD ';
k(:,i) = 4.3e-13.*exp(1040./T).*0.20;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'HO2'; 
fC2O3(i)=fC2O3(i)-1; fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)+1; fAACD(i)=fAACD(i)+1; 

i=i+1;
Rnames{i} = 'C2O3 + MEO2 = FORM + MEO2 + HO2';
k(:,i) = 2.0E-12.*exp(500./T).*0.900;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'MEO2'; 
fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)-1; fFORM(i)=fFORM(i)+1; fMEO2(i)=fMEO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2O3 + MEO2 = FORM + AACD';
k(:,i) = 2.0E-12.*exp(500./T).*0.100;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'MEO2'; 
fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)-1; fFORM(i)=fFORM(i)+1; fAACD(i)=fAACD(i)+1; 

i=i+1;
Rnames{i} = 'C2O3 + XO2 = MEO2';
k(:,i) = 4.4E-13.*exp(1070./T).*0.900    ;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'XO2'; 
fC2O3(i)=fC2O3(i)-1; fXO2(i)=fXO2(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'C2O3 + XO2 = AACD';
k(:,i) = 4.4E-13.*exp(1070./T).*0.100    ;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'XO2'; 
fC2O3(i)=fC2O3(i)-1; fXO2(i)=fXO2(i)-1; fAACD(i)=fAACD(i)+1; 

i=i+1;
Rnames{i} = 'C2O3+C2O3 = MEO2 + MEO2';
k(:,i) = 2.9e-12.*exp(500./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'C2O3'; 
fC2O3(i)=fC2O3(i)-1; fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'PACD + OH = C2O3';
k(:,i) = 4.0E-13.*exp(200./T)           ;
Gstr{i,1} = 'PACD'; Gstr{i,2} = 'OH'; 
fPACD(i)=fPACD(i)-1; fOH(i)=fOH(i)-1; fC2O3(i)=fC2O3(i)+1; 

i=i+1;
Rnames{i} = 'PACD = MEO2 + OH';
k(:,i) = JCOOH         ;
Gstr{i,1} = 'PACD'; 
fPACD(i)=fPACD(i)-1; fMEO2(i)=fMEO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'AACD + OH = MEO2';
k(:,i) = 4.0E-13.*exp(200./T)           ;
Gstr{i,1} = 'AACD'; Gstr{i,2} = 'OH'; 
fAACD(i)=fAACD(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = '   OH + PAR = HO2 + XO2 ';
k(:,i) = 0.11.*8.1e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAR'; 
fOH(i)=fOH(i)-1; fPAR(i)=fPAR(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = '   OH + PAR = XO2N ';
k(:,i) = 0.13.*8.1e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAR'; 
fOH(i)=fOH(i)-1; fPAR(i)=fPAR(i)-1; fXO2N(i)=fXO2N(i)+1; 

i=i+1;
Rnames{i} = '   OH + PAR = XO2 + ROR ';
k(:,i) = 0.76.*8.1e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAR'; 
fOH(i)=fOH(i)-1; fPAR(i)=fPAR(i)-1; fXO2(i)=fXO2(i)+1; fROR(i)=fROR(i)+1; 

i=i+1;
Rnames{i} = '   OH + PAR = ALD2 + OH';
k(:,i) = 0.11.*8.1e-13.*0.55;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAR'; 
fOH(i)=fOH(i)-1; fPAR(i)=fPAR(i)-1; fALD2(i)=fALD2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = '   OH + PAR = ALDX + OH';
k(:,i) = 0.11.*8.1e-13.*0.45;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAR'; 
fOH(i)=fOH(i)-1; fPAR(i)=fPAR(i)-1; fALDX(i)=fALDX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = '   ROR = XO2 + ROR';
k(:,i) = 1.0D15.*exp(-8000./T).*0.02;
Gstr{i,1} = 'ROR'; 
fROR(i)=fROR(i)-1; fXO2(i)=fXO2(i)+1; fROR(i)=fROR(i)+1; 

i=i+1;
Rnames{i} = '   ROR = XO2N ';
k(:,i) = 1.0D15.*exp(-8000./T).*0.04;
Gstr{i,1} = 'ROR'; 
fROR(i)=fROR(i)-1; fXO2N(i)=fXO2N(i)+1; 

i=i+1;
Rnames{i} = '   ROR = XO2 + HO2 ';
k(:,i) = 1.0D15.*exp(-8000./T).*0.94;
Gstr{i,1} = 'ROR'; 
fROR(i)=fROR(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = '       ROR = HO2 + KETENE ';
k(:,i) = 1.6D3;
Gstr{i,1} = 'ROR'; 
fROR(i)=fROR(i)-1; fHO2(i)=fHO2(i)+1; fKETENE(i)=fKETENE(i)+1; 

i=i+1;
Rnames{i} = '   ROR + NO2 = NTR ';
k(:,i) = 1.5e-11;
Gstr{i,1} = 'ROR'; Gstr{i,2} = 'NO2'; 
fROR(i)=fROR(i)-1; fNO2(i)=fNO2(i)-1; fNTR(i)=fNTR(i)+1; 

i=i+1;
Rnames{i} = 'O3P + ETH = FORM + XO2 + CO + HO2 + HO2';
k(:,i) = 1.04e-11.*exp(-792./T).*0.70;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'ETH'; 
fO3P(i)=fO3P(i)-1; fETH(i)=fETH(i)-1; fFORM(i)=fFORM(i)+1; fXO2(i)=fXO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O3P + ETH = FORM + OH + CO + HO2';
k(:,i) = 1.04e-11.*exp(-792./T).*0.30;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'ETH'; 
fO3P(i)=fO3P(i)-1; fETH(i)=fETH(i)-1; fFORM(i)=fFORM(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ETH = XO2 +  HO2 + ALDX ';
k(:,i) = K_OH_ETH.*0.02;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETH'; 
fOH(i)=fOH(i)-1; fETH(i)=fETH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'OH + ETH = XO2 +  HO2 + ALDX ';
k(:,i) = K_OH_ETH.*0.20;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETH'; 
fOH(i)=fOH(i)-1; fETH(i)=fETH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'OH + ETH = XO2 + FORM + FORM + HO2 ';
k(:,i) = K_OH_ETH.*0.78;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETH'; 
fOH(i)=fOH(i)-1; fETH(i)=fETH(i)-1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ETH = OH + HO2 + FORM + CO';
k(:,i) = 1.2e-14.*exp(-2630./T).*0.130;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ETH'; 
fO3(i)=fO3(i)-1; fETH(i)=fETH(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fFORM(i)=fFORM(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ETH = FORM + CO';
k(:,i) = 1.2e-14.*exp(-2630./T).*0.500;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ETH'; 
fO3(i)=fO3(i)-1; fETH(i)=fETH(i)-1; fFORM(i)=fFORM(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ETH = FORM + FACD ';
k(:,i) = 1.2e-14.*exp(-2630./T).*0.370;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ETH'; 
fO3(i)=fO3(i)-1; fETH(i)=fETH(i)-1; fFORM(i)=fFORM(i)+1; fFACD(i)=fFACD(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + ETH = NO2 + XO2 + FORM + FORM';
k(:,i) = 3.3E-12.*exp(-2880./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'ETH'; 
fNO3(i)=fNO3(i)-1; fETH(i)=fETH(i)-1; fNO2(i)=fNO2(i)+1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fFORM(i)=fFORM(i)+1; 

i=i+1;
Rnames{i} = 'O3P + OLE = ALD2 + XO2 + CO + FORM + PAR';
k(:,i) = 1.0e-11.*exp(-280./T).*0.200;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'OLE'; 
fO3P(i)=fO3P(i)-1; fOLE(i)=fOLE(i)-1; fALD2(i)=fALD2(i)+1; fXO2(i)=fXO2(i)+1; fCO(i)=fCO(i)+1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'O3P + OLE = XO2N ';
k(:,i) = 1.0e-11.*exp(-280./T).*0.010;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'OLE'; 
fO3P(i)=fO3P(i)-1; fOLE(i)=fOLE(i)-1; fXO2N(i)=fXO2N(i)+1; 

i=i+1;
Rnames{i} = '    O3P + OLE = ALDX + HO2';
k(:,i) = 1.0e-11.*exp(-280./T).*0.300;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'OLE'; 
fO3P(i)=fO3P(i)-1; fOLE(i)=fOLE(i)-1; fALDX(i)=fALDX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = '   O3P + OLE = OH ';
k(:,i) = 1.0e-11.*exp(-280./T).*0.100;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'OLE'; 
fO3P(i)=fO3P(i)-1; fOLE(i)=fOLE(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = '   O3P + OLE =';
k(:,i) = 1.0e-11.*exp(-280./T).*0.390;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'OLE'; 
fO3P(i)=fO3P(i)-1; fOLE(i)=fOLE(i)-1; 

i=i+1;
Rnames{i} = '   OH + OLE = FORM + ALDX + XO2 + HO2';
k(:,i) = 3.2e-11.*0.60;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OLE'; 
fOH(i)=fOH(i)-1; fOLE(i)=fOLE(i)-1; fFORM(i)=fFORM(i)+1; fALDX(i)=fALDX(i)+1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = '   OH + OLE = FORM + ALD2 + XO2 + HO2';
k(:,i) = 3.2e-11.*0.20;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OLE'; 
fOH(i)=fOH(i)-1; fOLE(i)=fOLE(i)-1; fFORM(i)=fFORM(i)+1; fALD2(i)=fALD2(i)+1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = '   OH + OLE = ALDX + HO2 + HO2 + ALD2';
k(:,i) = 3.2e-11.*0.02;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OLE'; 
fOH(i)=fOH(i)-1; fOLE(i)=fOLE(i)-1; fALDX(i)=fALDX(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = '   OH + OLE = ALD2 + HO2';
k(:,i) = 3.2e-11.*0.11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OLE'; 
fOH(i)=fOH(i)-1; fOLE(i)=fOLE(i)-1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = '   OH + OLE = ';
k(:,i) = 3.2e-11.*0.07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OLE'; 
fOH(i)=fOH(i)-1; fOLE(i)=fOLE(i)-1; 

i=i+1;
Rnames{i} = 'O3 + OLE = FORM + FORM + ALDX + XO2 + CO + HO2 + HO2';
k(:,i) = 6.5e-15.*exp(-1900./T).*0.22;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OLE'; 
fO3(i)=fO3(i)-1; fOLE(i)=fOLE(i)-1; fFORM(i)=fFORM(i)+1; fFORM(i)=fFORM(i)+1; fALDX(i)=fALDX(i)+1; fXO2(i)=fXO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OLE = CO';
k(:,i) = 6.5e-15.*exp(-1900./T).*0.11;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OLE'; 
fO3(i)=fO3(i)-1; fOLE(i)=fOLE(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OLE = ALDX + OH';
k(:,i) = 6.5e-15.*exp(-1900./T).*0.10;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OLE'; 
fO3(i)=fO3(i)-1; fOLE(i)=fOLE(i)-1; fALDX(i)=fALDX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OLE = ALD2';
k(:,i) = 6.5e-15.*exp(-1900./T).*0.18;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OLE'; 
fO3(i)=fO3(i)-1; fOLE(i)=fOLE(i)-1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OLE = FORM';
k(:,i) = 6.5e-15.*exp(-1900./T).*0.30;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OLE'; 
fO3(i)=fO3(i)-1; fOLE(i)=fOLE(i)-1; fFORM(i)=fFORM(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OLE = ';
k(:,i) = 6.5e-15.*exp(-1900./T).*0.09;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OLE'; 
fO3(i)=fO3(i)-1; fOLE(i)=fOLE(i)-1; 

i=i+1;
Rnames{i} = 'NO3 + OLE = XO2 + FORM + ALDX + NO2 ';
k(:,i) = 7e-13.*exp(-2160./T).*0.56;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OLE'; 
fNO3(i)=fNO3(i)-1; fOLE(i)=fOLE(i)-1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fALDX(i)=fALDX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + OLE = XO2 +FORM + ALD2 + NO2 ';
k(:,i) = 7e-13.*exp(-2160./T).*0.35;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OLE'; 
fNO3(i)=fNO3(i)-1; fOLE(i)=fOLE(i)-1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + OLE = XO2N + NO2 + FORM';
k(:,i) = 7e-13.*exp(-2160./T).*0.09;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OLE'; 
fNO3(i)=fNO3(i)-1; fOLE(i)=fOLE(i)-1; fXO2N(i)=fXO2N(i)+1; fNO2(i)=fNO2(i)+1; fFORM(i)=fFORM(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + O3P = ALD2 + ALD2';
k(:,i) = 2.3E-11.*0.240        ;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3P'; 
fIOLE(i)=fIOLE(i)-1; fO3P(i)=fO3P(i)-1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + O3P = ALD2 + ALDX';
k(:,i) = 2.3E-11.*0.660        ;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3P'; 
fIOLE(i)=fIOLE(i)-1; fO3P(i)=fO3P(i)-1; fALD2(i)=fALD2(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + O3P = ALD2 + HO2 + XO2 + CO + PAR';
k(:,i) = 2.3E-11.*0.100        ;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3P'; 
fIOLE(i)=fIOLE(i)-1; fO3P(i)=fO3P(i)-1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; fCO(i)=fCO(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + OH = ALD2 + ALD2 + HO2 + XO2';
k(:,i) = 1.0E-11.*exp(550./T).*0.300;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'OH'; 
fIOLE(i)=fIOLE(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + OH = ALD2 + ALDX + HO2 + XO2';
k(:,i) = 1.0E-11.*exp(550./T).*0.700;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'OH'; 
fIOLE(i)=fIOLE(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+1; fALDX(i)=fALDX(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + O3 = FORM + CO + ALDX';
k(:,i) = 8.4E-15.*exp(-1100./T).*0.250;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3'; 
fIOLE(i)=fIOLE(i)-1; fO3(i)=fO3(i)-1; fFORM(i)=fFORM(i)+1; fCO(i)=fCO(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + O3 = ALDX';
k(:,i) = 8.4E-15.*exp(-1100./T).*0.100;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3'; 
fIOLE(i)=fIOLE(i)-1; fO3(i)=fO3(i)-1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + O3 = O3P + OH + HO2 + ALD2';
k(:,i) = 8.4E-15.*exp(-1100./T).*0.500;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3'; 
fIOLE(i)=fIOLE(i)-1; fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + O3 = ALD2';
k(:,i) = 8.4E-15.*exp(-1100./T).*0.150;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3'; 
fIOLE(i)=fIOLE(i)-1; fO3(i)=fO3(i)-1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + NO3 = ALD2 + ALD2 + HO2 + NO2';
k(:,i) = 9.6E-13.*exp(270./T).*0.18;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'NO3'; 
fIOLE(i)=fIOLE(i)-1; fNO3(i)=fNO3(i)-1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + NO3 = ALDX + ALD2 + HO2 + NO2';
k(:,i) = 9.6E-13.*exp(270./T).*0.64;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'NO3'; 
fIOLE(i)=fIOLE(i)-1; fNO3(i)=fNO3(i)-1; fALDX(i)=fALDX(i)+1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IOLE + NO3 = ALD2 + HO2 + NO2';
k(:,i) = 9.6E-13.*exp(270./T).*0.12;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'NO3'; 
fIOLE(i)=fIOLE(i)-1; fNO3(i)=fNO3(i)-1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3P + ISOP = HO2 + XO2 + CXO3 + PAR + FORM + FORM ';
k(:,i) = 3.60e-11.*0.25;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'ISOP'; 
fO3P(i)=fO3P(i)-1; fISOP(i)=fISOP(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; fCXO3(i)=fCXO3(i)+1; fPAR(i)=fPAR(i)+1; fFORM(i)=fFORM(i)+1; fFORM(i)=fFORM(i)+1; 

i=i+1;
Rnames{i} = 'O3P + ISOP = ISPD ';
k(:,i) = 3.60e-11.*0.75;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'ISOP'; 
fO3P(i)=fO3P(i)-1; fISOP(i)=fISOP(i)-1; fISPD(i)=fISPD(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOP = ';
k(:,i) = 2.54e-11.*exp(407.6./T).*0.009;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOP'; 
fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)-1; 

i=i+1;
Rnames{i} = 'OH + ISOP = XO2 ';
k(:,i) = 2.54e-11.*exp(407.6./T).*0.079;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOP'; 
fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOP = XO2 + FORM + HO2 + XO2N + ISPD';
k(:,i) = 2.54e-11.*exp(407.6./T).*0.088;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOP'; 
fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fXO2N(i)=fXO2N(i)+1; fISPD(i)=fISPD(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOP = XO2 + HO2  +  ISPD ';
k(:,i) = 2.54e-11.*exp(407.6./T).*0.283;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOP'; 
fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fISPD(i)=fISPD(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOP = XO2 + FORM + HO2 + ISPD ';
k(:,i) = 2.54e-11.*exp(407.6./T).*0.541;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOP'; 
fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fISPD(i)=fISPD(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOP = HO2 + CO + OH ';
k(:,i) = 7.86e-15.*exp(-1912./T).*0.066;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP'; 
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOP = FORM + ALDX + PAR';
k(:,i) = 7.86e-15.*exp(-1912./T).*0.150;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP'; 
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fFORM(i)=fFORM(i)+1; fALDX(i)=fALDX(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOP = FORM + CXO3 + PAR + XO2 + OH + ISPD + ISPD';
k(:,i) = 7.86e-15.*exp(-1912./T).*0.200;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP'; 
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fFORM(i)=fFORM(i)+1; fCXO3(i)=fCXO3(i)+1; fPAR(i)=fPAR(i)+1; fXO2(i)=fXO2(i)+1; fOH(i)=fOH(i)+1; fISPD(i)=fISPD(i)+1; fISPD(i)=fISPD(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOP = FORM + ISPD ';
k(:,i) = 7.86e-15.*exp(-1912./T).*0.250;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP'; 
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fFORM(i)=fFORM(i)+1; fISPD(i)=fISPD(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOP = ';
k(:,i) = 7.86e-15.*exp(-1912./T).*0.334;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP'; 
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; 

i=i+1;
Rnames{i} = 'NO3 + ISOP = XO2 + NTR + HO2 + ALDX + PAR + PAR + PAR';
k(:,i) = 3.03e-12.*exp(-448./T).*0.15;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'ISOP'; 
fNO3(i)=fNO3(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; fNTR(i)=fNTR(i)+1; fHO2(i)=fHO2(i)+1; fALDX(i)=fALDX(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + ISOP = XO2 + NO2 + ISPD';
k(:,i) = 3.03e-12.*exp(-448./T).*0.20;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'ISOP'; 
fNO3(i)=fNO3(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; fNO2(i)=fNO2(i)+1; fISPD(i)=fISPD(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + ISOP = XO2 + NTR + HO2 + ALDX + PAR + PAR + PAR';
k(:,i) = 3.03e-12.*exp(-448./T).*0.65;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'ISOP'; 
fNO3(i)=fNO3(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; fNTR(i)=fNTR(i)+1; fHO2(i)=fHO2(i)+1; fALDX(i)=fALDX(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' NO2 + ISOP = XO2 + ISPD + NO';
k(:,i) = 1.5e-19.*0.2 ;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'ISOP'; 
fNO2(i)=fNO2(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; fISPD(i)=fISPD(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = ' NO2 + ISOP = XO2 + NTR + HO2 + ALDX + PAR + PAR + PAR ';
k(:,i) = 1.5e-19.*0.8 ;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'ISOP'; 
fNO2(i)=fNO2(i)-1; fISOP(i)=fISOP(i)-1; fXO2(i)=fXO2(i)+1; fNTR(i)=fNTR(i)+1; fHO2(i)=fHO2(i)+1; fALDX(i)=fALDX(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'ISPD + OH = XO2 + HO2 + MGLY + PAR + PAR + C2O3 + C2O3 + C2O3 + C2O3 + ALD2 + ALD2 + ALDX + ALDX + ALDX + ALDX';
k(:,i) = 3.36e-11.*0.001;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fC2O3(i)=fC2O3(i)+1; fC2O3(i)=fC2O3(i)+1; fC2O3(i)=fC2O3(i)+1; fC2O3(i)=fC2O3(i)+1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; fALDX(i)=fALDX(i)+1; fALDX(i)=fALDX(i)+1; fALDX(i)=fALDX(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + OH = XO2 + HO2 + HO2 + PAR + PAR + C2O3 + C2O3 + C2O3+ ALD2 + ALD2 + CXO3 + CXO3 + ALDX + ALDX';
k(:,i) = 3.36e-11.*0.005 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fC2O3(i)=fC2O3(i)+1; fC2O3(i)=fC2O3(i)+1; fC2O3(i)=fC2O3(i)+1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; fCXO3(i)=fCXO3(i)+1; fCXO3(i)=fCXO3(i)+1; fALDX(i)=fALDX(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + OH = XO2 + PAR + PAR + ALD2 + ALD2 + CXO3 + CXO3 + C2O3 + C2O3 + C2O3';
k(:,i) = 3.36e-11.*0.067 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; fCXO3(i)=fCXO3(i)+1; fCXO3(i)=fCXO3(i)+1; fC2O3(i)=fC2O3(i)+1; fC2O3(i)=fC2O3(i)+1; fC2O3(i)=fC2O3(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + OH = XO2 + HO2 + ALDX + PAR + PAR + ALD2 + CXO3';
k(:,i) = 3.36e-11.*0.106 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fALDX(i)=fALDX(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fALD2(i)=fALD2(i)+1; fCXO3(i)=fCXO3(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + OH = XO2 + PAR ';
k(:,i) = 3.36e-11.*0.148 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + OH = FORM + XO2 + HO2 + CO + CO + MGLY + PAR + PAR ';
k(:,i) = 3.36e-11.*0.167 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fMGLY(i)=fMGLY(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + OH = XO2 + HO2 + PAR + PAR';
k(:,i) = 3.36e-11.*0.219 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + OH = PAR ';
k(:,i) = 3.36e-11.*0.287 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = C2O3 + MGLY + HO2 + XO2 ';
k(:,i) = 7.1e-18.*0.004 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fC2O3(i)=fC2O3(i)+1; fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = C2O3 + MGLY + ALD2 + ALD2 + ALDX + ALDX ';
k(:,i) = 7.1e-18.*0.010 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fC2O3(i)=fC2O3(i)+1; fMGLY(i)=fMGLY(i)+1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; fALDX(i)=fALDX(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = MGLY + XO2';
k(:,i) = 7.1e-18.*0.040 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = MGLY ';
k(:,i) = 7.1e-18.*0.068 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = C2O3 + MGLY ';
k(:,i) = 7.1e-18.*0.100 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fC2O3(i)=fC2O3(i)+1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = MGLY + PAR ';
k(:,i) = 7.1e-18.*0.135 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = FORM + HO2 ';
k(:,i) = 7.1e-18.*0.150 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = MGLY + PAR + CO ';
k(:,i) = 7.1e-18.*0.225 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1; fPAR(i)=fPAR(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + O3 = MGLY + OH ';
k(:,i) = 7.1e-18.*0.268 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + NO3 = PAR + HO2 + CO + NTR ';
k(:,i) = 1.0e-15.*0.004 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3'; 
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNTR(i)=fNTR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + NO3 = PAR + HO2 + HNO3';
k(:,i) = 1.0e-15.*0.075 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3'; 
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + NO3 = PAR + CXO3 + XO2 + HNO3 ';
k(:,i) = 1.0e-15.*0.075 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3'; 
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fPAR(i)=fPAR(i)+1; fCXO3(i)=fCXO3(i)+1; fXO2(i)=fXO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + NO3 = PAR + HO2 + NTR ';
k(:,i) = 1.0e-15.*0.207 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3'; 
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fNTR(i)=fNTR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + NO3 = FORM + PAR + PAR + HO2 + CO + NTR ';
k(:,i) = 1.0e-15.*0.282 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3'; 
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNTR(i)=fNTR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD + NO3 = ALDX + PAR + HO2 + CO + NTR ';
k(:,i) = 1.0e-15.*0.357 ;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3'; 
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fALDX(i)=fALDX(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNTR(i)=fNTR(i)+1; 

i=i+1;
Rnames{i} = ' ISPD = CO + HO2 + HO2 ';
k(:,i) = 0.0036.*JACRO.*0.033 ;
Gstr{i,1} = 'ISPD'; 
fISPD(i)=fISPD(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISPD = FORM + PAR + HO2 + XO2 + C2O3';
k(:,i) = 0.0036.*JACRO.*0.033;
Gstr{i,1} = 'ISPD'; 
fISPD(i)=fISPD(i)-1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; fC2O3(i)=fC2O3(i)+1; 

i=i+1;
Rnames{i} = 'ISPD = ALDX + PAR + HO2 + XO2 + C2O3 + ALD2';
k(:,i) = 0.0036.*JACRO.*0.067;
Gstr{i,1} = 'ISPD'; 
fISPD(i)=fISPD(i)-1; fALDX(i)=fALDX(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; fC2O3(i)=fC2O3(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = ' ISPD = FORM + PAR + HO2 + C2O3 + XO2';
k(:,i) = 0.0036.*JACRO.*0.132 ;
Gstr{i,1} = 'ISPD'; 
fISPD(i)=fISPD(i)-1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fC2O3(i)=fC2O3(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = ' ISPD = FORM + HO2 + C2O3 + XO2';
k(:,i) = 0.0036.*JACRO.*0.135 ;
Gstr{i,1} = 'ISPD'; 
fISPD(i)=fISPD(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fC2O3(i)=fC2O3(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = ' ISPD = CO + FORM + PAR + HO2 + XO2 + C2O3';
k(:,i) = 0.0036.*JACRO.*0.300 ;
Gstr{i,1} = 'ISPD'; 
fISPD(i)=fISPD(i)-1; fCO(i)=fCO(i)+1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; fC2O3(i)=fC2O3(i)+1; 

i=i+1;
Rnames{i} = ' ISPD = FORM + PAR + HO2 + XO2 + C2O3';
k(:,i) = 0.0036.*JACRO.*0.300 ;
Gstr{i,1} = 'ISPD'; 
fISPD(i)=fISPD(i)-1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; fC2O3(i)=fC2O3(i)+1; 

i=i+1;
Rnames{i} = '    OH + TOL = XO2+HO2';
k(:,i) = 1.8e-12.*exp(355./T).*0.08 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TOL'; 
fOH(i)=fOH(i)-1; fTOL(i)=fTOL(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = '    OH + TOL = CRES + HO2';
k(:,i) = 1.8e-12.*exp(355./T).*0.36 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TOL'; 
fOH(i)=fOH(i)-1; fTOL(i)=fTOL(i)-1; fCRES(i)=fCRES(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = '    OH + TOL = TO2 ';
k(:,i) = 1.8e-12.*exp(355./T).*0.56 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TOL'; 
fOH(i)=fOH(i)-1; fTOL(i)=fTOL(i)-1; fTO2(i)=fTO2(i)+1; 

i=i+1;
Rnames{i} = ' TO2 + NO = NO2 + HO2 + OPN ';
k(:,i) = 8.1e-12.*0.90  ;
Gstr{i,1} = 'TO2'; Gstr{i,2} = 'NO'; 
fTO2(i)=fTO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fOPN(i)=fOPN(i)+1; 

i=i+1;
Rnames{i} = ' TO2 + NO = NTR ';
k(:,i) = 8.1e-12.*0.10  ;
Gstr{i,1} = 'TO2'; Gstr{i,2} = 'NO'; 
fTO2(i)=fTO2(i)-1; fNO(i)=fNO(i)-1; fNTR(i)=fNTR(i)+1; 

i=i+1;
Rnames{i} = '    TO2 = CRES + HO2';
k(:,i) = 4.2  ;
Gstr{i,1} = 'TO2'; 
fTO2(i)=fTO2(i)-1; fCRES(i)=fCRES(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = '    OH + CRES = CRO ';
k(:,i) = 4.1e-11.*0.1 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CRES'; 
fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)-1; fCRO(i)=fCRO(i)+1; 

i=i+1;
Rnames{i} = '    OH + CRES = CRO + OPN ';
k(:,i) = 4.1e-11.*0.3 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CRES'; 
fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)-1; fCRO(i)=fCRO(i)+1; fOPN(i)=fOPN(i)+1; 

i=i+1;
Rnames{i} = '    OH + CRES = XO2+HO2 ';
k(:,i) = 4.1e-11.*0.6 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CRES'; 
fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CRES = CRO + HNO3 ';
k(:,i) = 2.2e-11 ;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CRES'; 
fNO3(i)=fNO3(i)-1; fCRES(i)=fCRES(i)-1; fCRO(i)=fCRO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CRO + NO2 = NTR';
k(:,i) = 1.4e-11 ;
Gstr{i,1} = 'CRO'; Gstr{i,2} = 'NO2'; 
fCRO(i)=fCRO(i)-1; fNO2(i)=fNO2(i)-1; fNTR(i)=fNTR(i)+1; 

i=i+1;
Rnames{i} = ' CRO + HO2 = CRES';
k(:,i) = 5.5E-12 ;
Gstr{i,1} = 'CRO'; Gstr{i,2} = 'HO2'; 
fCRO(i)=fCRO(i)-1; fHO2(i)=fHO2(i)-1; fCRES(i)=fCRES(i)+1; 

i=i+1;
Rnames{i} = ' OPN = C2O3 + HO2 + CO ';
k(:,i) = 9.0.*JHCHO_HO2 ;
Gstr{i,1} = 'OPN'; 
fOPN(i)=fOPN(i)-1; fC2O3(i)=fC2O3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' OPN + OH = XO2 + CO + CO + HO2 + HO2 + C2O3 + FORM ';
k(:,i) = 3.0e-11 ;
Gstr{i,1} = 'OPN'; Gstr{i,2} = 'OH'; 
fOPN(i)=fOPN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fC2O3(i)=fC2O3(i)+1; fFORM(i)=fFORM(i)+1; 

i=i+1;
Rnames{i} = ' OPN + O3 = C2O3 ';
k(:,i) = 5.4e-17.*exp(-500./T).*0.02 ;
Gstr{i,1} = 'OPN'; Gstr{i,2} = 'O3'; 
fOPN(i)=fOPN(i)-1; fO3(i)=fO3(i)-1; fC2O3(i)=fC2O3(i)+1; 

i=i+1;
Rnames{i} = ' OPN + O3 = ALDX + XO2 + CO + CO + CO +OH + HO2 + HO2 ';
k(:,i) = 5.4e-17.*exp(-500./T).*0.03 ;
Gstr{i,1} = 'OPN'; Gstr{i,2} = 'O3'; 
fOPN(i)=fOPN(i)-1; fO3(i)=fO3(i)-1; fALDX(i)=fALDX(i)+1; fXO2(i)=fXO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' OPN + O3 = OH ';
k(:,i) = 5.4e-17.*exp(-500./T).*0.05 ;
Gstr{i,1} = 'OPN'; Gstr{i,2} = 'O3'; 
fOPN(i)=fOPN(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = ' OPN + O3 = FORM + HO2 ';
k(:,i) = 5.4e-17.*exp(-500./T).*0.10 ;
Gstr{i,1} = 'OPN'; Gstr{i,2} = 'O3'; 
fOPN(i)=fOPN(i)-1; fO3(i)=fO3(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' OPN + O3 = MGLY ';
k(:,i) = 5.4e-17.*exp(-500./T).*0.20 ;
Gstr{i,1} = 'OPN'; Gstr{i,2} = 'O3'; 
fOPN(i)=fOPN(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i} = 'OPN + O3 = C2O3 + FORM + CO + HO2';
k(:,i) = 5.4e-17.*exp(-500./T).*0.60 ;
Gstr{i,1} = 'OPN'; Gstr{i,2} = 'O3'; 
fOPN(i)=fOPN(i)-1; fO3(i)=fO3(i)-1; fC2O3(i)=fC2O3(i)+1; fFORM(i)=fFORM(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + XYL  =  HO2 + PAR ';
k(:,i) = 1.7e-11.*exp(116./T).*0.1 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'XYL'; 
fOH(i)=fOH(i)-1; fXYL(i)=fXYL(i)-1; fHO2(i)=fHO2(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' OH + XYL = CRES + HO2 + XO2 ';
k(:,i) = 1.7e-11.*exp(116./T).*0.2 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'XYL'; 
fOH(i)=fOH(i)-1; fXYL(i)=fXYL(i)-1; fCRES(i)=fCRES(i)+1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + XYL = TO2 + PAR + XO2';
k(:,i) = 1.7e-11.*exp(116./T).*0.3 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'XYL'; 
fOH(i)=fOH(i)-1; fXYL(i)=fXYL(i)-1; fTO2(i)=fTO2(i)+1; fPAR(i)=fPAR(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + XYL = MGLY + MGLY + PAR + PAR + HO2';
k(:,i) = 1.7e-11.*exp(116./T).*0.4;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'XYL'; 
fOH(i)=fOH(i)-1; fXYL(i)=fXYL(i)-1; fMGLY(i)=fMGLY(i)+1; fMGLY(i)=fMGLY(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + MGLY = XO2 + C2O3 ';
k(:,i) = 1.8e-11 ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MGLY'; 
fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)-1; fXO2(i)=fXO2(i)+1; fC2O3(i)=fC2O3(i)+1; 

i=i+1;
Rnames{i} = ' MGLY = C2O3 + HO2 + CO ';
k(:,i) = JMGLY  ;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1; fC2O3(i)=fC2O3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3P = PAR + PAR + PAR + PAR + PAR + PAR';
k(:,i) = 3.6E-11.*0.12;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3P'; 
fTERP(i)=fTERP(i)-1; fO3P(i)=fO3P(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3P = PAR + PAR + PAR + PAR + PAR + ALDX';
k(:,i) = 3.6E-11.*0.15;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3P'; 
fTERP(i)=fTERP(i)-1; fO3P(i)=fO3P(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3P = PAR + PAR + PAR + PAR + PAR';
k(:,i) = 3.6E-11.*0.73;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3P'; 
fTERP(i)=fTERP(i)-1; fO3P(i)=fO3P(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'TERP + OH = HO2 + XO2 + PAR';
k(:,i) = 1.5E-11.*exp(449./T).*0.50;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH'; 
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'TERP + OH = HO2 + XO2 + XO2 + XO2N + FORM + ALDX + PAR';
k(:,i) = 1.5E-11.*exp(449./T).*0.25;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH'; 
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; fXO2(i)=fXO2(i)+1; fXO2N(i)=fXO2N(i)+1; fFORM(i)=fFORM(i)+1; fALDX(i)=fALDX(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'TERP + OH = XO2 + PAR + PAR + PAR + PAR + ALDX';
k(:,i) = 1.5E-11.*exp(449./T).*0.22;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH'; 
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = 'TERP + OH = XO2 + FORM + PAR';
k(:,i) = 1.5E-11.*exp(449./T).*0.01;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH'; 
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'TERP + OH = XO2 + FORM + PAR';
k(:,i) = 1.5E-11.*exp(449./T).*0.01;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH'; 
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = 'TERP + OH = XO2 + FORM + PAR';
k(:,i) = 1.5E-11.*exp(449./T).*0.01;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH'; 
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR + OH + XO2';
k(:,i) = 1.2E-15.*exp(-821./T).*0.50  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fOH(i)=fOH(i)+1; fXO2(i)=fXO2(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR + HO2 + OH';
k(:,i) = 1.2E-15.*exp(-821./T).*0.07  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR + XO2 + FORM + ALDX + CXO3';
k(:,i) = 1.2E-15.*exp(-821./T).*0.21  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fXO2(i)=fXO2(i)+1; fFORM(i)=fFORM(i)+1; fALDX(i)=fALDX(i)+1; fCXO3(i)=fCXO3(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR + XO2 + XO2N + CXO3';
k(:,i) = 1.2E-15.*exp(-821./T).*0.05  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fXO2(i)=fXO2(i)+1; fXO2N(i)=fXO2N(i)+1; fCXO3(i)=fCXO3(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR + CO';
k(:,i) = 1.2E-15.*exp(-821./T).*0.001  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR + XO2N + CXO3';
k(:,i) = 1.2E-15.*exp(-821./T).*0.13  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fXO2N(i)=fXO2N(i)+1; fCXO3(i)=fCXO3(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR + FORM';
k(:,i) = 1.2E-15.*exp(-821./T).*0.02  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fFORM(i)=fFORM(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR + FORM';
k(:,i) = 1.2E-15.*exp(-821./T).*0.01  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fFORM(i)=fFORM(i)+1; 

i=i+1;
Rnames{i} = ' TERP + O3 = PAR + PAR + PAR + PAR + PAR + PAR + PAR';
k(:,i) = 1.2E-15.*exp(-821./T).*0.009  ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; fPAR(i)=fPAR(i)+1; 

i=i+1;
Rnames{i} = ' TERP + NO3 = XO2 + NO2 + ALDX';
k(:,i) = 3.7E-12.*exp(175./T).*0.47    ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'NO3'; 
fTERP(i)=fTERP(i)-1; fNO3(i)=fNO3(i)-1; fXO2(i)=fXO2(i)+1; fNO2(i)=fNO2(i)+1; fALDX(i)=fALDX(i)+1; 

i=i+1;
Rnames{i} = ' TERP + NO3 = XO2 + NTR + XO2N';
k(:,i) = 3.7E-12.*exp(175./T).*0.25    ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'NO3'; 
fTERP(i)=fTERP(i)-1; fNO3(i)=fNO3(i)-1; fXO2(i)=fXO2(i)+1; fNTR(i)=fNTR(i)+1; fXO2N(i)=fXO2N(i)+1; 

i=i+1;
Rnames{i} = ' TERP + NO3 = XO2 + NTR + XO2 +HO2';
k(:,i) = 3.7E-12.*exp(175./T).*0.03;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'NO3'; 
fTERP(i)=fTERP(i)-1; fNO3(i)=fNO3(i)-1; fXO2(i)=fXO2(i)+1; fNTR(i)=fNTR(i)+1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' TERP + NO3 = XO2 + NTR + HO2';
k(:,i) = 3.7E-12.*exp(175./T).*0.25    ;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'NO3'; 
fTERP(i)=fTERP(i)-1; fNO3(i)=fNO3(i)-1; fXO2(i)=fXO2(i)+1; fNTR(i)=fNTR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' ETOH + OH = XO2 + XO2 + HO2';
k(:,i) = 6.9e-12.*exp(-230./T).*0.05 ;
Gstr{i,1} = 'ETOH'; Gstr{i,2} = 'OH'; 
fETOH(i)=fETOH(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' ETOH + OH = FORM + FORM + RCHO + HO2';
k(:,i) = 6.9e-12.*exp(-230./T).*0.05 ;
Gstr{i,1} = 'ETOH'; Gstr{i,2} = 'OH'; 
fETOH(i)=fETOH(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+1; fFORM(i)=fFORM(i)+1; fRCHO(i)=fRCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' ETOH + OH = ALD2 + HO2';
k(:,i) = 6.9e-12.*exp(-230./T).*0.90 ;
Gstr{i,1} = 'ETOH'; Gstr{i,2} = 'OH'; 
fETOH(i)=fETOH(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + ETHA = HO2 + ALD2 + XO2';
k(:,i) = 8.7E-12.*exp(-1070./T).*0.991  ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETHA'; 
fOH(i)=fOH(i)-1; fETHA(i)=fETHA(i)-1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; fXO2(i)=fXO2(i)+1; 

