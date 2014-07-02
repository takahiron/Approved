module Approved
  class Line
      begin
        require 'rails/application/route_inspector'
        ROUTEINSPECTOR = Rails::Application::RouteInspector.new
      rescue LoadError
        require 'action_dispatch/routing/inspector'
        ROUTEINSPECTOR = ActionDispatch::Routing::RoutesInspector.new([])
      end

    def get_role
      get_routes unless @routing
      @routing
    end

    private
    def all_routes
      Rails.application.routes.routes
    end

    def get_routes
      @routing = ROUTEINSPECTOR.send :collect_routes, all_routes
    end
  end
end
