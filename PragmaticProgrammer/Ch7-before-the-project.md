# Before the project

Chapter 7 of _The Pragmatic Programmer_



## 36. The Requirements Pit

_Perfection is achieved, not when there is nothing left to add, but when there is nothing left to take away...."_

-- Antoine de St. Exupery, _Wind, Sand, and Stars_, 1939


### Dig for requirements

- Discover the _why_
- Spend a week observing
- See from the user's point of view


### Caveats

- Don't over-specify: _requirements_ are _needs_, not architecture, design, or UI documentation.
- Use abstractions in code--don't blindly encode the details.
- Feature growth must be weighed against lengthening the schedule.


### Non-Functional Requirements

![Structure with functionality as the cap, usability/accessibility/credibility/discoverability as columns, and confidentiality/integrity/availability as the foundation](assets\requirements_structure.png)


### Documentation

- Project glossary
- Easy access to documentation
- Hyperlinks
- _Requirements_, not implementation details


### Use Cases

- Let's go through everything in [Cockburn's template](http://alistair.cockburn.us/Basic+use+case+template)
- Maybe we shouldn't be so allergic to written requirements

Use Case: (number) (the name should be the goal as a short active verb phrase)


#### CHARACTERISTIC INFORMATION

- Goal in Context: (a longer statement of the goal, if needed)
- Scope: (what system is being considered black-box under design)
- Level: (one of: Summary, Primary task, Subfunction)
- Preconditions: (what we expect is already the state of the world)


#### CHARACTERISTIC INFORMATION (continued)

- Success End Condition: (the state of the world upon successful completion)
- Failed End Condition: (the state of the world if goal abandoned)
- Primary Actor: (a role name for the primary actor, or description)
- Trigger: (the action upon the system that starts the use case, may be time event)


#### MAIN SUCCESS SCENARIO

- (put here the steps of the scenario from trigger to goal delivery, and any cleanup after)
- (step #) (action description)


#### EXTENSIONS

- (put here there extensions, one at a time, each refering to the step of the main scenario)
- (step altered) (condition) : (action or sub.use case)
- (step altered) (condition) : (action or sub.use case)


#### SUB-VARIATIONS

- (put here the sub-variations that will cause eventual bifurcation in the scenario)
- (step or variation # ) (list of sub-variations)
- (step or variation # ) (list of sub-variations)


#### RELATED INFORMATION (optional)

- Priority: (how critical to your system / organization)
- Performance Target: (the amount of time this use case should take)
- Frequency: (how often it is expected to happen)
- Superordinate Use Case: (optional, name of use case that includes this one)


#### RELATED INFORMATION (optional) (continued)
- Subordinate Use Cases: (optional, depending on tools, links to sub.use cases)
- Channel to primary actor: (e.g. interactive, static files, database)
- Secondary Actors: (list of other systems needed to accomplish use case)
- Channel to Secondary Actors: (e.g. interactive, static, file, database, timeout)


#### OPEN ISSUES (optional)

- (list of issues about this use cases awaiting decisions)


#### SCHEDULE

- Due Date: (date or release of deployment)



## 37. Solving Impossible Puzzles

Don't think outside the box--_find_ the box.


### Is there an easier way?

- Are you trying to solve the right problem?
- Why is this thing a problem?
- What is it that's making it so hard to solve?
- Does it have to be done this way?
- Does it have to be done at all?



## 38. Not Until You're Ready

- Listen to your instincts.
- Wait.
- Prototype?
- Start.



## 39. The Specifications Trap

Requirements gathering, design, and implementation are facets of the same process: delivering a quality system.


### ...the Handling Non-Landing Pilot continues handling...

- Doing may be better than telling
- No straightjackets--needs and problem statements
- Seamlessly move from specification to implementation



## 40. Circles and Arrows

Watch out for attempts to make programming more like engineering


### Formal methods have problems

- Better to give users a prototype than a requirements doc
- Cross-functional views of the whole system, not requirement-gathering and modeling experts
- Dynamic systems are frequently better where formal specs imply static relationships


### Work constantly to refine and improve your processes

Discuss: formal methods of the past