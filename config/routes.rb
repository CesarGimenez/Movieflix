Rails.application.routes.draw do
  resources :categories
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  get 'home/index', to: "home#index"
  root to: 'home#index'
  resources :movies do
    resources :comments
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
