Rails.application.routes.draw do
  resources :invoices
  get 'home/index'
  devise_for :admins

  root to: "home#index"
end
