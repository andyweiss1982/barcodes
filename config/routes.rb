Rails.application.routes.draw do
  root 'barcodes#index'

  resources :barcodes
end
