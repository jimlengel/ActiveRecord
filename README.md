# Activerecord Todos Part 1 
 
##Learning Competencies 

##Summary 

 This challenge is to build a functioning Todo application using a database and command line interaction. You should leverage what you learned in Todo 1.0 and build upon that design, improving your OO implementation. 

From the user's perspective, the final product will look similar to the Todo 1.0.  We are still using the command line and we want to build something that works like this:

```text
$ ruby todo.rb add Bake a delicious blueberry-glazed cheesecake
$ ruby todo.rb list
$ ruby todo.rb delete <task_id>
$ ruby todo.rb complete <task_id>
```

### Download the Skeleton

[Download this skeleton app](http://cl.ly/0r393G2U3U2K) to help you get started.  Make sure to read the `README.md` file!

### Learning Goals

This application has all the moving parts of an MVC application: user input, display code, and data persistence.  In addition it leverages the power of Active Record to manipulate a database of Todo records.

You will need to start with a solid OO design and implement a framework that will allow you to utilize Active Record. 

In your design, it's important to think about what *responsibilities* this application has to fulfill.

Keep things like the [single responsibility principle](http://en.wikipedia.org/wiki/Single_responsibility_principle) and [separation of concerns](http://en.wikipedia.org/wiki/Separation_of_concerns) in mind as you decide what objects and classes belong in your application.

As you work through the iterations, pay close attention to how *change* impacts your application.  When a new feature is added how many files do you have to change?  How frustrating is it to make those changes?

You will be using Git and GitHub to work with your group on this challenge.  Here is the [DBC Git Process](https://gist.github.com/brickthorn/15a83f5d5fd6819a2892) you should follow.  Every member of your group should commit to the code base at least once during the day.    
 
## Objectives

### Enumerate the responsibilities

Start by enumerating the responsibilities of your TODO application.  These aren't just the user-facing commands like "add", "delete", etc.  They're also back-end responsibilities like reading and writing from the `todo.db` file, parsing command-line arguments, and printing the "interface" to the console.

Use these responsibilities to create pseudocode for your program and to design the schema for your database.  

Be sure to have both of these checked off before moving on to code. 

### Create the shell repository for this project.

Using the format of the [Student Schema with Active Record] ( https://github.com/dbc-challenges/ar-student-schema) create the files needed for an Active Record project.  At a minimum you should have folders for:  
* app  
* app/models  
* app/controllers  
* db  
* db/migrate  

And then create files for:  
* Class Models  
* Migrations   
* Driver code  

Finally, copy the Rakefile from the Student Schema Project and modify it to work with this project.

**NOTE** Have a teacher check you off on your framework before you go further. 

<!--
### Clone the shell repository and understand the purpose of each file

We've created a repository with the structure you will need to create an Active Record program.  Open each file in Sublime and read the comments inside.  You should be able to clearly define what code will go in each file BEFORE you start writing code.  Check with a teacher before you proceed. 

-->

### Create and run the schema migrations to build your database.

Be sure you have designed your database and thought through all the relations.  Then move to active record and build the schema. 

### Use the Faker gem to seed your database.

We defined a `rake db:seed` task for you.  All it does is run the code in `db/seeds.rb`.

Using Faker, edit `seeds.rb` to create dummy records.  You'll have to put

```ruby
require 'faker'
```

at the top of the `seeds.rb` file.  Feel free to read the `Rakefile` and learn more about how this works.  It won't bite!

### Implement the list command

When you run

```text
$ ruby todo.rb list
```

your application should print out a list of all the TODOs. For example:

```text
$ ruby todo.rb list
1. Bake a delicious blueberry-glazed cheesecake
2. Write up that memo and fax it out
3. Conquer the world
```

You'll have to design and build basic controller and model code to make this work.  For example, how does your program know the user wants to "add" a task to their list?

### Implement the add command

Requirements:

- A user can add (append) a task to their TODO list

It should work like this

```text
$ ruby todo.rb add Walk the dog
Appended "Walk the dog" to your TODO list...
$
```

### Implement the delete command

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

### Implement completeness

Requirements:

- A user can complete a specific task from their TODO list
- A completed TODO task will be identified as such when a user uses the `list` command

**Note**: This will require changing the format of `todo.txt` and the code that parses it. 

##Releases
###Release 0 

##Optimize Your Learning 

##Resources