% CB05Jval_fromMCM.m
% Converts from MCM J-value names to those used in CB05.
% MCM J-values must be in the workspace before running this.
% Some of the reactions are not included in MCM, so crappy guesses were made.
% These should all be checked against CB05 documentation (especially the organic photolysis rates)
% before using for real science.
% 20130107 GMW

JNO2        = J4;
JNO3_NO     = J5;
JNO3_NO2    = J6;
JN2O5       = J5+J6; %wrong, but MCM doesn't include this. won't matter if NO3 isn't around.
JHNO3       = J8;
JO3P        = J2;
JO1D        = J1;
JHONO       = J7;
JHO2NO2     = J7; %wrong; not in MCM
JH2O2       = J3;
JNTR        = J51;
JCOOH       = J41;
JMEPX       = J41;
JCCHO_R     = J13;
JC2CHO      = J14;
JPAN        = 0;   %wrong; not in MCM; only matters above 10 km or so
JHCHO_H2    = J12;
JHCHO_HO2   = J11;
JACRO       = J23 + J24;
JMGLY       = J34;

