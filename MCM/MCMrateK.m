function [krx,Knames] = MCMrateK(T,M,h2o)
% function [k,Knames] = MCMrateK(T,M,h2o)
% calculates generic rate constants used in MCM reaction model.
%INPUTS:
%T: temperature in K (can be scalar or column vector)
%M: number density in molec/cm^3 (same size as T)
%h2o: water concentration in molec/cm3
%OUTPUTS:
%krx: matrix of rate constants with length(T) rows and one reaction per column
%Knames: cell array of MCM-assigned rate constant names
%080916 GMW
%
%Updated to MCMv3.2, 110521 GMW
%Updated to MCMv3.3, 150323 JBK

nk = 35; %number of rate constants
krx = nan(length(T),nk);
Knames = cell(nk,1);

%%%%%SIMPLE RATE CONSTANTS%%%%%
Knames{1} = 'KRO2NO';
krx(:,1) = 2.7e-12.*exp(360./T);

Knames{2} = 'KRO2HO2';
krx(:,2) = 2.91e-13.*exp(1300./T);

Knames{3} = 'KAPHO2';
krx(:,3) = 5.2e-13.*exp(980./T);

Knames{4} = 'KAPNO';
krx(:,4) = 7.5e-12.*exp(290./T);

Knames{5} = 'KRO2NO3';
krx(:,5) = 2.3e-12;

Knames{6} = 'KNO3AL';
krx(:,6) = 1.4e-12.*exp(-1860./T);

Knames{7} = 'KDEC';
krx(:,7) = 1e6;

Knames{8} = 'KROPRIM';
krx(:,8) = 2.5e-14.*exp(-300./T);

Knames{9} = 'KROSEC';
krx(:,9) = 2.5e-14.*exp(-300./T);

Knames{10} = 'KCH3O2';
krx(:,10) = 1.03e-13.*exp(365./T);

Knames{11} = 'K298CH3O2';
krx(:,11) = 3.5e-13;

% NEW IN MCMv3.3

Knames{34} = 'K16ISOM1';
krx(:,34) = 4.6e9.*exp(-8380./T).*exp(1e8./(T.^3));

Knames{35} = 'K15ISOM1';
krx(:,35) = 1.5E11.*exp(-9750./T);

Knames{33} = 'K14ISOM1';
krx(:,33) = 3e7.*exp(-5300./T);

%%%%%COMPLEX RATE CONSTANTS%%%%%
Knames{30} = 'KFPAN';
% KC0 = 2.7e-28.*M.*(T./300).^-7.1 ; MVMv3.2
KC0 = 3.28e-28.*M.*(T./300).^-6.87 ;
% KCI = 1.2e-11.*(T./300).^-0.9 ; MVMv3.2
KCI = 1.125e-11.*(T./300).^-1.105 ;
KRC = KC0./KCI ;
FCC = 0.30 ;
NC = 0.75-1.27.*(log10(FCC)) ;
FC = 10.^(log10(FCC)./(1+(log10(KRC)./NC).^2)) ;
krx(:,30) = (KC0.*KCI).*FC./(KC0+KCI) ;

Knames{31} = 'KBPAN'; %mcm default
% KD0 = 4.90e-3.*exp(-12100./T).*M ; MVMv3.2
KD0 = 1.10e-5.*exp(-10100./T).*M ; 
% KDI = 5.4e+16.*exp(-13830./T) ; MVMv3.2
KDI = 1.9e+17.*exp(-14100./T) ; 
KRD = KD0./KDI ;
FCD = 0.30 ;
NCD = 0.75-1.27.*(log10(FCD)) ;
FD = 10.^(log10(FCD)./(1+(log10(KRD)./NCD).^2)) ;
krx(:,31) = (KD0.*KDI).*FD./(KD0+KDI) ;

Knames{12} = 'KMT01'; %o3p + no = no2
K10 = 1.0e-31.*M.*(T./300).^-1.6 ;
K1I = 3.00e-11.*(T./300).^0.3 ;
KR1 = K10./K1I ;
FC1 = 0.85 ;
NC1 = 0.75-1.27.*(log10(FC1)) ;
F1 = 10.^(log10(FC1)./(1+(log10(KR1)./NC1).^2)) ;
krx(:,12) = (K10.*K1I).*F1./(K10+K1I) ;

