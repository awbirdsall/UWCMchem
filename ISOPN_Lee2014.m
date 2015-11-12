% ISOPN_Lee2014.m
% Modifications to loss of isoprene nitrates following
% "On Rates and Mechanisms of OH and O3 Reactions with Isoprene-Derived Hydroxy Nitrates", Lee et al., J. Phys Chem A (2014).
% Note that this has only updated the rate constants, and not any product yields or branching.
%
% 20141117 GMW

% ISOPANO3
RxnToReplace = 'O3 + ISOPANO3 = ACETOL +  + 0.11NC2OO + 0.89OH + 0.89NO2 + 0.89GLYOX';
kToReplace = 0.5*2.7e-17;
ReplaceRxn

RxnToReplace = 'O3 + ISOPANO3 =  + 0.11ACLOO + 0.89OH + 0.89HO2 + 0.89MGLYOX + NO3CH2CHO';
kToReplace = 0.5*2.7e-17;
ReplaceRxn

RxnToReplace = 'OH + ISOPANO3 = INAO2';
kToReplace = 1.1e-10;
ReplaceRxn

% ISOPBNO3
RxnToReplace = 'O3 + ISOPBNO3 = HCHO +  + 0.36ACETOL + 0.36NO2 + 0.36CO + 0.36OH + 0.20ACETOL + 0.20NO2 + 0.20HO2 + 0.24MACRNOO + 0.20PROPOLNO3';
kToReplace = 0.5*2.8e-19;
ReplaceRxn

RxnToReplace = 'O3 + ISOPBNO3 = MACRNO3 +  + 0.24CH2OO + 0.40CO + 0.36HO2 + 0.36CO + 0.36OH';
kToReplace = 0.5*2.8e-19;
ReplaceRxn

RxnToReplace = 'OH + ISOPBNO3 = INB1O2';
kToReplace = 0.72*2.1e-11;
ReplaceRxn

RxnToReplace = 'OH + ISOPBNO3 = INB2O2';
kToReplace = 0.28*2.1e-11;
ReplaceRxn

% ISOPCNO3
RxnToReplace = 'O3 + ISOPCNO3 =  + 0.11GAOO + 0.89OH + 0.89HO2 + 0.89CO + 0.89HCHO + NOA';
kToReplace = 0.5*2.8e-17;
ReplaceRxn

RxnToReplace = 'O3 + ISOPCNO3 = HOCH2CHO +  + 0.11NC3OO + 0.89OH + 0.89NO2 + 0.89MGLYOX';
kToReplace = 0.5*2.8e-17;
ReplaceRxn

RxnToReplace = 'OH + ISOPCNO3 = INCO2';
kToReplace = 1.1e-10;
ReplaceRxn

% ISOPDNO3
RxnToReplace = 'O3 + ISOPDNO3 =  + 0.18CH2OO + 0.82HO2 + 0.82CO + 0.82OH + MVKNO3';
kToReplace = 0.5*5e-19;
ReplaceRxn

RxnToReplace = 'O3 + ISOPDNO3 = HCHO +  + 0.18NC4OO + 0.82OH + 0.82NO2 + 0.82BIACETOH';
kToReplace = 0.5*5e-19;
ReplaceRxn

RxnToReplace = 'OH + ISOPDNO3 = INDO2';
kToReplace = 4.2e-11;
ReplaceRxn


