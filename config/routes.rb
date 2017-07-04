Rails.application.routes.draw do
	root to: "users#index"
  get 'users/index'

  get "users/edit/:id" => 'users#edit', :as => :edit
  patch "users/edit/:id" => 'users#edit',  to: redirect('users/index')

  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
