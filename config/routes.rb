Rails.application.routes.draw do
  resources :uploads
  resources :generes
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
    # root to: 'devise/sessions#new'
  end
  devise_for :users
  get 'users_list', to: 'users#index', as: 'users_list'
  get 'dashboard', to: 'home#index', as: 'home_dashboard'
  get '/home/turbo_frame_form' => 'home#turbo_frame_form', as: 'turbo_frame_form'
  post '/home/turbo_frame_submit' => 'home#turbo_frame_submit', as: 'turbo_frame_submit'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
