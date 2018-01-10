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