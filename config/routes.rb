Rails.application.routes.draw do
	
  get 'style_model/new'

  get 'style_model/edit'

	devise_for :users, :controllers => { registrations: 'registrations' }  
	resources :posts do
		resources :comments
		resources :uploads
	end


	root 'posts#index'
	
end
