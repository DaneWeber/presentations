# Scrum Deconstructed


We've all had some experience with Scrum

I don't know that I've ever seen a team follow it to the letter.


Scrum is a lightweight framework.

The whole thing is short and [available online](https://scrumguides.org/scrum-guide.html).


It's not the only way to be Agile and there are many beneficial ways to adapt or modify it.

The majority of the modifications I've seen have been detrimental and have been premature optimizations.


What matters the most?



## Values


Scrum includes a set of roles, artifacts, and events.

You can schedule the events, name some artifacts, and give people titles that match the roles, and still get zero benefit.


Scrum requires a self-managing team, defined as:

> The team is responsible for executing the tasks **and** monitoring and managing process and progress.


Self-management entails freedom *and* responsibility.

Self-management requires a certain mindset among the team and the organization around the team.


<div style="text-align: left; margin: auto; width: 60%;">
Commitment<br />
<span style="margin-left: 1em;">⬆️ Focus</span><br />
<span style="margin-left: 3em;">⬆️ Openness</span><br />
<span style="margin-left: 5em;">⬆️ Courage</span><br />
<span style="margin-left: 7em;">⬆️ Respect</span>
</div>


### ✍️ Commitment

To self-management. To the goals and each other. The lynch-pin of Scrum: commitment removes hesitation and propels the team.

Builds upon Focus.

Note: It is up to the team to make progress and enforce the process. Relates to Ownership.


### 🔭 Focus

Align as a team to make the best progress toward the most valuable goal.

This focus comes from agreement built upon Open engagement.

Note: The artifacts inform where to focus.


### 🪟 Openness

Make things visible, inspectable, available to all.

This requires Courage.


### 🦁 Courage

Speak truth to power, do the right thing, make improvements, and tackle difficult work.

Courage is cultivated and sustained by Respect.

Note: Ownership


### 🤝 Respect

Value the expertise and responsibility of everyone, particularly the self-managing team.

Note: Kindness


The lack of any of these values can undermine the success of a Scrum team.



## 💎 Transparency<br />🔍 Inspection<br />🦠 Adaptation


### 💎 Transparency

- Make visible what matters (the work, product, plans, emergent process, etc.) to those doing the work and those receiving it.
- Requires openness and psychological safety for real transparency.


### 🔍 Inspection

- Examine work/product/plans/process/etc. in order to understand and inform decisions.
- Requires transparency.
- Kindness and blamelessness enable a deeper and truer understanding of contributing factors.


### 🦠 Adaptation

- Change the work/product/plans/process/etc. immediately/ASAP to better achieve goals.
- Must be informed by inspection.
- Ownership, empowerment and self-management enable adaption.


💎🔍🦠

"Inspect & Adapt" is the core of Scrum.



## Artifacts, Events, and Roles


Three artifacts for transparency:

<div style="display: grid;
grid-template-columns: repeat(2, 1fr);
grid-template-rows: repeat(4, 1fr);
grid-column-gap: 0px;
grid-row-gap: 0px;
text-align: left;">
<div><strong>Artifact</strong></div><div><strong>Makes Visible</strong></div>
<div style="background: gray;">Product Increment</div><div style="background: gray;">📦 the product</div>
<div>Product Backlog</div><div>📅 the medium-term plan</div>
<div style="background: gray;">Sprint Backlog</div><div style="background: gray;">🕐 the short-term plan</div>
</div>


Four events to inspect & adapt:

<div style="display: grid;
grid-template-columns: repeat(2, 1fr);
grid-template-rows: repeat(5, 1fr);
grid-column-gap: 0px;
grid-row-gap: 0px;
text-align: left;">
<div><strong>Event</strong></div><div><strong>Inspects & Adapts</strong></div>
<div style="background: gray;">Sprint Review</div><div style="background: gray;">📦 the product</div>
<div>Sprint Planning</div><div>📅 the medium-term plan</div>
<div style="background: gray;">Daily Scrum</div><div style="background: gray;">🕐 the short-term plan</div>
<div>Sprint Retrospective</div><div>🌐 any & everything</div>
</div>


Three roles to accomplish this:

<div style="display: grid;
grid-template-columns: repeat(2, 1fr);
grid-template-rows: repeat(4, 1fr);
grid-column-gap: 0px;
grid-row-gap: 0px;
text-align: left;">
<div><strong>Role</strong></div><div><strong>Focus</strong></div>
<div style="background: gray;">Product Owner</div><div style="background: gray;">📶 Maximizing Value</div>
<div>Developers</div><div>🥇 Quality Work</div>
<div style="background: gray;">Scrum Masters</div><div style="background: gray;">🏉 Team Effectiveness</div>
</div>



## The Sprint


The sprint is a timebox.

- **Fixed-length** time period
- **Arbitrary** relative to the scope of work
- **Short** for frequent inspection and adaptation (product, plans, process, etc.)


Software is complex: small changes can have huge and hard-to-predict consequences.

Estimating complex work is frequently misleading and dangerous.

Note: Estimating the time required to develop software has an incredibly bad track record and is responsible for many death marches and failed projects.


Scrum is founded on empiricism. The guide calls out the limits of forecasting:

> In complex environments, what will happen is unknown. Only what has already happened may be used for forward-looking decision making.


<!-- .slide: data-background-image="https://sep.yimg.com/ca/I/tavernpuzzles_2272_7242125" data-background-size="contain" data-background-color="white" -->
Note: this puzzle is not even complex, but it contains unknowns even though fully inspectible. Your estimate is likely wildly inaccurate until you've actually solved it. I can remove the U-shaped shuttle in a little under a minute, but it took me many hours over several months to solve it the first time.


There are useful forecasting techniques that are based in historical data, such as burn-up charts, cumulative flow diagrams, and Monte Carlo simulations.

Fundamentally, however, the only certain thing is the working software.



## Product Increment


"Potentially Shippable Product Increment"

Note: This is used when designing embedded systems and software that will be pressed onto CDs and shipped. This idea comes out of the 90's and is not based in SaaS or DevOps. This doesn't mean that you actually ship, but that you've achieved something of that level of quality and integration that can be inspected.


How frequently do you have a fully-functional and fully-tested version that is ready to ship?

Holding costs:

- Risks are hidden in between these points.
- Waste occurs while people are unaware of the pending differences.
- Options are limited between these points given the remaining effort to become shippable.


A potentially shippable product increment takes extra effort:

Transaction costs:

- Small chunks of work that can be completed within a Sprint.
- Frequent integration of code.
- Frequent testing.


<!-- .slide: data-background-image="https://i.stack.imgur.com/j5rF8.jpg" data-background-size="contain" data-background-color="white" -->
Note: It is human nature to notice the transaction costs because they are immediate: we see and feel them in the moment. The holding costs are removed from the event. Lean and just-in-time manufacturing were competitive advantages because they reduced holding costs. Not shown here, holding costs can actually jump at various points as you cross threshholds, such as food spoilage, needing another warehouse, etc.


Small batches of work is one of the key insights of Agile software development and is the result of many scars.



## Product and Sprint Backlogs


Value flow over individual work.



## Agile/Lean Value Delivery


<!-- .slide: data-transition="slide none" data-background-transition="slide none" data-background-color="white" -->
![value over time and work](assets/0_value_axes.jpg)


<!-- .slide: data-transition="none" data-background-transition="none" data-background-color="white" -->
![fantasy of 'progress'](assets/1_fantasy_value.jpg)


<!-- .slide: data-transition="none" data-background-transition="none" data-background-color="white" -->
![big bang delivery of value at the end](assets/2_big_bang_value.jpg)


<!-- .slide: data-transition="none" data-background-transition="none" data-background-color="white" -->
![break delivery up into smaller increments](assets/3_incremental_value.jpg)


<!-- .slide: data-transition="none" data-background-transition="none" data-background-color="white" -->
![sequence the work to deliver the most value first](assets/4_sequenced_value.jpg)


<!-- .slide: data-transition="none" data-background-transition="none" data-background-color="white" -->
![iterate, learn, and deliver more value than planned](assets/5_iterative_value.jpg)



## Take-Aways


1. Values & Self-Management
2. Transparency, Inspection, and Adaptation
3. Small Batches (Increment)
4. Ordered (Sequence)
5. Learn and Respond (Iterate)
6. Accelerate and Amplify Feedback Loops
7. Maintain Stable Intermediary States
