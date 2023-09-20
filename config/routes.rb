Rails.application.routes.draw do
  devise_for :users
  resources :friends
  
  root 'home#index' # changed from get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

end
