% HOCH2CHORxns_Butkovskaya2006.m
% Modifications to glycoaldehyde mechanism following
% Butkovskaya et al., J. Phys. Chem. A, 2006, 110, 13492-13499.
% 120210 GMW

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = HCOOH + OH';
k(:,i) = 0.19.*0.2.*1e-11;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH';
fHOCH2CHO(i)=-1; fHCOOH(i)=1;

RxnToReplace = 'HOCH2CHO + OH = GLYOX + HO2';
kToReplace = 0.81.*0.2.*1e-11;
ReplaceRxn

i=i+1;
Rnames{i} = 'HOCH2CO3 = 0.73HO2 + 0.84HCHO + 0.58CO + 0.26OH';
k(:,i) = 10; %per second; best guess to make it fast
Gstr{i,1} = 'HOCH2CO3';
fHOCH2CO3(i)=-1; fHO2(i)=0.73; fHCHO(i)=0.84; fCO(i)=0.58; fOH(i)=0.26;


