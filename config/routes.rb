Rails.application.routes.draw do
	root "recipes#index"

	resources :recipes
	post 'find_recipe', to: 'recipes#find_recipe'

	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
