## The problem
You really want to make sure that unit tests are run every time someone commits.


## The solution
Three simple scripts.
The first should be run by all engineers that join the team.
It should do most of the installs for environment dependencies.
The second should be a pre-commit script.
This script should run your tests and anything else that you want to have happen.
The third script should be an update script.
It should be a simple script that gets run by your second script.
It should automatically update your pre-commit script.


## Some context
When the TuesdayCompany started I was working with a pretty junior engineer.
In fact he hadn't graduated from college yet.
Luckily for me he was incredibly smart and motivated.
Unfortunately for me he had never written unit tests for me.
That meant a lot of the early codebase had no tests.
This worked for a while, but was less than ideal.
Eventually the company began to get some traction so I could come on full time.
By then the code was in the classic there are unit tests, but not enough of them state.
So to counteract that and to make sure that I could continue to grow the unit test coverage I devised this system.
I'm sure lots of other people have done similar things.
I take no credit for being the first.
My inspiration came from the [trusting trust paper](https://www.archive.ece.cmu.edu/~ganger/712.fall02/papers/p761-thompson.pdf).
This is one of my favorite papers of all time.
If you haven't given it a read you definitely should.