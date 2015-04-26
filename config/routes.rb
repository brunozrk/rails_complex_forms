Rails.application.routes.draw do
  root 'dashboard#index'

  resources :people
  resources :sales
end
