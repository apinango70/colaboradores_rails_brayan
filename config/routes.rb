Rails.application.routes.draw do
  resources :colaborators
  root "colaborators#index"
end
