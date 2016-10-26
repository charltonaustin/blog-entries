So I recently started working at [CoreOS](https://coreos.com/) and one thing that they do there for every change of code is a code review.
I personally have never really had code reviews before.
I've mostly worked in environments where I have paired directly with people.
So I wanted to do a quick review on the differences between the two methods.

### Communication:
First I want to say that I'm definitely into communication.
I think that programming is a team sport and people need to communicate a bunch in order to really get anything done.
That said the first thing I want to talk about is communication between team members when you are pairing vs when you are doing code reciews.
I think that the communication becomes incredibly slow when you are doing code reviews.
There are couple of reasons for this.
When you are pairing you have to communicate for it to be effective.
This means as dissagrements come up you natural ask others for their opinions and you work through differences to come up with a better implementation than anyone alone.
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
I don't think that code quality changes that much with some caveates.
If you are bringing on new people that persons code quality will definitely be lower then other people (all other things being equal).
There are a few reasons for this.
First different teams have different coding conventions.
It can take time to learn the new habits of one team or unlearn old habits from other teams.
Second you have to read an awful lot.
Reading code is hard, and this only gets harder when the code is poorly written.
People remember their code and the code that I've always known the best is the code that I've written myself.

### Speed
Speed definitely slows down when you do code reviews as compared to pair programming.

