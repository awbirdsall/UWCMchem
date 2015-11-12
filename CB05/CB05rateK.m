function [krx,Knames] = CB05rateK(T,M)
% function [krx,Knames] = CB05rateK(T,M)
% Calculate generic rate constants for use with the CB05 chemical mechanism in the UWCM box model.
% INPUTS:
% T: temperature, K
% M: number density, molec/cm^3
%
% OUTPUTS:
% krx: matrix of rate constants. Size is length(T) x # of rate constants (18)
% Knames: cell array of rate constant names.
%
% 20130106 GMW

nk = 18; %number of rate constants
krx = nan(length(T),nk);
Knames = cell(nk,1);

%%%%% SIMPLE REACTIONS %%%%%
i=1;
Knames{i}   = 'K_O3P_NO2';
LPL         = 2.5E-31.*(T./300).^(-1.8).*M ;
HPL         = 2.2E-11.*(T./300).^(-0.7)    ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));
   
i=i+1;   
Knames{i}   = 'K_O3P_NO';
LPL         = 9.0E-32.*(T./300).^(-1.5).*M ;
HPL     	= 3.00E-11.*(T./300).^(-0.0) ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_OH_NO';
LPL         = 7.0E-31.*(T./300).^(-2.6).*M ;
HPL         = 3.6E-11.*(T./300).^(-0.1)   ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_OH_NO2';
LPL         = 1.8E-30.*(T./300).^(-3.0).*M ;
HPL         = 2.8E-11.*(T./300).^(-0.0)   ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2)) ;

i=i+1;
Knames{i}   = 'K_OH_HNO3';
K1          = 2.4E-14.*exp(460./T)     ;
K3          = 6.5E-34.*exp(1335./T)    ;
K4          = 2.7E-17.*exp(2199./T)    ;
K2          = (K3.*M)./(1+(K3.*M./K4)) ;
krx(:,i)    = K1 + K2 ;

i=i+1;
Knames{i}   = 'K_OH_OLE';
LPL         = 8.0E-27.*(T./300).^(-3.5).*M ;
HPL         = 3.0E-11.*(T./300).^0   ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.5.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_OH_ETH';
LPL         = 1.0E-28.*(T./300).^(-4.5).*M;
HPL         = 8.8E-12.*(T./300).^(0.85);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_SO2_OH';
LPL         = 3.3E-31.*(T./300).^(-4.3).*M ;
HPL         = 1.6E-12.*(T./300).^0.0    ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_OH_OH';
LPL         = 6.9E-31.*(T./300).^(-1.0).*M;
HPL         = 2.6E-11;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_OH_CO';
LPL         = 5.9E-33.*((T./300).^-1.4).*M;
HPL         = 1.1E-12.*((T./300).^1.3) ;
K_OH_COa    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));
LPL         = 1.5E-13.*((T./300).^0.6);
HPL         = 2.1E9.*((T./300).^6.1) ;
K_OH_COb    = (LPL./(1+LPL./(HPL./M))).*0.6.^(1./(1+(log10(LPL./(HPL./M))).^-2));
krx(:,i)    = K_OH_COa + K_OH_COb;


%%%%% EQUILIBRIA %%%%%

i=i+1;
Knames{i}   = 'K_NO3_NO2';
LPL         = 2.0E-30.*(T./300).^(-4.4).*M ;
HPL         = 1.4E-12.*(T./300).^(-0.7)   ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_N2O5';
A           = 2.70E-27;
B           = 11000;
krx(:,i)    = krx(:,i-1)./(A.*exp(B./T));

i=i+1;
Knames{i}   = 'K_HO2_NO2';
LPL         = 2.0E-31.*(T./300).^(-3.4).*M ;
HPL         = 2.9E-12.*(T./300).^(-1.1) ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2)) ;

i=i+1;
Knames{i}   = 'K_PNA';
A           = 2.10E-27;
B           = 10900;
krx(:,i)    = krx(:,i-1)./(A.*exp(B./T));

i=i+1;
Knames{i}   = 'K_C2O3_NO2';
LPL         = (9.70E-29.*(T./300).^-5.6).*M;
HPL         = (9.30E-12.*(T./300).^-1.5);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_PAN';
A           = 9.00E-29;
B           = 14000;
krx(:,i)    = krx(:,i-1)./(A.*exp(B./T));

i=i+1;
Knames{i}   = 'K_CXO3_NO2';
LPL         = 2.7E-28.*(T./300).^(-7.1).*M ;
HPL         = 1.2E-11.*(T./300).^(-0.9)    ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.3.^(1./(1+(log10(LPL./HPL)).^-2));

i=i+1;
Knames{i}   = 'K_PANX';
LPL         = 4.9E-03.*exp(-12100./T).*M;
HPL         = 5.4E16.*exp(-13830./T);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.3.^(1./(1+(log10(LPL./HPL)).^-2));


