% VRVOCRxns_Wolfe2011
% Sub-mechanism for reactions of unidentified very reactive VOC, as desribed in
% Wolfe et al., Atmos. Chem. Phys., 2011, 7875-7891.
% VRVOC has reaction rate constants equal to B-caryophyllene.
% VRO2 rate constants are the same as those for b-pinene-RO2.
% Note that deposition, aerosol partitioning and VROX chemistry are commented out.
%
% 20130409 GMW

%%%%%ADD SPECIES%%%%%
SpeciesToAdd = {'VRVOC';'VRO21';'VRO22';'VRO23';'VROX'};
RO2ToAdd = {'VRO21';'VRO22';'VRO23'};
AddSpecies

%%%%%REACTIONS%%%%%
yield = 0.1; %OH and VRO2 yield for ozonolysis

%Oxidation
i=i+1;
Rnames{i} = 'VRVOC + OH = products + VRO21';
k(:,i) = 2.0e-10; %from Bouvier-Brown (2008), for BCARY
Gstr{i,1} = 'VRVOC'; Gstr{i,2} = 'OH';
fVRVOC(i)=-1; fOH(i)=-1; fVRO21(i)=1;

i=i+1;
Rnames{i} = 'VRVOC + O3 = gOH + products + VRO22';
k(:,i) = 1.2e-14; %from Bouvier-Brown (2008), for BCARY
Gstr{i,1} = 'VRVOC'; Gstr{i,2} = 'O3';
fVRVOC(i)=-1; fO3(i)=-1; fOH(i)=yield; fVRO22(i)=yield; fVROX(i)=1-yield;

i=i+1;
Rnames{i} = 'VRVOC + NO3 = products + VRO23';
k(:,i) = 2.2e-11; %from Bouvier-Brown (2008), for BCARY
Gstr{i,1} = 'VRVOC'; Gstr{i,2} = 'NO3';
fVRVOC(i)=-1; fNO3(i)=-1; fVRO23(i)=0.9; fVROX(i)=0.1; %assume 10% to ANs

%RO2 fate - OH
i=i+1;
Rnames{i} = 'VRO21 + NO = VROX + 0.76NO2 + 0.76HO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'VRO21'; Gstr{i,2} = 'NO';
fVRO21(i)=-1; fNO(i)=-1; fNO2(i)=0.76; fVROX(i)=1; fHO2(i)=0.76; %assume 24% ANs

i=i+1;
Rnames{i} = 'VRO21 + HO2 = VROX';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'VRO21'; Gstr{i,2} = 'HO2';
fVRO21(i)=-1; fHO2(i)=-1; fVROX(i)=1;

i=i+1;
Rnames{i} = 'VRO21 + RO2 = VROX + 0.7HO2';
k(:,i) = 9e-14;
Gstr{i,1} = 'VRO21'; Gstr{i,2} = 'RO2';
fVRO21(i)=-1; fVROX(i)=1; fHO2(i)=0.7;

%RO2 fate - O3
i=i+1;
Rnames{i} = 'VRO22 + NO = VROX + 0.76NO2 + 0.76HO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'VRO22'; Gstr{i,2} = 'NO';
fVRO22(i)=-1; fNO(i)=-1; fNO2(i)=0.76; fVROX(i)=1; fHO2(i)=0.76;

i=i+1;
Rnames{i} = 'VRO22 + HO2 = VROX';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'VRO22'; Gstr{i,2} = 'HO2';
fVRO22(i)=-1; fHO2(i)=-1; fVROX(i)=1;

i=i+1;
Rnames{i} = 'VRO22 + RO2 = VROX + 0.7HO2';
k(:,i) = 9e-14;
Gstr{i,1} = 'VRO22'; Gstr{i,2} = 'RO2';
fVRO22(i)=-1; fVROX(i)=1; fHO2(i)=0.7;

%RO2 fate - NO3
i=i+1;
Rnames{i} = 'VRO23 + NO = VROX + 0.76NO2 + 0.76HO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'VRO23'; Gstr{i,2} = 'NO';
fVRO23(i)=-1; fNO(i)=-1; fNO2(i)=0.76; fVROX(i)=1; fHO2(i)=0.76;

i=i+1;
Rnames{i} = 'VRO23 + HO2 = VROX';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'VRO23'; Gstr{i,2} = 'HO2';
fVRO23(i)=-1; fHO2(i)=-1; fVROX(i)=1;

i=i+1;
Rnames{i} = 'VRO23 + RO2 = VROX + 0.7HO2';
k(:,i) = 9e-14;
Gstr{i,1} = 'VRO23'; Gstr{i,2} = 'RO2';
fVRO23(i)=-1; fVROX(i)=1; fHO2(i)=0.7;

% deposition
% i=i+1;
% Rnames{i} = 'Dep VROX';
% k(:,i) = kd_HNO3.*vrox_dep;
% Gstr{i,1} = 'VROX';
% fVROX(i)=-1;

% gas-to-particle
% rp = 150e-7; %mean particle radius, cm
% g = 0.1; %uptake coefficient, 0.1 or 0.5
% S = 68e-6; %total surface area, cm2/cm3
% Dg = 0.042; %gas diffusion coefficient, cm2/s
% M = 136; %molecular mass, g/mol, 136 or 204
% w = mean_speed(M,T); %mean molecular speed, cm/s
%
% i=i+1;
% Rnames{i} = 'VROX g2p';
% k(:,i) = k_mass_transfer_A(rp,Dg,g,w).*S;
% Gstr{i,1} = 'VROX';
% fVROX(i)=-1; fVRP(i)=1;

% VROX chemistry
% i=i+1;
% Rnames{i} = 'VROX + O3 = products';
% k(:,i) = 1.2e-14.*0.5;
% Gstr{i,1} = 'VROX'; Gstr{i,2} = 'O3';
% fVROX(i)=-1; fO3(i)=-1;


