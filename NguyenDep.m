% SOAS_dry_deposition.m
% 150406
% # of species = ??
% # of reactions = ??
% Updated 8/29/14 with deposition velocities and ABLheight
% Added ozone 9/15/14
% 0406 JBK built off Kate's


% load('C:\SOAS\VDep.mat') %from 2015 PNAS paper
load Nguyen_Vdep_interp %from 2015 PNAS paper interpolated to time base
DepSp=fieldnames(Vd);
Vd.Time=[0:.5:23.5]./24;

load('Measurements_174to177.mat'); %reload BLH; put Vd on repeating timebase
VdI.Time=Bin2GC.Time-floor(Bin2GC.Time);
for d=1:length(DepSp);
eval(['VdI.' DepSp{d} '=interp1(Vd.Time,Vd.' DepSp{d} ',VdI.Time);']);
end
ABLheight=Bin2GC.BLH(:,1).*100;

SpeciesToAdd = {...
    'HCOOH';'HCOOHdep';'H2O2';'H2O2dep';'HNO3';'HNO3dep';...
    'CH3CO3H'; 'CH3CO3Hdep';...
    'IEPOXA';'IEPOXAdep';'IEPOXB';'IEPOXBdep';'IEPOXC';'IEPOXCdep';'ISOPAOOH';'ISOPAOOHdep';'ISOPBOOH';'ISOPBOOHdep';'ISOPCOOH';'ISOPCOOHdep';'ISOPDOOH';'ISOPDOOHdep';...
    'MACRNO3'; 'MACRNO3dep';'MVKNO3';'MVKNO3dep';...
    'ACETOL';'ACETOLdep';'NOA';'NOAdep';...
    'ISOPANO3';'ISOPANO3dep';'ISOPBNO3';'ISOPBNO3dep'; 'ISOPCNO3';'ISOPCNO3dep';'ISOPDNO3';'ISOPDNO3dep';...
    'BIACETOH'; 'BIACETOHdep';...
    'HO12CO3C4'; 'HO12CO3C4dep';...
    'NAPINAOOH'; 'NAPINAOOHdep';...
    'NAPINBOOH'; 'NAPINBOOHdep';...
    'BPINAOOH'; 'BPINAOOHdep';...
    'BPINBOOH'; 'BPINBOOHdep';...
    'NLIMOOH'; 'NLIMOOHdep';...
    };

AddSpecies

i=i+1;
Rnames{i} = 'HCOOH + surface = HCOOHdep';
k(:,i) = VdI.HCOOH./ABLheight;
Gstr{i,1} = 'HCOOH';
fHCOOH(i)=fHCOOH(i)-1; fHCOOHdep(i)=fHCOOHdep(i)+1;

i=i+1;
Rnames{i} = 'HNO3 + surface = HNO3dep';
k(:,i) = VdI.HNO3./ABLheight; 
Gstr{i,1} = 'HNO3';
fHNO3(i)=fHNO3(i)-1; fHNO3dep(i)=fHNO3dep(i)+1;

