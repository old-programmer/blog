Rails.application.routes.draw do
  devise_for :users
	root 'posts#index'
	resources :posts, only: [:show, :index]
	resources :tags, only: [:show]
	resources :categories, only: [:show]

	namespace :admin do
		resources :pictures, only: [:create, :destroy]
		resources :posts, except: [:show, :index]
		resources :categories, except: [:show]
	end
end
