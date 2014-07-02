module Approved
  class Engine < ::Rails::Engine
  puts "approved engine"
    isolate_namespace Approved

    initializer "approved.role.defoult_routes" do |app|
      Approved::Engine.routes.prepend do
        resources :roles
        delete "delete" => "roles#delete", as: "role_delete"
      end
    end
  end
end
