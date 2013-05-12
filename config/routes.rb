Portangelescarpenter::Application.routes.draw do
  

  resources :blurbs


  resources :jobs


  resources :skills


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end