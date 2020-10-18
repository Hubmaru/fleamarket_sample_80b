Rails.application.routes.draw do
  resources :items do
    collection do
      get 'purchases'
    end
  end
end
