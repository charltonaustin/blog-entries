So I recently started working at [CoreOS](https://coreos.com/) and one thing that they do there for every change of code is a code review.
I personally have never really had code reviews before.
I've mostly worked in environments where I have paired directly with people.
So I wanted to do a quick review on the differences between the two methods.

### Communication:
First I want to say that I'm definitely into communication.
I think that programming is a team sport and people need to communicate a bunch in order to really get anything done.
That said the first thing I want to talk about is communication between team members when you are pairing vs when you are doing code reviews.
I think that the communication becomes incredibly slow when you are doing code reviews.
There are couple of reasons for this.
When you are pairing you have to communicate for it to be effective.
This means as disagreements come up you natural ask others for their opinions and you work through differences to come up with a better implementation than anyone alone.
It also means you don't have to wait for someone to give you feedback.
You get it basically instantaneously as you are coding.
And it also means if you have a question about feedback you get can ask it immediately.
When you are doing code reviews this high throughput communication goes away.
When you want to bounce an idea off of someone it is more difficult because they don't have the context.
I mean how could they you have been coding this by yourself.
It is also more difficult because often you go through asynchronous communication channels.
For instance you might slack someone, or put a comment on Github.
I think there are two main causes for this.
First you don't know if the other person is busy.
Second if they aren't busy it can often seem cumbersome to have to reach out to people about questions.

### Code quality
I don't think that code quality changes that much with some caveats.
If you are bringing on new people that persons code quality will definitely be lower then other people (all other things being equal).
There are a few reasons for this.
First different teams have different coding conventions.
It can take time to learn the new habits of one team or unlearn old habits from other teams.
Second you have to read an awful lot.
Reading code is hard, and this only gets harder when the code is poorly written.
People remember their code and the code that I've always known the best is the code that I've written myself.

### Speed
Speed definitely slows down when you do code reviews as compared to pair programming.
I've often heard people make the argument that in order to have the same output as two people working separately you have to go twice as fast.
I have a couple of reasons why I think that's false.
First as you write code I often find that people get stuck in their first thought process regardless of whether or not it is a good way to go.
Second during the day most people get distracted regularly.
They spend a few minutes here on a social media platform.
They spend a few minutes there on a social media platform.
Also people are much less likely to break up a pair than they are to distract a single worker.
Finally you can only hold so much in your brain at one time.
Sharing that load I think eases the cognitive load which allows you to reuse more code or think of better solutions as you work.
The flip side of this is while you are doing code reviews there are often lots of time when the code is just sitting.
To combat that I often see developers starting on their next story.
This wouldn't be too bad except the time it takes to context switch back can be large.
This is even more true if you require manual testing that might require database or external integration setup.
The flip side of this is when pairing you can't do certain tasks in parallel.
Which depending on your situation might mean it makes no sense at all.


### Conclusion
I still think that pairing is superior to code review.
However I think just like almost any plan you make in life your actions should depend on the situation.
No matter what I would say that you should either pair or have a code review.
Neither are foolproof.
If you pair and someone isn't paying attention or if you review code and you aren't paying attention bugs can definitely creep into your code.
Or maybe just no matter what bugs will creep into your code.
The real question is do you have strategies to mitigate their effect and quickly remedy them.