i=i+1;
Rnames{i} = 'H2O2 + surface = H2O2dep';
k(:,i) = VdI.H2O2./ABLheight; 
Gstr{i,1} = 'H2O2';
fH2O2(i)=fH2O2(i)-1; fH2O2dep(i)=fH2O2dep(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + surface = CH3CO3Hdep';
k(:,i) = VdI.PAA./ABLheight;
Gstr{i,1} = 'CH3CO3H';
fCH3CO3H(i)=fCH3CO3H(i)-1; fCH3CO3Hdep(i)=fCH3CO3Hdep(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXA + surface = IEPOXAdep';
k(:,i) = VdI.IPIE./ABLheight;
Gstr{i,1} = 'IEPOXA';
fIEPOXA(i)=fIEPOXA(i)-1; fIEPOXAdep(i)=fIEPOXAdep(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXB + surface = IEPOXBdep';
k(:,i) = VdI.IPIE./ABLheight;
Gstr{i,1} = 'IEPOXB';
fIEPOXB(i)=fIEPOXB(i)-1; fIEPOXBdep(i)=fIEPOXBdep(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXC + surface = IEPOXCdep';
k(:,i) = VdI.IPIE./ABLheight; 
Gstr{i,1} = 'IEPOXC';
fIEPOXC(i)=fIEPOXC(i)-1; fIEPOXCdep(i)=fIEPOXCdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAOOH + surface = ISOPAOOHdep';
k(:,i) = VdI.IPIE./ABLheight; 
Gstr{i,1} = 'ISOPAOOH';
fISOPAOOH(i)=fISOPAOOH(i)-1; fISOPAOOHdep(i)=fISOPAOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBOOH + surface = ISOPBOOHdep';
k(:,i) = VdI.IPIE./ABLheight;
Gstr{i,1} = 'ISOPBOOH';
fISOPBOOH(i)=fISOPBOOH(i)-1; fISOPBOOHdep(i)=fISOPBOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCOOH + surface = ISOPCOOHdep';
k(:,i) = VdI.IPIE./ABLheight;
Gstr{i,1} = 'ISOPCOOH';
fISOPCOOH(i)=fISOPCOOH(i)-1; fISOPCOOHdep(i)=fISOPCOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDOOH + surface = ISOPDOOHdep';
k(:,i) = VdI.IPIE./ABLheight; 
Gstr{i,1} = 'ISOPDOOH';
fISOPDOOH(i)=fISOPDOOH(i)-1; fISOPDOOHdep(i)=fISOPDOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPANO3 + surface = ISOPANO3dep';
k(:,i) = VdI.ISOPN./ABLheight; 
Gstr{i,1} = 'ISOPANO3';
fISOPANO3(i)=fISOPANO3(i)-1; fISOPANO3dep(i)=fISOPANO3dep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBNO3 + surface = ISOPBNO3dep';
k(:,i) = VdI.ISOPN./ABLheight; 
Gstr{i,1} = 'ISOPBNO3';
fISOPBNO3(i)=fISOPBNO3(i)-1; fISOPBNO3dep(i)=fISOPBNO3dep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCNO3 + surface = ISOPCNO3dep';
k(:,i) = VdI.ISOPN./ABLheight; 
Gstr{i,1} = 'ISOPCNO3';
fISOPCNO3(i)=fISOPCNO3(i)-1; fISOPCNO3dep(i)=fISOPCNO3dep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDNO3 + surface = ISOPDNO3dep';
k(:,i) = VdI.ISOPN./ABLheight; 
Gstr{i,1} = 'ISOPDNO3';
fISOPDNO3(i)=fISOPDNO3(i)-1; fISOPDNO3dep(i)=fISOPDNO3dep(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO3 + surface = MACRNO3dep';
k(:,i) = VdI.MACNMVKN./ABLheight; 
Gstr{i,1} = 'MACRNO3';
fMACRNO3(i)=fMACRNO3(i)-1; fMACRNO3dep(i)=fMACRNO3dep(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 + surface = MVKNO3dep';
k(:,i) = VdI.MACNMVKN./ABLheight;
Gstr{i,1} = 'MVKNO3';
fMVKNO3(i)=fMVKNO3(i)-1; fMVKNO3dep(i)=fMVKNO3dep(i)+1; 

i=i+1;
Rnames{i} = 'NOA + surface = MVKNO3dep';
k(:,i) = VdI.PROPNN./ABLheight;
Gstr{i,1} = 'NOA';
fNOA(i)=fNOA(i)-1; fNOAdep(i)=fNOAdep(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + surface = ACETOLdep';
k(:,i) = VdI.HAC./ABLheight;
Gstr{i,1} = 'ACETOL';
fACETOL(i)=fACETOL(i)-1; fACETOLdep(i)=fACETOLdep(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOH + surface = BIACETOHdep';
k(:,i) = VdI.HDC4./ABLheight; 
Gstr{i,1} = 'BIACETOH';
fBIACETOH(i)=fBIACETOH(i)-1; fBIACETOHdep(i)=fBIACETOHdep(i)+1; 

i=i+1;
Rnames{i} = 'HO12CO3C4 + surface = HO12CO3C4dep';
k(:,i) = VdI.DHC4./ABLheight; 
Gstr{i,1} = 'HO12CO3C4';
fHO12CO3C4(i)=fHO12CO3C4(i)-1; fHO12CO3C4dep(i)=fHO12CO3C4dep(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAOOH + surface = NAPINAOOHdep';
k(:,i) = VdI.MTHP./ABLheight; 
Gstr{i,1} = 'NAPINAOOH';
fNAPINAOOH(i)=fNAPINAOOH(i)-1; fNAPINAOOHdep(i)=fNAPINAOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBOOH + surface = NAPINBOOHdep';
k(:,i) = VdI.MTHP./ABLheight; 
Gstr{i,1} = 'NAPINBOOH';
fNAPINBOOH(i)=fNAPINBOOH(i)-1; fNAPINBOOHdep(i)=fNAPINBOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'BPINAOOH + surface = BPINAOOHdep';
k(:,i) = VdI.MTHP./ABLheight; 
Gstr{i,1} = 'BPINAOOH';
fBPINAOOH(i)=fBPINAOOH(i)-1; fBPINAOOHdep(i)=fBPINAOOHdep(i)+1;

i=i+1;
Rnames{i} = 'BPINBOOH + surface = BPINBOOHdep';
k(:,i) = VdI.MTHP./ABLheight; 
Gstr{i,1} = 'BPINBOOH';
fBPINBOOH(i)=fBPINBOOH(i)-1; fBPINBOOHdep(i)=fBPINBOOHdep(i)+1;

i=i+1;
Rnames{i} = 'NLIMOOH + surface = NLIMOOHdep';
k(:,i) = VdI.MTHP./ABLheight; 
Gstr{i,1} = 'NLIMOOH';
fNLIMOOH(i)=fNLIMOOH(i)-1; fNLIMOOHdep(i)=fNLIMOOHdep(i)+1;

