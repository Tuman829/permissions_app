Rails.application.routes.draw do
	root to: "users#index"
	get "users/edit/:id" => 'users#edit', :as => :edit
	resources :users
  	patch "users/edit/:id" => 'users#edit',  to: redirect('users/index')
end
