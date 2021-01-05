# Incident Response

One incident response approach:

- ChatOps
- Incident Commander
- Resolution Lead
- Resolution Team

Outline of events and methods of shortening the time:

1. Failure Occurs
  - Prevent with high quality code
  - Prevent with good testing
  - Prevent with resilient systems
  - Prevent with self-healing systems
2. Detect (Notification)
  - Alerts (low noise, low latency)
  - Paging and on-duty personnel for rapid acknowledgement
3. Triage
  - Monitoring (assess extent of degradation)
  - Knowledgeable person assesses
4. Identify (Diagnosis)
  - Logging (low noise, easy to search, easy to correlate
5. Fix (Repair)
  - DRY, easy to understand code
  - Good, rapid tests
  - Continuous Integration
6. Return to Normal Operations (Recovery)
  - Continuous Deployment pipeline
7. Resolve (Address contributing factors to prevent repeat failures)
  - Post-Incident Review (retrospective on incident)
  - Prioritize quality and reliability improvements


Outline of events and metrics:

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
7. Resolve (Address contributing factors to prevent repeat failures)
  - Time since failure: Time To Resolve (MTTR Resolve)
8. Next Failure Occurs
  - Time since previous failure: Time Between Failures (MTBF)
  - Time since return to normal operations: Time To Fail (MTTF)


RPO & RTO:

1. Data Backup
2. Actual Data Loss (compaired to Recovery Point Objective/RPO goal)
3. Disaster
4. Actual Downtime (compared to Recovery Time Objective/RTO goal)
5. Recovery
