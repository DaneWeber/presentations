# Incident Response

## One incident response approach:

- ChatOps
    - Time-stamped record of actions taken.
    - Transparent for any interested party to review.
    - Reduces need to answer questions about status and next steps.
    - Can integrate with alerts and more advanced bots.
- Incident Commander
    - Responsible for communication and coordination with outside parties.
    - Makes decisions about business trade-offs (such as restoring partial service vs. staying offline until a complete fix is ready). Doesn't have to be the expert, but must communicate with the relevant parties to make this decision responsibly.
    - Shields the Resolution Lead from status requests, etc.
    - Pro-actively publishes regular and timely updates on the incident.
    - Ensures that the Resolution Lead is getting sufficient assistance and not taking on excess stress or heroics.
    - Assembles the timeline for the Post-Incident Review.
    - Ensures that a Post-Incident Review takes place as soon as possible after repair and either facilitates or finds a facilitator.
- Resolution Lead
    - Responsible for resolving the incident and keeping the Incident Commander informed.
    - Responsible for the initial assessment and triage decision.
    - Coordinates the investigation and repair. Can contribute if possible.
    - Pulls in people to join the Resolution Team as needed to rapidly and effectively address the incident.
    - Keeps communications as public as possible (incident chat) to benefit from others and make it easy to bring new people up to speed.
    - Provides initial set of contributing factors for the Post-Incident Review, participates, and follows up on improvement actions.
- Resolution Team
    - Makes the incident their top priority and pro-actively helps diagnose and repair.
    - Keeps the Resolution Lead involved in diagnosis and repair activities.
    - Keeps communications as public as possible (incident chat), including warning before taking actions and confirming the results of those actions to avoid conflicting actions or wasted diagnosis efforts.
    - Participate in the Post-Incident Review, contributing to the timeline and identifying contributing factors.
- Goals
    - Minimize the Time to Resolve.
    - Involve the right people (not too many, not too few).
    - Be transparent and push communication to keep affected or interested parties informed.
    - Create a "shared consciousness" during the incident response.


## Outline of events and methods of improving response:

1. Failure Occurs
    - Prevent with high quality code
    - Prevent with good testing
    - Prevent with resilient systems (load-balancing, failover, failback, graceful handling of unavailable dependencies, stress-test/overload-test, backup & recovery, redundancy)
    - Prevent with self-healing systems (auto-scaling, limit runaways, IaC)
    - Practice with drills and simulated incidents (including chaos engineering)
2. Detect (Notification)
    - Alerts (low noise, low latency, fire vs. smoke vs. prototype)
    - Paging and on-duty personnel for rapid acknowledgement
3. Triage
    - Monitoring and Dashboards (assess extent of degradation; requires effort to create relevant views; goes way beyond resource utilization)
    - Knowledgeable person assesses
4. Identify (Diagnosis)
    - Monitoring and Dashboards (locate source of failure)
    - Logging (low noise, easy to search, easy to correlate, easy to isolate)
5. Fix (Repair)
    - DRY, easy to understand code
    - Good, rapid tests
    - Continuous Integration
6. Return to Normal Operations (Recovery)
    - Continuous Deployment pipeline
    - Monitoring and Dashboards (to confirm)
7. Resolve (Address contributing factors to prevent repeat failures)
    - Post-Incident Review (retrospective on incident)
    - Prioritize quality and reliability improvements (#bugszero)


## Outline of events and metrics:

1. Failure Occurs
2. Detect (Notification)
    - Time since failure: Time To Detect (MTTD)
    - Time between an alert and human acknowledgement: Time To Acknowledge (MTTA)
3. Triage
4. Identify (Diagnosis)
    - Time since failure: Time To Indentify (MTTI)
5. Fix (Repair)
    - Time since failure: Time To Repair (MTTR Repair)
    - Time since detection: Time To Respond (MTTR Respond)
6. Return to Normal Operations (Recovery)
    - Time since failure: Time To Recover or Time to Restore (MTTR Recover)
    - Total hours spent on recovery is a metric prone to mis-use, but can make very clear the potential pay-off of preventative measures.
7. Resolve (Address contributing factors to prevent repeat failures)
    - Time since failure: Time To Resolve (MTTR Resolve)
8. Next Failure Occurs
    - Time since previous failure: Time Between Failures (MTBF)
    - Time since return to normal operations: Time To Fail (MTTF)


## RPO & RTO:

1. Data Backup
2. Actual Data Loss (compaired to Recovery Point Objective/RPO goal)
3. Disaster
4. Actual Downtime (compared to Recovery Time Objective/RTO goal)
5. Recovery


## Overall Mindset:

1. Prevent Fires and Reduce Damage ("Fire Marshal" mindset)
    1. Inspect, maintain, and improve:
        - Architecture and system design
        - Code quality (pay off "technical debt")
        - Infrastructure
        - Test suites (smoke, load, performance, stress, system, acceptance, integration, unit, etc.)
        - Resilience/self-healing
        - Redundancy, backup, and recovery
    2. Exploratory testing
    3. Investigating and blameless learning from incidents
2. Improve Fire-Fighting Ability ("Fire Chief" mindset)
    1. Inspect, maintain, and improve tools/telemetry
        - Alerts (for detection and notification)
        - Monitoring and Dashboards (for triage, diagnosis, and assessment)
        - Logging (for diagnosis and investigation)
        - Access to prod and/or prod-like systems
        - Dev/test toolchain
        - Comms (chat/screenshare/phone/video/etc.)
    2. Practice and improve incident response
        - Communications and coordination
        - Diagnosis and repair
        - Build/test/deploy and verification
    3. Training and skills-building
3. Fight Fires ("Fire Fighter" mindset)
    1. Commitment to psychological safety
        - Do not blame individuals
        - Everyone should feel safe to contribute, question, and challenge
    2. Commitment to system safety
        - Preserve data and data integrity
        - Make reversible changes
        - Test changes before applying to production
    3. Commitment to incident resolution
