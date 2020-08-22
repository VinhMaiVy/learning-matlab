% Load splat which adds y and Fs to the workspace
load splat
% Call echo_gen to create the new audio data


output = echo_gen(y, Fs, 0.5, 0.3);

% Create a time axis. The time between points is 1/Fs;
dt = 1/Fs;

figure(1);
t = 0:dt:dt*(length(y)-1);
plot(t, y);

% Plot the new data to see visualize the echo
figure(2);
t = 0:dt:dt*(length(output)-1);
plot(t, output);

sound (output, Fs); % Uncomment in MATLAB to listen to the new sound data