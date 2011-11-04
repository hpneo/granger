Granger::Application.routes.draw do
  devise_for :users do
    get 'sign_in', :to => 'devise/sessions#new'
  end

  resources :users

  match '/near_by' => 'users#near_by'

  root :to => 'home#index'
end