%InorganicRxns_MCM32.m
%Contains all inorganic reactions (e.g. HOx, NOx, O3) as implimented in MCM v3.2.
%120205 GMW
%140421 GMW
% JBK

%%%%%ADD SPECIES%%%%%
SpeciesToAdd = {'OH';'HO2';'H2';'CO';'O3';...
    'NO';'NO2';'NO3';'N2O5';...
    'H2O2';'HONO';'HNO3';'HO2NO2'};
AddSpecies

%%%%%REACTIONS%%%%%
%--------------------------------------------------------------------------
% NOy
%--------------------------------------------------------------------------
i=i+1; 
Rnames{i} = 'NO + O3 = NO2'; 
k(:,i) = 1.4e-12.*exp(-1310./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3';
fNO(i)=-1; fO3(i)=-1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'NO2 + O3 = NO3';
k(:,i) = 1.4e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3';
fNO2(i)=-1; fO3(i)=-1; fNO3(i)=1;

i=i+1;
Rnames{i} = '2NO = 2NO2';
k(:,i) = 3.3e-39.*exp(530./T).*0.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO';
fNO(i)=-2; fNO2(i)=2;

i=i+1;
Rnames{i} = 'NO + NO3 = 2NO2';
k(:,i) = 1.8e-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3';
fNO(i)=-1; fNO3(i)=-1; fNO2(i)=2;

i=i+1;
Rnames{i} = 'NO3 + NO2 = NO2 + NO';
k(:,i) = 4.5e-14.*exp(-1260./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO2';
fNO3(i)=-1; fNO(i)=1;

i=i+1;
Rnames{i} = 'NO2 + NO3 = N205';
k(:,i) = KMT03;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3';
fNO2(i)=-1; fNO3(i)=-1; fN2O5(i)=1;

i=i+1;
Rnames{i} = 'N2O5 = NO2 + NO3';
k(:,i) = KMT04;
Gstr{i,1} = 'N2O5';
fN2O5(i)=-1; fNO2(i)=1; fNO3(i)=1;

%--------------------------------------------------------------------------
% HOx
%--------------------------------------------------------------------------
i=i+1;
Rnames{i} = 'OH + O3 = HO2';
k(:,i) = 1.7e-12.*exp(-940./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O3';
fOH(i)=-1; fO3(i)=-1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'OH + H2 = HO2';
k(:,i) = 7.7e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2';
fOH(i)=-1; fH2(i)=-1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'OH + CO = HO2';
% k(:,i) = 1.3e-13.*KMT05;
k(:,i) = KMT05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO';
fOH(i)=-1; fCO(i)=-1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'HO2 + O3 = OH';
k(:,i) = 2.03e-16.*(T./300).^4.57.*exp(693./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3';
fHO2(i)=-1; fO3(i)=-1; fOH(i)=1;

i=i+1;
Rnames{i} = 'OH + HO2 = H2O + O2';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2';
fOH(i)=-1; fHO2(i)=-1;

i=i+1;
Rnames{i} = '2HO2 = H2O2';
k(:,i) = KMT06.*(2.2e-13.*exp(600./T) + 1.9e-33.*M.*exp(980./T));
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2';
fHO2(i)=-2; fH2O2(i)=1;

i=i+1;
Rnames{i} = 'OH + H2O2 = HO2';
k(:,i) = 2.9e-12.*exp(-160./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2';
fOH(i)=-1; fH2O2(i)=-1; fHO2(i)=1;

%--------------------------------------------------------------------------
% HOx-NOy CROSS
%--------------------------------------------------------------------------
i=i+1;
Rnames{i} = 'OH + NO = HONO';
k(:,i) = KMT07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO';
fOH(i)=-1; fNO(i)=-1; fHONO(i)=1;

i=i+1;
Rnames{i} = 'OH + NO2 = HNO3';
k(:,i) = KMT08;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2';
fOH(i)=-1; fNO2(i)=-1; fHNO3(i)=1;

i=i+1;
Rnames{i} = 'OH + NO3 = HO2 + NO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3';
fOH(i)=-1; fNO3(i)=-1; fHO2(i)=1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'HO2 + NO = OH + NO2';
% k(:,i) = 3.60e-12.*exp(270./T);
k(:,i) = 3.45e-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO';
fHO2(i)=-1; fNO(i)=-1; fOH(i)=1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'HO2 + NO2 = HO2NO2';
k(:,i) = KMT09;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2';
fHO2(i)=-1; fNO2(i)=-1; fHO2NO2(i)=1;

i=i+1;
Rnames{i} = 'HO2NO2 = HO2 + NO2';
k(:,i) = KMT10;
Gstr{i,1} = 'HO2NO2';
fHO2NO2(i)=-1; fHO2(i)=1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'OH + HO2NO2 = NO2';
% k(:,i) = 1.90e-12.*exp(270./T);
k(:,i) = 3.20e-13.*exp(690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2';
fOH(i)=-1; fHO2NO2(i)=-1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'HO2 + NO3 = OH + NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3';
fHO2(i)=-1; fNO3(i)=-1; fOH(i)=1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'OH + HONO = NO2';
k(:,i) = 2.5e-12.*exp(-260./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO';
fOH(i)=-1; fHONO(i)=-1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'OH + HNO3 = NO3';
k(:,i) = KMT11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3';
fOH(i)=-1; fHNO3(i)=-1; fNO3(i)=1;

%---------------------------------------------------------------------------------
% NOy and HOx PHOTOLYSIS
%---------------------------------------------------------------------------------
%%%%%NOy%%%%%
i=i+1;
Rnames{i} = 'NO2 + hv = NO + O3';
k(:,i) = J4;
Gstr{i,1} = 'NO2'; %assume O3 production is instantaneous
fNO2(i)=-1; fNO(i)=1; fO3(i)=1;

i=i+1;
Rnames{i} = 'NO3 + hv = NO';
k(:,i) = J5;
Gstr{i,1} = 'NO3';
fNO3(i)=-1; fNO(i)=1;

i=i+1;
Rnames{i} = 'NO3 + hv = NO2 + O3';
k(:,i) = J6;
Gstr{i,1} = 'NO3';
fNO3(i)=-1; fNO2(i)=1; fO3(i)=1;

i=i+1;
Rnames{i} = 'HONO + hv = OH + NO';
k(:,i) = J7;
Gstr{i,1} = 'HONO';
fHONO(i)=-1; fOH(i)=1; fNO(i)=1;

i=i+1;
Rnames{i} = 'HNO3 + hv = OH + NO2';
k(:,i) = J8;
Gstr{i,1} = 'HNO3';
fHNO3(i)=-1; fOH(i)=1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'H2O2 + hv = 2OH';
k(:,i) = J3;
Gstr{i,1} = 'H2O2';
fH2O2(i)=-1; fOH(i)=2;

%---------------------------------------------------------------------------------
% OZONE PHOTOLYSIS
%---------------------------------------------------------------------------------

k_O1D_H2O = 2.2e-10.*H2O;
k_O1D_M = M.*(3.2e-11.*0.21.*exp(67./T) + 1.8e-11.*0.78.*exp(107./T)); %k02 + kn2
O1DoverO3 = J1./(k_O1D_M + k_O1D_H2O); %steady-state O1D/O3 ratio

i=i+1;
Rnames{i} = 'O1D + H2O = 2OH';
k(:,i) = k_O1D_H2O.*O1DoverO3;
Gstr{i,1} = 'O3';
fOH(i)=2;

i=i+1;
Rnames{i} = 'O1D + M = O3';
k(:,i) = k_O1D_M.*O1DoverO3;
Gstr{i,1} = 'O3';
fO3(i)=1;

i=i+1;
Rnames{i} = 'O3 + hv = O1D';
k(:,i) = J1;
Gstr{i,1} = 'O3'; 
fO3(i) = -1;


