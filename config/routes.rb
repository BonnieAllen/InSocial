Rails.application.routes.draw do
	
  resources :image_scaffolds
  get '/profile', to: 'users#profile'
  # get 'following' => 'users#following'
  # get 'followers' => 'users#followers'


	devise_for :users, :controllers => { registrations: 'registrations' }   
	 resources :posts do
		resources :comments
		resources :uploads
	end

	  resources :users do
               member do
                    get :following, :followers
                end
            end
            resources :relationships,        only: [:create, :destroy]
         
	root 'posts#index'	
end
