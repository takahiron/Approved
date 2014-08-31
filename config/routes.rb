Rails.application.routes.draw do
  mount Approved::Engine => '/approved', :as => "approved"
end
