Rails.application.routes.draw do
  resources :billings
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  root 'home#index'
  get 'about', to: 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
