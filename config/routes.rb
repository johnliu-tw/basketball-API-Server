Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      namespace :nba do
        resources :players
      end
      namespace :sbl do
        resources :players
      end
      get '/404', to: 'errors#not_found'
      get '/422', to: 'errors#unprocessable_entity'
      get '/500', to: 'errors#server_error'
      get '/502', to: 'errors#server_error'
    end
  end
end
