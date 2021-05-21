Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :friends do
    get "create_login"    

  end
  

  resources :weather
  resources :notifications
  #get 'home/index'
  resources :conversations do
  	 resources :messages
  end

  require "sidekiq/web"
  mount Sidekiq::Web => "/sidekiq"


  #root 'home#index'
  root 'conversations#index'
  get 'home/about'
  get 'stats' => 'mstats#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
