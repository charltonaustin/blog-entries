Why should we have blameless postmortems?

I recently read [a blog post](https://codeascraft.com/2012/05/22/blameless-postmortems/) about blameless postmortems from [Etsy](https://www.etsy.com/).
In it there was a simple question about why software engineers shouldn't be punished:
>Why shouldn’t they be punished or reprimanded?
>Because an engineer who thinks they’re going to be reprimanded are disincentivized to give the details necessary to get an understanding of the mechanism, pathology, and operation of the failure.
>This lack of understanding of how the accident occurred all but guarantees that it will repeat.
>If not with the original engineer, another one in the future.

I'm a big person on why we do things, and in our team, we often have blameless postmortems.
Recently I was talking with a friend about why and this quote came up.
So I wanted to take some time to think about why we have blameless postmortems.
In my mind, the above is a practical reason why people should avoid placing blame, but I have a more theoretical reason as well.
Complex systems are well complex.
They generally have several systems that interact with one another in sometimes unexpected ways.
Wikipedia defines complex systems as systems that, "have distinct properties that arise from these relationships, such as nonlinearity, emergence, spontaneous order, adaptation, and feedback loops, among others."
The ability for someone to hold in their mind all the possible places that something can go wrong is impossible.
These properties which are inherent in the systems guarantee that one person can not hold all places that something can go wrong in their mind.
Let's take as an example nonlinearity which in simple terms means that if you were to do the same thing over with slightly different initial conditions, you would get wildly different outcomes.
To deal with this, we should encourage people to build systems that recover quickly and can cope with failing.
Further, unless there is gross negligence, then we should take each failure as learning for the future.
We want people to understand that we acknowledge that complex can be complicated and work to make them safe.
Blame is a tricky beast and not only does it have practical bad effects like those mentioned in the Etsy article, but there are good reasons that we should not blame people from a more theoretical standpoint.
