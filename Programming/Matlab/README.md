# MATLAB

## Overview
This directory contains MATLAB scripts, Simulink models and reusable utility functions developed for the Aerospace Engineering undergraduate programme at UNNC. It covers numerical computation, flight dynamics solving, control system simulation, experimental data processing and visualisation, supporting coursework assignments, laboratory sessions and project-based learning.

## Application Scenarios & Related Modules
Aligned with the UNNC aerospace engineering curriculum, the resources correspond to the following core modules:
- Flight & structural dynamics analysis — AERO1001, AERO2001, AERO2003
- Flight control system design & simulation — AERO2003 Flight Dynamics and Control
- Numerical methods & engineering mathematics — AERO1004, AERO2004 Integrated Project and Maths
- Computer modelling & algorithm implementation — AERO3009 Computer Modelling Techniques
- Experimental data processing & technical plotting — laboratory reports and project dissertations

## Directory Structure
```
matlab/
├── dynamics/             # Scripts for flight dynamics, structural vibration and mechanical computation
├── control/              # Control system design, stability analysis and tuning code
├── numerical-math/       # Numerical methods and mathematics coursework implementations
├── simulink-models/      # Simulink system simulation files (.slx) for dynamics and control systems
├── utilities/            # Reusable helper functions, plotting templates and data processing tools
└── README.md
```

## Usage Notes
- The scripts are developed and tested on **MATLAB R2023b**. They are generally compatible with R2021b and later versions, but may require minor adjustments for older releases.
- Some functionalities require additional toolboxes: Control System Toolbox, Symbolic Math Toolbox, Simulink.
- To run a script, set the MATLAB working directory to the folder containing the target `.m` file, or add the parent directory to the MATLAB path.
- For scripts relying on external experimental data, please place data files in the `data/` subdirectory following the annotations within the scripts.
- All materials are for learning reference only. Please comply with UNNC academic integrity policies and complete coursework independently.
