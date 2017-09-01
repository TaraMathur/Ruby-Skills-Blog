Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	get 'articles/index'

  	resources :articles

  	#devise_for :users, :controllers => { registrations: 'registrations' }
  	root 'articles#index'

  	get 'article/new'



end
