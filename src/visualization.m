% Plot vibrations 

normal = readtable('data\normal.csv');
missalignmet = readtable('data\shaft_misalignment.csv');
friction = readtable("data\bearing_friction.csv");
%elctric = readtable("data\Electric_fault.csv");



%% Normal Vibrations
plot_vibration(normal,"Nomal"); 

%% Missalignmet Fault Vibrations
%plot_vibration(missalignmet,"Missalignmet");

%% Friction Fault Vibrations
%plot_vibration(friction,"Friction "); 

%% Electric Fault Vibrations
%plot_vibration(normal,"Electric fault"); 
