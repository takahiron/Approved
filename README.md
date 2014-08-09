# Approved
In development.

It is a gem enforcing authorization web site.


## Installation

Add this line to your application's Gemfile:

    gem 'approved', :git => 'https://my_account@github.com/takahiron/Approved.git'

or download is gem

    gem 'approved', :path => '/your/download/gem/path'


And then execute:

    $ bundle install



## Getting started

Create a migration file for table creation first

    rails g approved model_name

Are created and chenged file

    * db/migrate/  2 new file

    * config/initializers/approved.rb new file

    * db/seeds.rb chenged file

Next Rails command

    $ rake db:migrate

the names of the table that is craeted "approved\_role\_and\_users" and "approved\_roles"

    Description: "approved\_role\_and\_users" thong with table and privilege user
    "approved\_roles" is set access permission for each URL



    $ rake db:seed

authority is added to the "approved\_roles" table

rails start

approved top page

    localhost:3000/approved/roles

start is

1. create role name

2. created role name is click

3. route information display

## Use

application\_controller.rb

    def set_authentication
      set_redirect_to(set user_id or nil) do |i|
        # the process against unauthorized access
      end
    end

permission settings of the views

    decision?(url, user_id)

url is set the controller and action in the Hash

    example: {controller: "index", action: "show"}

user\_id integer or nil

return true or false

true if there is an authority


## Contributing

1. Fork it ( http://github.com/takahiron/Approved/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
