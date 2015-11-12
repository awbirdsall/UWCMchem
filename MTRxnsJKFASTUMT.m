% MTRxnsJK.m based off Glenn's MTSQTRxns
% Monoterpene reactions as described in
% Wolfe and Thornton, Atmos. Chem. Phys., 2011, 11, 77-101.

% UMT = unspeciated MTs. Behaves like B-Pinene.
% 150706 jmk

SpeciesToAdd = {'MYRCENE';'CAMPHENE';'UMT';'MTO2';'MTOX';...
    'OH';'O3';'NO3';'NO';'NO2';'HO2';...
    'CH3COCH3';'HCHO';'HCOOH';'ACETOL';};
RO2ToAdd = {'MTO2'};
AddSpecies

i=i+1;
Rnames{i} = 'MYRCENE + OH = 0.36CH3COCH3 + 0.30HCHO + 0.05HCOOH + MTO2';
k(:,i) = 9.2e-12.*exp(1071./T); %2.1e-10; %Hites and Turner (2009)
Gstr{i,1} = 'MYRCENE'; Gstr{i,2} = 'OH';
fMYRCENE(i)=-1; fOH(i)=-1; fCH3COCH3(i)=0.36; fHCHO(i)=0.30; fHCOOH(i)=0.05; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'MYRCENE + O3 = 0.63OH + 0.25CH3COCH3 + 0.26HCHO + 0.19ACETOL + MTO2';
k(:,i) = 4.7e-16; %from Bouvier-Brown (2008)
Gstr{i,1} = 'MYRCENE'; Gstr{i,2} = 'O3';
fMYRCENE(i)=-1; fO3(i)=-1; fOH(i)=0.63; fCH3COCH3(i)=0.25; fHCHO(i)=0.26; fACETOL(i)=0.19; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'MYRCENE + NO3 = MTO2'; %1/2 of products are organic nitrates
k(:,i) = 1.1e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'MYRCENE'; Gstr{i,2} = 'NO3';
fMYRCENE(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'CAMPHENE + OH = 0.39CH3COCH3 + MTO2';
k(:,i) = 5.34e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CAMPHENE'; Gstr{i,2} = 'OH';
fCAMPHENE(i)=-1; fOH(i)=-1; fCH3COCH3(i)=0.39; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'UMT + OH = MTO2';
k(:,i) = 2.7e-11.*exp(390./T).*3.5; %for ISOPRENE *3.5
Gstr{i,1} = 'UMT'; Gstr{i,2} = 'OH';
fUMT(i)=-1; fOH(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'UMT + O3 = 0.62OH + MTO2';
k(:,i) = 1.50e-17; %for b-pinene
Gstr{i,1} = 'UMT'; Gstr{i,2} = 'O3';
fUMT(i)=-1; fO3(i)=-1; fOH(i)=0.62; %OH yield is average for all MT from Aschmann (2002), Atmos. Env.

i=i+1;
Rnames{i} = 'UMT + NO3 = MTO2';
k(:,i) = 2.5e-12; %for b-pinene
Gstr{i,1} = 'UMT'; Gstr{i,2} = 'NO3';
fUMT(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'MTO2 + NO = MTOX + NO2 + HO2'; %Oxidized MT that only deposits
k(:,i) = KRO2NO;
Gstr{i,1} = 'MTO2'; Gstr{i,2} = 'NO';
fMTO2(i)=-1; fNO(i)=-1; fNO2(i)=1; fMTOX(i)=1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'MTO2 + HO2 = MTOX';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'MTO2'; Gstr{i,2} = 'HO2';
fMTO2(i)=-1; fHO2(i)=-1; fMTOX(i)=1;

i=i+1;
Rnames{i} = 'MTO2 + RO2 = MTOX + 0.7HO2';
k(:,i) = 9e-14;
Gstr{i,1} = 'MTO2'; Gstr{i,2} = 'RO2';
fMTO2(i)=-1; fMTOX(i)=1; fHO2(i)=0.7;
i=i+1;
Rnames{i} = 'CAMPHENE + O3 = 0.18OH + MTO2';
k(:,i) = 9.19e-19; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CAMPHENE'; Gstr{i,2} = 'O3';
fCAMPHENE(i)=-1; fO3(i)=-1; fOH(i)=0.18; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'CAMPHENE + NO3 = MTO2'; %1/2 of products are organic nitrates
k(:,i) = 6.54e-13; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CAMPHENE'; Gstr{i,2} = 'NO3';
fCAMPHENE(i)=-1; fNO3(i)=-1; fMTO2(i)=1;