Knames{13} = 'KMT02'; %o3p + no2 = no3
K20 = 1.3e-31.*M.*(T./300).^-1.5 ;
K2I = 2.3e-11.*(T./300).^0.24 ;
KR2 = K20./K2I ;
FC2 = 0.6 ;
NC2 = 0.75-1.27.*(log10(FC2)) ;
F2 = 10.^(log10(FC2)./(1+(log10(KR2)./NC2).^2)) ;
krx(:,13) = (K20.*K2I).*F2./(K20+K2I) ;

Knames{14} = 'KMT03'; %no2 + no3 = n2o5
K30 = 3.6e-30.*M.*(T./300).^-4.1 ;
K3I = 1.9e-12.*(T./300).^0.2 ;
KR3 = K30./K3I ;
FC3 = 0.35 ;
NC3 = 0.75-1.27.*(log10(FC3)) ;
F3 = 10.^(log10(FC3)./(1+(log10(KR3)./NC3).^2)) ;
krx(:,14) = (K30.*K3I).*F3./(K30+K3I) ;

Knames{15} = 'KMT04'; %n2o5 = no2 + no3
K40 = 1.3e-3.*M.*(T./300).^-3.5.*exp(-11000./T) ;
K4I = 9.7e+14.*(T./300).^0.1.*exp(-11080./T) ;
KR4 = K40./K4I ;
FC4 = 0.35 ;
NC4 = 0.75-1.27.*(log10(FC4)) ;
F4 = 10.^(log10(FC4)./(1+(log10(KR4)./NC4).^2)) ;
krx(:,15) = (K40.*K4I).*F4./(K40+K4I) ;

Knames{16} = 'KMT05';
krx(:,16) = 1.44e-13.*(1+(M./4.2e19));

Knames{17} = 'KMT06';
krx(:,17) = 1 + (1.40e-21.*exp(2200./T).*h2o) ;

Knames{18} = 'KMT07'; %oh + no = hono
K70 = 7.4e-31.*M.*(T./300).^-2.4 ;
K7I = 3.3e-11.*(T./300).^-0.3 ;
KR7 = K70./K7I ;
FC7 = exp(-T./1420) ;
NC7 = 0.75-1.27.*(log10(FC7)) ;
F7 = 10.^(log10(FC7)./(1+(log10(KR7)./NC7).^2)) ;
krx(:,18) = (K70.*K7I).*F7./(K70+K7I) ;

Knames{19} = 'KMT08'; %oh + no2 = hno3
K80 = 3.3e-30.*M.*(T./300).^-3.0 ;
K8I = 4.1e-11 ;
KR8 = K80./K8I ;
FC8 = 0.4 ;
NC8 = 0.75-1.27.*(log10(FC8)) ;
F8 = 10.^(log10(FC8)./(1+(log10(KR8)./NC8).^2));
krx(:,19) = (K80.*K8I).*F8./(K80+K8I) ;

Knames{20} = 'KMT09'; %ho2 + no2 = ho2no2
K90 = 1.8e-31.*M.*(T./300).^-3.2 ;
K9I = 4.7e-12 ;
KR9 = K90./K9I ;
FC9 = 0.6 ;
NC9 = 0.75-1.27.*(log10(FC9)) ;
F9 = 10.^(log10(FC9)./(1+(log10(KR9)./NC9).^2)) ;
krx(:,20) = (K90.*K9I).*F9./(K90+K9I) ;

Knames{21} = 'KMT10'; %ho2no2 = ho2 + no2
K100 = 4.10e-05.*M.*exp(-10650./T) ;
K10I = 4.8e+15.*exp(-11170./T) ;
KR10 = K100./K10I ;
FC10 = 0.6 ;
NC10 = 0.75-1.27.*(log10(FC10)) ;
F10 = 10.^(log10(FC10)./(1+(log10(KR10)./NC10).^2)) ;
krx(:,21) = (K100.*K10I).*F10./(K100+K10I) ;

