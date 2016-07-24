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

## License

This project is licensed under the MIT license. It is truly for educational purposes.
