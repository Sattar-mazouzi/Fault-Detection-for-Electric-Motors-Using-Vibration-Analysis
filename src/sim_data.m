clear vibration_3axis_B1 vibration_3axis_F1 
%% Extract Flexable shaft output data 
% Extract forces
% Fx_B1 = squeeze(out.Fr(1, 1, :));  % X-force at Base (B1)
% Fy_B1 = squeeze(out.Fr(1, 2, :));  % Y-force at Base (B1)
% Mx_B1 = squeeze(out.M(1, 1, :));  % Moment on X
% My_B1 = squeeze(out.M(1, 2, :));  % Moment on Y
% Vx_B1 = squeeze(out.V(1, 1, :));  % Velocity on X
% Vy_B1 = squeeze(out.V(1, 2, :));  % Velocity on Y 
% Wx_B1 = squeeze(out.W(1, 1, :));  % Agular vol on X
% Wy_B1 = squeeze(out.W(1, 2, :));  % Angular vol on Y
% 
% Fx_F1 = squeeze(out.Fr(1, 3, :));  % X-force at Follower (F1)
% Fy_F1 = squeeze(out.Fr(1, 4, :));  % Y-force at Follower (F1)
% Mx_F1 = squeeze(out.M(1, 3, :));  % Moment on X
% My_F1 = squeeze(out.M(1, 4, :));  % Moment on Y
% Vx_F1 = squeeze(out.V(1, 3, :));  % Velocity on X
% Vy_F1 = squeeze(out.V(1, 4, :));  % Velocity on Y 
% Wx_F1 = squeeze(out.W(1, 3, :));  % Agular vol on X
% Wy_F1 = squeeze(out.W(1, 4, :));  % Angular vol on Y

% % For Base support (B1):
% Fz_B1 = 0.05 * randn(size(Fx_B1));  % Synthetic Z-axis noise/vibration
% vibration_3axis_B1 = [Fx_B1, Fy_B1, Fz_B1];  % [X, Y, Z]
% % For Follower support (F1):
% vibration_3axis_F1 = [Fx_F1, Fy_F1, zeros(size(Fx_F1))];  % No Z-axis data

%% Vibration signals from the gyroscope and accelerometer 

vibration = "normal"; 
%vibration = "bearing_friction"; 
%vibration = "shaft_misalignment"; 
%vibration = "Electric_fault"; 
accelVibrationB = out.AcceleroOut; 
gyroVibrationB = out.gyroOut; 

save('data\'+vibration+'.mat',"accelVibrationB"); 
Table = table(accelVibrationB.time, accelVibrationB.signals.values(:,1), ...
        accelVibrationB.signals.values(:,2),accelVibrationB.signals.values(:,3), ...
    'VariableNames', {'Time','X', 'Y', 'Z'});
writetable(Table, 'data/'+vibration+'.csv');


addFile(project,'data/'+vibration+'.csv');
addFile(project, 'data\'+vibration+'.mat');