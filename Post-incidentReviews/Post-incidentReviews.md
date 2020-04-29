# Post-Incident Reviews



## Cloudflare global outage
## 2019-07-02

https://blog.cloudflare.com/details-of-the-cloudflare-outage-on-july-2-2019/

The whole thing is gold.


### Summary

On July 2, we deployed a new rule in our WAF Managed Rules that caused CPUs to become exhausted on every CPU core that handles HTTP/HTTPS traffic on the Cloudflare network worldwide.

This resulted in our customers (and their customers) seeing a 502 error page when visiting any Cloudflare domain.


The CPU exhaustion was caused by a single WAF rule that contained a poorly written regular expression that ended up creating excessive backtracking. The regular expression that was at the heart of the outage is

```regex
(?:(?:\"|'|\]|\}|\\|\d|(?:nan|infinity|true|false|null|undefined|symbol|math)|\`|\-|\+)+[)]*;?((?:\s|-|~|!|{}|\|\||\+)*.*(?:.*=.*)))
```

Although the regular expression itself is of interest to many people (and is discussed more below), the real story of how the Cloudflare service went down for 27 minutes is much more complex than “a regular expression went bad”.


### Timeline

- At 13:42 an engineer working on the firewall team deployed a minor change to the rules for XSS detection via an automatic process.
- Three minutes later the first PagerDuty page went out indicating a fault with the WAF.
- At 14:00 the WAF was identified as the component causing the problem and an attack dismissed as a possibility.
- At 14:02 ... it was proposed that we use a ‘global kill’.


- Eventually, a team member executed the global WAF kill at 14:07
- by 14:09 traffic levels and CPU were back to expected levels worldwide.
- Then we moved on to restoring the WAF functionality. Because of the sensitivity of the situation we performed both negative tests and positive tests in a single city.
- At 14:52 we were 100% satisfied that we understood the cause and had a fix in place and the WAF was re-enabled globally.


### What went wrong

1) An engineer wrote a regular expression that could easily backtrack enormously.

2) A protection that would have helped prevent excessive CPU use by a regular expression was removed by mistake during a refactoring of the WAF weeks prior—a refactoring that was part of making the WAF use less CPU.

3) The regular expression engine being used didn’t have complexity guarantees.


4) The test suite didn’t have a way of identifying excessive CPU consumption.

5) The SOP allowed a non-emergency rule change to go globally into production without a staged rollout.

6) The rollback plan required running the complete WAF build twice taking too long.

7) The first alert for the global traffic drop took too long to fire.


8) We didn’t update our status page quickly enough.

9) We had difficulty accessing our own systems because of the outage and the bypass procedure wasn’t well trained on.

10)  SREs had lost access to some systems because their credentials had been timed out for security reasons.

11)  Our customers were unable to access the Cloudflare Dashboard or API because they pass through the Cloudflare edge.


### Improvements

1) Re-introduce the excessive CPU usage protection that got removed.

2) Manually inspecting all 3,868 rules in the WAF Managed Rules to find and correct any other instances of possible excessive backtracking.

3) Introduce performance profiling for all rules to the test suite.

4) Switching to either the re2 or Rust regex engine which both have run-time guarantees.


5) Changing the SOP to do staged rollouts of rules in the same manner used for other software at Cloudflare while retaining the ability to do emergency global deployment for active attacks.

6) Putting in place an emergency ability to take the Cloudflare Dashboard and API off Cloudflare's edge.

7) Automating update of the Cloudflare Status page.
