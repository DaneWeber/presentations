# Before the project

Chapter 7 of _The Pragmatic Programmer_



## 36. The Requirements Pit

_Perfection is achieved, not when there is nothing left to add, but when there is nothing left to take away...."_

-- Antoine de St. Exupery, _Wind, Sand, and Stars_, 1939


### Dig for requirements

- Discover the _why_
- Spend a week observing
- See from the user's point of view


### Use Cases

- Let's go through everything in [Cockburn's template](http://alistair.cockburn.us/Basic+use+case+template)


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


## 38. Not Until You're Ready


## 39. The Specifications Trap


## 40. Circles and Arrows
