## The Problem
Sometimes there is the "right way" and other times there is how it is done in the codebase.
I would argue the very rarely the "right way" isn't how it is done in the codebase.
Recently an employee that was working on a part of the codebase argued that there were sections that weren't following the best practices.
In particular the infrastructure code was centralized in one place rather than spread out through several modules of the codebase.
He changed the newest codebase to test out the their theory.
Up to this point I was completely on board with their decisions.
You see a practice that doesn't match with best practices, you have a different idea, and you try it out.
It was the next steps that I really didn't agree with.
At this point everyone agreed it was better to go ahead and have the infrastructure code live close to the code.
But due to time constraints the rest of the code was not moved over to the new method.

## Either shift everything, make a plan to shift everything in parts, or roll back and keep consistent practices
At this point you have a few different options.
1. You simply roll back the changes and wait until you have more time to implement the change.
1. You keep the changes, but you articulate a plan for the whole team to make the changes.
1. You go and update all older relevant sections to the new way.

Now each of these has their own set of drawbacks and advantages.
For instance, rolling back the changes and continuing with the old method tends to be the fastest way forward, but you don't have the new practice.
Updating everything all at once tends to be tedious and difficult for the engineer that makes the changes, but it makes sure you have consistency.
Keeping the changes is neither tedious for the engineer nor do you have the best practice everywhere, but at least you are making a start.
The last one is the most tricky though.
You have to articulate a plan that makes sure you make progress on on the change and it tends to work best when you get the whole team on board.

## The one thing you can't do
The one thing you can't do is simply leave it in a half baked state.
This is the where I think most engineers really tend to fail.
I would argue that it is worse than simply keeping the less then best practice in some places but not others.
At least with a consistent though admittedly not best practice it is easy for new people to learn how to contribute.
It also means when you are doing tasks there is a single right way to do it.
Most of the time it isn't that people who want the best practice don't plan on not finishing.
Rather the reason it never changes generally stems from two places.
1. Poor communication
1. Poor update plan

The poor communication can come in many forms.
Maybe the whole team doesn't know that you should update.
Maybe they don't know how to update.
Maybe the know they should and they know how, but they don't know when.

The poor planning can have similar symptoms.
For instance maybe you communicate a plan and it goes something like this.
The next time someone touches this infra code we will update to the next practice.
Infra code can go a long time without every needing to be updated.
Often the longer changes like this live in a half state the more difficult it can be to change.
Also the more likely someone will see the old example and perpetuate it in a new part of the code base.
The problem here wasn't that you didn't communicate when, where, how, or what.
It is that the when might never come.
A way that I modify this would depend on the code.
Maybe I set a fixed interval to update the code.
We will spend 1 day a week until we get everything moved over unless you change the infra code and then you should update it then.
The key here is to consider how long it is going to take and take into account what the risks are for your particular project.

 