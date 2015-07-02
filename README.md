# ActiveRecord Todos

## Summary
This challenge will require us to employ a fairly comprehensive set of the skills that we've been developing at Dev Bootcamp.  We'll take what we've learned about object-oriented programing, the model-view-controller design pattern, Active Record, etc. and put them all together to build a command line application.

Our challenge is to build a functioning todo list application using a database and command line interaction.  We might have built a command-line todo list application before—perhaps using CSV for persistence.  If so, this is an opportunity to build upon that design and improve our object-oriented implementation.


### Design Decisions
There will be few hard and fast rules regarding implementation (i.e., how to build the application).  Instead, we'll be given features to build out, and we'll have to decide how best to implement them.

As we work through the features, it will be important to think about the responsibilities of our application.  These responsibilities aren't just user-facing commands like (*add*, *delete*, etc.); they're also back-end responsibilities like reading and writing from the database, parsing command-line arguments, formatting data for printing the to the console, etc.  We'll want to implement solid design choices, keeping concepts such as the [single responsibility principle][Wikipedia SRP] and [separation of concerns][Wikipedia SOC] in mind.

As we work through the releases in this challenge, we'll want to pay close attention to how change impacts our application.  What happens when a new feature is added?  How many parts of our application require changing?  How frustrating is it to make those changes?  Are we modifying unexpected parts of our application?  We should try to employ the advice from [the POODR book][POODR]:  write code that is easily changeable.  


## Releases

### Pre-release: Review the Code Base
This challenge uses a code base similar to ones we've seen in other challenges.  The `Gemfile` specifies the gems the skeleton needs; we need to make sure they're installed on our systems.  And a `Rakefile` is provided.  We can review the tasks that we have available by running `bundle exec rake -T`; all of the tasks we're accustomed to using are available.

We'll run our program by executing the `runner.rb` file.


### Release 0: Add a Task
```
$ bundle exec ruby runner.rb add Walk the dog
Added "Walk the dog".
```
*Figure 1*.  Adding a "Walk the dog" task.

The first feature to build out is the ability to add tasks.  A user should be able to run our application with the command line argument *add* followed by a description of the new task.  The new task should be persisted in the database, and the user should receive confirmation that the task was saved. (see Figure 1)


### Release 1: List the Tasks
```
$ bundle exec ruby runner.rb list
1. Walk the dog
2. Bake a delicious blueberry-glazed cheesecake
3. Write up that memo and fax it out
```
*Figure 2*.  Viewing a list of the tasks.

Now that we can add tasks, let's add a feature that allows users to see the tasks that have been created. (see Figure 2)

## Conclusion
Sum up the challenge.


[POODR]: http://www.poodr.com/
[Wikipedia SOC]: http://en.wikipedia.org/wiki/Separation_of_concerns
[Wikipedia SRP]: http://en.wikipedia.org/wiki/Single_responsibility_principle

