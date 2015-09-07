Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  resources :barcodes, only: [:new, :create, :show]
  resources :scans, only: [:new, :create, :show]
end
