Rails.application.routes.draw do
  root to: 'main#index'
  get 'main/index'

  resources :notes
end
