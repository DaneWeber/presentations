# Data Migration
## The Smart Way



## 1. Do not migrate data

* The goal is not to migrate the data.
* The goal is to write a program (i.e. collection of scripts) that migrates the data,
* and to run this program a thousand times.



## 2. Use real* data

* Run the program in production or as close as you can get.
* This often means having the program migrate the data into a dev or QA system.



## 3. Get high-quality feedback

* After running the program, look at the results
* with people who understand the old data
* and who understand the new system (not necessarily the same people).
* Incorporate their feedback.



## 4. Increment

* Eat the elephant one bite at a time.
* The first time you run the migration program, you should only bring over one field,
* and maybe not even all the records for that one field.



## 5. Iterate

* You don't have to think through every edge case on your first version.
* Discover the weird values by capturing every failed record and examining those after a run.
* Determine how to adapt your rules to handle the edge cases you discover after a run, rather than the ones you dream up.



## 6. Sequence

* Order your incremental and iterative steps according to criticality and scope.
* Addressing a condition that only stops records from migrating can be left undone and manually cleaned up afterwards, if the alternative is failing to bring over a unique ID.
* Once you're bringing over certain unique keys, a lot of stable one-to-one data fields are low risk and could possibly be left to migrate later, if it comes to it.
* Essentially, sequence the work as though you might have to do the real migration at a moment's notice, and you want the best chance to recover after the migration.



## 7. Estimate run time

* Don't worry about speed at the beginning.
* Do start calculating it as you get something at all viable.
* If you're not running in production, you either need to figure out how to benchmark production, or you need to plan on aborting your first production run.
* There are simply too many arcane factors that can hose performance to be sure until you're running in the real environment.
* A one-hour run in one environment can turn into a three day run in production for an incredibly obscure cause.



## 8. Migrate the delta

* At a minimum, the migrations should be safe to abort, which implies that they can be reversed.
* Far better is if you can run the migration for a period of time, make progress, and pick up where you left off after taking a break.
* If you do this well, you can run the migrations in advance of the cut-over and reduce the cut-over time to mere minutes.