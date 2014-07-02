Rails.application.routes.draw do
  # test
  get 'role' => "approved/roles#index"
  mount Approved::Engine => '/approved', :as => "approved"
end
