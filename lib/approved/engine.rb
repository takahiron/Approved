module Approved
  class Engine < ::Rails::Engine
    isolate_namespace Approved

    initializer "approved.role.defoult_routes" do |app|
      Approved::Engine.routes.prepend do
        resources :roles
        resources :role_and_users
        delete "delete" => "roles#delete", as: "role_delete"
      end
    end
  end
end
