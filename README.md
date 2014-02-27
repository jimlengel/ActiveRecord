# ActiveRecord Todos Part 1 
 
##Learning Competencies 

* Model a simple real-world system in Ruby code
* Translate between different modes of modeling a problem (user stories, diagrams, pseudocode, etc.)
* Create well-defined classes with a single responsibility
* Identify and implement classes based on real world requirements
* Use the model-view-controller pattern to organize code and decouple concerns
* Model relationships in a relational database (one-to-one, one-to-many, many-to-many)
* Use Active Record Migrations to create a database
* Use Active Record Queries to query a database
* Use Active Record to create Associations between database tables

##Summary 

This challenge is to build a functioning Todo application using a database and command line interaction. You should leverage what you learned in Todo 1.0 and build upon that design, improving your OO implementation. 

From the user's perspective, the final product will look similar to the Todo 1.0.  We are still using the command line and we want to build something that works like this:

```text
$ ruby todo.rb add Bake a delicious blueberry-glazed cheesecake
$ ruby todo.rb list
$ ruby todo.rb delete <task_id>
$ ruby todo.rb complete <task_id>
```

##Releases

###Release 0 : Up and Running
* Open the `ar_todo` directory for skeleton code.
* Run `bundle` from the application root directory
* Run `$ rake -T ` to see the rake tasks available to you. 
* Use the  `todo.rb` file in the application root directory, to act as your main program.
* Look at the README in the skeleton for more information about the purpose of each file.  Spend time looking through the application and familiarizing yourself with each file. 


###Release 1 : Enumerate the responsibilities

Start by enumerating the responsibilities of your TODO application.  These aren't just the user-facing commands like "add", "delete", etc.  They're also back-end responsibilities like reading and writing from the `todo.db` file, parsing command-line arguments, and printing the "interface" to the console.

Use these responsibilities to create pseudocode for your program and to design the schema for your database.  

Be sure to have both of these checked off before moving on to code. 

###Release 2 : Build the Database

* Create and run the schema migrations to build your database. Be sure you have designed your database and thought through all the relations.  Then move to active record and build the schema. 

* Use the Faker gem to seed your database.We defined a `rake db:seed` task for you.  All it does is run the code in `db/seeds.rb`. Using Faker, edit `seeds.rb` to create dummy records.  You'll have to put `require 'faker' ` at the top of the `seeds.rb` file.  Feel free to read the `Rakefile` and learn more about how this works.  It won't bite!

###Release 3 : Implement the Commands

#### The list command

When you run

```
$ ruby todo.rb list
```

your application should print out a list of all the TODOs. For example:

```
$ ruby todo.rb list
1. Bake a delicious blueberry-glazed cheesecake
2. Write up that memo and fax it out
3. Conquer the world
```

You'll have to design and build basic controller and model code to make this work.  For example, how does your program know the user wants to "add" a task to their list?

#### The add command

Requirements:

- A user can add (append) a task to their TODO list

It should work like this

```text
$ ruby todo.rb add Walk the dog
Appended "Walk the dog" to your TODO list...
$
```

####The delete command

Requirements:

- A user can delete a specific task from their TODO list

It should work like this

```text
$ ruby todo.rb list
1. Bake a delicious blueberry-glazed cheesecake
2. Write up that memo and fax it out
3. Conquer the world

$ ruby todo.rb delete 3
Deleted "Conquer the world" from your TODO list...

$ ruby todo.rb list
1. Bake a delicious blueberry-glazed cheesecake
2. Write up that memo and fax it out

$
```

####The complete command

Requirements:

- A user can complete a specific task from their TODO list
- A completed TODO task will be identified as such when a user uses the `list` command

**Note**: This will require changing the format of `todo.txt` and the code that parses it. 


##Optimize Your Learning 

This application has all the moving parts of an MVC application: user input, display code, and data persistence.  In addition it leverages the power of Active Record to manipulate a database of Todo records.

You will need to start with a solid OO design and implement a framework that will allow you to utilize Active Record. 

In your design, it's important to think about what *responsibilities* this application has to fulfill.

Keep things like the [single responsibility principle](http://en.wikipedia.org/wiki/Single_responsibility_principle) and [separation of concerns](http://en.wikipedia.org/wiki/Separation_of_concerns) in mind as you decide what objects and classes belong in your application.

As you work through the iterations, pay close attention to how *change* impacts your application.  When a new feature is added how many files do you have to change?  How frustrating is it to make those changes?


##Resources
