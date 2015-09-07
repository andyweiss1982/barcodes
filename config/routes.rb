Rails.application.routes.draw do
  root 'barcodes#new'

  resources :barcodes, only: [:new, :create, :show]
end
