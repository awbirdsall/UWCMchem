% UWCM_1BoxExample.m
% An example of how to implement the UWCMv2.1 box model for a few sets of initial conditions.
% This particular example is a set of "sensitivity" runs for a photochemical chamber.
% For more info, look at the UWCMv2.1_readme and the help files for each of the functions called below.
% 120810 GMW
%
% 20140108 GMW  Modified to test CB05 mechanism.

clear

%% METEOROLOGY
%{
OPTIONS FOR INPUT:
 1) List of variables (useful if constraints will be manually changed)
 2) Load a .mat file containing the cell array Met

DETAILS:
 Each meteorological input is specified with a scalar value. 
 These conditionss will be held fixed for all model steps in the run.
 Note that with these values, there is no photolysis correction
 (jcorr = 1), and no dilution (kdil = 0), but these still must be specified.
%}

Met = {...
%   names       values          
    'P'         1013       ;...    %Pressure, mbar
    'T'         298        ;...    %Temperature, K
    'RH'        10         ;...    %Relative Humidity, percent
    'jcorr'     1          ;...    %Correction factor for j-values
    'kdil'      0          ;...    %Dilution rate constant, per second
    };

%% CHEMICAL CONCENTRATIONS
%{
OPTIONS FOR INPUT:
 1) List of variables (useful if constraints will be manually changed)
 2) Load a .mat file containing the cell array InitConc

Valid values for HoldMe:
 1: Hold constant for each step
 0: Do not hold constant.
    Also, if ModelOptions.LinkSteps = 1 (see below), initialize first step only.

DETAILS:
 All non-zero initial concentrations are specified as scalars or column vectors.
 The length of the vectors for NO and NO2 determines the number of steps in the run.
 Since C5H8 and OH are scalars, their concentrations will be the same for all steps.
 The concetrations of NO, NO2, and OH are held constant during (since
 HoldMe = 1), while C5H8 is allowed to change (since HoldMe = 0).
 CH3ONO can be used as an alternative source of OH, if desired.
%}

InitConc = {...
%   names       conc(ppb)           HoldMe
    'NO'        [.02; .2; 2]          1;...
    'NO2'       [.1; 1; 10]           1;...
    'ISOP'      10                    0;...
    'OH'        1e-4                  1;...   %about 2.5e6 molec/cc
%    'CH3ONO'    100                   0;...
    };

%% CHEMISTRY
%{
 Cell array of strings specifying script files containing all desired
 chemical sub-mechanisms. Refer to UWCMv2.1_readme.txt for information
 on how these scripts are written and how to make your own.
 The CH3ONO reaction is currently not used, as CH3ONO is commented out
 above.
%}

ChemFiles = {...
    'CB05_AllRxns'
    };

%% DILUTION
%{
OPTIONS FOR INPUT:
 1) List of variables (useful if constraints will be manually changed)
 2) Load a .mat file containing the cell array BkgdConc

DETAILS:
 In this example, the system is being diluted at a rate given by kdil in
 the Obs.Met structure, as specified in "METEOROLOGY" (above). The
 background concentration is taken to be zero for all species, since the only
 value given is the 'DEFAULT' value of 0.

%}

BkgdConc = {...
%   names           values
    'DEFAULT'       0;...   %0 for all zeros, 1 to use InitConc
    };

%% MODEL OPTIONS
%{
DETAILS: 
 Since Verbose is enabled, progress and run times will be displayed in the command window.
 Since EndPointsOnly is disabled, all points along each model integration step
 will be given. The number of points will vary between steps.
 The steps can be separated later using SplitRun (see Plots_OneBoxExample.m).
 LinkSteps is disabled and would not make sense in this case,
 since each step is conceptually unrelated (i.e. a separate scenario).
 The radiation spectrum specified by ChamberLights will be used to calculate
 photolysis frequencies. 
 SavePath is set to default, meaning output will be saved in the \UWCMruns\
 subdirectory with an auto-generated dated filename.
%}

ModelOptions.Verbose = 1; %flag for verbose output
ModelOptions.EndPointsOnly = 0; %flag for concentration and rate outputs
ModelOptions.LinkSteps = 0; %flag for using end-points of one run to initialize next run
ModelOptions.Repeat = 1; %number of times to loop through all constraints
ModelOptions.ChamberLights = 'LightSpectrum.txt'; %path for text file containing radiation spectrum
ModelOptions.SavePath = 'C:\GMWfiles\UWCM\UWCMv2.2\UWCMruns\'; %partial or full path or empty
ModelOptions.IntTime = 3*3600;

%% MODEL RUN
%{
 The model will execute for 10800s (3 hours) for each step, as determined by IntTime.
 The structure S will contain all the model output, which is also saved according
 to SavePath (above). Plots_OneBoxExample demonstrates how to use some of the 
 plotting tools.
%}

S = UWCM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);

clear Met InitConc ChemFiles BkgdConc ModelOptions

% Plots_OneBoxExample


