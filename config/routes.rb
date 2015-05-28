Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'welcome/index'
  resources :users
  root to: 'welcome#index'
end
