# Locality and Simplicity



## Five Ideals

1. 🦠 Locality and Simplicity
2. 🎯 Focus, Flow, and Joy
3. 🔪 Improvement of Daily Work
4. ⛑ Psychological Safety
5. 🔮 Customer Focus



#### 1) 🦠 Locality and Simplicity

- Does it take 50 teams across five continents and 15 systems to coordinate to make a small change?
- Congruent architecture and organization that minimizes hand-offs, bottlenecks, and coordination.
- Also applies to code organization and data movement.
- Reduce complexity to reduce risk and waste.


- How can we minimize hand-offs?
- How can we avoid bottlenecks?
- There is risk and waste in coordinating or "managing" dependencies.


- Code change in one place (decoupled architecture, well-designed DRY code)
- Made by one team (cross-functional value-delivery teams)
- One version of the code everywhere (trunk-based development, CI, Cd, CD)


### Conway's Law

> Any organization that designs a system (defined broadly) will produce a design whose structure is a copy of the organization's communication structure.

— Melvin E. Conway

Ref: [Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_law) & [Mel Conway's site](http://melconway.com/Home/Conways_Law.html)


### Hackman's Law

> The larger a group, the more process problems members encounter in carrying out their collective work…. Worse, the vulnerability of a group to such difficulties increases sharply as size increases.

— _The Psychology of Leadership: New Perspectives and Research_ [p. 131](https://books.google.co.in/books?id=6Sh5AgAAQBAJ&pg=PA131&lpg=PA131&dq=%22The+larger+a+group,+the+more+process+problems+members+encounter+in+carrying+out+their+collective+work%22&source=bl&ots=QU0HJyKXQQ&sig=XmRwVfYHLVOah3mr69vhozxBVVQ&hl=en&sa=X&ei=XeUiVNTpIoqryASM2IHACQ&redir_esc=y)


## Reduce complexity to reduce risk and waste


### Value Delivery

1. Teams—Ideally a single team can deliver business value by itself, avoiding hand-offs, bottlenecks, and coordination overhead.
2. Code—Ideally the change can be made in a single place, avoiding repetition, dependencies, and unfamiliar code.


### Operations and Maintenance

1. Teams—Ideally a team owns a service and can rewrite it on their own authority, avoiding committees and campaigning.
2. Code—Ideally there is only a single version of the code running everywhere, avoiding merge conflicts, incompatibilities, and environment-specific issues.
