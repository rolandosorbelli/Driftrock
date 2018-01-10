# Driftrock

Create a script that can be run from the command line and can answer the questions listed below. The script accepts one parameter to specify which question it will answer and in some cases an optional argument. The script will print the answer to the console output.
```
$ ruby app.rb COMMAND PARAMETERS
```
The script should implement these commands:
* total_spend [EMAIL]: What is the total spend of the user with this email address
[EMAIL]?
* average_spend [EMAIL]: What is the average spend of the user with this email address
[EMAIL]?
* most_loyal: What is the email address of the most loyal user (most purchases)?
* highest_value: What is the email address of the highest value user?
* most_sold: What is the name of the most sold item?

## How to install

* Clone this repository: ```$ git clone https://github.com/rolandosorbelli/Driftrock```
* Navigate into the folder ```$ cd driftrock```
* Install all the gems running ```$ bundle install```

## How to run

Once you are in the root folder of the app through your Terminal/Command Line just run the command: ```$ ruby app.rb total_spend [EMAIL]``` and you will see the total of the account linked to the email that you have entered.

## How to test

Once you are in the root folder of the app through your Terminal/Command Line just run the command: ```$ rspec``` and you will see all the tests that have been done.

## Tech

* [Ruby](https://www.ruby-lang.org/en/)
* [Rspec](http://rspec.info/) for testing purposes
* [Rubocop](https://rubocop.readthedocs.io/en/latest/) for linting

## My approach

I started off by diagramming my ideas on my notebook so I could have a perfect view of the tasks. I started creating the root folder and then I initialised all the useful commands for a Ruby project such as ```rspec --init``` and ```gem install bundler``` so I could start installing my gems as well.

The first part I started developing was my ```app.rb``` and ```get_data.rb``` where I put all the code related to the response of the API. Then, I focused on the controller of the app and also on the part related to obtain information related to the users, such as IDs or emails.

I only developed the first task for the test as I exceeded the 3 hours so I preferred to focus on testing and making the code as clear as possible rather than continuing implementing it with new features. With more time I would have definitely worked on the following tasks.

Regarding the test, I would like to explain and make clear a small issue I have encountered. I was trying to install [Simplecov](https://github.com/colszowka/simplecov) to help me to keep track of the coverage of my tests but I couldn't proceed with the installation as I am on a Windows machine and I had a problem with the installation of some native gems that support Simplecov. So, since I couldn't have any track of my tests coverage I was proceeding step by step with every method I was creating and I was making sure to test every bit of code.