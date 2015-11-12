function [j,Jnames] = MCMphoto(sza)
% function [j,Jnames] = MCMphoto(sza)
% calculates generic photolysis rate constants used in MCM reaction model.
%INPUTS:
%sza: solar zenith angle in degrees
%OUTPUTS:
%j: matrix of rate constants with length(sza) rows and one reaction per column
%Jnames: cell array of MCM-assigned J-value names
%080916 GMW
%
%Updated to improve readability.
%Also added code at end to set all j-values to 0 if sza>=90 degrees.
%Also added ability to run calculation for a vector of sza values.
%120207 GMW
%Updated to match MCMv3.3
%150323 JBK

sza = sza(:); %need column vector

%%%%%INITIALIAZATION%%%%%
nj = 36; %number of rate constants
I = nan(1,nj);
m = nan(1,nj);
n = nan(1,nj);
Jnames = cell(nj,1);
i=0;

%%%%%INDIVIDUAL VALUES%%%%%
i=i+1;
Jnames{i} = 'J1';
I(i) = 6.073e-5;
m(i) = 1.743;
n(i) = 0.474;

i=i+1;
Jnames{i} = 'J2';
I(i) = 4.775e-4;
m(i) = 0.298;
n(i) = 0.080;

i=i+1;
Jnames{i} = 'J3';
I(i) = 1.041e-5;
m(i) = 0.723;
n(i) = 0.279;

i=i+1;
Jnames{i} = 'J4';
I(i) = 1.165e-2;
m(i) = 0.244;
n(i) = 0.267;

i=i+1;
Jnames{i} = 'J5';
I(i) = 2.485e-2;
m(i) = 0.168;
n(i) = 0.108;

i=i+1;
Jnames{i} = 'J6';
I(i) = 1.747e-1;
m(i) = 0.155;
n(i) = 0.125;

i=i+1;
Jnames{i} = 'J7';
I(i) = 2.644e-3;
m(i) = 0.261;
n(i) = 0.288;

i=i+1;
Jnames{i} = 'J8';
I(i) = 9.312e-7;
m(i) = 1.230;
n(i) = 0.307;

i=i+1;
Jnames{i} = 'J11';
I(i) = 4.642e-5;
m(i) = 0.762;
n(i) = 0.353;

i=i+1;
Jnames{i} = 'J12';
I(i) = 6.853e-5;
m(i) = 0.477;
n(i) = 0.323;

i=i+1;
Jnames{i} = 'J13';
I(i) = 7.344e-6;
m(i) = 1.202;
n(i) = 0.417;

i=i+1;
Jnames{i} = 'J14';
I(i) = 2.879e-5;
m(i) = 1.067;
n(i) = 0.358;

i=i+1;
Jnames{i} = 'J15';
I(i) = 2.792e-5;
m(i) = 0.805;
n(i) = 0.338;

i=i+1;
Jnames{i} = 'J16';
I(i) = 1.675e-5;
m(i) = 0.805;
n(i) = 0.338;

i=i+1;
Jnames{i} = 'J17';
I(i) = 7.914e-5;
m(i) = 0.764;
n(i) = 0.364;

i=i+1;
Jnames{i} = 'J18';
% I(i) = 1.140e-5; MCMv3.2
I(i) = 1.482e-6;
m(i) = 0.396;
n(i) = 0.298;

i=i+1;
Jnames{i} = 'J19';
% I(i) = 1.140e-5; MCMv3.2
I(i) = 1.482e-6; 
m(i) = 0.396;
n(i) = 0.298;

%added J20 jbk 150323
i=i+1;
Jnames{i} = 'J20';
I(i) = 7.6e-4;
m(i) = 0.396;
n(i) = 0.298;

i=i+1;
Jnames{i} = 'J21';
I(i) = 7.992e-7;
m(i) = 1.578;
n(i) = 0.271;

i=i+1;
Jnames{i} = 'J22';
I(i) = 5.804e-6;
m(i) = 1.092;
n(i) = 0.377;

i=i+1;
Jnames{i} = 'J23';
% I(i) = 1.836e-5; %MCM 3.2
I(i) = 2.4246e-6; 
m(i) = 0.395;
n(i) = 0.296;

i=i+1;
Jnames{i} = 'J24';
% I(i) = 1.836e-5; %MCM 3.2
I(i) = 2.4246e-6; 
m(i) = 0.395;
n(i) = 0.296;

i=i+1;
Jnames{i} = 'J31';
I(i) = 6.845e-5;
m(i) = 0.130;
n(i) = 0.201;

i=i+1;
Jnames{i} = 'J32';
I(i) = 1.032e-5;
m(i) = 0.130;
n(i) = 0.201;

i=i+1;
Jnames{i} = 'J33';
I(i) = 3.802e-5;
m(i) = 0.644;
n(i) = 0.312;

i=i+1;
Jnames{i} = 'J34';
I(i) = 1.537e-4;
m(i) = 0.170;
n(i) = 0.208;

i=i+1;
Jnames{i} = 'J35';
I(i) = 3.326e-4;
m(i) = 0.148;
n(i) = 0.215;

i=i+1;
Jnames{i} = 'J41';
I(i) = 7.649e-6;
m(i) = 0.682;
n(i) = 0.279;

i=i+1;
Jnames{i} = 'J51';
I(i) = 1.588e-6;
m(i) = 1.154;
n(i) = 0.318;

i=i+1;
Jnames{i} = 'J52';
I(i) = 1.907e-6;
m(i) = 1.244;
n(i) = 0.335;

i=i+1;
Jnames{i} = 'J53';
I(i) = 2.485e-6;
m(i) = 1.196;
n(i) = 0.328;

i=i+1;
Jnames{i} = 'J54';
I(i) = 4.095e-6;
m(i) = 1.111;
n(i) = 0.316;

i=i+1;
Jnames{i} = 'J55';
I(i) = 1.135e-5;
m(i) = 0.974;
n(i) = 0.309;

i=i+1;
Jnames{i} = 'J56';
% I(i) = 7.549e-6; MCM3.2
I(i) = 4.365e-5; 
% m(i) = 1.015; MCM3.2
m(i) = 1.089;
% n(i) = 0.324; MCM3.2
n(i) = 0.323;

%Not in MCM 3.3
i=i+1;
Jnames{i} = 'J57';
I(i) = 3.363e-6;
m(i) = 1.296;
n(i) = 0.322;

i=i+1;
Jnames{i} = 'J61';
I(i) = 7.537e-4;
m(i) = 0.499;
n(i) = 0.266;

%%%%%CALCULATE J-VALUES%%%%%
ns = length(sza);
szabig = repmat(sza,1,nj);
Ibig = repmat(I,ns,1);
mbig = repmat(m,ns,1);
nbig = repmat(n,ns,1);

warning off %secd gives /0 warning for sza=90
j=Ibig.*cosd(szabig).^mbig.*exp(-nbig.*secd(szabig));
warning on

sunset = find(sza>=90);
j(sunset,:) = 0;

