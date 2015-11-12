% OHRecyclingRxns_Hofzumahaus2009.m
% Implements a mechanism to cycle all RO2 to HO2 and HO2 to OH by reacting with an imaginary
% compound X that behaves NO, as described in Hofzumahaus et al. (2009), Nature.
% Note that this does not currently track any of the carbon that reacts with X; that is, the carbon
% in any RO2 is "lost" when it reacts with X.
% This sub-mechanism should be placed at the end of any mechanism list, as it operates on all RO2.
% 120403 GMW

X = 0.5e-9.*M;     %concentration of X
kX = KRO2NO;        %rate constant for RO2+X and HO2+X

i=i+1;
Rnames{i} = 'HO2 + X = OH';
k(:,i) = kX.*X;
Gstr{i,1} = 'HO2';
fOH(i)=1; fHO2(i)=-1;

iR = find(~cellfun('isempty',RO2names)); %index for non-empty RO2names
for j=1:length(iR)
    RO2now = RO2names{j};
    i=i+1;
    Rnames{i} = [RO2now '+ X = HO2'];
    k(:,i) = kX.*X;
    Gstr{i,1} = RO2now;
    fHO2(i)=1;
    eval(['f' RO2now '(i)=-1;']);
end
clear X kX iR j RO2now

