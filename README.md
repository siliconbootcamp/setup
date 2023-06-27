# Setup for SiliconBootCamp
Following the "Learn-By-Example" philosophy, the goal is for you to actively code in System Verilog. This requires a development environment for System Verilog simulation at a minimum.

There are 2 options, an online web based IDE and a self-contained local environment on your machine.

## Online Web Based IDE
### [edaplayground.com](http://www.edaplayground.com)

Pros:
* No setup on local machine, runs on any modern web browser
* Wave display also included

Cons:
* At times online servers get overloaded
* RTL synthesis examples from SiliconBootCamp not supported

Account sign up is free. Access to certain commerical SystemVerilog simulators (from Cadence, Synopsys, Siemens) is restricted if your email is from a "free" service like gmail.

However there is full featured System Verilog simulator from Aldec that is accessible even for gmail accounts.

Recommendation: If you have a corporate email or an email that is not recognized as "free", please use that to register.

## Local Environment for System Verilog Simulation & Synthesis

This uses a docker image of Xilinx Vivado (free version)

*For RTL examples in SiliconBootCamp this is the only option*

Pros:
* All examples (simulation, synthesis and post-synthesis gate simulation) from SiliconBootCamp supported
* Docker image simplifies install (no Xilinx Vivado installation)
* Not dependent on server crashes at edaplayground.com

Cons:
* More installation steps
* Increased disk space usage (docker image is 15Gig)

### Installation Steps
1. Install [docker desktop](https://www.docker.com/products/docker-desktop) on your machine.For Windows you will have to first install WSL (Windows Subsystem for Linux).
2. Download the [docker image](https://hub.docker.com/r/siliconbootcamp/xilinx-vivado) used by SiliconBootCamp.
3. Download [gtkwaves](https://gtkwave.sourceforge.net) (to visualize simulation traces/waves)
4. Optional. Editor of your choice like [Visual Code Studio](https://code.visualstudio.com) (used by SiliconBootCamp)


