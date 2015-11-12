ind=find(fISOPBOOH==-1);
ind2=find(fOH==-1);
ExtraLoss=k(:,intersect(ind,ind2)).*100;
%matrix is measured OH conc in molec/cm3

i=i+1;
Rnames{i} = 'ISOPBOOH = ISOPBOOH_aer';
k(:,i) = ExtraLoss; 
Gstr{i,1} = 'ISOPBOOH';
Gstr{i,2} = 'OH';
fISOPBOOH(i)=-1;  fISOPBOOH_aer(i)=1; 

i=i+1;
Rnames{i} = 'ISOPAOOH = ISOPAOOH_aer';
k(:,i) = ExtraLoss; 
Gstr{i,1} = 'ISOPAOOH';
Gstr{i,2} = 'OH';
fISOPAOOH(i)=-1;  fISOPAOOH_aer(i)=1; 

i=i+1;
Rnames{i} = 'ISOPCOOH = ISOPCOOH_aer';
k(:,i) = ExtraLoss; 
Gstr{i,1} = 'ISOPCOOH';
Gstr{i,2} = 'OH';
fISOPCOOH(i)=-1;  fISOPCOOH_aer(i)=1; 

i=i+1;
Rnames{i} = 'ISOPDOOH = ISOPDOOH_aer';
k(:,i) = ExtraLoss; 
Gstr{i,1} = 'ISOPDOOH';
Gstr{i,2} = 'OH';
fISOPDOOH(i)=-1;  fISOPDOOH_aer(i)=1; 
