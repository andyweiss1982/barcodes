Rails.application.routes.draw do
  root 'scans#new'

  resources :barcodes, only: [:new, :create, :show]
  resources :scans, only: [:new, :create, :show]
end
