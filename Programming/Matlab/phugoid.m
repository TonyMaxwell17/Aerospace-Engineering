
function dzdt = phugoid(~, z)
% AERO1004 - Glider Phugoid Motion
% State vector z = [V; gamma; x; y]

%% 1. Aircraft parameters
m = 0.1;          % Mass (kg)
g = 9.81;         % Gravity (m/s^2)
rho = 1.225;      % Air density (kg/m^3)
S = 0.2;          % Wing area (m^2)
CL = 0.6;         % Lift coefficient
CD = 0.055;       % Drag coefficient

%% 2. State variables
V = z(1);         % Flight speed (m/s)
gamma = z(2);     % Flight path angle (rad)
x = z(3);         % Horizontal position (m)
y = z(4);         % Altitude (m)

%% 3. Aerodynamic forces
L = 0.5 * rho * V^2 * S * CL;
D = 0.5 * rho * V^2 * S * CD;

%% 4. Equations of motion

% Equation 1: Speed
dVdt = -D/m - g*sin(gamma);

% Equation 2: Flight path angle
dgammadt = L/(m*V) - g*cos(gamma)/V;

% Equation 3: Horizontal position
dxdt = V*cos(gamma);

% Equation 4: Vertical position
dydt = V*sin(gamma);

%% 5. Return state derivatives
dzdt = [dVdt;
        dgammadt;
        dxdt;
        dydt];

end
