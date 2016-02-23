# Unit Testing with RSpec

## Clinic overview
In this clinic, we will go over:

* [Setting up RSpec](https://learn.launchacademy.com/teams/spring-2016/curricula/ignition/lessons/tdd-method-testing)
* TDD workflow - why we test!
* Build classes using Test Driven Development
* Resource for good practices for [writing rspec tests](http://betterspecs.org/#single)

##Getting RSpec Set Up
* `gem install rspec`
* In the project root set up the following file structure:
- `spec/lib/class_spec.rb`
- `lib/class.rb goes in lib`
* Configure RSpec for color tests. In the root folder `touch .rspec` and insert "--color" "--fail-fast"
* To reference our classes, our tests need `require_relative '../../lib/class.rb'`
* We can set up a `spec_helper` to make sure all of our classes are referenced when running tests.

##TDD workflow
* Why tests?
* Write tests - thinking through all of our use cases.
* Get a failing test suite
* Let failing tests guide our code development
* Do the simplest thing to get the test to pass
* Refactor

##Building Classes with TDD
* Dice object, with state of sides and behavior of rolling.
* Pokemon objects, with states and behavior such as name, ability, strength, attack, evolve, etc.

###Start with a Test
* Start building our first tests
  - `require_relative '../lib/dice.rb'`
* Let's describe our Dice class.
  - `RSpec.describe Dice do` standard to start with a describe for the class/ initialize method
  - Method definition in a describe block with ".notation" for class methods and "#notation" for instance methods
  - '.new' constructor, class method
  - '#roll' instance method
* Let's build out our Pokemon class.
  - Constructor, initialize method: name, ability, birthday
  - add a hit_points with a default value
  - add a strength counter
  - add behavior for training
  - add behavior for attacking
  - add behavior for checking if a pokemon is ready to evolve
  - add behavior for checking if a pokemon alive
* Refactoring
  - We can refactor our tests (e.g move the let(:pokemon) up to the top to have access to all)
  - We can look back at our code and refactor methods and run the test suite to make sure it passes our intended outcomes.
