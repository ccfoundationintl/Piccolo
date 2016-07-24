# Piccolo Template

The Piccolo template is a Ruby on Rails web app template that allows charity organizations to develop websites where they can easily raise money for their events.

## Start

To use this template, make sure you have [Ruby on Rails]() and [Heroku Toolbelt]() installed on your development machine.

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

## License

This project is licensed under the MIT license
