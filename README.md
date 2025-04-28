**Control Framework Design for Wave Energy Converters with Direct Drive Linear Generator-Based Power Take-Off Systems
This open-source codebase presents a control framework for ocean wave energy converters (WECs) equipped with Direct Drive Linear Generator (DDLG)-based power take-off (PTO) systems**

The project focuses on advanced control design, particularly Sliding Mode Control (SMC), to maximize energy extraction while ensuring system robustness under highly variable ocean conditions. The framework supports the development of power solutions for Powering the Blue Economy (PBE) applications in remote maritime environments.



**Authors**

Usman Masood, Department of Electrical and Computer Engineering, University of New Hampshire

Mohamed A. Shabara, National Renewable Energy Laboratory (NREL), Golden, CO

Jeff Grasberger, Sandia National Laboratories, Albuquerque, NM

Martin Wosnik, Atlantic Marine Energy Center (AMEC), Department of Mechanical Engineering, University of New Hampshire

Arezoo Hasankhani, Department of Electrical and Computer Engineering, University of New Hampshire

**Features**
Advanced WEC Control: Sliding Mode Controller (SMC) to maximize wave energy capture.

Stroke Monitoring: Tracking of DDLG stroke travel to prevent overextension under large sea states.

Benchmarking: Comparison of SMC performance against traditional Proportional-Integral (PI) control.

Wave-to-PBE System Design: Integration of mechanical capture and electrical conditioning stages.

Robustness: Enhanced system performance under uncertainty and external disturbances.

**Dependencies**

The following packages are used in this code:
| Package | Required? |
| ---    | ---      |
| MATLAB | Required for simulation |
| Simulink | Optional for WEC-Sim validation | 
| Simscape | Optional for WEC-Sim validation | 
| Simscape Multibody | Optional for WEC-Sim validation |
| [WEC-Sim](https://github.com/WEC-Sim/WEC-Sim/) | Optional for WEC-Sim validation |

