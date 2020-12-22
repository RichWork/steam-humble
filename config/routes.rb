Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'games#index'
  resources :games do
    collection do
      get 'update_db'
      get 'destroy_db'
      get 'show_failed_input'
    end
    member do
      get 'find_steam_id'
    end
  end

end
