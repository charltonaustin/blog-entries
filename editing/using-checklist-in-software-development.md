## The dream
For some time I have been wanting to incorporate checklist into the development project.
My initial inspiration came from [The Checklist Manifesto](http://atulgawande.com/book/the-checklist-manifesto/).
The book which was initially published in 2009 sent me frantically searching for checklists in software development.
At the time I couldn't find any.
Today though I use the treasure trove of checklists from [Code Complete Two](https://www.amazon.com/Code-Complete-Practical-Handbook-Construction/dp/0735619670) by [Steve McConnell](https://stevemcconnell.com/books/)
I set out to write this blog post to describe the use of checklists at my [company](https://www.tuesdaycompany.com/).
So this blog post will do a few things:

1. Describe the checklists that I have created in the intervening years
1. Talk about The Checklist Manifesto and it's effect on the checklists I have created
1. Talk about the checklists in Code Complete Two and their effect on our checklists
1. Summarize my thinking on the most important things I have learned from executing the ideas in these two books 

## Our initial checklists

The Tuesday Company began with checklists in our QA.
Now I'm a big believer that almost all QA should be automated, but that you have to be *very* smart in how you do that.
The first was just a complete checklist of all the essential features and questions to ask before you released something.
The second one was a list of possible kinds of features and the things that commonly go wrong with them.


## The Checklist Manifesto

The number one thing that The Checklist Manifesto changed was how much thought went into the creation of checklist.
Originally I couldn't find any writing about checklists in software.
If you go to the [code complete wiki](https://en.wikipedia.org/wiki/Code_Complete) today though you can find a pdf version of their checklists.
So really I just sat down one day with my QA analysts and worked for a few days coming up with two checklists.
After reading the Checklist Manifesto I began to do more reading about what makes a good checklist.
I also sought information about the various kinds of checklists.
I took the things I learned and incorporated them into our checklists to improve their quality.
The second thing that the Checklist Manifest really influenced was how to help adoption.
One of the things the book does incredibly well is describe how, where, when, and why checklists worked and didn't.
You should constantly be experimenting with the checklists to see what is effective and what isn't.
If you find that your engineers are always doing everything on a checklist you should probably not use that checklist.
Likewise you should regularly review problems that come up in your software.
I prefer the postmortem method, but you can use anything similar.
The idea though is to move effective checks for the failures you find earlier into the development process.


## Code Complete Two
Code Complete Two really gave us a set of templates to start with so we could create our own checklists.
One of the most time consuming parts of checklists is creating a base and then really getting them into the culture.
It took us a several days to create our first QA checklist.
It then took a few weeks of me following up with our QA engineer to verify that it was being used.
I also helped to modify it when there were problems or it was impractical.
The checklists from Code Complete are useful in that they give you a starting point for having a more in depth conversation.
They are often either too large in scope or too specific to a particular task for me to use them.
Personally I've been looking for and trying to develop a pull request checklist that is effective in most situations.
We currently use two lists from code with some ideas taken Code Complete Two and mixed with our own checklists. 


## Most important things I have learned
Checklists don't work out the gate.
You have to try and then refine them.
For them to be the most effective for you I always try and make them living documents.
That is I know that they should change as we see new and different problems.
As such I often create various representations of checklists.
I usually have a word document for ones that I am not going to audit.
A form for ones that I want to have a paper trail on or that I would like to create statistics about.
Currently for instance every time a PR is finished today engineers fill out two surveys.
One for each of the two checklists that we have developed.
Those are then audited weekly for two reasons.
The first is to make sure that we catch any glaring mistakes.
The second is to look for questions that are not useful.
Next after all prod failures we have a postmortem.
That postmortem is then taken and the checklists are reviewed with an eye for adding in new items that could help.
I see both of these processes as essential to making the checklists effective.
Also checklist cannot tell someone how to do their job.
If you find when you are starting to create a checklist that it is overly long or too specific you might be falling into that trap.
Checklists are meant to help people do the right thing every time.