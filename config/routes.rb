Rails.application.routes.draw do
  devise_for :users
  get  'likes/index'
  post '/likes', to: 'likes#create'
  
  root 'items#index'
  resources :items do
    collection do
      get 'purchases'
      get 'category_children', defaults: { format: 'json' }
      get 'category_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end
end