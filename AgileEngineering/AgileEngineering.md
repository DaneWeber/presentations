# Agile Engineering

## Goal

Working software
- Most valuable version possible
- Defect-free, trustworthy, and reliable
- Easy to change
- Easy to maintain



## Team Sport

Writing code to get the computer to do what you want is relatively straightforward.

If you are working on throw-away code for yourself, that's all you need to worry about.


With enterprise software, the code is written to be read by humans:
- Your successors
- Your teammates
- Your future self

This is where it gets hard.


This might do what is needed:
```
bdiff = (due - start).divmod(7).reduce { |x,y| x*5+y }
```

But we can't tell what it's doing, much less whether it's doing it right.


This does the same thing, but I'd bet you have a much better guess as to what it is doing:
```
CALENDAR_WEEK = 7
BUSINESS_WEEK = 5
calendar_days = (due_date - start_date)
business_days = calendar_days.divmod(CALENDAR_WEEK).reduce { |weeks, days| weeks * BUSINESS_WEEK + days }
```



## x



## x



## XP Practices

Frequent fine scale feedback
Pair programming – one navigator, one driver at a single workstation
User stories (planning game) – small batches once per iteration, could be weekly
Test driven development – write unit tests first
Whole team – includes users

Continuous process
Design improvement – refactor continuously
Continuous integration – frequent code check-ins, no broken builds
Small releases – expedite feedback from customers

Shared understanding
Coding standards – for consistent style and format of code
Collective code ownership – everyone is responsible for all of the code
Simple design – “simpler is better” approach to development
System metaphors – for useful, meaningful naming conventions

Developer welfare
Sustainable pace – avoid exceeding the 40+ hour work week and crunch periods


## TDD


1 - Write production code 📄

2 - Manually test that it works 👍

3 - Next ⏭


Let's write automated tests so that we can test more rapidly and so we don't forget to test something. Responsible development includes automated tests.


1 - Write production code 📄

2 - Write automated tests 🤖

3 - Automated tests pass ✅

4 - Next ⏭


The tests should pass once the production code has been changed. They should also fail without the changes. If the tests pass no matter what, like `expect(true)`, then they prove nothing.


1 - Write production code 📄

2 - Write automated tests 🤖

3 - Automated tests pass ✅

4 - Comment out production code 👻

5 - Automated tests fail ❌

6 - Uncomment production code 📄

7 - Automated tests pass ✅

8 - Next ⏭


That seems duplicative. How about we refactor it?


<p class="fragment strike" data-fragment-index="2">1 - Write production code 📄</p>

2 - Write automated tests 🤖

<p class="fragment strike" data-fragment-index="1">3 - Automated tests pass ✅</p>

<p class="fragment strike" data-fragment-index="2">4 - Comment out production code 👻</p>

5 - Automated tests fail ❌

6 - <span class="fragment fade-in" data-fragment-index="2">Write</span> <span class="fragment strike" data-fragment-index="2">Uncomment</span> production code 📄

7 - Automated tests pass ✅

8 - Next ⏭


1 - Write automated tests 🤖

2 - Automated tests fail ❌

3 - Write production code 📄

4 - Automated tests pass ✅

5 - Next ⏭


Refactoring is where we make the system better. This is far easier if all of the code we touch is well-tested with automated tests.


1 - Write automated tests 🤖

2 - Automated tests fail ❌

3 - Write production code 📄

4 - Automated tests pass ✅

5 - Refactor 🛠

6 - Automated tests pass ✅

7 - Next ⏭
