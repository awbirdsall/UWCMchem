%ISOPO2IsomerizationRxns.m
%Contains reactions to force ISOPO2 to isomerize, as described in:
% Peeters et al., Phys. Chem. Chem. Phys., 2009, 11, 5935-5939.
% Peeters and Müller, Phys. Chem. Chem. Phys., 2010, 12, 14227-14235.
% da Silva et al., Environ. Sci. Technol., 2010, 44, 250-256.
% Crounse et al., Phys. Chem. Chem. Phys., 2011, 13, 13607-13613.
% Wolfe et al., Phys. Chem. Chem. Phys., 2012, submitted.
% 
% 20120210 GMW
% 20130913 GMW  Just discovered a major error in code. 1,6 isomerizations should occur for ISOPAO2
%               and ISOPCO2, not ISOPBO2 and ISOPDO2. Fixed this.

%%%%%ADD SPECIES%%%%%
SpeciesToAdd = {'HPALD1';'HPALD2'};%;'PACALD'};
AddSpecies

%%%%%REACTIONS%%%%%
i=i+1;
Rnames{i} = 'ISOPAO2 = HPALD1 + HO2';
% k(:,i) = 4.06e9.*exp(-7302./T); %Peeters rate
k(:,i) = 2.0e21.*exp(-9000./T).*0.706.*KRO2HO2; %Crounse 2011 rate
Gstr{i,1} = 'ISOPAO2';
fISOPAO2(i)=-1; fHPALD1(i)=1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'ISOPBO2 = MVK + HCHO + OH';
% k(:,i) = 2.08e11.*exp(-8993./T); %peeters rate
k(:,i) = 2.38e12.*exp(-21400./(1.987.*T)); %da Silva (2010) rate
Gstr{i,1} = 'ISOPBO2';
fISOPBO2(i)=-1; fMVK(i)=1; fHCHO(i)=1; fOH(i)=1;

i=i+1;
Rnames{i} = 'ISOPCO2 = HPALD2 + HO2';
% k(:,i) = 8.5e9.*exp(-7432./T); %Peeters rate
k(:,i) = 2.0e21.*exp(-9000./T).*0.706.*KRO2HO2; %Crounse 2011 rate
Gstr{i,1} = 'ISOPCO2';
fISOPCO2(i)=-1; fHPALD2(i)=1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'ISOPDO2 = MACR + HCHO + OH';
% k(:,i) = 2.08e11.*exp(-8993./T); %peeters rate
k(:,i) = 1.27e12.*exp(-21000./(1.987.*T)); %da Silva (2010) rate
Gstr{i,1} = 'ISOPDO2';
fISOPDO2(i)=-1; fMACR(i)=1; fHCHO(i)=1; fOH(i)=1;

i=i+1;
Rnames{i} = 'HPALD1 = OH'; % + HO2 + 0.5ACETOL + 0.5MGLYOX + 0.5HOCH2CHO + HCHO';
k(:,i) = J18./0.0195; %Q. yield for MACR photo is 0.0195
Gstr{i,1} = 'HPALD1';
fHPALD1(i)=-1; fOH(i)=1; %fHO2(i)=1; fPACALD(i)=1; %fACETOL(i)=0.5; fMGLYOX(i)=0.5; fHOCH2CHO(i)=0.5; fHCHO(i)=1;

i=i+1;
Rnames{i} = 'HPALD2 = OH'; %+ HO2 + 0.5ACETOL + 0.5GLYOX + 0.5HOCH2CHO + HCHO';
k(:,i) = J18./0.0195;
Gstr{i,1} = 'HPALD2';
fHPALD2(i)=-1; fOH(i)=1; %fHO2(i)=1; fPACALD(i)=1; %fACETOL(i)=0.5; fGLYOX(i)=0.5; fHOCH2CHO(i)=0.5; fHCHO(i)=1;

i=i+1;
Rnames{i} = 'HPALD1 + OH = OH';
k(:,i) = 4.7e-11;
Gstr{i,1} = 'HPALD1'; Gstr{i,2} = 'OH';
fHPALD1(i)=-1;

i=i+1;
Rnames{i} = 'HPALD2 + OH = OH';
k(:,i) = 4.7e-11;
Gstr{i,1} = 'HPALD2'; Gstr{i,2} = 'OH';
fHPALD2(i)=-1;

% i=i+1;
% Rnames{i} = 'PACALD = 2OH';
% k(:,i) = J18./0.0195*2;
% Gstr{i,1} = 'PACALD';
% fPACALD(i)=-1; fOH(i)=2;