Knames{22} = 'KMT11'; %oh + hno3 = no3
k1 = 2.4e-14.*exp(460./T);
k3 = 6.5e-34.*exp(1335./T);
k4 = 2.7e-17.*exp(2199./T);
k2 = k3.*M./(1 + k3.*M./k4);
krx(:,22) = k1 + k2;

Knames{23} = 'KMT12';
K120 = 4.5e-31.*M.*(T./300).^-3.9 ;
K12I = 1.3e-12.*(T./300).^-0.7 ;
KR12 = K120./K12I ;
FC12 = 0.525 ;
NC12 = 0.75-1.27.*(log10(FC12)) ;
F12 = 10.^(log10(FC12)./(1.0+(log10(KR12)./NC12).^2)) ;
krx(:,23) = (K120.*K12I.*F12)./(K120+K12I) ;

Knames{24} = 'KMT13';
K130 = 2.5e-30.*M.*(T./300).^-5.5 ;
K13I = 1.8e-11 ;
KR13 = K130./K13I ;
FC13 = 0.36 ;
NC13 = 0.75-1.27.*(log10(FC13)) ;
F13 = 10.^(log10(FC13)./(1+(log10(KR13)./NC13).^2)) ;
krx(:,24) = (K130.*K13I).*F13./(K130+K13I) ;

Knames{25} = 'KMT14';
K140 = 9.0e-5.*exp(-9690./T).*M ;
K14I = 1.1e+16.*exp(-10560./T) ;
KR14 = K140./K14I ;
FC14 = 0.4 ;
NC14 = 0.75-1.27.*(log10(FC14)) ;
F14 = 10.^(log10(FC14)./(1+(log10(KR14)./NC14).^2)) ;
krx(:,25) = (K140.*K14I).*F14./(K140+K14I) ;

Knames{26} = 'KMT15';
K150 = 8.6e-29.*M.*(T./300).^-3.1 ;
K15I = 9.0e-12.*(T./300).^-0.85 ;
KR15 = K150./K15I ;
FC15 = 0.48 ;
NC15 = 0.75-1.27.*(log10(FC15)) ;
F15 = 10.^(log10(FC15)./(1+(log10(KR15)./NC15).^2)) ;
krx(:,26) = (K150.*K15I).*F15./(K150+K15I) ;

Knames{27} = 'KMT16';
K160 = 8e-27.*M.*(T./300).^-3.5 ;
K16I = 3.0e-11.*(T./300).^-1 ;
KR16 = K160./K16I ;
FC16 = 0.5 ;
NC16 = 0.75-1.27.*(log10(FC16)) ;
F16 = 10.^(log10(FC16)./(1+(log10(KR16)./NC16).^2)) ;
krx(:,27) = (K160.*K16I).*F16./(K160+K16I) ;

Knames{28} = 'KMT17';
K170 = 5.0e-30.*M.*(T./300).^-1.5 ;
K17I = 1.0e-12 ;
KR17 = K170./K17I ;
FC17 = 0.17.*exp(-51./T)+exp(-T./204) ;
NC17 = 0.75-1.27.*(log10(FC17)) ;
F17 = 10.^(log10(FC17)./(1.0+(log10(KR17)./NC17).^2)) ;
krx(:,28) = (K170.*K17I.*F17)./(K170+K17I) ;

Knames{29} = 'KMT18';
krx(:,29) = 9.5e-39.*.21.*M.*exp(5270./T)./(1+7.5e-29.*.21.*M.*exp(5610./T)) ;

Knames{32} = 'KBPPN'; %added by mmarvin 20141107
KPPN0 = 1.7e-03.*exp(-11280./T).*M ;
KPPNI = 8.3e+16.*exp(-13940./T) ;
KRPPN = KPPN0./KPPNI ;
FCPPN = 0.36 ;
NCPPN = 0.75-1.27.*(log10(FCPPN)) ;
FPPN = 10.^(log10(FCPPN)./(1.0+(log10(KRPPN)./NCPPN).^2)) ;
krx(:,32) = (KPPN0.*KPPNI.*FCPPN)./(KPPN0+KPPNI) ;


