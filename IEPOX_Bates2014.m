% IEPOX_Lee2014.m
% Modifications to loss of isoprene dihydroxyepoxides following
% "Gas Phase Production and Loss of Isoprene Epoxydiols", Bates et al., J. Phys Chem A (2014).
% Note that this has only updated the rate constants, and not any product yields or branching.
%
% 20141117 GMW

RxnToReplace = 'OH + IEPOXA = IEACHO + HO2';
kToReplace = 8.4e-12;
ReplaceRxn

RxnToReplace = 'OH + IEPOXB = IEB1O2';
kToReplace = 0.5*(0.32*1.52 + 0.68*0.98)*1e-11; %yields are buried in text
ReplaceRxn

RxnToReplace = 'OH + IEPOXB = IEB2O2';
kToReplace = 0.5*(0.32*1.52 + 0.68*0.98)*1e-11;
ReplaceRxn

% NOTE: IEPOXC REACTIONS NOT MEASURED, SO NO CHANGES!


