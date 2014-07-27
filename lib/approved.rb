require 'approved/engine'
require 'approved/version'
require 'approved/config'
require 'approved/models/user_source'
require 'approved/authentication/action_base'
require 'approved/action_view_extentions/authentication_decision'

module Approved
  autoload :Line, 'approved/line'
  autoload :Config, 'approved/config'
  autoload :Test, 'approved/config/test'
  autoload :Models, 'approved/models'
  module Models
    autoload :UserSource, 'approved/models/user_source'
  end

  autoload :Authentication, 'approved/authentication'
  module Authentication
    autoload :ActionBase, 'approved/authentication/action_base'
  end
  # Your code goes here...
  @routing = Line.new

  def self.setup
    yield Config
  end

  def self.get_routing
    @routing.get_role
  end
end
