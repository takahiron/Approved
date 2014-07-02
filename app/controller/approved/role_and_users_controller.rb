module Approved
  class RoleAndUsersController < Approved::ApplicationController
    def index
      @role_user = Role.find
      puts @role_user
      #@route = Approved.get_routing
    end
  end
end
