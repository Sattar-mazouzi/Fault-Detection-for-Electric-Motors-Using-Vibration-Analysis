clear ;
%Added paths 
disp('>> Setting up the MATLAB environment...');

% Define the required MATLAB release
required_release = 'R2024b' ; % Change this to the release you want to check

% Get MATLAB version information
%info = ver('MATLAB');
% Extract the current MATLAB release
current_release = matlabRelease.Release;

% Compare and return an error or warning if needed
if strcmp(current_release, required_release)
    fprintf('MATLAB release check passed: %s\n', current_release);
else
    %error('Incorrect MATLAB release! Expected: %s, but found: %s', required_release, current_release);
    % Alternatively, use warning() instead of error() if you don’t want to stop execution.
    warning('Incorrect MATLAB release! Expected: %s, but found: %s', required_release, current_release);
end
% set model parameter and constants
fprintf("%s \n",">> Setting the necessary parameters and constants...");
run('src\parameters.m'); 
fprintf("%s \n",">> Project setup is completed!");