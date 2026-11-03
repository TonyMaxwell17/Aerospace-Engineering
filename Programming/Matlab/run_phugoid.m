
%% AERO1004 - Glider Phugoid Simulation
% University of Nottingham
% MATLAB ode45 Simulation

clear;
clc;
close all;

%% 1. Initial conditions

V0 = 4;           % Initial speed (m/s)
gamma0 = pi/6;    % Initial angle (30 degrees)
x0 = 0;           % Initial horizontal position (m)
y0 = 2;           % Initial altitude (m)

z0 = [V0; gamma0; x0; y0];

%% 2. Simulation time

tspan = [0 5];    % Simulate for 5 seconds

%% 3. Solve differential equations

options = odeset('RelTol',1e-8, ...
                 'AbsTol',1e-10);

[t,z] = ode45(@phugoid,tspan,z0,options);

%% 4. Extract simulation results

V = z(:,1);
gamma = z(:,2);
x = z(:,3);
y = z(:,4);

% Convert radians to degrees
gamma_deg = rad2deg(gamma);

%% 5. Plot state variables

figure('Name','Glider State Variables');

tiledlayout(2,2);

% Speed
nexttile;
plot(t,V,'b','LineWidth',1.5);
xlabel('Time (s)');
ylabel('Speed (m/s)');
title('Flight Speed');
grid on;

% Flight path angle
nexttile;
plot(t,gamma_deg,'r','LineWidth',1.5);
xlabel('Time (s)');
ylabel('Flight Path Angle (deg)');
title('Flight Path Angle');
grid on;

% Horizontal position
nexttile;
plot(t,x,'g','LineWidth',1.5);
xlabel('Time (s)');
ylabel('Horizontal Position (m)');
title('Horizontal Position');
grid on;

% Altitude
nexttile;
plot(t,y,'m','LineWidth',1.5);
xlabel('Time (s)');
ylabel('Altitude (m)');
title('Flight Altitude');
grid on;

sgtitle('AERO1004 Glider Phugoid Simulation');

%% 6. Plot 2D flight trajectory

figure('Name','Glider Flight Trajectory');

plot(x,y,'b','LineWidth',2);
hold on;

% Initial position
plot(x(1),y(1),'go', ...
    'MarkerSize',8,'MarkerFaceColor','g');

% Final position
plot(x(end),y(end),'ro', ...
    'MarkerSize',8,'MarkerFaceColor','r');

xlabel('Horizontal Distance (m)');
ylabel('Altitude (m)');
title('Glider Flight Trajectory');

legend('Flight Path','Start','End', ...
       'Location','best');

grid on;
hold off;

%% 7. Display final results

fprintf('\n===== Simulation Results =====\n');
fprintf('Final Time: %.2f s\n',t(end));
fprintf('Final Speed: %.4f m/s\n',V(end));
fprintf('Final Flight Path Angle: %.4f deg\n', ...
        gamma_deg(end));
fprintf('Final Horizontal Distance: %.4f m\n', ...
        x(end));
fprintf('Final Altitude: %.4f m\n',y(end));
fprintf('==============================\n');
