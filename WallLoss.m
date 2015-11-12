%Template for adding wall loss to chamber runs
%04272015 JBK

SpeciesToAdd = {...
    'CH3CO3H'; 'CH3CO3Hdep';...
    'IEPOXA';'IEPOXAdep';...
    };

AddSpecies

i=i+1;
Rnames{i} = 'CH3CO3H + surface = HCOOHdep';
k(:,i) = 10/(24*60*60);
Gstr{i,1} = 'CH3CO3H';
fCH3CO3H(i)=fCH3CO3H(i)-1; fCH3CO3Hdep(i)=fCH3CO3Hdep(i)+1;

i=i+1;
Rnames{i} = 'IEPOXA + surface = HNO3dep';
k(:,i) = 10/(24*60*60);
Gstr{i,1} = 'IEPOXA';
fIEPOXA(i)=fIEPOXA(i)-1; fIEPOXAdep(i)=fIEPOXAdep(i)+1;
