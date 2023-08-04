Rails.application.routes.draw do
  resources :colaborators do
    member do
      get "preview"
    end

    collection do
      get 'search'
    end     
  end
   
  root "colaborators#index"
end
