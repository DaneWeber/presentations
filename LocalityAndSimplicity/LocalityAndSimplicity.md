# Locality and Simplicity



## Five Ideals

1. 🦠 Locality and Simplicity
2. 🎯 Focus, Flow, and Joy
3. 🔪 Improvement of Daily Work
4. ⛑ Psychological Safety
5. 🔮 Customer Focus


### 1) 🦠 Locality and Simplicity

- Does it take 50 teams across five continents and 15 systems to coordinate to make a small change?
- Congruent architecture and organization that minimizes hand-offs, bottlenecks, and coordination.
- Also applies to code organization and data movement.
- Reduce complexity to reduce risk and waste.


- How can we minimize hand-offs?
- How can we avoid bottlenecks?
- How can we eliminate dependencies?



## Principles


### Conway's Law

> Any organization that designs a system (defined broadly) will produce a design whose structure is a copy of the organization's communication structure.

— Melvin E. Conway

Ref: [Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_law) & [Mel Conway's site](http://melconway.com/Home/Conways_Law.html)


Move toward an organizational shape and software architecture that best aligns with the mission and serves your customers and stakeholders.


Not ideal:

<a href="https://blog.triaster.co.uk/blog/avoid-process-mapping-mistakes">![Complex process map from https://blog.triaster.co.uk/blog/avoid-process-mapping-mistakes](https://blog.triaster.co.uk/hs-fs/hubfs/social-suggested-images/Complex_process_map.jpg?width=1733&name=Complex_process_map.jpg)</a>


### Hackman's Law

> The larger a group, the more process problems members encounter in carrying out their collective work…. Worse, the vulnerability of a group to such difficulties increases sharply as size increases.

— _The Psychology of Leadership: New Perspectives and Research_ [p. 131](https://books.google.co.in/books?id=6Sh5AgAAQBAJ&pg=PA131&lpg=PA131&dq=%22The+larger+a+group,+the+more+process+problems+members+encounter+in+carrying+out+their+collective+work%22&source=bl&ots=QU0HJyKXQQ&sig=XmRwVfYHLVOah3mr69vhozxBVVQ&hl=en&sa=X&ei=XeUiVNTpIoqryASM2IHACQ&redir_esc=y)


Software development has [diseconomies of scale](https://en.wikipedia.org/wiki/Diseconomies_of_scale), the most obvious of which is the geometric growth of communication channels.


<a href="https://resources.scrumalliance.org/Article/doubling-down-on-scrum-fundamentals-helps-remote-teams-thrive">![Communication channels growth from https://resources.scrumalliance.org/Article/doubling-down-on-scrum-fundamentals-helps-remote-teams-thrive](https://lh6.googleusercontent.com/pbekEIEJ2QfxTGsK7jpWlo5vl0z4cRQhPQVz2QVLValYP67JpbpExx-K0wuzsq4FvZcG2OqqXH3lHFoH6onG6xJNvr7bDv2ehKQV-B3cxCjc5YReHORlfERmYaFwB39O8aIKRCTN)</a>


Avoid scaling if possible. See the first two principles of the [Manifesto for Scaling Agility](https://scalingmanifesto.org/):

1. If you can achieve your goals with a single team, do not scale. Employ the minimum number of people required to meet your strategic outcomes.
2. If you have a single team and it cannot deliver effectively using Agile principles and practices, do not scale. Succeed with a single team first.



## Reduce complexity to reduce risk and waste


### Value Delivery

1. Teams—Ideally a single team can deliver business value by itself, avoiding hand-offs, bottlenecks, and coordination overhead. <span style="color: grey">(cross-functional feature teams…)</span>
2. Code—Ideally the change can be made in a single place, avoiding repetition, dependencies, and unfamiliar code. <span style="color: grey">(DRY, decoupled, well-architected code…)</span>


<a href="https://microservices.io/patterns/decomposition/service-per-team.html">![Service per team from https://microservices.io/patterns/decomposition/service-per-team.html](https://microservices.io/i/ServicePerTeam.png)</a>


### Operations and Maintenance

1. Teams—Ideally a team owns a service and can rewrite it on their own authority, avoiding committees and campaigning. <span style="color: grey">(internal APIs, microservices…)</span>
2. Code—Ideally there is a single version of the code running everywhere, avoiding merge conflicts, incompatibilities, and environment-specific issues. <span style="color: grey">(continuous integration, trunk-based development, continuous delivery/deployment, etc.)</span>
