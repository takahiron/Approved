require 'approved/engine'
require 'approved/version'

module Approved
  autoload :Line, 'approved/line'
  puts ">>>>>>>approved"
  # Your code goes here...
  @routing = Line.new

  def self.get_routing
    @routing.get_role
  end
end
