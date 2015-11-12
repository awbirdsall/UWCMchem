% SOAS_dry_deposition.m
% 130708
% # of species = ??
% # of reactions = ??
% Updated 8/29/14 with deposition velocities and ABLheight
% Added ozone 9/15/14

SpeciesToAdd = {...
    'GLYOX'; 'GLYOXdep'; 'HCHO'; 'HCHOdep';'MVK';'MVKdep';'MACR';'MACRdep'; 
    'HOCH2CHO';'HOCH2CHOdep';'O3';'O3dep';'IEPOXA';'IEPOXAdep';
    'IEPOXB';'IEPOXBdep';'IEPOXC';'IEPOXCdep';'ISOPAOOH';'ISOPAOOHdep';
    'ISOPBOOH';'ISOPBOOHdep';'ISOPCOOH';'ISOPCOOHdep';'ISOPDOOH';'ISOPDOOHdep';
    'ACETOL';'ACETOLdep';'ISOPANO3';'ISOPANO3dep';'ISOPBNO3';'ISOPBNO3dep';
    'ISOPCNO3';'ISOPCNO3dep';'ISOPDNO3';'ISOPDNO3dep';'H2O2';'H2O2dep';
    'HNO3';'HNO3dep';
    };


AddSpecies


i=i+1;
Rnames{i} = 'GLYOX + surface = GLYOXdep';
k(:,i) = GLYOXVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'GLYOX';
fGLYOX(i)=fGLYOX(i)-1; fGLYOXdep(i)=fGLYOXdep(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + surface = HCHOdep';
k(:,i) = HCHOVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'HCHO';
fHCHO(i)=fHCHO(i)-1; fHCHOdep(i)=fHCHOdep(i)+1; 

i=i+1;
Rnames{i} = 'MVK + surface = MVKdep';
k(:,i) = MVKVd./ABLheight; %determined from the data on
Gstr{i,1} = 'MVK';
fMVK(i)=fMVK(i)-1; fMVKdep(i)=fMVKdep(i)+1; 

i=i+1;
Rnames{i} = 'MACR + surface = MACRdep';
k(:,i) = MACRVd./ABLheight; %determined from the data on 
Gstr{i,1} = 'MACR';
fMACR(i)=fMACR(i)-1; fMACRdep(i)=fMACRdep(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + surface = HOCH2CHOdep';
k(:,i) = HOCH2CHOVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'HOCH2CHO';
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fHOCH2CHOdep(i)=fHOCH2CHOdep(i)+1; 

i=i+1;
Rnames{i} = 'O3 + surface = O3dep';
k(:,i) = O3Vd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'O3';
fO3(i)=fO3(i)-1; fO3dep(i)=fO3dep(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXA + surface = IEPOXAdep';
k(:,i) = IEPOXVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'IEPOXA';
fIEPOXA(i)=fIEPOXA(i)-1; fIEPOXAdep(i)=fIEPOXAdep(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXB + surface = IEPOXBdep';
k(:,i) = IEPOXVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'IEPOXB';
fIEPOXB(i)=fIEPOXB(i)-1; fIEPOXBdep(i)=fIEPOXBdep(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXC + surface = IEPOXCdep';
k(:,i) = IEPOXVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'IEPOXC';
fIEPOXC(i)=fIEPOXC(i)-1; fIEPOXCdep(i)=fIEPOXCdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAOOH + surface = ISOPAOOHdep';
k(:,i) = ISOPOOHVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ISOPAOOH';
fISOPAOOH(i)=fISOPAOOH(i)-1; fISOPAOOHdep(i)=fISOPAOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBOOH + surface = ISOPBOOHdep';
k(:,i) = ISOPOOHVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ISOPBOOH';
fISOPBOOH(i)=fISOPBOOH(i)-1; fISOPBOOHdep(i)=fISOPBOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCOOH + surface = ISOPCOOHdep';
k(:,i) = ISOPOOHVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ISOPCOOH';
fISOPCOOH(i)=fISOPCOOH(i)-1; fISOPCOOHdep(i)=fISOPCOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDOOH + surface = ISOPDOOHdep';
k(:,i) = ISOPOOHVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ISOPDOOH';
fISOPDOOH(i)=fISOPDOOH(i)-1; fISOPDOOHdep(i)=fISOPDOOHdep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPANO3 + surface = ISOPANO3dep';
k(:,i) = ISOPNO3Vd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ISOPANO3';
fISOPANO3(i)=fISOPANO3(i)-1; fISOPANO3dep(i)=fISOPANO3dep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBNO3 + surface = ISOPBNO3dep';
k(:,i) = ISOPNO3Vd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ISOPBNO3';
fISOPBNO3(i)=fISOPBNO3(i)-1; fISOPBNO3dep(i)=fISOPBNO3dep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCNO3 + surface = ISOPCNO3dep';
k(:,i) = ISOPNO3Vd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ISOPCNO3';
fISOPCNO3(i)=fISOPCNO3(i)-1; fISOPCNO3dep(i)=fISOPCNO3dep(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDNO3 + surface = ISOPDNO3dep';
k(:,i) = ISOPNO3Vd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ISOPDNO3';
fISOPDNO3(i)=fISOPDNO3(i)-1; fISOPDNO3dep(i)=fISOPDNO3dep(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + surface = ACETOLdep';
k(:,i) = ACETOLVd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'ACETOL';
fACETOL(i)=fACETOL(i)-1; fACETOLdep(i)=fACETOLdep(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + surface = H2O2dep';
k(:,i) = H2O2Vd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'H2O2';
fH2O2(i)=fH2O2(i)-1; fH2O2dep(i)=fH2O2dep(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + surface = HNO3dep';
k(:,i) = HNO3Vd./ABLheight; %determined from the data on 171,172,173
Gstr{i,1} = 'HNO3';
fHNO3(i)=fHNO3(i)-1; fHNO3dep(i)=fHNO3dep(i)+1; 