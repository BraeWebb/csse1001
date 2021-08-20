---
title: Software Lifecycle
permalink: /reading/2A0_software_lifecycle
---

<div class="aside">

I arrange, design, and sell shrubberies

</div>

In this section we will look at some issues relating to the design and implementation of software via a simple example. As we go we will introduce more of Python's syntax and semantics. Before doing so, we look at **the software lifecycle**. One description of the software lifecycle can be found in Wikipedia at [https://en.wikipedia.org/wiki/Software_development_process](https://en.wikipedia.org/wiki/Software_development_process). 

Basically, the software lifecycle describes all the processes required in order to follow good software engineering practices – the aim being to produce high quality software. The basic components of the software lifecycle are as follows:

- Requirements gathering
	- What does the client want?
	- What operating system will the system run on?
	- What commercial off-the-shelf (COTS) software/hardware will be available?
	- Will a hazard/risk analysis be required? (This is often needed when the software will be part of a safety or security critical system)
	- What other systems will this system interface to?
- Design
	- Top-level specification of the system. This may be informal - e.g. a structured English specification, or formal – using logic and mathematics (e.g. for safety/security critical systems)
	- Problem decomposition
	- Module design
	- Interface design
- Coding 
	- Implementation of modules
	- System integration
- Testing 
	- Bottom-up (unit) testing
	- Integration testing (gluing modules together)
	- Systems testing (does the overall system perform as required?)
- Maintenance 
	- Fix problems
	- Add features
	- Respond to changed client requirements

Earlier phases often need to be revisited as problems are uncovered in later phases.  In this course we will concentrate mostly on the design, coding and testing phases, typically by working through examples.

In follow-on courses, we will broaden the scope and move from programming as individuals to software development by teams of software engineers where no individual can reasonably be expected to have a deep understanding of all the software relating to a given project.