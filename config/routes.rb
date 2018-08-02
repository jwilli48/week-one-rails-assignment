Rails.application.routes.draw do
  resources :guides
  get 'static_controller/quotes'
  root 'static_controller#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
