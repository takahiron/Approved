# Approved
In development.

It is a gem enforcing authorization web site.


## Installation

Add this line to your application's Gemfile:

    gem 'approved', :git => 'https://my_account@github.com/takahiron/Approved.git'

or download is gem

    gem 'approved', :path => '/your/download/gem/path'


And then execute:

    $ bundle



## Getting started

Create a migration file for table creation first

    rails g approved model_name

Are created db/migrate/~

make DB table

    rake db:migrate

rails start

    localhost:3000/approved/roles

start is

1. create role name

2. created role name is click

3. route information display


## Contributing

1. Fork it ( http://github.com/takahiron/Approved/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
