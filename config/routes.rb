Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :categories, only: %i[index create destroy]
      resources :books, only: %i[index show create update destroy]
      post 'login', to: 'authentication#create'
      post 'register', to: 'users#create'
    end
  end
end
