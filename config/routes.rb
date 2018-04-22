Rails.application.routes.draw do
  resources :posts do
    collection { post :import }
      collection do
        get 'search'
      end
    end
  root 'pages#home'
end
