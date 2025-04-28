% clear; close all
%% Simulation Data
simu = simulationClass();
simu.simMechanicsFile = 'ellipsoidSMC.slx';
simu.solver='ode45';                    % 'ode4' for fixed step or 'ode45' for variable step
simu.mode = 'normal';                   % Specify Simulation Mode ('normal','accelerator','rapid-accelerator')
simu.explorer='off';                     % Turn SimMechanics Explorer (on/off)
simu.startTime = 0;
simu.rampTime = 30;
simu.endTime=500;
simu.dt = 0.1;
simu.rho=1025;
% simu.nonlinearDt = 3*simu.dt;

%% Wave Information
% Regular Waves
waves = waveClass('regularCIC');
waves.height = 0.8222;
waves.period = 6;

%% Body Data
body(1) = bodyClass('C:\Users\um1023\Documents\SMC\RegularCIC_SMCcontroller/hydroData/ellipsoid.h5');
%body(1).hydroDataFile = 'C:/Users/um1023/Documents/RegularCIC_Fuzzycontroller/RegularCIC_Fuzzycontroller/hydroData/ellipsoid.h5';
body(1).mass = 'equilibrium';
body(1).inertia = ...
    [1.375264e6 1.375264e6 1.341721e6];
body(1).geometryFile = 'geometry/elipsoid.stl' ;
% body(1).quadDrag.cd=[1 0 1 0 1 0];
% body(1).quadDrag.area=[25 0 pi*5^2 0 pi*5^5 0];
body(1).nonlinearHydro = 2;                       % Non-linear hydro on/off

%% PTO and Constraint Parameters
% Fixed Constraint
% constraint(1) = constraintClass('Constraint1');
% constraint(1).location = [0 0 -12.5];

% Translational PTO
pto(1) = ptoClass('PTO1');
pto(1).stiffness=0;
pto(1).damping=0;
pto(1).location = [0 0 -12.5];


%% Controller

%% Controller: Sliding Mode Controller (SMC)

% Define controller parameters (optional, only if you want to access in simulation or workspace)
controller(1).a1 = 10;         % Sliding surface gain
controller(1).m = 133376;         % Estimated WEC body mass
controller(1).l = 2000;     % Reaching gain
controller(1).c = 3000;  
%save('C:\Users\um1023\Documents\RegularCIC_Fuzzycontroller\RegularCIC_Fuzzycontroller\Results\ControlFLC.mat')

