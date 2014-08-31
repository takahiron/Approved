# Approved
In development.

It is a gem enforcing authorization web site.


## Installation

Add this line to your application's Gemfile:

    gem 'approved', :git => 'https://github.com/takahiron/Approved.git'

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

    Description: "approved_role_and_users" thong with table and privilege user
    "approved_roles" is set access permission for each URL

initialized insert Role

    $ rake db:seed

approved initializer setting

config/initializers/approved.rb

    config.user = "model name"
    config.user_name = "DB column user name"
    config.user_id = "DB id"

authority is added to the "approved\_roles" table

rails start

approved top page

    localhost:3000/approved/roles

start is

1. create role name

2. created role name is click

3. route information display

4. Click a mapping link of approved/role/:id/edit, to map users and privileges

## Use

mapping of the role complate, redirect setting

application\_controller.rb

    def set_authentication
      set_redirect_to(set user_id or nil) do
        # the process against unauthorized access
      end
    end

permission settings of the views

  <% if  decision?(url, user_id) %>>

url is set the controller and action in the Hash

    example: {controller: "index", action: "show"}

user\_id integer or nil

return true or false

true if there is an authority


## Supported Ruby and Rails Version

* Ruby 2.0 or later
* Rails 4.0 or later

# Licence

MIT License.

