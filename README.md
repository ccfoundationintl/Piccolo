# Piccolo
[![Build Status](https://travis-ci.org/demon-io/piccolo.svg?branch=master)](https://travis-ci.org/demon-io/piccolo)

The Piccolo template is a Ruby on Rails web app template that allows charity organizations to develop websites where they can easily raise money for their events.

## Start

To use this template, make sure you have [Ruby on Rails](http://rubyonrails.org/) and [Heroku Toolbelt](https://toolbelt.heroku.com/) installed on your development machine.

Clone this repository into a folder of your choosing, and to start the setup, download the correct gems by running:
```
$ bundle install
```

Then generate a development version of the database by running:
```
$ rake db:create
```
then:
```
$ rake db:migrate
```

You will then be able to start the server by running:
```
$ rails server
```

## Development Seed Data

If you need some initial data to develop the application with, run:
```
$ rake db:seed
```
It will generate demo users, teams, and donations.

## Configuration

The beauty of this template is that you are able to customize everything about it. To customize all the variables, edit the `config.yml` file found in the root directory of this project. In there are all the configuration variables used to customize the site.

## Tests

To run the tests, enter:
```
$ rake test
```

## Deployment

To deploy to production, we use [Heroku](http://www.heroku.com) due to the simplicity and ease of setup. With the Heroku CLI installed, run the initial commands to login and create a new application. Once you have a local environment that you are satisfied with, run:
```
$ git push origin heroku
```
Heroku will deploy the new version and it will be live.

## Tasks

When the site is live, it will be a good idea to use Heroku's Scheduler add-on to automate tasks that need to be run in the background. These tasks include sending emails, sending weekly updates about teams, and tallying up donation amounts.

Here are the following tasks that can be found in `lib/tasks/`:
  * :send_emails - Sends an email every week updating every participant on the status of their donation efforts. Includes information such as how much they have raised and who the top participants and teams are.
  * :update_team_donations - Updates the totals of donations for all the teams. Choose how often you would like to run this task since it is an expensive one.
  * :check_registration_payments - Goes through every user and checks whether they have paid their registration fees or not. If not, it sends them a reminder email to pay their registration fees.

## API Integrations

We use a series of API integrations to make our application run smoothly. Be sure to have an account set up with the following services and their APIs:
  * [Stripe](http://www.stripe.com) Payment processing platform
  * [SendGrid](http://www.sendgrid.com) Email processing platform
  * [AWS S3](http://aws.amazon.com) Static asset host provider
  * [Heroku](http://www.heroku.com) App hosting sever
  * [Google Analytics](http://analytics.google.com) User tracking and analytics

## License

This project is licensed under the MIT license. It is truly for educational purposes.
