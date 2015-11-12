% CH3ONOPhoto.m
% Reaction for photolysis of methyl nitrite, a common OH source in chambers.
% 120728 GMW

SpeciesToAdd = {'CH3ONO'};
AddSpecies

i=i+1;
Rnames{i} = 'CH3ONO = HCHO + NO + HO2';
k(:,i) = JCH3ONO;
Gstr{i,1} = 'CH3ONO';
fCH3ONO(i)=-1; fHCHO(i)=1; fNO(i)=1; fHO2(i)=1;