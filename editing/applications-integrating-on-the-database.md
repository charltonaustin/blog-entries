## The problem
You shouldn't do it.
You've read it before.
Don't integrate applications on the database.
The advice is relatively straightforward, but it can often be difficult to understand.
My first piece of advice is that when you have a new process it should have it's own database.
That said I've been there recreating many data models isn't my idea of fun.
Figuring out how to broker the communication between two apps is no fun.
And then all of a sudden it happens.
You copy the models or you pull them into a shared location.
You allow the database to decide what consistency looks like.
This runs smoothly for months or even years.
Then one day you realize you really can't change one application without changing the other.
That they are tightly coupled practically speaking even if they aren't conceptually speaking.

## Some thoughts
If more than one system process owns a particular table/column then automatically the deployment of changes to that 
column/table must take that process into account.
Now how it must take those changes into account depends on the how the services use the table/column.
For instance there are readable backwards compatible changes and writeable backwards compatible changes.
These changes also depend on the language.
For instance say service a reads and writes to column 1 and service b only reads from column 1.
Both services are in python.
Currently column 1 is a string enum.
If you then were to expand that to a varchar or text field you could only change service a provided that service b doesn't do anything based on the enum type.
If it is just a reporting service then really you are done.
Say now that you are doing this in Java. 
If your type reflects the enum type that comes from the database you are likely to have to change both services.
On the other hand what led you down this path.
When you were building service a and service b it was more straightforward for them to directly access the same database.
One way to deal with the complexity is to say service a owns column 1.
Now for service b maybe you create column 2 and it manages all writes and reads from it.
Now you have to have some system for updating column 2 and for service a to communicate with service b.


## So how to decide when to shift
So in the example above you are weighing the complexity of deploying two services vs coordinating data updates and communication.
Once we start to break it down in these terms we can start to make strategic decisions.
For instance if service A and service B are developed by a single team and you don't expect many changes in the data model then the answer becomes clear.
You should probably deal with the complexity around deployment.
Likewise if service A and service B are owned by two different teams or need drastically different deployment cycles then it becomes clear.
You should probably deal with the overhead of communication between the services and syncing data.


## How does the database that you choose change the problem
Interestingly Google has been doing a lot of work around distributed databases.
Most applications need to deal with distributed systems in order to manage scale.
People end up sharding their MySQL database because a single large vertical instance can't meet or is too expensive for traffic levels.
So in some sense the choice of database gives you another lever to pull in terms of where the complexity lives.
